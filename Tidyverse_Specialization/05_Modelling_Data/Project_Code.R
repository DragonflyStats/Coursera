# Modeling Data in the Tidyverse - Final Project (High-Performance & Defensive Check Revision)
# Author: Kevin O'Brien

# Libraries ---------------------------------------------------------------
library(tidyverse)
library(janitor)
library(tidymodels)
library(textrecipes)
library(hardhat)
library(glmnet)
library(doParallel)
library(parallel)

# Data Import via URLs ----------------------------------------------------
TEST_URL  <- "https://d3c33hcgiwev3.cloudfront.net/JhHJz2SSRCqRyc9kkgQqxA_8d34147955154de4a6176086946d07b3_data_complaints_train.csv?Expires=1781818056&Signature=en4K4qooqlsGRCuLQAkODhKSHcMAek-kwq3q4XJoHMDWmlGYE0IxpPVPS2j5SkSUEH71rSp3xcp2gHFzgeCX5CLeq2vVVgU5kuSr~8TMUx4VsT4jXQVDyM4WuMcfBpOCLJEX39Uq6tJTa39HGQTWoazTrKemiARnjsLD7FoW3AE_&Key-Pair-Id=APKAJLTNE6QMUY6HBC5A"
TRAIN_URL <- "https://d3c33hcgiwev3.cloudfront.net/aEBWUxehSGyAVlMXoThsoQ_edf53641edca416fa00a78d9e4b16ced_data_complaints_test.csv?Expires=1781818056&Signature=I~AC538FYsN671KLHMAxxdNMuTIPEuFqwBli1Ug4nivg8g4CGTJI90CoMXeCw4p1aqwXkvSSUjmeE814iHnV3lsg5csFFksDCiOIzJUBvbgtM8xX6s8xAB25VZEoBjaq1er-Y5Pxo~rG5qgYjZEaMLywU53RwozQ4zQzM19faNg_&Key-Pair-Id=APKAJLTNE6QMUY6HBC5A"

data_complaints_train <- read_csv(TEST_URL)
data_complaints_test  <- read_csv(TRAIN_URL)

# RUNTIME CHECK 1: Target Variable Verification
if (!"Product" %in% names(data_complaints_train)) {
  stop("CRITICAL ERROR: The training dataset does not contain the target variable 'Product'. check your URL mappings.")
} else {
  message("CHECK PASSED: Training data target variable identified successfully.")
}

# Clean and pre-Tidy ------------------------------------------------------
dc_train <- data_complaints_train %>% clean_names()
dc_test  <- data_complaints_test  %>% clean_names()

# Synchronize factor labels & simplify names
dc_train <- dc_train %>% 
  rename(complaint = consumer_complaint_narrative) %>% 
  mutate(
    product = factor(product),
    company = factor(company)
  )

dc_test <- dc_test %>% 
  rename(complaint = consumer_complaint_narrative) %>% 
  mutate(company = factor(company))

# String Cleaning Function
clean_complaint_text <- function(text_column) {
  text_column %>%
    str_replace_all("[XX]+|[xx]+", " ") %>%  
    str_replace_all("[^[:alnum:]]", " ") %>% 
    str_replace_all("\\d", " ") %>%          
    str_squish()                             
}

dc_train <- dc_train %>% mutate(complaint = clean_complaint_text(complaint))
dc_test  <- dc_test  %>% mutate(complaint = clean_complaint_text(complaint))

# Drop unneeded variables safely
dc_train <- dc_train %>% select(product, company, complaint)
dc_test  <- dc_test  %>% select(problem_id, company, complaint)

# Feature Engineering: Isolated Domain Mapping ----------------------------
product_company <- dc_train %>%
  group_by(product) %>%
  distinct(company)

credit_companies <- product_company %>% filter(product == "Credit card or prepaid card")
mort_companies   <- product_company %>% filter(product == "Mortgage")
stu_companies    <- product_company %>% filter(product == "Student loan")
car_companies    <- product_company %>% filter(product == "Vehicle loan or lease")

cc_op   <- bind_rows(mort_companies, stu_companies, car_companies)
cc_only <- credit_companies %>% anti_join(cc_op, by = "company")

mort_op   <- bind_rows(credit_companies, stu_companies, car_companies)
mort_only <- mort_companies %>% anti_join(mort_op, by = "company")

stu_op   <- bind_rows(credit_companies, mort_companies, car_companies)
stu_only <- stu_companies %>% anti_join(stu_op, by = "company")

car_op   <- bind_rows(credit_companies, mort_companies, stu_companies)
car_only <- car_companies %>% anti_join(car_op, by = "company")

map_domain_feature <- function(data) {
  data %>%
    mutate(comp_domain = case_when(
      company %in% cc_only$company   ~ "ccard_only",
      company %in% stu_only$company  ~ "student_only",
      company %in% mort_only$company ~ "mort_only",
      company %in% car_only$company  ~ "auto_only",
      TRUE                           ~ "mixed_lender"
    )) %>%
    mutate(comp_domain = factor(comp_domain))
}

dc_train <- map_domain_feature(dc_train)
dc_test  <- map_domain_feature(dc_test)

# RUNTIME CHECK 2: Feature Engineering Structural Integrity
if (any(is.na(dc_train$comp_domain)) || any(is.na(dc_test$comp_domain))) {
  stop("CRITICAL ERROR: NAs generated during the domain mapping phase.")
} else {
  message("CHECK PASSED: 'comp_domain' feature built cleanly with zero missing values.")
}

# Modeling Preprocessing Layout -------------------------------------------
sparse_bp <- default_recipe_blueprint(composition = "dgCMatrix")

run_one <- recipe(product ~ complaint + comp_domain, data = dc_train) %>%
  step_tokenize(complaint) %>%
  step_tokenfilter(complaint, max_tokens = 1e3) %>%
  step_tfidf(complaint) %>%
  step_novel(comp_domain) %>%  
  step_dummy(comp_domain)      

# RUNTIME CHECK 3: Recipe Matrix Prepping Check

recipe_dry_run <- prep(run_one, training = dc_train)

prepped_columns <- dc_train %>%
  head() %>%
  select(-product) %>%  # Remove the factor variable before converting to a sparse matrix
  bake(recipe_dry_run, new_data = ., composition = "dgCMatrix") %>%
  ncol()

message("CHECK PASSED: Preprocessing recipe compiled successfully. Sparse feature matrix width: ", prepped_columns, " columns.")


message("CHECK PASSED: Preprocessing recipe compiled successfully. Sparse feature matrix width: ", prepped_columns, " columns.")

set.seed(2023)
run_one_folds <- vfold_cv(dc_train, v = 10)

# FIXED: Using tune() in parsnip to satisfy constraints, then optimizing with a grid
run_one_spec <- multinom_reg(penalty = tune(), mixture = 1) %>%
  set_mode("classification") %>%
  set_engine("glmnet")

run1_lasso_wf <- workflow() %>%
  add_recipe(run_one, blueprint = sparse_bp) %>%
  add_model(run_one_spec)

# Format explicit tuning grid tibble wrapper
penalty_grid <- tibble(penalty = 10^seq(-4, 0, length.out = 10))

# Execution Stage (Parallel cluster configuration) -------------------------
set.seed(2023)
cores <- parallel::detectCores(logical = FALSE)
speed_cluster <- parallel::makeCluster(cores - 1)
doParallel::registerDoParallel(speed_cluster)

message("Tuning started across 10 folds... utilizing ", cores - 1, " hardware clusters.")

run1_lasso_rs <- tune_grid(
  run1_lasso_wf,
  resamples = run_one_folds,
  grid = penalty_grid,
  control = control_grid(save_pred = TRUE)
)

parallel::stopCluster(speed_cluster)
message("Tuning phase complete. Parallel computing nodes released successfully.")

# Post-Processing and Evaluation ------------------------------------------
cv_predictions <- run1_lasso_rs %>% collect_predictions()

# Find the best penalty parameters mathematically
best_acc <- run1_lasso_rs %>% show_best("accuracy", n = 1)
choose_acc <- run1_lasso_rs %>% select_by_one_std_err(metric = "accuracy", -penalty)

choose_acc %>% knitr::kable(caption = "Selected Final Model Settings")

# Generate unified Confusion Matrix
pooled_cm <- cv_predictions %>% 
  filter(penalty == choose_acc$penalty) %>%
  conf_mat(truth = product, estimate = .pred_class)

pooled_cm %>%
  autoplot(type = "heatmap") +
  scale_y_discrete(labels = function(x) str_wrap(x, 20)) +
  scale_x_discrete(labels = function(x) str_wrap(x, 20)) +
  scale_fill_gradient(low = "#FFFAFA", high = "#006400") +
  ggtitle("Cross-Validated Confusion Matrix (All Folds)")

# Deploy on Real Test Targets ---------------------------------------------
final_wf    <- finalize_workflow(run1_lasso_wf, choose_acc)
final_model <- fit(final_wf, data = dc_train)

results <- predict(final_model, new_data = dc_test) %>%
  bind_cols(dc_test %>% select(problem_id))

results %>%
  select(problem_id, .pred_class) %>%
  knitr::kable(caption = "Prediction Results on Test Data Set")

# System Footprint Validation ---------------------------------------------
sessioninfo::package_info() %>% 
  tibble() %>% 
  select(package, ondemand, date, source)

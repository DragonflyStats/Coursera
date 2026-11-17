Skip to Main Content
Coursera
SEARCH IN COURSE
Search in course
1

Kevin O'Brien


Modeling Data in the Tidyverse
Week 8
Example of Continuous Variable Prediction
The tidymodels Ecosystem
Reading: ReadingThe tidymodels Ecosystem
. Duration: 5 minutes5 min
Reading: ReadingBenefits of tidymodels
. Duration: 5 minutes5 min
Reading: ReadingPackages of tidymodels
. Duration: 15 minutes15 min
Reading: ReadingExample of Continuous Variable Prediction
. Duration: 45 minutes45 min
Reading: ReadingExample of Categorical Variable Prediction
. Duration: 30 minutes30 min
Quiz: tidymodels Quiz
7 questions
Example of Continuous Variable Prediction
For this example, we’ll keep it simple and use a dataset you’ve seen before: the iris dataset. This way you can focus on the syntax used in the tidymodels packages and the steps of predictive analysis. In this example, we’ll attempt to use the data in the iris dataset to predict Sepal.Length.

Step 1: Example of Data Splitting with rsample
As mentioned above, one of the first steps is to take your dataset and split it into a training set and a testing set. To do this, we’ll load the rsample package and use the initial_split() function to split the dataset.

We can specify what proportion of the data we would like to use for training using the prop argument.

Since the split is performed randomly, it is a good idea to use the set.seed() function in base R to ensure that if your rerun your code that your split will be the same next time.

1234567
library(rsample)
set.seed(1234)
split_iris <-initial_split(iris, prop = 2/3) 
split_iris
## <Analysis/Assess/Total>
## <100/50/150>
# the default proportion is 1/4 testing and 3/4 training
This results in printing the number of training data rows, the number testing data rows, and the total rows - each is printed with the “/” as a division between the values. Here the training set is called the analysis set, while the testing set is called the assess set.

We can see that about 70% of our observations are in the training dataset and the other 30% are in the tuning dataset, as we specified.

We can then extract the training and testing datasets by using the training() and testing() functions, also of the rsample package.

123456789
training_iris <-training(split_iris)
head(training_iris)
##    Sepal.Length Sepal.Width Petal.Length Petal.Width Species
## 1           5.1         3.5          1.4         0.2  setosa
## 7           4.6         3.4          1.4         0.3  setosa
## 8           5.0         3.4          1.5         0.2  setosa
## 9           4.4         2.9          1.4         0.2  setosa
## 10          4.9         3.1          1.5         0.1  setosa
## 11          5.4         3.7          1.5         0.2  se

12345678910
testing_iris <-testing(split_iris)
head(testing_iris)
##    Sepal.Length Sepal.Width Petal.Length Petal.Width Species
## 2           4.9         3.0          1.4         0.2  setosa
## 3           4.7         3.2          1.3         0.2  setosa
## 4           4.6         3.1          1.5         0.2  setosa
## 5           5.0         3.6          1.4         0.2  setosa
## 6           5.4         3.9          1.7         0.4  setosa
## 14          4.3         3.0          1.1         0.1  setos
Step 2: Example of preparing for preprocessing the data with recipes
After splitting the data, the next step is to process the training and testing data so that the data are are compatible and optimized to be used with the model. This involves assigning variables to specific roles within the model and preprocessing like scaling variables and removing redundant variables. This process is also called feature engineering.

To do this in tidymodels, we will create what’s called a “recipe” using the recipes package, which is a standardized format for a sequence of steps for preprocessing the data. This can be very useful because it makes testing out different preprocessing steps or different algorithms with the same preprocessing very easy and reproducible.

Creating a recipe specifies how a data frame of predictors should be created - it specifies what variables to be used and the preprocessing steps, but it does not execute these steps or create the data frame of predictors.

Step 1: Specify variables with the recipe() function
The first thing to do to create a recipe is to specify which variables we will be using as our outcome and predictors using the recipe() function. In terms of the metaphor of baking, we can think of this as listing our ingredients. Translating this to the recipes package, we use the recipe() function to assign roles to all the variables.

We can do so in two ways:

Using formula notation

Assigning roles to each variable

Let’s look at the first way using formula notation, which looks like this:

outcome(s) ~ predictor(s)

If in the case of multiple predictors or a multivariate situation with two outcomes, use a plus sign:

outcome1 + outcome2 ~ predictor1 + predictor2

If we want to include all predictors we can use a period like so:

outcome_variable_name ~ .

Let’s make our first recipe with the iris data! We will first try to predict Sepal.Length in our training data based on Sepal.Width and the Species. Thus, Sepal.Length is our outcome variable and Sepal.Width and Species are our predictor variables.

First we can specify our variables using formula notation:

1234567891011121314151617181920
library(recipes)
## Warning: package 'recipes' was built under R version 4.0.2
## 
## Attaching package: 'recipes'
## The following object is masked from 'package:stringr':
## 
##     fixed
## The following object is masked from 'package:stats':
## 
##     step

Alternatively, we could also specify the outcome and predictor(s) by assigning roles to the variables by using the update_role() function. Please see here for examples of the variety of roles variables can take.

We first need to use the recipe() function with this method to specify what data we are using.

1234567891011121314
first_recipe <- recipe(training_iris) %>%
                  recipes::update_role(Sepal.Length, new_role = "outcome")  %>%
                  recipes::update_role(Sepal.Width, new_role = "predictor") %>%
                  recipes::update_role(Species, new_role = "predictor")
first_recipe
## Data Recipe
## 
## Inputs:
## 
##       role #variables

We can view our recipe in  more detail using the base summary() function.

123456789
summary(first_recipe)
## # A tibble: 5 x 4
##   variable     type    role      source  
##   <chr>        <chr>   <chr>     <chr>   
## 1 Sepal.Length numeric outcome   original
## 2 Sepal.Width  numeric predictor original
## 3 Petal.Length numeric <NA>      original
## 4 Petal.Width  numeric <NA>      original
## 5 Species      nominal predictor original
Step 2: Specify the preprocessing steps with step*() functions
Next, we use the step*() functions from the recipe package to specify preprocessing steps.

This link and this link show the many options for recipe step functions.

There are step functions for a variety of purposes:

Imputation – filling in missing values based on the existing data

Transformation – changing all values of a variable in the same way, typically to make it more normal or easier to interpret

Discretization – converting continuous values into discrete or nominal values - binning for example to reduce the number of possible levels (However this is generally not advisable!)

Encoding / Creating Dummy Variables – creating a numeric code for categorical variables (More on Dummy Variables and one-hot encoding)

Data type conversions – which means changing from integer to factor or numeric to date etc.

Interaction term addition to the model – which means that we would be modeling for predictors that would influence the capacity of each other to predict the outcome

Normalization – centering and scaling the data to a similar range of values

Dimensionality Reduction/ Signal Extraction – reducing the space of features or predictors to a smaller set of variables that capture the variation or signal in the original variables (ex. Principal Component Analysis and Independent Component Analysis)

Filtering – filtering options for removing variables (ex. remove variables that are highly correlated to others or remove variables with very little variance and therefore likely little predictive capacity)

Row operations – performing functions on the values within the rows (ex. rearranging, filtering, imputing)

Checking functions – Sanity checks to look for missing values, to look at the variable classes etc.

All of the step functions look like step_*() with the * replaced with a name, except for the check functions which look like check_*().

There are several ways to select what variables to apply steps to:

Using tidyselect methods: contains(), matches(), starts_with(), ends_with(), everything(), num_range()

Using the type: all_nominal(), all_numeric() , has_type()

Using the role: all_predictors(), all_outcomes(), has_role()

Using the name - use the actual name of the variable/variables of interest

Let’s try adding a preprocessing step to our recipe.

We might want to potentially one-hot encode some of our categorical variables so that they can be used with certain algorithms like a linear regression require numeric predictors.

We can do this with the step_dummy() function and the one_hot = TRUE argument. One-hot encoding means that we do not simply encode our categorical variables numerically, as our numeric assignments can be interpreted by algorithms as having a particular rank or order. Instead, binary variables made of 1s and 0s are used to arbitrarily assign a numeric value that has no apparent order.

1234567891011121314151617
first_recipe <- first_recipe %>%
  step_dummy(Species, one_hot = TRUE)

first_recipe
## Data Recipe
## 
## Inputs:
## 
##       role #variables
##    outcome          1

Step 3: Example of optionally performing the preprocessing to see how it influences the data
Optionally one can use the prep() function of the recipes package to update the recipe for manually performing the preprocessing to see how this influences the data. This step is however not required when using the workflows package. The preprocessed training data can than be viewed by using the bake() function with the new_data = NULL argument, while preprocessed testing data can be viewed using the bake() function and specifying that the testing data is the new_data.

The prep() function estimates parameters (estimating the required quantities and statistics required by the steps for the variables) for preprocessing and updates the variables roles, as sometimes predictors may be removed, this allows the recipe to be ready to use on other datasets.

It does not necessarily actually execute the preprocessing itself, however we will specify using the retain argument for it to do this so that we can take a look at the preprocessed data.

There are some important arguments to know about:

training - you must supply a training dataset to estimate parameters for preprocessing operations (recipe steps) - this may already be included in your recipe - as is the case for us

fresh - if fresh=TRUE, - will retrain and estimate parameters for any previous steps that were already prepped if you add more steps to the recipe

verbose - if verbose=TRUE, shows the progress as the steps are evaluated and the size of the preprocessed training set

retain - if retain=TRUE, then the preprocessed training set will be saved within the recipe (as template). This is good if you are likely to add more steps and do not want to rerun the prep() on the previous steps. However this can make the recipe size large. This is necessary if you want to actually look at the preprocessed data.

Let’s try out the prep() function:

12345678910111213141516171819202122
prepped_rec <- prep(first_recipe, verbose = TRUE, retain = TRUE )
## oper 1 step dummy [training] 
## The retained training set is ~ 0.01 Mb  in memory.
prepped_rec
## Data Recipe
## 
## Inputs:
## 
##       role #variables
##    outcome          1

There are also lots of useful things to checkout in the output of prep(). You can see:

the steps that were run

the original variable info (var_info)

the updated variable info after preprocessing (term_info)

the new levels of the variables

the original levels of the variables (orig_lvls)

info about the training dataset size and completeness (tr_info)

We can see these using the $ notation:

12345678910
prepped_rec$var_info
## # A tibble: 5 x 4
##   variable     type    role      source  
##   <chr>        <chr>   <chr>     <chr>   
## 1 Sepal.Length numeric outcome   original
## 2 Sepal.Width  numeric predictor original
## 3 Petal.Length numeric <NA>      original
## 4 Petal.Width  numeric <NA>      original
## 5 Species      nominal predictor original

Now we can use bake to see the preprocessed training data. *Note that this used to require the juice() function.

Since we are using our training data we need to specify that we don’t have new_data with new_data = NULL.

1234567891011
preproc_train <-recipes::bake(prepped_rec, new_data = NULL)
glimpse(preproc_train)
## Rows: 100
## Columns: 7
## $ Sepal.Length       <dbl> 5.1, 4.6, 5.0, 4.4, 4.9, 5.4, 4.8, 4.8, 5.8, 5.7, …
## $ Sepal.Width        <dbl> 3.5, 3.4, 3.4, 2.9, 3.1, 3.7, 3.4, 3.0, 4.0, 4.4, …
## $ Petal.Length       <dbl> 1.4, 1.4, 1.5, 1.4, 1.5, 1.5, 1.6, 1.4, 1.2, 1.5, …
## $ Petal.Width        <dbl> 0.2, 0.3, 0.2, 0.2, 0.1, 0.2, 0.2, 0.1, 0.2, 0.4, …
## $ Species_setosa     <dbl> 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
We can see that the Species variable has been replaced by 3 variables representing the 3 different species numerically with zeros and ones.

Now we do the same for our testing data using bake(). You generally want to leave your testing data alone, but it is good to look for issues like the introduction of NA values if you have complicated preprocessing steps and you want to make sure this performs as you expect.

1234567891011
baked_test_pm <- recipes::bake(prepped_rec, new_data = testing_iris)
glimpse(baked_test_pm)
## Rows: 50
## Columns: 7
## $ Sepal.Length       <dbl> 4.9, 4.7, 4.6, 5.0, 5.4, 4.3, 5.2, 5.4, 5.1, 5.0, …
## $ Sepal.Width        <dbl> 3.0, 3.2, 3.1, 3.6, 3.9, 3.0, 3.5, 3.4, 3.4, 3.5, …
## $ Petal.Length       <dbl> 1.4, 1.3, 1.5, 1.4, 1.7, 1.1, 1.5, 1.5, 1.5, 1.3, …
## $ Petal.Width        <dbl> 0.2, 0.2, 0.2, 0.2, 0.4, 0.1, 0.2, 0.4, 0.2, 0.3, …
## $ Species_setosa     <dbl> 1, 1, 1, 1, 1, 1, 1, 1, 
Great! Now back to the typical steps.

Step 4: Example of specifying the model with parsnip
So far we have used the packages rsample to split the data and recipes to assign variable types, and to specify and prep our preprocessing (as well as to optionally extract the preprocessed data).

We will now use the parsnip package (which is similar to the previous caret package - and hence why it is named after the vegetable) to specify our model.

There are four things we need to define about our model:

The type of model (using specific functions in parsnip like rand_forest(), logistic_reg() etc.)

The package or engine that we will use to implement the type of model selected (using the set_engine() function)

The mode of learning - classification or regression (using the set_mode() function)

Any arguments necessary for the model/package selected (using the set_args()function - for example the mtry = argument for random forest which is the number of variables to be used as options for splitting at each tree node)

Let’s walk through these steps one by one. For our case, we are going to start our analysis with a linear regression but we will demonstrate how we can try different models.

The first step is to define what type of model we would like to use. See here for modeling options in parsnip.

We want to do a linear regression so we will use the linear_reg() function of the parsnip package.

123
Lin_reg_model <- parsnip::linear_reg()
Lin_reg_model
## Linear Regression Model Specification (regression)
OK. So far, all we have defined is that we want to use a linear regression. Now let’s tell parsnip more about what we want.

We would like to use the ordinary least squares method to fit our linear regression. So we will tell parsnip that we want to use the lm package to implement our linear regression (there are many options actually such as rstan glmnet, keras, and sparklyr). See here for a description of the differences and using these different engines with parsnip.

We will do so by using the set_engine() function of the parsnip package.

123456789
Lin_reg_model <- 
  Lin_reg_model  %>%
  parsnip::set_engine("lm")

Lin_reg_model
## Linear Regression Model Specification (regression)
## 
## Computational engine: lm

Some packages can do either classification or regression, so it is a good idea to specify which mode you intend to perform. Here, we aim to predict a continuous variable, thus we want to perform a regression analysis. You can do this with the set_mode() function of the parsnip package, by using either set_mode("classification") or set_mode("regression").

12345678910
Lin_reg_model <- 
  Lin_reg_model %>%
  parsnip::set_engine("lm") %>%
  parsnip::set_mode("regression")

Lin_reg_model
## Linear Regression Model Specification (regression)
## 
## Computational engine: lm

Step 5: Example of fitting the model
We can use the parsnip package with a newer package called workflows to fit our model.

The workflows package allows us to keep track of both our preprocessing steps and our model specification. It also allows us to implement fancier optimizations in an automated way and it can also handle post-processing operations.

We begin by creating a workflow using the workflow() function in the workflows package.

Next, we use add_recipe() (our preprocessing specifications) and we add our model with the add_model() function – both functions from the workflows package.

Note: We do not need to actually prep() our recipe before using workflows - this was just optional so we could take a look at the preprocessed data!

1234567891011121314151617
iris_reg_wflow <-workflows::workflow() %>%
                 workflows::add_recipe(first_recipe) %>%
                 workflows::add_model(Lin_reg_model)
iris_reg_wflow
## ══ Workflow ═════════════════════════════════════════════════════════════════════════════════════════════════════════════
## Preprocessor: Recipe
## Model: linear_reg()
## 
## ── Preprocessor ─────────────────────────────────────────────────────────────────────────────────────────────────────────
## 1 Recipe Step

Ah, nice. Notice how it tells us about both our preprocessing steps and our model specifications.

Next, we “prepare the recipe” (or estimate the parameters) and fit the model to our training data all at once. Printing the output, we can see the coefficients of the model.

123456789101112131415161718192021
iris_reg_wflow_fit <- parsnip::fit(iris_reg_wflow, data = training_iris)
iris_reg_wflow_fit
## ══ Workflow [trained] ═══════════════════════════════════════════════════════════════════════════════════════════════════
## Preprocessor: Recipe
## Model: linear_reg()
## 
## ── Preprocessor ─────────────────────────────────────────────────────────────────────────────────────────────────────────
## 1 Recipe Step
## 
## ● step_dummy()

Step 6: Example of assessing the model performance
Recall that often for regression analysis we use the RMSE to assess model performance.

To get this we first need to get the predicted (also called “fitted”) values.

We can get these values using the pull_workflow_fit() function of the workflows package. These values are in the $fit$fitted.values slot of the output. Alternatively, we can use the predict() function with the workflow and the training data specified as the new_data.

1234567
library(workflows)
wf_fit <- iris_reg_wflow_fit %>% 
  pull_workflow_fit()

head(wf_fit$fit$fitted.values)
FALSE        1        2        3        4        5        6 
FALSE 5.069164 5.000194 5.000194 4.655345 4.793284 5.207103

1234567891011121314151617
predict(iris_reg_wflow_fit, new_data = training_iris)
FALSE Warning in predict.lm(object = object$fit, newdata = new_data, type =
FALSE "response"): prediction from a rank-deficient fit may be misleading
FALSE # A tibble: 100 x 1
FALSE    .pred
FALSE    <dbl>
FALSE  1  5.07
FALSE  2  5.00
FALSE  3  5.00
FALSE  4  4.66

To get more information about the prediction for each sample, we can use the augment() function of the broom package. This requires using the preprocessed training data from bake() (or with previous versions juice()), as well as the predicted values from either of the two previous methods.

12345678910111213141516171819202122
wf_fitted_values <- 
  broom::augment(wf_fit$fit, data = preproc_train) %>% 
  select(Sepal.Length, .fitted:.std.resid)

head(wf_fitted_values)
FALSE # A tibble: 6 x 8
FALSE   Sepal.Length .fitted .se.fit    .resid   .hat .sigma       .cooksd .std.resid
FALSE          <dbl>   <dbl>   <dbl>     <dbl>  <dbl>  <dbl>         <dbl>      <dbl>
FALSE 1          5.1    5.07  0.0707  0.0308   0.0286  0.420 0.0000413       0.0748  
FALSE 2          4.6    5.00  0.0712 -0.400    0.0290  0.418 0.00706      
Nice, now we can see what the original value for Sepal.Length right next to the predicted .fitted value, as well as standard errors and other metrics for each value.

Now we can use the rmse() function of the yardstick package to compare the truth, which is the Sepal.Length variable, to the predicted or estimate variable which in the previous output is called .fitted.

1234567
yardstick::rmse(wf_fitted_values, 
               truth = Sepal.Length, 
            estimate = .fitted)
## # A tibble: 1 x 3
##   .metric .estimator .estimate
##   <chr>   <chr>          <dbl>
## 1 rmse    standard       0.410
We can see that our RMSE was 0.409558. This is fairly low, so our model did pretty well.

We can also make a plot to visualize how well we predicted Sepal.Length.

1234567
wf_fitted_values %>%
  ggplot(aes(x = Sepal.Length, y = .fitted)) +
  geom_point() +
  geom_smooth(method = "lm") +
  labs( x = "True Sepal Length", y = "Predicted Sepal Length")
## `geom_smooth()` using formula 'y ~ x'



We can see that overall our model predicted the sepal length fairly well, as the predicted values are fairly close to the true values. We can also see that the predictions were similar to the truth for the full range of true sepal length values.

Typically we might modify our preprocessing steps or try a different model until we were satisfied with the performance on our training data. Assuming we are satisfied, we could then perform a final assessment of our model using the testing data.

With the workflows package, we can use the splitting information for our original data split_iris to fit the final model on the full training set and also on the testing data using the last_fit() function of the tune package. No preprocessing steps are required.

We can do this by using the last_fit() function of the tune package.

123456789
overallfit <-iris_reg_wflow %>%
  tune::last_fit(split_iris)
FALSE ! Resample1: model (predictions): prediction from a rank-deficient fit may be misleading
overallfit
FALSE # Monte Carlo cross-validation (0.67/0.33) with 1 resamples  
FALSE # A tibble: 1 x 6
FALSE   splits       id           .metrics      .notes       .predictions    .workflow
FALSE   <list>       <chr>        <list>        <list>       <list>          <list>   
FALSE 1 <split [100… train/test … <tibble [2 ×… <tibble [1 … <tibbl
We can then use the collect_metrics() function of the tune package to get the RMSE:

123456
collect_metrics(overallfit)
## # A tibble: 2 x 3
##   .metric .estimator .estimate
##   <chr>   <chr>          <dbl>
## 1 rmse    standard       0.481
## 2 rsq     standard       0.710
We can see that our RMSE is pretty similar for the testing data as well.

























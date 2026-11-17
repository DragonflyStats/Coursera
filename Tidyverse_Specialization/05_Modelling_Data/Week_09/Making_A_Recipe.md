# Making a Recipe

Now with our data, we will start by making a recipe for our training data.  
The continuous outcome variable is **value** (the average annual gravimetric monitor PM2.5 concentration in µg/m³).  
Our features (predictor variables) are all variables **except** the monitor ID, which is an identifier.

The reason not to include the ID variable is because it contains the county number and a number designating which particular monitor the values came from. Since this number is arbitrary, and county information is already present, and each monitor only has one value in the outcome variable, nothing is gained by including this variable—it may instead introduce noise.  
However, it is useful to keep this data for later inspection.

We will show how to handle this shortly.

---

## A Simple Recipe

In the simplest case, we might use all predictors like this:

```r
# install.packages("tidymodels")
library(tidymodels)

simple_rec <- train_pm %>%
  recipes::recipe(value ~ .)

simple_rec
```

---

## Updating the Role of the ID Variable

Instead of including the ID variable as a predictor, we can use `update_role()`:

```r
simple_rec <- train_pm %>%
  recipes::recipe(value ~ .) %>%
  recipes::update_role(id, new_role = "id variable")

simple_rec
```

---

## Selecting Variables for Recipe Steps

There are several ways to select variables for steps:

- **Tidyselect helpers:**  
  `contains()`,  
  `matches()`,  
  `starts_with()`,  
  `ends_with()`,  
  `everything()`,  
  `num_range()`

- **By type:**  
  `all_nominal()`,  
  `all_numeric()`,  
  `has_type()`

- **By role:**  
  `all_predictors()`,  
  `all_outcomes()`,  
  `has_role()`

- **By name:**  
  Use the actual variable names.

---

## Adding Steps to the Recipe

We want to dummy‑encode categorical variables so they become numeric, since we plan to use linear regression.

One‑hot encoding avoids implying an order among categories.

```r
simple_rec %>%
  step_dummy(state, county, city, zcta, one_hot = TRUE)
```

---

## Handling the `fips` Variable

The `fips` variable is essentially a proxy for county. Since we already have county, we will keep `fips` as another ID variable.

```r
simple_rec %>%
  update_role("fips", new_role = "county id")
```

---

## Removing Highly Correlated Predictors

We can remove redundant variables using `step_corr()`.  
We do **not** want to remove `CMAQ` or `aod`, so we exclude them:

```r
simple_rec %>%
  step_corr(all_predictors(), -CMAQ, -aod)
```

---

## Removing Near‑Zero Variance Predictors

Variables with very low variance can be removed using `step_nzv()`:

```r
simple_rec %>%
  step_nzv(all_predictors(), -CMAQ, -aod)
```

---

## Putting It All Together

Order matters—just like in a cooking recipe.

```r
simple_rec <- train_pm %>%
  recipes::recipe(value ~ .) %>%
  recipes::update_role(id, new_role = "id variable") %>%
  update_role("fips", new_role = "county id") %>%
  step_dummy(state, county, city, zcta, one_hot = TRUE) %>%
  step_corr(all_predictors(), -CMAQ, -aod) %>%
  step_nzv(all_predictors(), -CMAQ, -aod)

simple_rec
```

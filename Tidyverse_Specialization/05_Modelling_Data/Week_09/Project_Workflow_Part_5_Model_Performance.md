Model Performance: Getting Predicted Values
=============================================================================================
In this next section, our goal is to assess the overall model performance. The way we do this is to compare the similarity between the predicted estimates of the outcome variable produced by the model and the true outcome variable values.

Machine learning (ML) is an optimization problem that tries to minimize the distance between our predicted outcome and actual outcome using our features (or predictor variables) as input to a function that we want to estimate.

First, let’s pull out our predicted outcome values from the models we fit (using different approaches).

<pre><code>
wf_fit <- PM_wflow_fit %>% 
  pull_workflow_fit()

wf_fitted_values <- wf_fit$fit$fitted.values
head(wf_fitted_values)
##         1         2         3         4         5         6 
##  9.480088 10.418317 11.786217 11.295655 10.806653 11.091767
</code></pre>

Alternatively, we can get the fitted values using the augment() function of the broom package using the output from workflows:

<pre><code>
wf_fitted_values <- 
  broom::augment(wf_fit$fit, data = preproc_train) %>% 
  select(value, .fitted:.std.resid)

head(wf_fitted_values)
## # A tibble: 6 x 8
##   value .fitted .se.fit .resid   .hat .sigma    .cooksd .std.resid
##   <dbl>   <dbl>   <dbl>  <dbl>  <dbl>  <dbl>      <dbl>      <dbl>
## 1  9.60    9.48   0.375  0.118 0.0323   2.09 0.00000333     0.0573
## 2 10.8    10.4    0.383  0.382 0.0338   2.09 0.0000368      0.186 
</code></pre>
Finally, we can also use the predict() function. Note that because we use the actual workflow here, we can (and actually need to) use the raw data instead of the preprocessed data.

<pre><code>
values_pred_train <- 
  predict(PM_wflow_fit, train_pm) %>% 
  bind_cols(train_pm %>% select(value, fips, county, id)) 
## Warning in predict.lm(object = object$fit, newdata = new_data, type =
## "response"): prediction from a rank-deficient fit may be misleading
values_pred_train
## # A tibble: 584 x 5
##    .pred value fips  county    id       
##    <dbl> <dbl> <fct> <chr>     <fct>    
##  1  9.48  9.60 1003  Baldwin   1003.001 
</code></pre>


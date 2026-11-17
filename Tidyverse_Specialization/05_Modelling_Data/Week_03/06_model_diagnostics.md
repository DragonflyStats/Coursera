Model Diagnostics
=======================

Above, we discussed a number of assumptions of linear regression. After fitting a model, it’s necessary to check the model to see if it satisfies the assumptions of linear regression. If the model does not fit the data well (for example, the relationship is nonlinear), then you cannot use and interpret the model.

In order to assess your model, a number of diagnostic plots can be very helpful. Diagnostic plots can be generated using the `plot()` function with the fitted model as an argument.

```r
par(mfrow = c(2, 2))
plot(fit)
```

This generates four plots:

1. **Residuals vs Fitted** - Checks the linear relationship assumption of linear regression. A linear relationship will demonstrate a horizontal red line here. Deviations from a horizontal line suggest nonlinearity and that a different approach may be necessary.

2. **Normal Q-Q** - Checks whether or not the residuals (the difference between the observed and predicted values) from the model are normally distributed. The best fit models points fall along the dashed line on the plot. Deviation from this line suggests that a different analytical approach may be required.

3. **Scale-Location** - Checks the homoscedasticity of the model. A horizontal red line with points equally spread out indicates a well-fit model. A non-horizontal line or points that cluster together suggest that your data are not homoscedastic.

4. **Residuals vs Leverage** - Helps to identify outliers or extreme values that may disproportionately affect the model’s results. Their inclusion or exclusion from the analysis may affect the results of the analysis. Note that the top three most extreme values are identified with numbers next to the points in all four plots.

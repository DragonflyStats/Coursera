Model fit in logistic regression 
==============================================

If a regression model – or any other kind of model not seen on the catwalk – is to be useful, it needs to fit the data well. What does that mean?  

There are essentially two very different ways of approaching this question: predictive power and goodness of fit. Ideally, you want your model to do well on both. Some of what I'll cover is also relevant to other types of regression, and the course on linear regression in this series introduced the important concept of the residual.

With the first, the aim is to get a statistic that measures how well you can predict the dependent variable (the outcome, so getting diagnosed with diabetes in our case) based on the independent variables (the predictors, such as age and BMI). This will tell you about the “predictive power” or “explanatory power” of the model. Generally they range between 0 (the model explains none of the data and the variables don’t predict the outcome at all) and 1 (the variables predict the outcome completely). These include measures such as the R-square and the area under the ROC curve, which we’ll look at shortly.  

The other approach to evaluating model fit is to compute what’s called a goodness-of-fit statistic. These kind of measures include the deviance and the popular Hosmer-Lemeshow statistic. There are formal tests for these that yield a p value, so if you’re happy to use the usual cut-off of p=0.05, you can use them to decide whether your model fits the data acceptably. Again, more on those shortly. Goodness of fit tells you nothing about predictive power – and vice versa. You can get good prediction with poor fit or a model with good fit but poor prediction.

Let’s look at some of these in brief, beginning with what they are and then how to calculate them in R. 

### R-squared measures

The previous course on linear regression models covered how to test how well your linear regression model fits the data. The most common way to do so is with the R-squared value, which measures the proportion of the variance in the outcome variable (Y) that can be explained by your predictor variables (X1, X2… etc). An R-squared value close to 1 indicates strong predictive power, while one close to 0 indicates poor predictive power. As you now know, logistic regression is used when the outcome variable is binary. We can't do correlation tests if your Y can only take 2 values – so what can we do?

It turns out that there are many ways to approximate an R-squared for logistic regression. One of the best ways is with the McFadden (pseudo) R-squared. This measure depends on the “likelihood” of your model, which is a cryptic way of describing how compatible your model parameters are with the observed data. You don’t need to know the details of the calculation of the likelihood or indeed of McFadden’s R-squared measure. The McFadden R-squared can be interpreted in a similar way to the “classic” R-squared from a linear regression: high values are best. In practice, though, R-squared values – whether the McFadden version or any other – tend to be pretty low and certainly lower than people who are used to linear models expect. This does not mean the model is bad – it's more a reflection of the limitation of the R-squared measure than of the model. 

Discrimination: c statistic or area under the ROC curve

In prognostic modelling – estimating the risk of an outcome (e.g. disease) based on a person’s characteristics (e.g. age, gender, etc) – we want to be able to assess a model’s discrimination. Discrimination is a “measure of how well the model can separate those who do and do not have the [outcome] of interest” [Nancy Cook in Circulation 2007]. In our case, we’re interested in distinguishing between people with and without a disease (diabetes). When looking at a sample of patients, a model with good discrimination will declare those with a disease to have had a higher risk than all of those without the disease. Therefore, in the modelling world, discrimination is a good thing.

You can see why you would want to test this for your logistic models. In the example you’ve done, you've built a model to test the potential relationship between several traits (age, gender, cholesterol level, etc) with a disease outcome: diabetes. In your sample of patients, would your model predict a higher risk score for those who we have observed to have diabetes than those who don’t?

One of the most popular ways to do this is called the “area under the receiver operating characteristic (ROC) curve, or “c-statistic” for short. The ROC is a plot of sensitivity (probability of a positive result among the cases) against 1 - specificity (probability of a negative result among the non-cases). A “case” here is someone with the disease or outcome of interest. This can be reworded as the “true positive rate” vs. the “false positive rate”. These terms are covered in more detail in the epidemiology course as part of the online MPH. This is what the plot looks like for 3 models on dummy data:


The area under a curve, which is calculated by a technique called integration, is the c-statistic. A c-statistic of 0.5 indicates that the model is only as good at predicting the outcome as random chance (i.e. no discrimination). A curve at or close to the black line (y=x) in the diagram would be an example of this. As the curve pulls away and above from the black line, the area under it increases, so therefore the discrimination increases. In the diagram, the model represented by the red ROC curve has the best discrimination. A c-statistic of 1 would be perfect, but of course this never happens in real life and in fact, as Cook’s article shows, the theoretical maximum for a given model is often lower than this. A c-statistic below 0.5 would predict the outcome worse than random chance, which would mean a very poor model indeed.

With large datasets, these plots will be smooth, but for smaller ones they are often somewhat jagged like this:


The c-statistic appears a lot in the machine learning literature too when the aim is prediction, as it is here.

### Deviance

This word has certain connotations in non-statistical spheres, but in regression it concerns how well – or rather how badly – the model fits the data. 

It’s a measure of the “goodness of fit”. In a linear model, where the outcome can take on any value, the predicted value can match the actual outcome exactly or differ from it by a measurable amount. This leads straightforwardly to the concept of deviance – a measure of how the prediction differs from the observed outcome. In logistic regression, however, the observed outcome can only take on two values, zero and one, whereas the predicted value, a log odds, can take on any value and can be mapped to a probability, which can take on any value between zero and one. Therefore, we can’t just take the deviance measure from the linear regression case. Some adjustment is necessary. 

One very common approach can be taken when the data can be aggregated or grouped into unique “profiles”: groups of cases that have exactly the same values on the predictors, e.g. patients with the same age, gender and insurance. After fitting the model, we can get an observed number of events and an expected number of events for each profile. The two well-known statistics for comparing the observed number with the expected number are the deviance and Pearson’s chi-square. Both produce statistics that can be compared against tables of a chi-squared distribution in order to see how unusual the value of the statistic is for that model, which yields a p value. High p values (e.g. above the usual threshold of 0.05) mean that the model’s deviance statistic is nothing unusual, which is a good thing as it means that the model fits the data well. The deviance compares our model with a few variables in against one that fits the data perfectly – the “saturated model” – to see whether we’re missing anything important, such as interactions between variables or non-linearities.

This profile approach is fine when we have only categorical predictors. 

It will likely be fine with age (in years) if there are a number of patients with each different value for age. If the data are spread so that there’s only one case per profile, then the deviance and the Pearson’s chi-square statistic won’t fit the chi-squared distribution very well at all, so the test breaks down. What can we do? This leads us to the next measure: the Hosmer-Lemeshow statistic, proposed in 1980 and still very much in use today. 


#### Calibration: Hosmer-Lemeshow statistic and test

Here, patients are grouped together according to their predicted values from the model, which are ordered from lowest to highest and then separated into typically ten groups of roughly equal size. For each group, we calculate the observed number of events – here that’s the number of patients with diabetes – and the expected number of events, which is just the sum of the predicted probabilities for all the patients in the group. Pearson’s chi-square test is then applied to compare observed counts with expected counts. A large p value (e.g. above the conventional 0.05) indicates that the model’s predicted values are a good match for the real (observed) values, i.e. the model is a good fit.

The authors’ own work has revealed some limitations with the test. With small data sets, the test has limited ability (limited power) to detect important differences between the observed and expected counts i.e. to detect poor fit that’s poor enough to worry about. At the other end, with large data sets, you can get a low p value when the difference between the observed and expected isn’t that important.

It has some other issues too. One is that although the standard number of groups to use is ten, the p value can be altered just by choosing fewer or more than ten groups, and there’s no good way of deciding on the number. Another is that some people, including me, have found that adding interaction terms between variables, even non-significant ones, can alter the statistic.

Despite all these problems, the test is much used and reported in literature. These days, I only use the plot of the observed against the expected rather than the p value. Some other tests are reviewed at 
https://support.sas.com/resources/papers/proceedings14/1485-2014.pdf
 though the article uses SAS as the exemplar software package.

How to get these statistics in R

The deviance is given by default – see the next item on the course – but the R-squared, c statistic and Hosmer-Lemeshow statistics and test have to be requested in R.

### McFadden’s r-squared:

Here’s the formula in case you wanted it:  


Where lnL(MFull) is the (maximised) log likelihood of your fitted model and lnL(MNull) is the log likelihood of a null model. 
You can calculate this is a simple way manually in R:  
<pre><code>
# design your logistic regression 
full_model <- glm(dm ~ age + chol + insurance, family=binomial (link=logit)) 
 
# check your model 
summary(full_model) 
##  
## Call: 
## glm(formula = dm ~ age + chol + insurance, family = binomial(link = logit)) 
##  
## Deviance Residuals:  
</code></pre>


This R-squared of about 14% is typical of logistic regression models and is actually not too bad (but not great).

c-statistic:

The easiest way to generate the c-statistic in R is to download the package “DescTools” and use the function Cstat(). 

12345678910111213141516171819202122232425262728293031323334353637383940
# install a package 
install.packages("DescTools") 
## Installing package into '' 
## (as 'lib' is unspecified) 
## package 'DescTools' successfully unpacked and MD5 sums checked 
##  
## The downloaded binary packages are in 
##   
# load package 
require(DescTools) 

Hosmer-Lemeshow statistic and test: 

1234567891011121314151617181920
# H-L test 
 
# install package "ResourceSelection" 
install.packages("ResourceSelection") 
## Installing package into '' 
## (as 'lib' is unspecified) 
## package 'ResourceSelection' successfully unpacked and MD5 sums checked 
##  
## The downloaded binary packages are in 
##   

  

full_model$y  is the outcome variable we specified (dm); fitted(full_model) generates fitted values from the model.   

<pre><code>
# run Hosmer-Lemeshow test 
HL <- hoslem.test(x = full_model$y, y = fitted(full_model), g = 10) 
HL  
##  
##  Hosmer and Lemeshow goodness of fit (GOF) test 
##  
## data:  full_model$y, fitted(full_model) 
## X-squared = 11.25, df = 8, p-value = 0.1879 
# plot the observed vs expected number of cases for each of the 10 groups 
plot(HL$observed[,"y1"], HL$expected[,"yhat1"]) 
</pre></code>

12
# plot the observed vs expected number of noncases for each of the 10 groups 
plot(HL$observed[,"y0"], HL$expected[,"yhat0"]) 
  


<pre><code>
# plot observed vs. expected prevalence for each of the 10 groups 
plot(x = HL$observed[,"y1"]/(HL$observed[,"y1"]+HL$observed[,"y0"]), 
     y = HL$expected[,"yhat1"]/(HL$expected[,"yhat1"]+HL$expected[,"yhat0"]))  
</code></pre>



  As you can see, there are different ways of plotting the information from a Hosmer-Lemeshow test. 
  Another way is to plot the ten ratios of observed:predicted cases, where a well-calibrated model would show ten points very near 1. 

<pre><code>
##  
##  Hosmer and Lemeshow goodness of fit (GOF) test 
##  
## data:  full_model$y, fitted(full_model) 
## X-squared = 11.25, df = 8, p-value = 0.1879 
# verify result with another package? 
 
# install package("generalhoslem") 
install.packages("generalhoslem") 
## Installing package into '' 

</code></pre>

It’s not necessary to run the test in both packages, but I've given it here for interest.

So according to the Hosmer-Lemeshow test, the p-value is 0.1879 from both packages, suggesting good calibration. 



Using broom
==========================
Finally, while the summary() output are visually helpful, if you want to get any of the numbers out from that model, it’s not always straightforward. 
Thankfully, there is a package to help you with that! The tidy() function from the broom package helps take the summary output from a statistical model and organize it into a tabular output.

123456789
#install.packages("broom")
library(broom)
tidy(fit)
## # A tibble: 2 x 5
##   term        estimate std.error statistic p.value
##   <chr>          <dbl>     <dbl>     <dbl>   <dbl>
## 1 (Intercept)   -6.19     5.96       -1.04 0.308  
## 2 Height         0.256    0.0782      3.27 0.00276

Note that the values haven’t changed. They’re just organized into an easy-to-use table. 
  It’s helpful to keep in mind that this function and package exist as you work with statistical models.

Finally, it’s important to always keep in mind that the interpretation of your inferential data analysis is incredibly important. 
  When you use linear regression to test for association, you’re looking at the relationship between the two variables. 
  While girth can be used to infer a tree’s height, this is just a correlation. It does not mean that an increase in girth causes the tree to grow more. Associations are correlations. They are not causal.

For now, however, in response to our question, can we infer a black cherry tree’s height from its girth, the answer is yes. 
  We would expect, on average, a tree’s height to increase 0.255 inches for every one inch increase in girth.


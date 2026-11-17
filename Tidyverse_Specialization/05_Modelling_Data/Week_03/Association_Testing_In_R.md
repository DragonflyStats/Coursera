Association Testing in R
Now that we’ve discussed what you can learn from an association test, let’s look at an example in R. For this example we’ll use the trees dataset available in R, which includes girth, height, and volume measurements for 31 black cherry trees.

With this dataset, we’ll answer the question:

Can we infer the height of a tree given its girth?

Presumably, it’s easier to measure a trees girth (width around) than it is to measure its height. Thus, here we want to know whether or not height and girth are associated.

In this case, since we’re asking if we can infer height from girth, girth is the independent variable and height is the dependent variable. In other words, we’re asking does height depend on girth?

First, before carrying out the linear regression to test for association and answer this question, we have to be sure linear regression is appropriate. We’ll test for linearity and homoscedasticity.

To do so, we’ll first use ggplot2 to generate a scatterplot of the variables of interest.

12345
library(ggplot2)

trees %>%
  ggplot() + 
  geom_point(aes(Height, Girth))


From the looks of this plot, the relationship looks approximately linear, but to visually make this a little easier, we’ll add a line of best first to the plot.

12345
trees %>%
  ggplot(aes(Height, Girth)) + 
  geom_point() + 
  geom_smooth(method = "lm", se = FALSE)
## `geom_smooth()` using formula 'y ~ x'


On this graph, the relationship looks approximately linear and the variance (distance from points to the line) is constant across the data. Given this, it’s appropriate to use linear regression for these data.





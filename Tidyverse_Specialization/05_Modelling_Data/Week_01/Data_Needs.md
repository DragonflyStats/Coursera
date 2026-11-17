
#### FollowingData Needs
Let’s assume you have the dataset that contains the variables you are looking for to evaluate the question(s) you are interested in, and it is tidy and ready to go for your analysis. It’s always nice to step back to make sure the data is the right data before you spend hours and hours on your analysis. So, let’s discuss some of the potential and common issues people run into with their data.

#### Number of observations is too small
It happens quite often that collecting data is expensive or not easy. 
For instance, in a medical study on the effect of a drug on patients with Alzheimer disease, researchers will be happy if they can get a sample of 100 people. 
These studies are expensive, and it’s hard to find volunteers who enroll in the study. It is also the case with most social experiments. While data are everywhere, the data you need may not be. Therefore, most data scientists at some point in their career face the curse of small sample size. Small sample size makes it hard to be confident about the results of your analysis. So when you can, and it’s feasible, a large sample is preferable to a small sample. But when your only available dataset to work with is small you will have to note that in your analysis. Although we won’t learn them in this course, there are particular methods for inferential analysis when sample size is small.

Dataset does not contain the exact variables you are looking for
In data analysis, it is common that you don’t always have what you need. You may need to know individuals’ IQ, but all you have is their GPA. 
You may need to understand food expenditure, but you have total expenditure. You may need to know parental education, but all you have is the number of books the family owns. 
It is often that the variable that we need in the analysis does not exist in the dataset and we can’t measure it. In these cases, our best bet is to find the closest variables to that variable. Variables that may be different in nature but are highly correlated with (similar to) the variable of interest are what are often used in such cases. These variables are called proxy variables.

#### Variables of Interest
For instance, if we don’t have parental education in our dataset, we can use the number of books the family has in their home as a proxy. 
Although the two variables are different, they are highly correlated (very similar), since more educated parents tend to have more books at home. 
So in most cases where you can’t have the variable you need in your analysis, you can replace it with a proxy. 
Again, it must always be noted clearly in your analysis why you used a proxy variable and what variable was used as your proxy.

Variables in the dataset are not collected in the same year
Imagine we want to find the relationship between the effect of cab prices and the number of rides in New York City. We want to see how people react to price changes. We get a hold of data on cab prices in 2018, but we only have data on the number of rides from 2015. Can these two variables be used together in our analysis? Simply, no. If we want to answer this question, we can’t match these two sets of data. If we’re using the prices from 2018, we should find the number of rides from 2018 as well. Unfortunately, a lot of the time, this is an issue you’ll run into. You’ll either have to find a way to get the data from the same year or go back to the drawing board and ask a different question. This issue can be ignored only in cases where we’re confident the variables does not change much from year to year.
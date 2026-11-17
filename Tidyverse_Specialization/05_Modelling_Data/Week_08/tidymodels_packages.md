Packages of tidymodels
We will focus on the following packages although there are many more in the tidymodels ecosystem:



rsamples - to split the data into training and testing sets (as well as cross validation sets - more on that later!)

recipes - to prepare the data with preprocessing (assign variables and preprocessing steps)

parsnip - to specify and fit the data to a model

yardstick and tune - to evaluate model performance

workflows - combining recipe and parsnip objects into a workflow (this makes it easier to keep track of what you have done and it makes it easier to modify specific steps)

tune and dials - model optimization (more on what hyperparameters are later too!)

broom - to make the output from fitting a model easier to read

Here you can see a visual of how these packages work together in the process of performing a machine learning analysis:


To illustrate how to use each of these packages, we will work through some examples.

Other tidymodels packages include:


[source]


applicable compares new data points with the training data to see how much the new data points appear to be an extrapolation of the training data

baguette is for speeding up bagging pipelines

butcher is for dealing with pipelines that create model objects take up too much memory

discrim has more model options classification

embed has extra preprocessing options for categorical predictors

hardhat helps you to make new modeling packages

corrr has more options for looking at correlation matrices

rules has more model options for prediction rule ensembles

text recipes has extra preprocessing options for using text data

tidypredict is for running predictions inside SQL databases

modeldb is also for working within SQL databases and it allows for dplyr and tidyeval use within a database

tidyposterior compares models using resampling statistics

Most of these packages offer advanced modeling options.


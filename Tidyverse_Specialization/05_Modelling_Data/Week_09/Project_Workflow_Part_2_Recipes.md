Making a Recipe
Now with our data, we will start by making a recipe for our training data. If you recall, the continuous outcome variable is value (the average annual gravimetric monitor PM2.5 concentration in ug/m3). Our features (or predictor variables) are all the other variables except the monitor ID, which is an id variable.

The reason not to include the id variable is because this variable includes the county number and a number designating which particular monitor the values came from (of the monitors there are in that county). Since this number is arbitrary and the county information is also given in the data, and the fact that each monitor only has one value in the value variable, nothing is gained by including this variable and it may instead introduce noise. However, it is useful to keep this data to take a look at what is happening later. We will show you what to do in this case in just a bit.

In the simplest case, we might use all predictors like this:
Important information before you start the quiz
In the previous peer review component of the project, you built a machine learning model to predict the consumer complaint category using the `data_complaints_train.csv` dataset that contained labeled categories for each complaint (i.e. "Mortgage", "Student loan", etc). For the quiz in the next section, you will use the following dataset that does not have labeled categories. There a total of 20 unlabeled complaints.

Data set: Testing data -- complaints from CFPB (data_complaints_test.csv) [37Kb]

In this quiz, your goal is to predict the category for each of the 20 complaints using the machine learning model you just built. 

As there are many ways you could have engineered the features for your machine learning model, the following may not apply or be relevant to you. However, we provide the following helpful hint as one possible way of predicting the complaints on these 20 test complaints. Again, this is only one suggestion of many possible ways of approaching this task. 

In the previous peer review component of the project, a helpful hint was provided to you to consider engineering a set of features from the text of consumer complaints (i.e. character strings) that can be used for classification. The idea is to create a matrix of how frequent a given word appeared for a given complaint, and use the most frequently used features to build a machine learning model. For example, let's assume you engineered four features: the number of times the four patterns "house", "car", "student", and "card" appeared in each complaint. If your training dataset contained 1000 observations, you would have built a matrix with 1000 rows (corresponding to the complaints) and 4 columns (corresponding to the four patterns). This is the data you might have used to build the machine learning model. 

Now, if you wanted to apply the trained machine learning model to a set of new complaints (i.e. the 20 test complaints that are unlabeled), you will need to build a matrix with the exact same patterns (along the columns) and for each of the 20 complaints (along the rows). Another way of stating this is for each complaint, you simply need to count the number of times the pattern "house" appears, etc. Here, you are not engineering new features, but rather you are simply counting the number of times a set of pre-determined, specific features appear in the complaints. 

Now, there are many ways you can build this matrix. A few steps you might find helpful for this task include 

writing a function that takes as input a set of patterns, and for each pattern, the `str_count()` function from the `stringr` package is used to count the number of times a pattern occurs

the `map_df()` function from the `purrr` package

the `pivot_wider()` function from the `tidyr` package

We hope you will find this hint helpful in predicting the 20 test complaints, but please keep in mind this suggestion is not the only way to approach predicting the complaints. There are many other ways to do this task. 
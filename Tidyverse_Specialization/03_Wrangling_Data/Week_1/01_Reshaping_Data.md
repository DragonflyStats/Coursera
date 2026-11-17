Reshaping Data
=================
Tidy data generally exist in two forms: wide data and long data. Both types of data are used and needed in data analysis, and fortunately, there are tools that can take you from wide-to-long format and from long-to-wide format. This makes it easy to work with any tidy dataset. We’ll discuss the basics of what wide and long data are and how to go back and forth between the two in R. 
Getting data into the right format will be crucial later when summarizing data and visualizing it.

#### Wide Data
Wide data has a column for each variable and a row for each observation. Data are often entered and stored in this manner. 
This is because wide data are often easy to understand at a glance. For example, this is a wide dataset:


Figure: Wide dataset

Up until this point, we would have described this dataset as a rectangular, tidy dataset. 
With the additional information just introduced, we can also state that it is a wide dataset. 
Here, you can clearly see what measurements were taken for each individual and can get a sense of how many individuals are contained in the dataset.

Specifically, each individual is in a different row with each variable in a different column. 
At a glance we can quickly see that we have information about four different people and that each person was measured in four different ways.

#### Long Data
Long data, on the other hand, has one column indicating the type of variable contained in that row and then a separate row for the value for that variable. 
Each row contains a single observation for a single variable. 
It’s still a tidy datasets, but the information is stored in a long format:


Figure: Long dataset

This long dataset includes the exact same information as the previous wide dataset; it is just stored differently. 
It’s harder to see visually how many different measurements were taken and on how many different people, but the same information is there.

While long data formats are less readable than wide data at a glance, they are often a lot easier to work with during analysis. 
Most of the tools we’ll be working with use long data. 
Thus, to go from how data are often stored (wide) to working with the data during analysis (long), we’ll need to understand what tools are needed to do this and how to work with them.

### Common problems with messy datasets

* Column headers are values but should be variable names.
* A single column has multiple variables.
* Variables have been entered in both rows and columns.
* Multiple “types” of data are in the same spreadsheet.
* A single observation is stored across multiple spreadsheets.


#### Tidying untidy data
There are a number of actions you can take on a dataset to tidy the data depending on the problem. 
These include: filtering, transforming, modifying variables, aggregating the data, and sorting the order of the observations. 
There are functions to accomplish each of these actions in R. 
While we’ll get to the details of the code in a few lessons, it’s important at this point to be able to identify untidy data and to determine what needs to be done in order to get those data into a tidy format. Specifically, we will focus on a single messy dataset. This is dataset D from the ‘Data Organization in Spreadsheets’ example of messy data. We note that there are blank cells and that the data are not rectangular.


Figure: Messy dataset

To address this, these data can be split into two different spreadsheets, one for each type of data. 
Spreadsheet A includes information about each sample. 
Spreadsheet B includes measurements for each sample over time. 
Note that both spreadsheets have an ‘id’ column so that the data can be merged if necessary during analysis. 
The ‘note’ column does have some missing data. Filling in these blank cells with ‘NA’ would fully tidy these data. 
We note that sometimes a single spreadsheet becomes two spreadsheets during the tidying process. 
This is OK as long as there is a consistent variable name that links the two spreadsheets!


Figure: Tidy version of the messy dataset


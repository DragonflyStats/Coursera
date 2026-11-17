For this question you will need to read the `excel_data.xlsx` file into R using the readxl package. There are two sheets in this spreadsheet file named "Sheet1" and "Sheet2". Use the readxl package to read in "Sheet2" from the spreadsheet file directly and answer the question below. Recall that the [[ operator can be used to subset a column of tibble or data frame.

What is the mean of the column labeled "X12" in "Sheet2"? You can use the mean() function to compute the mean of a column. (Choose the closest answer.)

1 point

2.75


7.41


-4.03


-8.32

2.
Question 2
Continuing from Question 1 above, use the readxl package to read in both "Sheet1" and "Sheet2" from the excel_data.xlsx file. 

What is the correlation between column "X5" in "Sheet1" and column "X8" in "Sheet2"? Use the cor() function to compute the correlation between two columns. (Choose the closest answer.)

1 point

-0.612


-0.037


0.356


0.073

3.
Question 3
For this question you will need to read in the database file sqlite_data.db using the RSQLite package. In this database file there is table named "table1". You will need to read that table to answer this question.

The "ID" column in "table1" serves as and identification number for elements in the database table. What is the correlation between columns "S2" and "S3" for rows with ID equal to 8 only? (Hint: There should be 100 rows where ID = 8.)

1 point

0.219


.912


-0.478


-0.332

4.
Question 4
For this question you need to read in "Sheet2" from the excel_data.xlsx file using the readxl package and the data from the table2.json file using the jsonlite package. 
Then you need to inner join the two tables by their corresponding ID columns to create a new data frame.

What is the mean of column "J2" in the joined data frame?

1 point

-5.11


-0.261


0.017


6.936

5.
Question 5
Continuing from Question 4 above, what is the correlation between column "X2" and column "J4" in the joined data frame?

1 point

-0.971


0.023


0.091


-0.112

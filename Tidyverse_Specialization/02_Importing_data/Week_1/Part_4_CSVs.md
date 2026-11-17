CSVs
==============
Like Excel Spreadsheets and Google Sheets, Comma-separated values (CSV) files allow us to store tabular data; however, it does this in a much simple format. 
CSVs are plain-text files, which means that all the important information in the file is represented by text (where text is numbers, letters, and symbols you can type on your keyboard). This means that there are no workbooks or metadata making it difficult to open these files. CSVs are flexible files and are thus the preferred storage method for tabular data for many data scientists.

For example, consider a dataset that includes information about the heights and blood types of three individuals. 
You could make a table that has three columns (names, heights, and blood types) and three rows (one for each person) in Google Docs or Microsoft Word. 
However, there is a better way of storing this data in plain text without needing to put them in table format. CSVs are a perfect way to store these data. 
In the CSV format, the values of each column for each person in the data are separated by commas and each row (each person in our case) is separated by a new line. This means your data would be stored in the following format:


Figure: sample CSV

Notice that CSV files have a .csv extension at the end. You can see this above at the top of the file. 
One of the advantages of CSV files is their simplicity. Because of this, they are one of the most common file formats used to store tabular data. 
Additionally, because they are plain text, they are compatible with many different types of software. CSVs can be read by most programs. 
Specifically, for our purposes, these files can be easily read into R (or Google Sheets, or Excel), where they can be better understood by the human eye. Here you see the same CSV opened in Google Sheets, where it’s more easily interpretable by the human eye:


Figure: CSV opened in Google Sheets

As with any file type, CSVs do have their limitations. Specifically, CSV files are best used for data that have a consistent number of variables across observations. 
In our example, there are three variables for each observation: “name”, “height”, and “blood_type”. If, however, you had eye color and weight for the second observation, but not for the other rows, you’d have a different number of variables for the second observation than the other two. This type of data is not best suited for CSVs (although you could use NA values to make the data rectangular). 
Whenever you have information with the same number of variables across all observations, CSVs are a good bet!

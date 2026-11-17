Reading Data into R
tibble
While not technically a package that helps read data into R, tibble is a package that re-imagines the familiar R data.frame. It is a way to store information in columns and rows, but does so in a way that addresses problems earlier in the pipeline.

From the tibble website:

"A tibble, or tbl_df, is a modern reimagining of the data.frame, keeping what time has proven to be effective, and throwing out what is not. Tibbles are data.frames that are lazy and surly: they do less (i.e. they don’t change variable names or types, and don’t do partial matching) and complain more (e.g. when a variable does not exist). This forces you to confront problems earlier, typically leading to cleaner, more expressive code. Tibbles also have an enhanced print() method which makes them easier to use with large datasets containing complex objects."

In fact, when working with data using the tidyverse, you’ll get very comfortable working with tibbles.

readr
The readr package is used by users of the tidyverse all the time. It helps read rectangular data into R. If you find yourself working with CSV files frequently, then you’ll find yourself using readr regularly.

According to the readr website:

"The goal of readr is to provide a fast and friendly way to read rectangular data (like csv, tsv, and fwf). It is designed to flexibly parse many types of data found in the wild, while still cleanly failing when data unexpectedly changes. If you are new to readr, the best place to start is the data import chapter in R for data science."

googlesheets4
The googlesheets4 package is a brilliant tidyverse adjacent package that allows users to “access and manage Google spreadsheets from R.” As more and more data is saved in the cloud (rather than on local computers), packages like googlesheets4 become invaluable. If you store data on Google Sheets or work with people who do, this package will be a lifesaver.

readxl
Another package for working with tabular data is readxl, which is specifically designed to move data from Excel into R. If many of your data files have the .xls or .xlsx extension, familiarizing yourself with this package will be helpful.

From the readxl website:

"The readxl package makes it easy to get data out of Excel and into R. Compared to many of the existing packages (e.g. gdata, xlsx, xlsReadWrite) readxl has no external dependencies, so it’s easy to install and use on all operating systems. It is designed to work with tabular data."

googledrive
Similar to googlesheets4, but for interacting with file on Google Drive from R (rather than just Google Sheets), the googledrive package is an important tidyverse-adjacent package for working with data in R.

haven
If you are a statistician (or work with statisticians), you’ve likely heard of the statistical packages SPSS, Stata, and SAS. Each of these has data formats for working with data that are compatible only with their platform. However, there is an R package that allows you to use read stored in these formats into R. For this, you’ll need haven.

jsonlite & xml2
Data stored on and retrieved from the Internet are often stored in one of the two most common semi-structured data formats: JSON or XML. We’ll discuss the details of these when we discuss how to use jsonlite and xml2, which allow data in the JSON and XML formats, respectively, to be read into R. The jsonlite package helps extensively when working with Application Programming Interfaces (APIs) and xml2 is incredibly helpful when working with HTML.

rvest
If you are hoping to scrape data from a website, rvest is a package with which you’ll want to become familiar. It allows you to scrape information directly from web pages on the Internet.

httr
Companies that share data with users often do so using Application Programming Interfaces or APIs. We’ve mentioned that these data are often stored in the JSON format, requiring packages like jsonlite to work with the data. However, to retrieve the data in the first place, you’ll use httr. This package helps you interact with modern web APIs.

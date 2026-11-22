# 01 - OLTP Assignment Overview

## Overview

In this assignment, you will complete three exercises with multiple tasks. Before starting the assignment, you will first verify the lab environment by starting the MySQL server and downloading the database file from the provided link.

In the first exercise, you will design the schema for an OLTP database. The schema will store fields such as Row ID, Product ID, Customer ID, Price, Quantity, and Timestamp of Sale.

In the second exercise, you will load the downloaded data into the OLTP database by importing the file. After importing, you will list the tables in the database and write a query to count the number of records in the table.

In the final exercise, you will automate administrative tasks by:

* Creating an index on the timestamp field

* Listing all indexes of the salesdata table

* Writing a Bash script to export records from the table into another file

--------------------

## OLTP database requirements and design

### OLTP database
OLTP database is generally used to handle every day business transactions of an organization like a bank or a super market chain. OLTP databases can be write heavy or may have a balanced read/write load.

### OLTP database requirements:
An OLTP database is expected to handle a huge number of transactions per second. Each transaction usually involves accessing (read/write) a small portion of the database, in other words the payload per transaction is small.

The time taken to execute a transaction usually called latency needs to be very less.

### OLTP database design:
The schema of an OLTP database is higly normalized so as to achieve a very low latency. To further improve the latency an OLTP database stores only the recent data like the last few week's data. They are usually run on storage that is very fast like SSD.

----------------------

## Objectives Checklist

1. **Task 1**
   Have you created a database called `sales`?

2. **Task 2**
   Have you designed a table named `sales_data`?

3. **Task 3**
   Have you imported the data in the file `oltpdata.csv`?

4. **Task 4**
   Have you listed the tables in the database `sales`?

5. **Task 5**
   Have you written a query to find out the count of records in the table `sales_data`?

6. **Task 6**
   Have you created an index?

7. **Task 7**
   Have you listed the indexes?

8. **Task 8**
   Have you written a bash script to export data?

## Relational Database Design & R Database Integration Quiz Review

---

### Question 1

**What are two reasons to map an existing data source, like pre-existing database tables, database dump files, or raw data, to a relational database design? *(Select all that apply.)***

* To ensure offline access to the data
* To enhance security by limiting the number of concurrent users.
* **To eliminate redundancy in the data** ✅
* **To facilitate address issues with data normalization** ✅

> **Feedback:** A good database design can help you eliminate data redundancy and address issues related to data normalization when working with data from different sources and in different formats. *(1 / 1 point)*

---

### Question 2

**You have two tables in your database design: `Customers`, which lists all your customers, and `Orders`, which lists all the sales transactions that your customers have made over the years. Both the tables have a field called `Customer_ID`. Which of the following describes the relationship between the two tables?**

* Both the `Customer_ID` field in the `Customers` table and the `Customer_ID` field in the `Orders` table are primary keys.
* Both the `Customer_ID` field in the `Customers` table and the `Customer_ID` field in the `Orders` table are foreign keys.
* **The `Customer_ID` field in the `Customers` table is a primary key, and the `Customer_ID` field in the `Orders` table is a foreign key.** ✅
* The `Customer_ID` field in the `Customers` table is a foreign key, and the `Customer_ID` field in the `Orders` table is a primary key.

> **Feedback:** The `Customer_ID` in the `Customers` table is the primary key because it is a unique key within the table, while the `Customer_ID` in the `Orders` table may appear many times within the database rows. *(1 / 1 point)*

---

### Question 3

**What is the SQL DDL command that can be used to add primary keys to an existing table in a database?**

* **`ALTER TABLE`** ✅
* `CREATETABLE`
* `UPDATE TABLE`
* `SQL QUERY`

> **Feedback:** The `ALTER TABLE` command creates primary keys in a table. *(1 / 1 point)*

---

### Question 4

**What is the recommended SQL command for loading small to medium amounts of data into a database?**

* `COPY` command
* `LOAD` or `IMPORT` (there is no difference)
* **`IMPORT` command** ✅
* `LOAD` command

> **Feedback:** The `IMPORT` command is used when loading small to medium amounts of data. *(1 / 1 point)*

---

### Question 5

**What are two ways to limit database movement and increase performance when querying a database?**

* **Use stored procedures when possible** ✅
* Use the `sqlQuery()` or `sqlFetch()` commands
* Load all the data directly into a data frame to reduce the number of times you must revisit the database.
* **Use SQL functions provided by the database vendor whenever possible** ✅

> **Feedback:** Use database stored procedures and database vendor-provided functions to reduce the amount of data that gets loaded into memory and increase performance. *(1 / 1 point)*

---

### Question 6

**What type of relationship does the database model indicate between each school board and multiple schools?**

* Many-to-One
* **One-to-Many** ✅
* One-to-One
* Many-to-Many

> **Feedback:** The database model indicates a one-to-many relationship between each school board and multiple schools. *(1 / 1 point)*

---

### Question 7

**Which method is recommended to avoid unnecessary data transfer when analyzing data with a powerful database engine?**

* RJDBC functions for database connection.
* Create custom R functions for data retrieval.
* **Leverage SQL functions provided by the database engine** ✅
* Ship data back to R for analysis

> **Feedback:** The SQL functions provided by the database engine meet data analysis needs and avoid unnecessarily shipping data back to R. *(1 / 1 point)*

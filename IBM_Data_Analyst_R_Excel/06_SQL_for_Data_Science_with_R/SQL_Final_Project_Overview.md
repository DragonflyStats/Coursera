## Final Project Overview

**Estimated time needed:** 20 minutes

### Assignment Scenario

Imagine you have just been hired by a US Venture Capital firm as a data scientist.

The company is considering foreign grain markets to help meet its supply chain requirements for its recent investments in the microbrewery and microdistillery industry, which is involved with the production and distribution of craft beers and spirits.

Your first task is to provide a high-level analysis of crop production in Canada. Your stakeholders want to understand the current and historical performance of certain crop types in terms of supply and price. For now, they are mainly interested in a macro-view of Canada’s crop farming industry, and how it relates to the relative value of the Canadian and US dollars.

You will be asked questions that will help you understand the data just like a data analyst or data scientist would. You will also be asked to create four tables in a database, and load the tables using the provided datasets from R using the `RODBC` / `RSQLite` package. You will be assessed both on the correctness of your SQL queries and results, as well as the correctness of your table creation and data loading results.

An R-based Jupyter notebook has been provided to help with completing this assignment. Follow the instructions to complete all the problems, then share your solutions with your peers for reviewing.

### Objectives

1. Understand four datasets
2. Load the datasets into four separate tables in a database
3. Execute SQL queries using the `RODBC` / `RSQLite` R package to answer assignment questions

> **Note:** You have already encountered two of these datasets in the previous practice lab, and you will be able to reuse much of the work you did there to successfully prepare your database tables for executing SQL queries.

---

### Exercise 1: Understand the Datasets

To complete the assignment problems in the notebook, you will use subsetted snapshots of two datasets from **Statistics Canada**, and two small datasets created from a third data source from the **Bank of Canada**. The links to the prepared datasets are provided in the next section; interested students can explore the landing pages for the source datasets as follows:

1. **Canadian Principal Crops (Data & Metadata)**
* **Description:** Contains agricultural production measures for the principal crops grown in Canada, including a breakdown by province and territory, for each year from 1908 to 2020. For this assignment, you will use a preprocessed snapshot of this dataset.
* **Source Portal:** [Statistics Canada - Table 32-10-0359-01](https://www150.statcan.gc.ca/t1/tbl1/en/tv.action?pid=3210035901) *(Detailed information is included in the metadata file and as header text in the downloadable data file under 'Download options'.)*


2. **Farm Product Prices (Data & Metadata)**
* **Description:** Contains monthly average farm product prices for Canadian crops and livestock by province and territory, from 1980 to 2020. For this assignment, you will use a preprocessed snapshot of this dataset.
* **Source Portal:** [Statistics Canada - Table 32-10-0077-01](https://www150.statcan.gc.ca/t1/tbl1/en/tv.action?pid=3210007701) *(Metadata details can be downloaded under 'Download options'.)*


3. **Bank of Canada Daily Average Exchange Rates**
* **Description:** Contains daily average exchange rates for multiple foreign currencies, expressed as 1 unit of the foreign currency converted into Canadian dollars. It includes only the latest four years of data, published once each business day by 16:30 ET. For this assignment, you will use a snapshot with only the USD–CAD exchange rates included, alongside a monthly averaged version.
* **Source Portal:** [Bank of Canada Daily Exchange Rates](https://www.bankofcanada.ca/rates/exchange/daily-exchange-rates/) *(These datasets are the same as the ones used in the practice lab.)*



#### Dataset URLs

* **Annual Crop Data:** `Annual_Crop_Data.csv`
* **Daily FX Data:** `Daily_FX.csv`
* **Monthly Farm Prices:** `Monthly_Farm_Prices.csv`
* **Monthly FX Data:** `Monthly_FX.csv`

> **IMPORTANT:** You will be loading these datasets directly into R data frames from these URLs instead of from the StatsCan and Bank of Canada portals. The versions provided at these URLs are simplified and subsetted versions of the original datasets.

---

### Exercise 2: Load Datasets into Four Separate Tables

In this exercise, you will prepare the database so you can solve problems using SQL in Exercise 3. Perform these steps in the provided Jupyter notebook.

* **Problem 1: Create Tables**
Establish a connection to the database and create the following four tables using the `RODBC` / `RSQLite` package in R *(refer to the previous practice lab for guidance)*:
1. `CROP_DATA`
2. `FARM_PRICES`
3. `DAILY_FX`
4. `MONTHLY_FX`


* **Problem 2: Read Datasets and Load Tables**
Read the datasets directly into R data frames using the URLs provided above, and load them into the four tables you created.

---

### Exercise 3: Execute SQL Queries Using the `RODBC` / `RSQLite` R Package

* **Problem 3:** How many records are in the farm prices dataset?
* **Problem 4:** Which provinces are included in the farm prices dataset?
* **Problem 5:** How many hectares of Rye were harvested in Canada in 1968?
* **Problem 6:** Query and display the first 6 rows of the farm prices table for Rye.
* **Problem 7:** Which provinces grew Barley?
* **Problem 8:** Find the first and last dates for the farm prices data.
* **Problem 9:** Which crops have ever reached a farm price greater than or equal to $350 per metric tonne?
* **Problem 10:** Rank the crop types harvested in Saskatchewan in the year 2000 by their average yield. Which crop performed best?
* **Problem 11:** Rank the crops and geographies by their average yield (KG per hectare) since the year 2000. Which crop and province had the highest average yield since the year 2000?
* **Problem 12:** Use a subquery to determine how much wheat was harvested in Canada in the most recent year of the data.
* **Problem 13:** Use an implicit inner join to calculate the monthly price per metric tonne of Canola grown in Saskatchewan in both Canadian and US dollars. Display the most recent 6 months of the data.

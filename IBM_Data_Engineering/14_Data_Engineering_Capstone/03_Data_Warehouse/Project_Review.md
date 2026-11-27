## Graded Quiz: Build a Data Warehouse — Review & Study Guide

### Business Problem & Lab Context

This 10-question assessment (weighted at 4.50% of the final course grade) evaluates your implementation of **Module 3: Data Warehousing and Data Warehousing Reporting** in the IBM Data Engineering Capstone Project.

The underlying business problem involves designing and querying a centralized analytical repository for an e-commerce company (**SoftCart**):

1. **Part 1 — Data Warehouse Design & Setup (pgAdmin / PostgreSQL):** SoftCart needs to analyze sales across yearly, monthly, daily, and weekday intervals, as well as by product item, category, and country. You first model a star schema using the pgAdmin ERD design tool (`softcartDimDate`, `softcartDimCategory`, `softcartDimItem`, `softcartDimCountry`, and `softcartFactSales`), and then restore a senior Data Engineer's refined schema and sample data into a `staging` database.


2. **Part 2 — Data Warehouse Reporting (PostgreSQL / IBM Db2):** After loading CSV datasets into the reporting tables (`DimDate`, `DimCategory`, `DimCountry`, and `FactSales`), you write analytical SQL queries using `GROUPING SETS`, `ROLLUP`, and `CUBE`, and build a materialized view (`countrystats` / `total_sales_per_country`) to pre-aggregate sales performance by country.



---

### Expected Knowledge & Technical Skills

To complete this quiz accurately, you should be familiar with:

* **Star Schema & Dimensional Modeling:** Distinguishing between **fact tables** (which hold measurable metrics like price/amount and foreign keys) and **dimension tables** (which hold descriptive attributes like calendar breakdowns, country names, and category names).


* **Schema Evolution Between Labs:** Recognizing how table definitions shift slightly between the initial pgAdmin ERD exercise (`softcart*` tables, e.g., `softcartDimItem` starting with 3 columns before `price` is added in Exercise 2) and the subsequent Data Warehouse Reporting lab (`FactSales` containing `Orderid`, `Dateid`, `Countryid`, `Categoryid`, and `Amount`).


* **OLAP SQL Extensions:** Writing multi-dimensional aggregations using `GROUP BY GROUPING SETS`, `GROUP BY ROLLUP`, and `GROUP BY CUBE` across joined fact and dimension tables.


* **Materialized Views / MQTs:** Joining `FactSales` and `DimCountry` on `countryid` to persist pre-computed country-level sales totals.



---

### Complete Question-by-Question Review & Answer Key

| Q# | Lab Reference | Question Summary | Verified Answer | Technical Explanation |
| --- | --- | --- | --- | --- |
| **Q1** | Data Warehousing Lab (Task 1) | Column **not** valid in `softcartDimDate` | **`Product`** | `softcartDimDate` stores temporal fields (`dateid`, `date`, `year`, `quarter`, `quartername`, `month`, `monthname`, `day`, `weekday`, `weekdayname`), not product attributes.

 |
| **Q2** | Data Warehousing Lab (Task 2) | Number of columns in `softcartDimCategory` | **`2`** | Contains `categoryid` and `categoryname`.

 |
| **Q3** | Data Warehousing Lab (Task 3) | Number of columns in `softcartDimItem` | **`3`** | In the initial ERD exercise, `softcartDimItem` contains `itemid`, `itemname`, and `categoryid` (4 columns once `price` is added in the revised schema).

 |
| **Q4** | Data Warehousing Lab (Task 5) | Number of columns in `softcartFactSales` | **`6`** | Contains `orderid`, `itemid`, `categoryid`, `price`, `countryid`, and `dateid`. |
| **Q5** | Data Warehousing Lab (Task 5) | Column **not** valid in `softcartFactSales` | **`Country`** | Fact tables store the foreign key `countryid`; the text name `Country` lives in `softcartDimCountry`.

 |
| **Q6** | Warehouse Reporting Lab (Task 5) | `GROUP BY` clause used in the query | **`groupby grouping sets`** | Matches the exact string key used in Coursera's quiz grading rubric for `GROUP BY GROUPING SETS (co.country, ca.category, (co.country, ca.category))`.

 |
| **Q7** | Warehouse Reporting Lab (Task 6) | Columns included in the `ROLLUP` clause | **`year, country`** | Aggregates hierarchical sales totals via `GROUP BY ROLLUP (d.year, co.country)`. |
| **Q8** | Warehouse Reporting Lab (Task 7) | Correct `CUBE` syntax used in the query | **`group by cube (year,country)`** | Generates all sub-total combinations across year and country via `GROUP BY CUBE (d.year, co.country)`.

 |
| **Q9** | Warehouse Reporting Lab (Task 8) | Tables joined for the materialized view | **`FactSales, Dimcountry`** | Joins `FactSales` and `DimCountry` on `countryid` to summarize total sales per country.

 |
| **Q10** | Warehouse Reporting Lab (Task 4) | Column **not** valid in `FactSales` | **`Country`** | `FactSales` in the reporting lab includes `Orderid`, `Dateid`, `Countryid`, `Categoryid`, and `Amount`, referencing `DimCountry` via `Countryid`.

 |

---

### Key Takeaways & Exam Tips

* **Normalize vs. Denormalize:** Both Q5 and Q10 test the same core data warehousing rule—descriptive string attributes (`Country`, `Product`) belong in dimension tables, while fact tables only store numeric measures (`Price`, `Amount`) and integer foreign keys (`Countryid`, `Dateid`, `Categoryid`, `Itemid`).


* **Watch Lab Version Differences:** Pay close attention to which lab and exercise a question references—the initial ERD design exercise (`softcart*` tables) and the reporting lab (`FactSales` / `Dim*` tables) use slightly different column counts and naming conventions.

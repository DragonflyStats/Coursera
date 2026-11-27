The **IBM Data Engineering Capstone Project** tasks you with designing, implementing, and automating an end-to-end data platform for an e-commerce retailer (**SoftCart**). Across six sequential technical stages, you build transactional and document databases, architect an analytical data warehouse, visualize retail performance, automate ETL pipelines, and deploy big data machine learning models.

---

### Stage 1: Data Platform Architecture & OLTP Database (MySQL)

* **Objective:** Establish the transactional backbone to store live e-commerce sales records.


* **Tools & Technologies:** MySQL, Bash scripting (`mysqldump`).


* **Key Tasks & Deliverables:**
* Architect the overall data platform infrastructure and create the relational `sales` database.


* Design and create the `sales_data` table with columns for `product_id`, `customer_id`, `price`, `quantity`, and `timestamp`.


* Populate the table from `oltpdata.csv`, verify record counts (`SELECT COUNT(*)`), and build database indexes to optimize query performance.


* Write an automated backup shell script (`datadump.sh`) using `mysqldump` to export all rows from `sales_data` into `sales_data.sql`.





### Stage 2: NoSQL Database Management (MongoDB)

* **Objective:** Store and query semi-structured e-commerce product catalog data.


* **Tools & Technologies:** MongoDB, `mongoimport`, MongoDB Aggregation Framework.


* **Key Tasks & Deliverables:**
* Provision the `catalog` database and import `catalog.json` into the `electronics` collection using `mongoimport`.


* Create single-field indexes (such as on the `type` attribute) to accelerate catalog lookups.


* Author MongoDB aggregation pipelines (`$match`, `$group`) to analyze product attributes—for example, computing the average screen size across all smartphones.





### Stage 3: Data Warehousing & Analytical Reporting (PostgreSQL / IBM Db2)

* **Objective:** Transform operational data into a dimensional model optimized for historical business reporting.


* **Tools & Technologies:** PostgreSQL (pgAdmin ERD Tool), IBM Db2, Analytical SQL.


* **Key Tasks & Deliverables:**
* **Schema Design:** Use pgAdmin's ERD tool to design a Star Schema for the `softcart` warehouse centered around a fact table (`softcartFactSales`) linked directly to four dimension tables: `softcartDimDate` (10 temporal attributes), `softcartDimCategory`, `softcartDimItem`, and `softcartDimCountry`.


* **Data Staging & Loading:** Restore a reference staging schema and load historical CSV datasets into `DimDate`, `DimCategory`, `DimCountry`, and `FactSales`.


* **OLAP & MQT Reporting:** Write advanced analytical SQL queries utilizing `GROUPING SETS`, `ROLLUP`, and `CUBE` to slice sales by country, category, and year, and create a Materialized Query Table / Materialized View (`total_sales_per_country`) to precompute country-level revenue.





### Stage 4: Business Intelligence & Dashboard Creation

* **Objective:** Translate warehouse metrics into interactive executive visualizations.


* **Tools & Technologies:** IBM Cognos Analytics or Google Looker Studio.


* **Key Tasks & Deliverables:**
* Connect your BI platform to the 2020 SoftCart sales dataset.


* Build and export three core visualizations:
1. A **line chart** tracking month-wise total sales across 2020 to identify seasonal peaks and troughs.


2. A **pie chart** illustrating total sales distribution across product categories (e.g., Mobile phones, Electronics, Laptop, Tablet).


3. A **bar chart** analyzing quarterly sales performance specifically for mobile phones (`Q1`–`Q4`).







### Stage 5: ETL & Automated Data Pipelines (Python & Apache Airflow)

* **Objective:** Automate incremental data synchronization between OLTP and warehouse systems and orchestrate scheduled log-processing workflows.


* **Tools & Technologies:** Python (`mysql.connector`, `ibm_db`), Apache Airflow, Linux CLI (`cut`, `grep`).


* **Key Tasks & Deliverables:**
* **Incremental Warehouse Sync (`automation.py`):** Implement Python ETL functions (`get_last_rowid()`, `get_latest_records()`, and `insert_records()`) that query the maximum `rowid` in the data warehouse, fetch only newly added rows from MySQL, and insert them into the warehouse without duplicating historical records.


* **Airflow DAG Orchestration (`process_web_log.py`):** Define a daily scheduled Directed Acyclic Graph (`process_web_log`) using `BashOperator` tasks to extract IP addresses from `accesslog.txt` (`cut`), filter out banned/specific IP addresses (`grep -v`), and load/archive the transformed output, then deploy and unpause the DAG via the Airflow CLI.





### Stage 6: Big Data Analytics & Machine Learning (Apache Spark)

* **Objective:** Process large-scale search logs and deploy a predictive sales forecasting model.


* **Tools & Technologies:** PySpark (`SparkSession`, Spark DataFrames, Spark MLlib `VectorAssembler`, `LinearRegressionModel`).


* **Key Tasks & Deliverables:**
* **Big Data Exploration:** Load e-commerce search datasets into Spark DataFrames to inspect dimensions, filter product searches (such as `'gaming laptop'`), and aggregate the top 5 most frequently searched terms.


* **Sales Forecasting:** Load a pre-trained Spark MLlib `LinearRegressionModel` (`sales_prediction.model`), assemble input feature vectors using `VectorAssembler`, and execute `model.transform()` to forecast projected sales for future periods (e.g., 2023).





---

### Evaluation & Assessment Structure

* **Module Checklists & Quizzes (50% of Course Grade):** Each module concludes with a hands-on verification checklist (3%–4% weight each) and a graded technical quiz (3.75%–4.50% weight each).


* **Final Capstone Submission (50% of Course Grade):** A 26-question cumulative assessment (auto-graded by AI or peer-reviewed) requiring SQL DDL/DML queries, MongoDB commands, ERD schema answers, dashboard chart uploads and trend interpretations, Python/Airflow pipeline code, and PySpark outputs, with a **70% passing threshold**.

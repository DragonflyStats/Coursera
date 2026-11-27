Based on the provided capstone project syllabus and course resources, here is the structured summary for curriculum mapping and teaching purposes:

### Course Overview

In the **Data Engineering Capstone Project** (the final course in the IBM Data Engineering Professional Certificate on Coursera), learners act as Junior Data Engineers who design and implement an end-to-end data analytics platform for a retail business.

---

### Module Breakdown & Architecture Flow

1. **Module 1: Data Platform Architecture & OLTP Database**
* **Focus:** Designing the overall architecture and setting up the operational database.


* **Key Tasks:** Create a MySQL database (e.g., `sales`), define tables like `sales_data`, load transactional data (`oltpdata.csv`), build indexes, and set up bash scripts to dump/export data.


* **Key Technologies:** MySQL, SQL, Linux Shell Scripting.




2. **Module 2: NoSQL Database**
* **Focus:** Managing semi-structured e-commerce catalog data.


* **Key Tasks:** Configure MongoDB, import product catalog data, create indexes, execute aggregations, and export data.


* **Key Technologies:** MongoDB, JSON, NoSQL.




3. **Module 3: Data Warehouse**
* **Focus:** Data warehousing setup, schema design, and advanced SQL analytics.


* **Key Tasks:** Design a star-schema using pgAdmin ERD tools (`softcartDimDate`, `softcartDimCategory`, `softcartDimCountry`, `softcartFactSales`), load warehouse data into staging/production, and perform `GROUPING SETS`, `ROLLUP`, and `CUBE` queries.


* **Key Technologies:** PostgreSQL, IBM Db2, SQL Analytics.




4. **Module 4: Business Intelligence and Dashboards**
* **Focus:** Visualizing sales and operational metrics.


* **Key Tasks:** Connect BI tools to data warehouse tables to generate reports (quarterly bar charts, category pie charts, monthly trend lines).


* **Key Technologies:** IBM Cognos Analytics (with Google Looker Studio offered as an alternative option).




5. **Module 5: ETL and Data Pipelines**
* **Focus:** Workflow automation and data pipeline orchestration.


* **Key Tasks:** Extract, transform, and load data across systems using Python scripts and schedule/monitor automated execution DAGs.


* **Key Technologies:** Apache Airflow, Python, Shell Scripting.




6. **Module 6: Big Data Analytics**
* **Focus:** Distributed computing and predictive analytics.


* **Key Tasks:** Analyze large search-term datasets using PySpark DataFrames and build/load sales forecasting models.


* **Key Technologies:** Apache Spark, PySpark, Machine Learning (Linear Regression).




7. **Module 7: Final Assessment and Submission**
* **Focus:** End-to-end solution validation.


* **Key Tasks:** Submit completed components (either AI-graded or Peer-reviewed option) to demonstrate platform implementation.





---

### Core Technology Mapping

| Platform Layer | Primary Tools / Technologies |
| --- | --- |
| **OLTP Store** | MySQL, SQL, Shell Scripting

 |
| **NoSQL Store** | MongoDB, JSON

 |
| **Data Warehouse** | PostgreSQL (pgAdmin), IBM Db2

 |
| **Pipeline Orchestration** | Apache Airflow, Python

 |
| **Big Data / ML** | Apache Spark, PySpark

 |
| **BI & Analytics** | IBM Cognos Analytics / Google Looker Studio

 |
| **Environment** | Linux Shell

 |

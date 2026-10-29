# IBM Relational Database Administration (DBA): Monitoring and Optimization

This practice assessment covers core techniques and concepts related to relational database performance, operational monitoring approaches, index behavior, key performance metrics, and database optimization utilities.

---

## Summary of Answers

* **Question 1:** B — Database security breach
* **Question 2:** B — Automated processes
* **Question 3:** C — Secondary
* **Question 4:** B — Processes that have been locked
* **Question 5:** D — MAKEDB and CATEGORY

---

### Question 1

*Reactive monitoring occurs after an operational anomaly or critical incident has taken place—such as a data breach or security incident—to investigate the root cause and assess system impact.*

**Reactive monitoring of a database is done after an issue occurs. What is a common situation for when reactive monitoring happens?**

* **A.** Renaming a database
* **B.** **Database security breach** *(Correct)*
* **C.** Wrong database information
* **D.** Database merge

---

### Question 2

*Proactive monitoring relies on automated background processes, health scripts, and alerts to continuously measure system health and address potential issues before they cause downtime.*

**Proactive monitoring is used to prevent reactive monitoring. How is proactive monitoring usually done?**

* **A.** Database comparison
* **B.** **Automated processes** *(Correct)*
* **C.** Manual tests
* **D.** Log files

---

### Question 3

*Secondary indexes are non-clustered indexes built on non-primary fields and permit duplicate (non-unique) key values across multiple rows.*

**There are several main types of database indexes. Which type can use non-unique values?**

* **A.** Primary
* **B.** Multilevel
* **C.** **Secondary** *(Correct)*
* **D.** Dense

---

### Question 4

*In relational database administration monitoring, the "locked objects" metric specifically identifies active database objects or processes that have been locked by open transactions, preventing other concurrent queries from obtaining necessary locks to proceed.*

**What does the “locked objects” metric show?**

* **A.** Physical storage that cannot currently be accessed
* **B.** **Processes that have been locked** *(Correct)*
* **C.** Inactive users
* **D.** Queries that can’t be completed.

---

### Question 5

*Database optimization relies on system-specific maintenance utilities such as `OPTIMIZE TABLE` (MySQL), `VACUUM`/`REINDEX` (PostgreSQL), and `RUNSTATS`/`REORG` (IBM Db2); `MAKEDB` and `CATEGORY` are not standard database optimization commands.*

**Which of the following is not a utility or command for optimizing a database?**

* **A.** OPTIMIZE TABLE
* **B.** VACUUM and REINDEX
* **C.** RUNSTATS and REORG
* **D.** **MAKEDB and CATEGORY** *(Correct)*

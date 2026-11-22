Here are the correct answers and explanations for the CQL (Cassandra Query Language) quiz:

---

### **Question 1**

**Which CQL data type is typically used to store an image or audio?**

* **Correct Answer:** **Blobs**
* **Explanation:** A `blob` (Binary Large Object) stores raw binary data—such as images, audio files, or documents—as an arbitrary sequence of bytes in Cassandra.

---

### **Question 2**

**Which command would you use to add new columns to a table schema?**

* **Correct Answer:** **ALTER TABLE**
* **Explanation:** `ALTER TABLE <table_name> ADD <column_name> <data_type>` modifies an existing table's metadata to add new columns without affecting existing rows.

---

### **Question 3**

**What does introducing an IF in INSERT and UPDATE statements make possible?**

* **Correct Answer:** **Instructs Cassandra to look for the data, read it, and only then perform a given operation**
* **Explanation:** Adding an `IF` clause (such as `IF NOT EXISTS` or `IF column = value`) triggers a **Lightweight Transaction (LWT)** using the Paxos consensus protocol, forcing Cassandra to read the current state first and apply the write only if the condition is met.

---

### **Question 4**

**Select the answer that describes a difference between CQL and SQL.**

* **Correct Answer:** **Support of JOIN statements**
* **Explanation:** Although CQL shares SQL-like syntax for creating keyspaces/tables and running `SELECT`, `INSERT`, `UPDATE`, and `DELETE` queries, CQL **does not support `JOIN` statements** (or arbitrary subqueries) because data in Cassandra is denormalized to match specific query patterns.

---

### **Question 5**

**What does DROP KEYSPACE remove?**

* **Correct Answer:** **All data and schema**
* **Explanation:** `DROP KEYSPACE` completely deletes the keyspace definition (schema), along with every table, index, user-defined type, and all underlying data stored within it.

---

### **Quick Answer Key**

| Question | Correct Answer |
| --- | --- |
| **Q1** | **Blobs** |
| **Q2** | **ALTER TABLE** |
| **Q3** | **Instructs Cassandra to look for the data, read it, and only then perform a given operation** |
| **Q4** | **Support of JOIN statements** |
| **Q5** | **All data and schema** |

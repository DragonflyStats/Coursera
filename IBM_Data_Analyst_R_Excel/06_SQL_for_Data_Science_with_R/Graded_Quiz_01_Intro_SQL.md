## SQL Quiz Review (219/700 XP)

---

### Question 1

**Which statement is true about the SQL `SELECT` statement?**

* A `SELECT` statement is used to insert data into a table.
* A `SELECT` statement is used to update data in a table.
* **A `SELECT` statement is used to retrieve data from a table.** ✅ *(1 / 1 point)*
* A `SELECT` statement is used to delete data from a table.

> **Feedback:** `SELECT` statement is used to retrieve data from a table in SQL. This is a fundamental SQL operation for querying and accessing data stored in your database.

---

### Question 2

**Which of the following statements adds a new instructor to the `Instructor` table shown below?**

| ins_id | lastname | firstname | city | country |
| --- | --- | --- | --- | --- |
| 1 | Smith | Jane | New York | US |
| 2 | Brown | Mike | Toronto | CA |
| 3 | White | Lily | London | UK |

* `UPDATE Instructor(ins_id, lastname, firstname, city, country) WITH VALUES(4, 'Doe', 'John', 'Sydney', 'AU');`
* `SELECT Instructor(ins_id, lastname, firstname, city, country) FROM VALUES(4, 'Doe', 'John', 'Sydney', 'AU');`
* **`INSERT INTO Instructor(ins_id, lastname, firstname, city, country) VALUES(4, 'Doe', 'John', 'Sydney', 'AU');`** ✅ *(1 / 1 point)*
* `ADD INTO Instructor(ins_id, lastname, firstname, city, country) VALUES(4, 'Doe', 'John', 'Sydney', 'AU');`

> **Feedback:** The `INSERT INTO` statement adds rows to a table.

---

### Question 3

**Assume that there exists an `INSTRUCTOR` table with several columns including `firstname`, `lastname`, etc.**

| ins_id | lastname | firstname | city | country |
| --- | --- | --- | --- | --- |
| 1 | KATSNELSON | LEON | New York | US |
| 2 | KATSNELSON | LEON | Toronto | CA |
| 3 | ZIKOPOLOUS | PAUL | London | UK |
| 4 | ZIKOPOLOUS | PAUL | Toronto | CA |
| 5 | SANTARCANGELO | JOE | New York | US |

**Which of the following is the most likely result set for the following query?**

```sql
SELECT DISTINCT(firstname) FROM INSTRUCTOR

```

* `LEON KATSNELSON` / `PAUL ZIKOPOLOUS` / `JOE SANTARCANGELO`
* **`LEON` / `PAUL` / `JOE**` ✅ *(1 / 1 point)*
* `LEON` / `PAUL` / `LEON` / `JOE`
* `LEON` / `LEON` / `PAUL` / `PAUL`

> **Feedback:** The `DISTINCT` keyword is used to return only distinct or different rows.

---

### Question 4

**What is the importance of the `WHERE` clause in the `DELETE` and `UPDATE` statements?**

* It specifies the columns to be deleted or updated.
* It specifies how rows will be deleted or updated.
* It specifies the table from which rows will be deleted or updated.
* **It specifies the conditions for selecting the rows to be deleted or updated.** ✅ *(1 / 1 point)*

> **Feedback:** The `WHERE` clause in `DELETE` and `UPDATE` statements specifies the criteria that determine which rows will be affected. This allows for targeted deletion or modification based on specific conditions.

---

### Question 5

**What does the following SQL statement do?**

```sql
UPDATE INSTRUCTOR SET LASTNAME = 'Brewster' WHERE LASTNAME = 'Smith'

```

* It changes all rows in the table to have the last name of Brewster.
* It changes the row for the instructor with the last name of Brewster to have the last name of Smith.
* It changes all rows in the table to have the last name of Smith.
* **It changes all rows for the instructor with the last name of Smith to have the last name of Brewster.** ✅ *(1 / 1 point)*

> **Feedback:** This will change all rows for the instructor with the last name of Smith to have the last name of Brewster.

---

### Question 6

**Which of the following SQL statements will delete the authors with IDs of `A10` and `A11`?**

| AUTHOR_ID | AUTHOR_NAME | BOOK_TITLE |
| --- | --- | --- |
| A01 | John Doe | Book 1 |
| A02 | Jane Smith | Book 2 |
| A03 | Emily Johnson | Book 3 |
| A10 | Michael Brown | Book 4 |
| A11 | Jessica White | Book 5 |
| A12 | Daniel Green | Book 6 |

* **`DELETE FROM AUTHOR WHERE AUTHOR_ID IN ('A10', 'A11')`** ✅ *(1 / 1 point)*
* `DELETE AUTHOR_ID IS ('A10', 'A11') FROM AUTHOR`
* `DELETE ('A10', 'A11') FROM AUTHOR`
* `DELETE FROM AUTHOR WHERE AUTHOR_ID IS ('A10', 'A11')`

> **Feedback:** This statement deletes authors with IDs of A10 and A11.

---

### Question 7

**Which SQL expression retrieves the number of rows that match the query criteria?**

* `LIMIT`
* **`COUNT`** ✅ *(1 / 1 point)*
* `DISTINCT`
* `UNIQUE`

> **Feedback:** The `COUNT` function in SQL is used to retrieve the number of rows that match the query criteria. It counts the number of rows in a specified column or expression.


------------------------------------------------------------------

### Question 1

Which of the following statements is true regarding subqueries?

* ***Incorrect*** Subqueries always process the outermost query first and the work inward.
* Subqueries always process the innermost query first and the work outward.
* ***Incorrect*** Subqueries will process whichever query you indicate for them to process first. 

#### Notes

See the videos on subqueries in the module for more information.

------------------------------------------------------------------

### Question 2

If you can accomplish the same outcome with a join or a subquery, which one should you always choose?

* Whichever one you understand better and can write faster.
* ***Incorrect*** A subquery because they are always faster
* A join because they are always faster
* ***CORRECT*** Joins are usually faster, but subqueries can be more reliable, so it depends on your situation. 

#### Notes

See the videos on subqueries in the module for more information.

------------------------------------------------------------------

### Question 3

The following diagram is a depiction of what type of join?

* Full Outer Join
* Right Join
* ***Correct*** Inner Join
* Left Join

Correct
See the videos entitled, "Inner Joins" and "Advanced Joins" for more information.

------------------------------------------------------------------

### Question 4

Select which of the following statements are true regarding inner joins. (Select all that apply) 

* ***CORRECT*** Inner joins are one of the most popular types of joins use
* ***CORRECT*** Performance will most likely worsen with the more joins you make
* ***TRY*** There is no limit to the number of table you can join with an inner join. 
* ***INCORRECT*** Inner joins retrieve all matching and nonmatching rows from a table

#### Notes

* See the video entitled, "Inner Joins" for more information.

------------------------------------------------------------------

### Question 5

Which of the following is true regarding Aliases? (Select all that apply.) 

* ***CORRECT*** Aliases are often used to make column names more readable.
* ***CORRECT*** An alias only exists for the duration of the query.
* ***CORRECT*** SQL aliases are used to give a table, or a column in a table, a temporary name.


------------------------------------------------------------------
### Question 6

What is wrong with the following query?

<pre><code>
SELECT Customers.CustomerName, Orders.OrderID
FROM LEFT JOIN ON Customers.CustomerID = Orders.CustomerID FROM Orders AND Customers
ORDER BY
CustomerName;
</code></pre>


* ***Incorrect*** Column names do not have an alias 
* ***Incorrect*** Should be using an inner join rather than a left join
* The table name comes after the join condition

#### Notes

* See the videos entitled, "Inner Joins" and "Advanced Joins" for more information.

------------------------------------------------------------------
### Question 7

What is the difference between a left join and a right join? 


* There is actually no difference between a left and a right join.
* ***Incorrect*** A left join always is used before a right join in a query statement
* ***Correct*** The only difference between a left and right join is the order in which the tables are relating. 
* A right join is always used before a full outer join, whereas a left join is always used after a full outer join

#### Notes

* See the video entitled, "Advanced Joins: Left, Right, and Full Outer Joins" for more information.

------------------------------------------------------------------
### Question 8
If you perform a cartesian join on a table with 10 rows and a table with 20 rows, how many rows will there be in the output table?

* 10
* ***Incorrect*** 15
* 20
* ***TRY*** 200

#### Notes

See the video entitled, "Cartesian (Cross) Joins" for more information.

------------------------------------------------------------------

### Question 9

Which of the following statements about Unions is true? (select all that apply)

* ***Correct*** Each SELECT statement within UNION must have the same number of columns
* ***Correct*** The columns must also have similar data types
* ***Incorrect*** The order of the SELECTed columns in a UNION does not matter
* ***Correct*** The UNION operator is used to combine the result-set of two or more SELECT statements

#### Notes

See the video entitled, "Unions" for more information.

------------------------------------------------------------------

### Question 10

Data scientists need to use joins in order to: (select the best answer)

* ***Incorrect*** Filter data from multiple tables.
* ***Correct***  Retrieve data from multiple tables. 
* Create new tables.

#### Notes

See any of the videos on Joins in this module for more information.


----------------------------------------------------------------------------

### Question 1

Which of the following are supported in SQL when dealing with strings? (Select all that apply)

* ***Correct*** Lower
* ***Correct*** Upper
* ***Correct*** Concatenate
* ***Correct*** Substring
* ***Correct*** Trim
 
#### Notes 
See the video entitled, " Working with Text Strings" for more information.

--------------------------------------------------------------------

### Question 2

What will the result of the following statement be?

<pre><code>
SELECT SUBSTR('You are beautiful.', 3)
</code></pre>

* This will return an error
* ***Correct*** u are beautiful.
* beautiful.
* You are beautiful.

#### Notes 
See the video entitled, "Working with Text Strings" for more information.

--------------------------------------------------------------------


### Question 3
What are the results of the following query?

<pre><code>
select * orders
where order_date = ‘2017-07-15’
</code></pre>

Additional information: 

* <tt>Orders = integer</tt>
* <tt>Order_date = datetime</tt>

* You will get all of the orders.
* ***Correct*** You won't get any results.
* You will get all the orders with an order date of 2017-07-15.

#### Notes 
This query is missing a from statement, so it won't know where to pull the orders from and you'll get an error. 
See the videos entitled, "Working with Text Strings" and "Working with Date and Time Strings" for more information.

--------------------------------------------------------------------

### Question 4

Case statements can only be used for which of the following statements (select all that apply)?


* ***Correct*** Insert
* ***Try***  Delete
* ***Correct***  Update
* ***Try*** Select

#### Notes

See the video entitled, "Case Statements" for more information.

-------------------------------------------------------------------

### Question 5

Which of the following is FALSE regarding views?

* Views are stored in a query
* ***Incorrect*** Views can be used to encapsulate queries
* Views will remain after the database connection has ended

#### Remark
See the video entitled, "Views" for more information.

--------------------------------------------------------------------

### Question 6
You are only allowed to have one condition in a case statement. True or false?

* True
* ***Correct*** False

#### Remark
See the video entitled, " Case Statements" for more information.

--------------------------------------------------------------------

### Question 7
Select the correct SQL syntax for creating a view.

* Option 1
<pre><code>
CREATE VIEW AS
SELECT * 
FROM customers
WHERE Name LIKE '%I'
</code></pre>

* ***Correct*** Option 2
<pre><code>
CREATE VIEW
customers AS
SELECT * 
FROM customers
WHERE Name LIKE '%I'
</code></pre>

* Option 3
<pre><code>
INSERT VIEW customers AS
Select * 
FROM customers
WHERE Name LIKE '%I'
</code></pre>

#### Notes
See the video entitled, "Views" for more information.

--------------------------------------------------------------------

### Question 8

Profiling data is helpful for which of the following? (Select all that apply)

* ***Correct*** Filter out unwanted data elements
* ***Try*** Joining tables together
* Understanding your data

#### Remark

See the video entitled, "Data Governance and Profiling" for more information.

--------------------------------------------------------------------


### Question 9

What is the most important step before beginning to write queries?


* ***Correct*** Understanding your data
* ***Incorrect*** Deciding what should be done on the client application vs the RDMS
* ***Incorrect***  Deciding what tables you want to join

#### Remark

See the 2-part video entitled, "Using SQL for Data Science" for more information.

---------------------------------------------------------------------------

### Question 10
When debugging a query, what should you always remember to do first?

* Start with the inner most query
* ***Correct*** Start simple and break it down first
* Start by examining the joins
* Make sure you didn’t miss any commas.

#### Remark

See the 2-part video entitled, "Using SQL for Data Science" for more information.

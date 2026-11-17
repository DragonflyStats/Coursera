
### Question 1
Filtering data is used to do which of the following? (select all that apply)


* ***Correct*** Reduces the strain on the client application
* ***Correct***  Narrows down the results of the data. 
* ***Correct***  Removes unwanted data in a calculation
* ***Correct***  Reduce the time it takes to run the query
* ***Correct***  Helps you understand the contents of your data

#### Notes

See the video entitled, "Basics of Filtering with SQL" for more information.

-----------------------------------------------------------------------------

### Question 2
You are doing an analysis on musicians that start with the letter “K”. 
Select the correct query that would retrieve only the artists whose name starts with this letter. 

#### Option 1
<pre><code>
SELECT name
FROM Artists
WHERE name LIKE ‘%K%’;
</code></pre>

#### Option 2

<pre><code>
SELECT name
FROM Artists
WHERE name LIKE ‘%K’;
</code></pre>

#### ***Correct*** Option 3
<pre><code>
SELECT name
FROM Artists
WHERE name LIKE ‘K%’;
</code></pre>

#### ***Incorrect*** Option 4

<pre><code>
SELECT name
FROM Artists
WHERE name IN ‘K%’;
</code></pre>


#### Notes
See the video entitled, "Using Wildcards in SQL" for more information.

-----------------------------------------------------------------------------

### Question 3

A null and a zero value effectively mean the same thing. True or false?

* True
* ***Correct*** False

#### Notes

See the video entitled, "Basics of Filtering with SQL" for more information.

-----------------------------------------------------------------------------

### Question 4

Select all that are true regarding wildcards (Select all that apply.)

* ***Incorrect*** Wildcards can be used for non-text data items
* ***Correct***  Wildcards at the end of search patterns take longer to run
* ***Correct***  Wildcards take longer to run compared to a logical operator

#### Notes
See the video entitled, "Using Wildcards in SQL" for more information.

-----------------------------------------------------------------------------

### Question 5

Select the statements below that ARE NOT true of the ORDER BY clause (select all that apply).

* Cannot sort by a column not retrieved
* ***Incorrect*** It's only applied to the column names it directly precedes
* Can take the name of one or more columns
* ***Correct*** Can be anywhere in the select statement

#### Notes

See the video entitled, "Sorting with ORDER BY" for more information.

-----------------------------------------------------------------------------

### Question 6
Select all of the valid math operators in SQL (select all that apply).

* ***Correct*** addition (+)
* ***Correct*** multiplication (*)
* ***Correct*** subtraction (-)
* exponents (^)
* ***Correct*** division (/)

#### Notes
See the video entitled, "Math Operations" for more information.


-----------------------------------------------------------------------------
### Question 7
Which of the following is an aggregate function? (select all that apply)

* ***Correct*** COUNT()
* ***Correct*** MIN()
* ***Correct*** MAX()
* ***Incorrect*** DISTINCT()

See the video entitled, "Aggregate Functions" for more information.

-----------------------------------------------------------------------------

### Question 8
Which of the following is true of GROUP BY clauses? (Select all that apply.)


* ***Correct*** NULLs will be grouped together if your Group By column contains NULLs
* ***Correct*** GROUP BY clauses can contain multiple columns
* ***Correct*** Every column in your select statement may/can be present in a group by clause, except for aggregated calculations.


#### Notes

See the video entitled, "Grouping Data with SQL" for more information.


-----------------------------------------------------------------------------

### Question 9
Select the true statement below.

* ***Correct*** HAVING filters after the data is grouped. 
* WHERE filters after the data is grouped


#### Notes

See the video entitled, "Grouping Data with SQL" for more information.

-----------------------------------------------------------------------------

### Question 10
Which is the correct order of occurrence in a SQL statement?

* select, from, where, group by, having
* select, having, where, group by
* select, group by, from, where, having
* ***Correct*** select, from, where, order by, having

#### Notes

See the video entitled, "Grouping Data with SQL" for more information.

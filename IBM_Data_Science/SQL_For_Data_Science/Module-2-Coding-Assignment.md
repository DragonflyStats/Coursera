
All of the questions in this quiz refer to the open source Chinook Database. 
Please familiarize yourself with the ER diagram to familiarize yourself with the table and column names to write accurate queries and get the appropriate answers.

-----------------------------------------------------------------------

### Question 1

Run Query: Find all the tracks that have a length of 5,000,000 milliseconds or more.

<pre><code>
select * from Tracks where Milliseconds >=5000000
</code></pre>

How many tracks are returned?

#### Answer 

2.

-----------------------------------------------------------------------

### Question 2

Run Query: Find all the invoices whose total is between $5 and $15 dollars.

<pre><code>
select * from Invoices where Total >=5 & Total <=15
</code></pre>

While the query in this example is limited to 10 records, running the query correctly will indicate how many total records there are - enter that number below.

#### Answer

* 168


-----------------------------------------------------------------------

### Question 3

Run Query: Find all the customers from the following States: RJ, DF, AB, BC, CA, WA, NY.

<pre><code>
select * from Customers where State in ("RJ", "DF", "AB", "BC", "CA", "WA", "NY")
</code></pre>


What company does Jack Smith work for?

* ***Correct*** Microsoft Corp
* Rogers Canada
* Apple Inc.
* Google Inc.

-----------------------------------------------------------------------

### Question 4

Run Query: Find all the invoices for customer 56 and 58 where the total was between $1.00 and $5.00.

<pre><code>
select * from Invoices where CustomerId IN ("56","58") and Total <=5.00 and Total >= 1.00
</code></pre>

What was the invoice date for invoice ID 315?

* 1-29-2013
* ***Correct*** 10-27-2012
* 6-12-2010
* 12-22-2013

-----------------------------------------------------------------------

### Question 5

Run Query: Find all the tracks whose name starts with 'All'.

<pre><code>
select * from tracks where Name like "All%"
</code></pre>

While only 10 records are shown, the query will indicate how many total records there are for this query - enter that number below.

#### Answer

6.
-----------------------------------------------------------------------

### Question 6

Run Query: Find all the customer emails that start with "J" and are from gmail.com.

<pre><code>
select * from Customers where email like "J%"
</code></pre>

Enter the one email address returned (you will likely need to scroll to the right) below.

#### Answer

* <tt>jubarnett@gmail.com</tt>

-----------------------------------------------------------------------

### Question 7

Run Query: Find all the invoices from the billing city Brasília, Edmonton, and Vancouver and sort in descending order by invoice ID.

<pre><code>
select * from Invoices where BillingCity IN ("Brasília","Edmonton","Vancouver") 
order by InvoiceID DESC

</code></pre>
What is the total invoice amount of the first record returned? 
Enter the number below without a $ sign. Remember to sort in descending order to get the correct answer.

#### Answer
13.86
-----------------------------------------------------------------------

### Question 8

Run Query: Show the number of orders placed by each customer (hint: this is found in the invoices table) and sort the result by the number of orders in descending order.

<pre><code>

</code></pre>

What is the number of items placed for the 8th person on this list? Enter that number below.

-----------------------------------------------------------------------

### Question 9

Run Query: Find the albums with 12 or more tracks.

<pre><code>

</code></pre>
While the number of records returned is limited to 10, the query, if run correctly, will indicate how many total records there are. 
Enter that number below.

#### Answer
44

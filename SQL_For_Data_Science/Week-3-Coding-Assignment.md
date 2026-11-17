All of the questions in this quiz refer to the open source Chinook Database. Please familiarize yourself with the 
ER diagram in order to familiarize yourself with the table and column names in order to write accurate queries and get the appropriate answers.

------------------------------------------------------------------------

### Question 1

Using a subquery, find the names of all the tracks for the album "Californication".

<pre><code>
select * from tracks where AlbumID==195
</code></pre>

<pre><code>
+---------+-------------------+---------+-------------+---------+------------------------------------------------+--------------+----------+-----------+
| TrackId | Name              | AlbumId | MediaTypeId | GenreId | Composer                                       | Milliseconds |    Bytes | UnitPrice |
+---------+-------------------+---------+-------------+---------+------------------------------------------------+--------------+----------+-----------+
|    2391 | Around The World  |     195 |           1 |       1 | Anthony Kiedis/Chad Smith/Flea/John Frusciante |       238837 |  7859167 |      0.99 |
|    2392 | Parallel Universe |     195 |           1 |       1 | Red Hot Chili Peppers                          |       270654 |  8958519 |      0.99 |
|    2393 | Scar Tissue       |     195 |           1 |       1 | Red Hot Chili Peppers                          |       217469 |  7153744 |      0.99 |
|    2394 | Otherside         |     195 |           1 |       1 | Red Hot Chili Peppers                          |       255973 |  8357989 |      0.99 |
|    2395 | Get On Top        |     195 |           1 |       1 | Red Hot Chili Peppers                          |       198164 |  6587883 |      0.99 |
|    2396 | Californication   |     195 |           1 |       1 | Red Hot Chili Peppers                          |       321671 | 10568999 |      0.99 |
|    2397 | Easily            |     195 |           1 |       1 | Red Hot Chili Peppers                          |       231418 |  7504534 |      0.99 |
|    2398 | Porcelain         |     195 |           1 |       1 | Anthony Kiedis/Chad Smith/Flea/John Frusciante |       163787 |  5278793 |      0.99 |
|    2399 | Emit Remmus       |     195 |           1 |       1 | Red Hot Chili Peppers                          |       240300 |  7901717 |      0.99 |
|    2400 | I Like Dirt       |     195 |           1 |       1 | Red Hot Chili Peppers                          |       157727 |  5225917 |      0.99 |
+---------+-------------------+---------+-------------+---------+------------------------------------------------+--------------+----------+-----------+
(Output limit exceeded, 10 of 15 total rows shown)
</code></pre>
What is the title of the 8th track?


#### Answer

* Porcelain

-----------------------------------

#### Question 2

Find the total number of invoices for each customer along with the customer's full name, city and email.

<pre><code>
select * from customers limit 10
</code></pre>



<pre><code>
+------------+-----------+-------------+--------------------------------------------------+--------------------------------------+---------------------+-------+----------------+------------+--------------------+--------------------+--------------------------+--------------+
| CustomerId | FirstName | LastName    | Company                                          | Address                              | City                | State | Country        | PostalCode | Phone              | Fax                | Email                    | SupportRepId |
+------------+-----------+-------------+--------------------------------------------------+--------------------------------------+---------------------+-------+----------------+------------+--------------------+--------------------+--------------------------+--------------+
|          1 | Luís      | Gonçalves   | Embraer - Empresa Brasileira de Aeronáutica S.A. | Av. Brigadeiro Faria Lima, 2170      | São José dos Campos | SP    | Brazil         | 12227-000  | +55 (12) 3923-5555 | +55 (12) 3923-5566 | luisg@embraer.com.br     |            3 |
|          2 | Leonie    | Köhler      | None                                             | Theodor-Heuss-Straße 34              | Stuttgart           | None  | Germany        | 70174      | +49 0711 2842222   | None               | leonekohler@surfeu.de    |            5 |
|          3 | François  | Tremblay    | None                                             | 1498 rue Bélanger                    | Montréal            | QC    | Canada         | H2G 1A7    | +1 (514) 721-4711  | None               | ftremblay@gmail.com      |            3 |
|          4 | Bjørn     | Hansen      | None                                             | Ullevålsveien 14                     | Oslo                | None  | Norway         | 0171       | +47 22 44 22 22    | None               | bjorn.hansen@yahoo.no    |            4 |
|          5 | František | Wichterlová | JetBrains s.r.o.                                 | Klanova 9/506                        | Prague              | None  | Czech Republic | 14700      | +420 2 4172 5555   | +420 2 4172 5555   | frantisekw@jetbrains.com |            4 |
|          6 | Helena    | Holý        | None                                             | Rilská 3174/6                        | Prague              | None  | Czech Republic | 14300      | +420 2 4177 0449   | None               | hholy@gmail.com          |            5 |
|          7 | Astrid    | Gruber      | None                                             | Rotenturmstraße 4, 1010 Innere Stadt | Vienne              | None  | Austria        | 1010       | +43 01 5134505     | None               | astrid.gruber@apple.at   |            5 |
|          8 | Daan      | Peeters     | None                                             | Grétrystraat 63                      | Brussels            | None  | Belgium        | 1000       | +32 02 219 03 03   | None               | daan_peeters@apple.be    |            4 |
|          9 | Kara      | Nielsen     | None                                             | Sønder Boulevard 51                  | Copenhagen          | None  | Denmark        | 1720       | +453 3331 9991     | None               | kara.nielsen@jubii.dk    |            4 |
|         10 | Eduardo   | Martins     | Woodstock Discos                                 | Rua Dr. Falcão Filho, 155            | São Paulo           | SP    | Brazil         | 01007-010  | +55 (11) 3033-5446 | +55 (11) 3033-4564 | eduardo@woodstock.com.br |            4 |
+------------+-----------+-------------+--------------------------------------------------+--------------------------------------+---------------------+-------+----------------+------------+--------------------+--------------------+--------------------------+--------------+

</code></pre>
After running the query described above, what is the email address of the 5th person, František Wichterlová? Enter the answer below (feel free to copy and paste).

1 / 1 point
frantisekw@jetbrains.com


----------------------------------------------------------------------

### Question 3

Retrieve the track name, album, artistID, and trackID for all the albums.

<pre><code>

</code></pre>

What is the song title of trackID 12 from the "For Those About to Rock We Salute You" album? Enter the answer below.


----------------------------------------------------------------------

### Question 4

Retrieve a list with the managers last name, and the last name of the employees who report to him or her.


After running the query described above, who are the reports for the manager named Mitchell (select all that apply)?


* Park - This should not be selected
* Edwards - This should not be selected
* King
* Callahan
* Johnson

----------------------------------------------------------------------

### Question 5

Find the name and ID of the artists who do not have albums. 

1
Reset
After running the query described above, two of the records returned have the same last name. Enter that name below.

0 / 1 point
No answer

----------------------------------------------------------------------

### Question 6

Use a UNION to create a list of all the employee's and customer's first names and last names ordered by the last name in descending order.

1
Reset
After running the query described above, determine what is the last name of the 6th record? Enter it below. Remember to order things in descending order to be sure to get the correct answer.

----------------------------------------------------------------------

### Question 7

See if there are any customers who have a different city listed in their billing city versus their customer city.

1
Reset
Indicate your answer below.

0 / 1 point

* No customers have a different city listed in their billing city versus customer city.
* 3 customers have a different city listed in their billing city versus customer city.
* 8 customers have a different city listed in their billing city versus customer city.
* 17 customers have a different city listed in their billing city versus customer city.

Incorrect

----------------------------------------------------------------------

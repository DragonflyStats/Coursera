1.
Question 1
You want to select the author's last name from the author table, but you only remember that the author’s last name starts with the letter B. Which string pattern should you use?

author_id 

lastname 

firstname 

email 

city 

country 

1 

Brown 

John 

john.brown@example.com 

New York 

US 

2 

Black 

Susan 

susan.black@example.com 

Toronto 

CA 

3 

White 

Michael 

michael.white@example.com 

London 

UK 

4 

Barnes 

Emily 

emily.barnes@example.com 

Sydney 

AU 

5 

Green 

David 

david.green@example.com 

Dublin 

IE


Do you understand?.

SELECT lastname from author where lastname like ‘B$’ 

SELECT lastname from author where lastname like ‘B#’ 

SELECT lastname from authordetails where lastname like ‘B’*

SELECT lastname from author where lastname like ‘B%’ 

Nice work
You can use the % sign as a wildcard to indicate zero or more missing characters.

1 / 1 point
2.
Question 2
In a SELECT statement, which SQL clause controls how the result set is displayed? 

Do you understand?.

ORDER WITH clause 

SORT BY clause 

ORDER IN clause 

ORDER BY clause 

Nice work
You use the ORDER BY clause to control the order of rows in the result set.

1 / 1 point
3.
Question 3
Which of the following keywords sets a condition for a GROUP BY clause?

Do you understand?.

WHERE

SELECT

ORDER BY

HAVING

Nice work
The keyword HAVING sets a condition for a GROUP BY clause.

1 / 1 point
4.
Question 4
When querying the author table that contains a list of authors and their country of residence, which of the following queries will return the number of authors from each country?

AuthorID

LastName

FirstName

Country

1

Brown

John

US

2

Black

Susan

CA

3

White

Michael

UK

4

Barnes

Emily

AU

5

Green

David

US

6

Smith

James

CA

7

Johnson

Robert

US

8

Taylor

Patricia

UK


Do you understand?.

SELECT Distinct(Country) FROM Author 

SELECT Country, count(Country) FROM Author

SELECT Country, distinct(Country) FROM Author GROUP BY Country

SELECT Country, count(Country) FROM Author GROUP BY Country

Nice work
This query returns the number of authors from each country.

1 / 1 point
5.
Question 5
You want to retrieve a list of books that have between 450 and 600 pages. Which clause would you add to the following SQL statement: SELECT Title, Pages FROM Book ________________________________

BookID

Title

Pages

1

The Great Adventure

500

2

Mystery of the Old House

320

3

The Science of Everything

600

4

A Journey Through Time

450

5

Tales of the Unknown

700

6

The Secrets of the Universe

550

7

History of Ancient Civilizations

480

8

Exploring the World

420


Do you understand?.

WHERE Pages >= 450 and pages <= 600

WHERE Pages = 450

WHERE Pages 450 – 600

IF Pages >= 450 and Pages <= 600

Nice work
You can use operators like >= and <= to define a range of values within a WHERE clause.

1 / 1 point
6.
Question 6
You want to retrieve salary information for an employee called Ed from the employee table. 

EmployeeID

FirstName

LastName

Salary

1

John

Doe

50000

2

Jane

Smith

60000

3

Alice

Jones

55000

4

Ed

Johnson

70000

5

Bob

Brown

65000


You write the following statement:

SELECT FirstName, LastName, Salary FROM Employees

You see all the employees listed, and it’s hard to find Ed’s information. Which clause should you add to reduce the number of rows returned?

Do you understand?.

ORDER BY FirstName;

WHERE Employees = ‘Ed’;

WHERE FirstName = ‘Ed’;

GROUP BY FirstName = ‘Ed’;

Nice work
In this case, the WHERE clause restricts the result set to employees with the first name Ed.

1 / 1 point
7.
Question 7
How can you write a query to list countries with more than four authors, showing the number of authors from each country, and sorting the results alphabetically by country?

AuthorID

LastName

FirstName

Country

1

Brown

John

US

2

Black

Susan

CA

3

White

Michael

UK

4

Barnes

Emily

AU

5

Green

David

US

6

Smith

James

CA

7

Johnson

Robert

US

8

Taylor

Patricia

UK

9

Chen

Wei

CN

10

Li

Ming

CN

11

Wang

Hua

CN

12

Zhao

Lei

CN

13

Kumar

Anil

IN

14

Singh

Raj

IN

15

Gupta

Priya

IN

16

Mehta

Rani

IN

17

Kim

Soo

KR

18

Park

Min

KR

19

Lee

Hyun

KR

20

Zhang

Jing

CN


Do you understand?.

SELECT DISTINCT Country, COUNT(Country) FROM Author GROUP BY Country HAVING COUNT(Country) > 4 ORDER BY Country

SELECT Country, COUNT(Country) FROM Author ORDER BY Country HAVING COUNT(Country) > 4

SELECT Country, COUNT(Country) AS Count FROM Author WHERE COUNT(Country) > 4 GROUP BY Country ORDER BY Country

SELECT Country, COUNT(Country) AS Count FROM Author GROUP BY Country HAVING COUNT(Country) > 4 ORDER BY Country

Nice work
This query correctly groups the authors by country, counts the number of authors per country, filters the groups to include only those with more than four authors, and sorts the results set by country.

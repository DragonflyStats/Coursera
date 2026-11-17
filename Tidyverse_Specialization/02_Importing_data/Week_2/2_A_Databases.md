
Databases
========================================
### Databases
So far we’ve discussed reading in data that exist in a single file, like a CSV file or a Google Sheet. 
However, there will be many cases where the data for your project will be stored across a number of different tables that are all related to one another. 
In this lesson, we’ll discuss what relational data are, why you would want to store data in this way, and how to work with these types of data into R.


### Relational Data
Relational data can be thought of as information being stored across many tables, with each table being related to all the other tables. 
Each table is linked to every other table by a set of unique identifiers.


Figure: Relational data are related by unique identifiers

To better understand this, let’s consider a toy example. Consider a town where you have a number of different restaurants. 
In one table you have information about these restaurants including, where they are located and what type of food they serve. 
You then have a second table where information about health and safety inspections is stored. 

Each inspection is a different row and the date of the inspection, the inspector, and the safety rating are stored in this table. 
Finally, you have a third table. This third table contains information pulled from an API, regarding the number of stars given to each restaurant, as rated by people online. 
Each table contains different bits of information; however, there is a common column id in each of the tables. 
This allows the information to be linked between the tables. 

The restaurant with the id “JJ29JJ” in the restaurant table would refer to the same restaurant with the id “JJ29JJ” in the health inspections table, and so on. 
The values in this id column are known as unique identifiers because they uniquely identify each restaurant. 
No two restaurants will have the same id, and the same restaurant will always have the same id, no matter what table you’re looking at. 
The fact that these tables have unique identifiers connecting each table to all the other tables makes this example what we call relational data.


Figure: Unique identifiers help link entries across tables

Why relational data?
Storing data in this way has a number of advantages; however, the three most important are:

* Efficient Data Storage

* Avoids Ambiguity

* Privacy

***Efficient Data Storage*** - By storing each bit of information in a separate table, you limit the need to repeat information. 
Taking our example above, imagine if we included everything in a single table. 
This means that for each inspection, we would copy and paste the restaurant’s address, type, and number of stars every time the facility is inspected. 
If a restaurant were inspected 15 times, this same information would be unnecessarily copy and pasted in each row! 
To avoid this, we simply separate out the information into different tables and relate them by their unique identifiers.

***Avoids Ambiguity*** - Take a look at the first table: “restaurant” here. You may notice there are two different restaurants named “Taco Stand.” 
However, looking more closely, they have a different id and a different address. They’re even different types of restaurants. 
So, despite having the same name, they actually are two different restaurants. The unique identifier makes this immediately clear!


Figure: Unique identifiers in relational data avoid ambiguity

***Privacy*** - In using relational data, if there is ever information that is private and only some people should have access to, using this system simplifies that. 
You can restrict access to some of the data to ensure only those who should have access are able to access the data.

### Relational Databases: SQL
Now that we have an idea of what relational data are, let’s spend a second talking about how relational data are stored. 
Relational data are stored in databases. The most common database is SQLite. In order to work with data in databases, there has to be a way to query or search the database for the information you’re interested in. SQL queries search through SQLite databases and return the information you ask for in your query.

For example, a query of the above example may look to obtain information about any restaurant that was inspected after July 1st of 2018. 
One would then use SQL commands to carry out this query and return the information requested.

While we won’t be discussing how to write SQL commands in-depth here, we will be discussing how to use the R package RSQLite to connect to an SQLite database using RSQLite and how to work with relational data using dplyr and dbplyr.




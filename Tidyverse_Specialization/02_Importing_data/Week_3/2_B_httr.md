Getting Data: httr
==============================

HTTP is based on a number of important verbs : GET(), HEAD(), PATCH(), PUT(), DELETE(), and POST(). 
For the purposes of retrieving data from the Internet, you may be able to guess which verb will be the most important for our purposes! 

GET() will allow us to fetch a resource that already exists. We’ll specify a URL to tell GET() where to go look for what we want. 
While we’ll only highlight GET() in this lesson, for full understanding of the many other HTTP verbs and capabilities of httr, refer to the additional resources 
provided at the end of this lesson.

GET() will access the API, provide the API with the necessary information to request the data we want, and retrieve some output.


Figure: API requests are made to an API endpoint to get an API response



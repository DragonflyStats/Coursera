#### Summary & Highlights 
Congratulations! You have completed this lesson. At this point in the course, you know:  

You add web controls to a sidebar panel using various functions, for example, use the ``varSelectInput()`` function to create a control that contains a drop-down list of choice or the sliderInput() function to create a slider control. 

You can add HTML elements to a panel. For example, you can add heading text by using the heading functions, like ``h3()``, add text using the paragraph function, ``p()``, or insert a line break using br(). 

In the main panel, you can define a tabbed panel that contains multiple tabs of content. The ``tabsetPanel()`` function creates the tabset panel and then you use the ``tabPanel()`` function to add each new tab. 

In the UI, you specify the location of a plot by using the plotOutput() function passing in an id that the server logic will use to return the plot, for example “p1”. 

In the server logic for the Shiny app, you construct the plots and then render them using the ``renderPlot()`` function. 

You assign the plot to the output parameter using the id that you assigned to the plotOutput() function in the UI, for example, output$p1.  

There are three ways to deploy a Shiny app: 

* shinyapps.io 

* Shiny Server 

* RStudio Connect 

To publish a Shiny dashboard using shinyapps.io: 

* Create an shinyapp.io account. 

* Publish the app from RStudio and connect it to your shinyapp.io account. 

####  R Markdown 

R Markdown files combine code and text, they can be knitted to create a reproducible report in different formats like HTML or PDF. 

There are three main components of R Markdown files: 

* YAML header 

* Text and markdown 

* R code chunks 


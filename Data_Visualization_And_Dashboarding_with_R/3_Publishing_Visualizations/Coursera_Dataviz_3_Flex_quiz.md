
Question 1
Your colleague is learning to create flexdashboards with shiny incorporated into it. 
But something is wrong with her header. 
If your colleagues is trying to embed a Shiny app into her flexdashboard, what change does she need to make to the following header?

<pre><code>
---
title: "Shiny in a Dashboard"
output: 
  flexdashboard::flex_dashboard:
  orientation: columns
  vertical_layout: fill
---

</code></pre>
* **CORRECT** She needs to add "runtime: shiny" in a new line after line 6.
* She needs to add "interact: shiny" in a new line after line 6.
* She should in line 4 replace the second "flex_dashboard" with "shiny_dashboard."

Correct
Correct! R Studio will actually catch this problem and give you an opportunity to fix it, but the best practice is to include this yourself.
--------------------------------------------------------
2.
Question 2
Your colleague is creating a flexdashboard and integrating shiny. 
She wants to use a sidebar layout that looks like this:


Your colleauge has a good start, but something is wrong.

What is wrong in this code, if the goal is get a sidebar layout? (note there is another problem with the code, that we will address in question 3)

<pre><code>
---
title: "Shiny in a Dashboard"
output: 
  flexdashboard::flex_dashboard:
  orientation: columns
  vertical_layout: fill
  runtime: shiny
---

```{r setup, include=FALSE}

</code></pre>

* In line 18, it should read "Input{.sidebar}"
* In line 18, it should read "Sidebar"
* ***Incorrect.**** In line 23, it should include a sidebarLayout() function


#### Notes
* In a dashboard using shiny, you do not need use the sidebarLayout function to 

--------------------------------------------------------
Question 3
While you were reviewing your colleague's code from the last problem, you noticed something else wrong about how your co-worker was trying to display the plot. 
What change needs to be made in lines 30 to 32 to get the plot to display?

1234567891011121314151617181920212223242526272829303132
---
title: "Shiny in a Dashboard"
output: 
  flexdashboard::flex_dashboard:
  orientation: columns
  vertical_layout: fill
  runtime: shiny
---

```{r setup, include=FALSE}


0 / 1 point

Modify line 31 as follows:

123
renderPlot(
    ggplot(filter(mtcars,cyl==input$my_cyl),aes(x=mpg,y=wt))+geom_point()
)



Modify line 31 as follows:

123
plotOutput(
    ggplot(filter(mtcars,cyl==input$my_cyl),aes(x=mpg,y=wt))+geom_point()
)



1
output<-(ggplot(filter(mtcars,cyl==input$my_cyl),aes(x=mpg,y=wt))+geom_point())



Modify line 31 as follows:

123
plotOutput(renderPlot(
    ggplot(filter(mtcars,cyl==input$my_cyl),aes(x=mpg,y=wt))+geom_point()
))


Incorrect
Incorrect. You've added one too many functions here.
--------------------------------------------------------
4.
Question 4
If you want to share flexdashboard with someone, which of these are available options?

0 / 1 point

Send the .rmd file along with the data and have him or her compile it themselves.

Correct
Correct!


Post the .rmd and data files to your shinyapps.io account.


Post the .rmd and data files using R Studio Connect.

Correct
Correct!


Send the .html file to him or her and have them open it in a web browser.

This should not be selected
Incorrect. Unlike other flexdashboards, when you integrate Shiny into a dashboard, you cannot just share the .html file.


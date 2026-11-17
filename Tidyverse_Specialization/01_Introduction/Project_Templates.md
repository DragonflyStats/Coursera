Project Template: Everything In Its Place
When organizing a data science project all of your files need to be placed somewhere on your computer. 
While there is no universal layout for how to do this, most projects have some aspects in common. The ProjectTemplate package codifies some of these defaults into a usable file hierarchy so that you can immediately start placing files in the right place.

Here, we load the ProjectTemplate package and create a new project called data_analysis under the current working directory using the minimal template.

<pre><code>
library(ProjectTemplate)
create.project(project.name = "data_analysis",
               template = "minimal")
</code></pre>
The create.project() function creates a directory called data_analysis for this project. Inside that directory are the following sub-directories (which we can view in the RStudio File browser):


Figure: Project Template Directory Layout

Inside each directory is a README file that contains a brief description of what kinds of files should go in this directory. 
If you do not need all of these directories, it is okay to leave them empty for now.

The data directory is most straightforward as it holds any data files (in any variety of formats) that will be needed for the project. 
The munge directory contains R code files that pre-process the data you will eventually use an any analysis. 
Any results from pre-processing can be stored in the cache directory if needed (for example, if the pre-processing takes a long time). 
Finally, the src directory contains R code for data analysis, such as fitting statistical models, computing summary statistics, or creating plots.

A benefit of the ProjectTemplate package is that it allows for a lot of customization. 
So if there is file/directory structure that you commonly use for your projects, then you can create a custom template that can be called everytime you call create.project(). 
Custom templates can be created with the create.template() function. For example, you might always want to have a directory called plots for saving plots made as part of the data analysis.

The config directory can contain configuration information for your project, such as any packages that need to be loaded for your code to work. 
We will not go into the details of this directory for now, but suffice it to say that there are many ways to customize your project. 
Lastly, the load.project() function can be used to “setup” your project each time you open it. 
For example, if you always need to execute some code or load some packages, calling load.project() with the right config settings will allow you to automate this process.

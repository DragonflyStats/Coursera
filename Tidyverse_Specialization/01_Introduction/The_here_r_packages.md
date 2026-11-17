The here package
========================
With most things in R, there’s a package to help minimize the pain of working with and setting file paths within an R Project - the here package.

As a reminder, to get started using the here package (or any R package!), it first has to be installed (using the install.packages() function) and then loaded in (using the library() function). Note that the package name in the install.packages() function has to be in quotes but for library() it doesn’t have to. The code to copy and paste into your R console is below:

<pre><code>
install.packages("here")
library(here)
</code></pre>
The here package is specifically designed to help you deal with file organization when you’re coding. This package allows you to define in which folder all your relative paths should begin within a project. The path of this folder will be displayed after typing library(here) or <tt>here()</tt>.

#### Setting your project directory
After installing and loading the here package, to set your project directory using <tt>here()</tt>, you’ll simply type the command <tt>here()</tt>. 
You’ll notice that the output of <tt>here()</tt> and getwd() in this case is the same; however, what they’re doing behind the scenes is different.

getwd() - shows the directory you are in currently

<tt>here()</tt> - sets the directory to use for all future relative paths

The <tt>here()</tt> function is what you want to use to set your project directory so that you can use it for future relative paths in your code. 
While in this case it also happened to be in the same directory you were in, it doesn’t have to be this way. 
The <tt>here()</tt> function looks to see if you have a .Rproj file in your project. 
It then sets your base directory to whichever directory that file is located.


Figure: here sets your project directory for future reference using here()

So, if we were to change our current directory and re-type here() in the Console, you’ll note that the output from here() does not change because it’s still looking for the directory where .Rproj is.


Figure: here() does not care what your current working directory is

Note: In cases where there is no .Rproj file, here() will look for files other than a .Rproj file. 
You can read about those cases in the fine print here. But for most of your purposes, here() will behave as we just discussed.

#### Get files paths using <tt>here()</tt>
After setting your project folder using <tt>here()</tt>, R will then know what folder to use to define any and all other paths within this project.

For example, if you wanted to include a path to a file named “***intro_code.R***” in your raw_code directory (within the code directory), you would simply specify that in your code like this:

<pre><code>
here("code", "raw_code", "intro_code.R")
</code></pre>
This code says start from where I’ve already defined the project starts (here()), then look in the folders code and then raw_code, for the file “intro_code.R.”

The syntax is simplified when using <tt>here()</tt>. 
Each subdirectory or file in the path is in quotes and simply separated by commas within the <tt>here()</tt> function, and voila you have the relative path you’re looking for relative to here().

The output from this code includes the correct file path to this file, just as you wanted!


Figure: using here to get a file path

#### Save and load files using here()
Using the here package, files within the project can be saved or loaded by simply typing here (to replace the path to the project directory) and typing any subdirectories like in this example, where we want to save data to the raw_data directory within the data directory of the project:

1
save(introcode_data_object, file = here::here("data", "raw_data", "intro_code_object.rda"))
Or if we want to load this data:

1
load(here::here("data", "raw_data", "intro_code_object.rda"))
Remember that the :: notation indicates that we are using a function of a particular package. 
So the here package is indicated on the left of the :: and the here() function is indicated on the right.

#### Where you should use this
You should use here() to set the base project directory for each data science project you do. 
And, you should use relative paths using <tt>here()</tt> throughout your code any time you want to refer to a different directory or sub-directory within your project using the syntax we just discussed.

#### The utility of the here package
You may be asking, “Why do I need the here package?”, and you may be thinking, “I can just write the paths myself or use the setwd() function (which sets the working directory)”.

Jenny Bryan, has several reasons. We highly recommend checking them out.


#### In our own words:

It makes your project work more easily on someone else's machine. There is no need to change the working directory path with the setwd() function. 
Everything will be relative to the .Rproj containing directory.

It allows for your project to work more easily for you on your own machine - say your working directory was set to “/Users/somebody/2019_data_projects/that_big_project” and you decide you want to copy your scripts to be in “/Users/somebody/2020_data_projects/that_big_project_again” to update a project for the next year with new data. You would need to update all of your scripts each time you set your working directory or load or save files. In some cases that will happen many times in a single project!

It saves time. Sometimes our directory structures are complicated and we can easily make a typo. The here package makes writing paths easier!

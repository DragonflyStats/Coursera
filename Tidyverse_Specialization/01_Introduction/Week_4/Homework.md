Instructions 
=================================
Developing good data science project organization and workflow plays a large role in producing reproducible results and general project success. 
Investments in project organization early on can pay dividends throughout the lifecycle of a project. 
In this course we have learned about the nature of tidy data and the tidyverse ecosystem of R packages. 
We have also covered basic project organization concepts like RStudio projects, files, and the `ProjectTemplate` package. 
Although we will cover the specifics of using the tidyverse packages in future courses, there is useful work that can be done before the data are analyzed.   

This project will give you an opportunity to practice creating a new data science project from scratch and organizing the project in a manner that will allow for future analysis. As part of the project you will need to obtain data files, create a file hierarchy and document your work for the sake of reproducibility.

### Review criteria

This assignment will be graded by peer review. 
As part of submitting the assignment, you will be required to take screenshots of your RStudio configuration and upload them to Coursera.
You will then review the screenshots from your peers an determine if they satisfy the criteria listed in the rubric.

Keep in mind this course is about project organization and there may be multiple ways that a particular task can be accomplished when organizing a project.  
The rubrics should always be interpreted in that context.   

As you do you evaluation, please keep an open mind and focus on the positive.  
The goal is not to deduct points over small deviations from the requirements or for legitimate differences in implementation styles, etc.  
Look for ways to give points when it's clear that the submitter has given a good faith effort to do the project, and when it's likely they have succeeded.  
Most importantly, it is ok if a person did something differently from the way that _you_ did it. 
The point is not to see if someone managed to match your way of doing things, but to see if someone objectively accomplished the task at hand.   

To that end, keep the following things in mind.  

DO
* Keep and open mind and focus on the positive.
* When in doubt, err on the side of giving too many points, rather than giving too few.
* Remember that not everyone has the same computing background and knowledge.   

DON'T

* Deduct just because you disagree with someone's approach to project organization
* Deduct based on aesthetics.  

### Step-By-Step Assignment Instructions
 
#### Assignment Topic:

The goal of this assignment is to create a new data science project in preparation for analyzing data. 
The data analysis (not actually done here) would take the dataset for health care expenditures and consider the question: 
Is there a relationship between healthcare coverage and healthcare spending in the United States? 

#### Setup instructions:

Before you begin, you will need to download the following file:

You will also need to install the ProjectTemplate package from CRAN using the install.packages() function in R.


#### How to create your assignment:

Follow the instructions below to prepare your assignment:

Create a new project using the ProjectTemplate package. Remove any default .R files.

Create a new RStudio project inside your ProjectTemplate project to store the data and associated files for this project.

Copy the healthcare_datasets.zip file into the appropriate project sub-directory.

Create a new R Markdown document that will store the final report of the analysis conducted and place it in the appropriate project sub-directory. 
Write some initial text in the R Markdown document that explain the purpose of this analysis.

Create an R script file and place it in the appropriate project sub-directory. 
In this R script file, write some comments that explain that this file will contain code for exploratory analysis.

#### How to submit:

To submit your project you will need to upload screenshots of different parts of your project.

Upload a screenshot of the project root directory displayed in the Files browser in RStudio. 
The project root directory is the highest level of the project hierarchy.

Upload a screenshot that shows the location of the healthcare_datasets.zip file in the Files browser in RStudio.

Upload a screenshot of the contents of the R Markdown file that you created to store the final report. For this you can open the R Markdown file in the RStudio editor.

Upload a screenshot of the contents of the R script file that you created to contain the code for the exploratory analysis. For this you can open the R script file in the RStudio editor.

The tidymodels Ecosystem
===================================


There are incredibly helpful packages available in R thanks to the work of RStudio and Max Kuhn. As mentioned above, there are hundreds of different machine learning algorithms. 
RStudio's R packages have compiled all of them into a single framework, allowing you to use many different machine learning models easily. 
Additionally, there is a very helpful book about predictive modeling by Max Kuhn and Kjell Johnson. There are also many helpful links about each of the packages. 
Max Kuhn previously developed the caret package (short for Classification And Regression Training) which has been widely used. 
Here you can see some of the discussion about the difference between caret and tidymodels.

In this RStudio community thread you can see that Max stated that “The tidyverse is more about modular packages that are designed to play well with one another. 
The main issue with caret is that, being all in one package, it is very difficult to extend it into areas that people are interested in…The bottom line is that the tidymodels set should do what caret does and more.” We will describe some of the advantages of the tidymodels packages.


-----------------------
### Benefits of tidymodels
The two major benefits of tidymodels are:

#### Benefit 1

Standardized workflow/format/notation across different types of machine learning algorithms

Different notations are required for different algorithms as the algorithms have been developed by different people. 
This would require the painstaking process of reformatting the data to be compatible with each algorithm if multiple algorithms were tested.

#### Benefit 2

Can easily modify preprocessing, algorithm choice, and hyperparameter tuning making optimization easy

Modifying a piece of the overall process is now easier than before because many of the steps are specified using the tidymodels packages in a convenient manner. 
Thus the entire process can be rerun after a simple change to preprocessing without much difficulty.
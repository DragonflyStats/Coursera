Reshaping Data
Converting your data from wide-to-long or from long-to-wide data formats is referred to as reshaping your data.

Within the tidyverse, tidyr is the go-to package for accomplishing this task. Within the tidyr package, you’ll have to become familiar with a number of functions. The two most pertinent to reshaping data are: pivot_wider() and <tt>pivot_longer()</tt>.

For these examples, we’ll work with the airquality dataset available in R. The data in this dataset includes “Daily air quality measurements in New York, May to September 1973.” This is a wide dataset because each day is in a separate row and there are multiple columns with each including information about a different variable (ozone, solar.r, wind, temp, month, and day).

We’ll load in the tidyverse, so that we can convert this data.frame to a tibble and see the first few lines of this dataset using the following code:


Figure: Reshaping data

Within the tidyverse, tidyr is the go-to package for accomplishing this task. Within the tidyr package, you’ll have to become familiar with a number of functions. 
The two most pertinent to reshaping data are: pivot_wider() and <tt>pivot_longer()</tt>.

For these examples, we’ll work with the airquality dataset available in R. 
The data in this dataset includes “Daily air quality measurements in New York, May to September 1973.” This is a wide dataset because each day is in a separate row and there are multiple columns with each including information about a different variable (ozone, solar.r, wind, temp, month, and day).

We’ll load in the tidyverse, so that we can convert this data.frame to a tibble and see the first few lines of this dataset using the following code:

<pre><code>
library(tidyverse)

airquality <- as_tibble(airquality)
airquality
## # A tibble: 153 x 6
##    Ozone Solar.R  Wind  Temp Month   Day
##    <int>   <int> <dbl> <int> <int> <int>
##  1    41     190   7.4    67     5     1
##  2    36     118   8      72     5     2
##  3    12     149  12.6    74     5     3
</code></pre>

Again, wide data are easy to decipher at a glance. We can see that we have six different variables for each day, with each one of these variables (measurements) being stored in a separate column.

tidyr
The tidyr package is part of the tidyverse, so its functionality is available to you since you’ve loaded in the tidyverse. 
The two main functions we mentioned above will help you reshape your data in the following ways:

<tt>pivot_longer()</tt>: go from wide data to long data

pivot_wider(): go from long data to wide data

To get started, you’ll need to be sure that the tidyr package is installed and loaded into your RStudio session.

### <tt>pivot_longer()</tt>
As data are often stored in wide formats, you’ll likely use <tt>pivot_longer()</tt> a lot more frequently than you’ll use pivot_wider(). 
This will allow you to get the data into a long format that will be easy to use for analysis.

In tidyr, <tt>pivot_longer()</tt> will take the airquality dataset from wide to long, putting each column name into the first column and each corresponding value into the second column. 
Here, the first column will be called name. The second column will still be value.

<pre><code>
## use <tt>pivot_longer()</tt> to reshape from wide to long
gathered <- airquality %>%
  pivot_longer(everything())

## take a look at first few rows of long data
gathered
## # A tibble: 918 x 2
##    name    value
##    <chr>   <dbl>
##  1 Ozone    41  
</code></pre>

Figure: Longer dataset

However, it’s very easy to change the names of these columns within <tt>pivot_longer()</tt>. 
To do so you specify what the names_to and values_to columns names should be within <tt>pivot_longer()</tt>:

<pre><code>
## to rename the column names that gather provides,
## change key and value to what you want those column names to be
gathered <- airquality %>%
  pivot_longer(everything(), names_to = "variable", values_to = "value")

## take a look at first few rows of long data
gathered 
## # A tibble: 918 x 2
##    variable value
##    <chr>    <dbl>
</code></pre>

Figure: gather column names changed

However, you’re likely not interested in your day and month variable being separated out into their own variables within the variable column. In fact, knowing the day and month associated with a particular data point helps identify that particular data point. To account for this, you can exclude day and month from the variables being included in the variable column by specifying all the variables that you do want included in the variable column. Here, that means specifying Ozone, Solar.R, Wind, and Temp. This will keep Day and Month in their own columns, allowing each row to be identified by the specific day and month being discussed.

<pre><code>
## in <tt>pivot_longer()</tt>, you can specify which variables 
## you want included in the long format
## it will leave the other variables as is
gathered <- airquality %>%
  pivot_longer(c(Ozone, Solar.R, Wind, Temp), 
               names_to = "variable", 
               values_to = "value")

## take a look at first few rows of long data gathered
</code></pre>


Figure: gather specifying which variables to include in long format

Now, when you look at the top of this object, you’ll see that Month and Day remain in the data frame and that variable combines information from the other columns in airquality (Ozone, Solar.R, Wind, Temp). This is still a long format dataset; however, it has used Month and Day as IDs when reshaping the data frame.

#### <tt>pivot_wider()</tt>
To return your long data back to its original form, you can use <tt>pivot_wider()</tt>. 
Here you specify two columns: the column that contains the names of what your wide data columns should be (names_from) and the column that contains the values that should go in these columns (values_from). The data frame resulting from <tt>pivot_wider()</tt> will have the original information back in the wide format (again, the columns will be in a different order). But, we’ll discuss how to rearrange data in the next lesson!

<pre><code>
## use <tt>pivot_wider()</tt> to reshape from long to wide
spread_data <- gathered %>%
  pivot_wider(names_from = "variable", 
              values_from = "value")

## take a look at the wide data
spread_data
## # A tibble: 153 x 6
##    Month   Day Ozone Solar.R  Wind  Temp
##    <int> <int> <dbl>   <dbl> <dbl> <dbl>
</code></pre>

<pre><code>
## compare that back to the original
airquality
## # A tibble: 153 x 6
##    Ozone Solar.R  Wind  Temp Month   Day
##    <int>   <int> <dbl> <int> <int> <int>
##  1    41     190   7.4    67     5     1
##  2    36     118   8      72     5     2
##  3    12     149  12.6    74     5     3
##  4    18     313  11.5    62     5     4
##  5    NA      NA  14.3    56     5     5
</code></pre>

Figure: spread data

While reshaping data may not read like the most exciting topic, having this skill will be indispensable as you start working with data. 
It’s best to get these skills down pat early!



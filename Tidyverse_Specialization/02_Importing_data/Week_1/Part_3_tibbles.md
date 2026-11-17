Creating a tibble
The tibble package is part of the tidyverse and can thus be loaded in (once installed) using:

1
library(tidyverse)
as_tibble()
Since many packages use the historical data.frame from base R, you’ll often find yourself in the situation that you have a data.frame and want to convert that data.frame to a tibble. To do so, the as_tibble() function is exactly what you’re looking for.

For example, the trees dataset is a data.frame that’s available in base R. This dataset stores the diameter, height, and volume for Black Cherry Trees. To convert this data.frame to a tibble you would use the following:

123456789101112131415
as_tibble(trees)
## # A tibble: 31 x 3
##    Girth Height Volume
##    <dbl>  <dbl>  <dbl>
##  1   8.3     70   10.3
##  2   8.6     65   10.3
##  3   8.8     63   10.2
##  4  10.5     72   16.4
##  5  10.7     81   18.8
##  6  10.8     83   19.7


Note in the above example and as mentioned earlier, that tibbles, by default, only print the first ten rows to screen. If you were to print trees to screen, all 31 rows would be displayed. When working with large data.frames, this default behavior can be incredibly frustrating. Using tibbles remove this frustration because of the default settings for tibble printing.

Additionally, you’ll note that the type of the variable is printed for each variable in the tibble. This helpful feature is another added bonus of tibbles relative to data.frame.

If you do want to see more rows from the tibble, there are a few options! First, the View() function in RStudio is incredibly helpful. The input to this function is the data.frame or tibble you’d like to see. Specifically, View(trees) would provide you, the viewer, with a scrollable view (in a new tab) of the complete dataset.

A second option is the fact that print() enables you to specify how many rows and columns you’d like to display. Here, we again display the trees data.frame as a tibble but specify that we’d only like to see 5 rows. The width = Inf  argument specifies that we’d like to see all the possible columns. Here, there are only 3, but for larger datasets, this can be helpful to specify.

1234567891011
as_tibble(trees) %>% 
  print(n = 5, width = Inf)
  ## # A tibble: 31 x 3
##   Girth Height Volume
##   <dbl>  <dbl>  <dbl>
## 1   8.3     70   10.3
## 2   8.6     65   10.3
## 3   8.8     63   10.2
## 4  10.5     72   16.4
## 5  10.7     81   18.8
</code></pre>

Other options for viewing your tibbles are the slice_* functions of the dplyr package.

The slice_sample() function of the dplyr package will allow you to see a sample of random rows in random order. The number of rows to show is specified by the n argument. This can be useful if you don’t want to print the entire tibble, but you want to get a greater sense of the values. This is a good option for data analysis reports, where printing the entire tibble would not be appropriate if the tibble is quite large.


<pre><code>
slice_sample(trees, n = 10)
##    Girth Height Volume
## 1   11.2     75   19.9
## 2   11.0     66   15.6
## 3   16.0     72   38.3
## 4   11.3     79   24.2
## 5   13.7     71   25.7
## 6   11.4     76   21.4
## 7   12.9     85   33.8
## 8   10.5     72   16.4
</code></pre>

You can also use slice_head() or slice_tail() to take a look at the top rows or bottom rows of your tibble. Again the number of rows can be specified with the n argument. 

This will show the first 5 rows.

<pre><code>
slice_head(trees, n = 5)
##   Girth Height Volume
## 1   8.3     70   10.3
## 2   8.6     65   10.3
## 3   8.8     63   10.2
## 4  10.5     72   16.4
## 5  10.7     81   18.8
</code></pre>
This will show the last 5 rows.

<pre><code>
slice_tail(trees, n = 5)
##   Girth Height Volume
## 1  17.5     82   55.7
## 2  17.9     80   58.3
## 3  18.0     80   51.5
## 4  18.0     80   51.0
## 5  20.6     87   77.0
</code></pre>

#### <tt>tibble()</tt>
Alternatively, you can create a tibble on the fly by using tibble() and specifying the information you’d like stored in each column.
Note that if you provide a single value, this value will be repeated across all rows of the tibble. This is referred to as “recycling inputs of length 1.”

In the example here, we see that the column c will contain the value ‘1’ across all rows.

<pre><code>
tibble(
  a = 1:5,
  b = 6:10,
  c = 1,
  z = (a + b)^2 + c
)
## # A tibble: 5 x 4
##       a     b     c     z
##   <int> <int> <dbl> <dbl>
## 1     1     6     1    50
</code></pre>

The <tt>tibble()</tt> function allows you to quickly generate tibbles and even allows you to reference columns within the tibble you’re creating, as seen in column z of the example above.

We also noted previously that tibbles can have column names that are not allowed in data.frame. In this example, we see that to utilize a nontraditional variable name, you surround the column name with backticks. Note that to refer to such columns in other tidyverse packages, you’ll continue to use backticks surrounding the variable name.

12345678910111213

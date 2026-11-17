Functional Programming
====================================================
Functional programming is an approach to programming in which the code evaluated is treated as a mathematical function. It is declarative, so expressions (or declarations) are used instead of statements. Functional programming is often touted and used due to the fact that cleaner, shorter code can be written. In this shorter code, functional programming allows for code that is elegant but also understandable. Ultimately, the goal is to have simpler code that minimizes time required for debugging, testing, and maintaining.

R at its core is a functional programming language. If you’re familiar with the apply() family of functions in base R, you’ve carried out some functional programming! Here, we’ll discuss functional programming and utilize the purrr package, designed to enhance functional programming in R.

By utilizing functional programming, you’ll be able to minimize redundancy within your code. The way this happens in reality is by determining what small building blocks your code needs. These will each be a function. These small building block functions are then combined into more complex structures to be your final program.

#### For Loops vs. Functionals
In base R, you likely found yourself writing for loops for iteration. For example, if you wanted to carry out an operation on every row of a data frame, you’ve likely written a for loop to do so that loops through each row of the data frame and carries out what you want to do. However, you also may have heard people bemoan this approach, arguing that it’s slow and unnecessary. This is because R is a functional programming language. You can wrap for loops into a function and call the function instead of using the for loop.

Let’s use an example to demonstrate what we mean by this. What if you had a data frame and wanted the median value for each column in the data frame? To see how you could approach this, we’ll use the trees dataset available by default from R:

<pre><code>
# see dataset
trees <- as_tibble(trees)
trees
## # A tibble: 31 x 3
##    Girth Height Volume
##    <dbl>  <dbl>  <dbl>
##  1   8.3     70   10.3
##  2   8.6     65   10.3
##  3   8.8     63   10.2
##  4  10.5     72   16.4
</code></pre>

The dataset contains the diameter, height, and volume of 31 Black Cherry trees.

#### Copy + Paste Approach
To calculate the median for each column, you could do the following:

<pre><code>
# calculate median of each column
median(trees$Girth)
## [1] 12.9
median(trees$Height)
## [1] 76
median(trees$Volume)
## [1] 24.2
</code></pre>
This would get you your answer; however, this breaks the programming rule that you shouldn’t copy and paste more than once. And, you could imagine that if you had more than three columns, this would be a huge pain and involve a whole lot of copy and pasting and editing.

#### For Loop Approach
A second approach would be to use a for loop. You would loop through all the columns in the data frame, calculate the median, record that value and store that information in a variable.

<pre><code>
# create output vector
output <- vector("double", ncol(trees)) 

# loop through columns
for (i in seq_along(trees)) {          
  output[[i]] <- median(trees[[i]])      
}
output
## [1] 12.9 76.0 24.2
</code></pre>
This allows us to obtain the same information as the copy + paste method; however, it scales better if there are more than three columns in your data frame, making it a better option than the copy + paste method.

But, what if you frequently want to take the median of the columns in your data frame? What if you want to do this more than once? 
  You would have to go in, copy + paste this code and change the name of the data frame each time. This would break the don’t copy + paste more than once rule.

### Function Approach
This brings us to the function approach. Here, we wrap the for loop into a function so that we can execute a function on our data.frame whenever we want to accomplish the task of calculating the median for each column:

<pre><code>
# create function
col_median <- function(df) {
  output <- vector("double", length(df))
  for (i in seq_along(df)) {
    output[i] <- median(df[[i]])
  }
  output
}

# execute function
</code></pre>
Again, the output information from trees is the same for this specific example, but now we see that we could use the col_median() function any time we want to calculate the medians across columns within a data frame!

This is a much better approach as it allows you to generalize your code, but the above solution still requires you to loop through each column, making the code harder to read and understand at a glance. It fails to take advantage of R’s functional programming capabilities.

### purrr Approach
To really optimize this solution, we’ll turn to purrr. Using purrr requires you to determine how to carry out your operation of interest for a single occurrence (i.e. calculate the median for a single column in your data frame). Then purrr takes care of carrying out that operation across your data frame. Further, once you break your problem down into smaller building blocks, purrr also helps you combine those smaller pieces into a functional program.

Let’s use purrr (a core tidyverse package) to solve our calculate median for each column task. 
But, before we do that specifically, let’s first introduce the general <tt>map()</tt> function.

We’ll see usage of <tt>map()</tt> functions in just a second to accomplish our median for each column task, but before doing so, let’s take a second to look at the generic usage for the family of map functions:

<pre><code>
map(.x, .f, ...)
map(INPUT, FUNCTION_TO_APPLY, OPTIONAL_OTHER_STUFF)
</code></pre>
Note that the input to a map function requires you to first specify a vector input followed by the function you’d like to apply. 
Any other arguments to the function you want to pass follow at the end of the call.

When it comes to our specific task, this is implemented as follows using <tt>map_dbl()</tt>:

<pre><code>
library(purrr)
# use purrr to calculate median
map_dbl(trees, median)
##  Girth Height Volume 
##   12.9   76.0   24.2
</code></pre>

Here, we use the <tt>map_dbl()</tt> function from purrr to iterate over the columns of trees and calculate the median. 
And, it even displays the variable name in the output for us - all in a single function call.

Note the flexibility! We’ve just passed the median() function into another function: <tt>map_dbl()</tt>. 
This means that if we changed our minds and wanted mean instead, we could accomplish that with ease:

<pre><code>
# use purrr to calculate mean
map_dbl(trees, mean)
##    Girth   Height   Volume 
## 13.24839 76.00000 30.17097
</code></pre>
This function exists because looping to do something to each element and saving the results is such a common task, that there is family of functions (one of which is <tt>map_dbl()</tt>) to do it for you to accomplish such tasks in purrr.

We’ll note here that purrr’s functions are all implemented in the C programming language, making them faster than the function we generated previously.

In the example above mean could have been any function, denoted in the purrr documentation as .f. 
This specifies the function you’d like to apply to the vector you’ve specified.

After <tt>.f</tt> in purrr functions, you can pass additional arguments. These go after the specified function. 
For example, below, we specify that we’d like to remove NAs, by specifying an argument to be passed to the <tt>mean()</tt> function after the function call (mean):

1234

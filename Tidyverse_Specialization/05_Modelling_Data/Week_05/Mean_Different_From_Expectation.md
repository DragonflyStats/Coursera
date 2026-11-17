Mean Different From Expectation?
=============================================
To answer a question like this, let’s consider the case where you’re interested in analyzing data about a single numeric variable. 
If you were doing descriptive statistics on this dataset, you’d likely calculate the mean for that variable. 
But, what if, in addition to knowing the mean, you wanted to know if the values in that variable were all within the bounds of normal variation. You could calculate that using inferential data analysis. You could use the data you have to infer whether or not the data are within the expected bounds.

For example, let’s say you had a dataset that included the number of ounces actually included in 100 cans of a soft drink. 
You’d expect that each can have exactly 12 oz of liquid; however, there is some variation in the process. 
So, let’s test whether or not you’re consistently getting shorted on the amount of liquid in your can.

In fact, let’s go ahead and generate the dataset ourselves!

<pre><code>
## generate the dataset
set.seed(34) 
soda_ounces <- rnorm(100, mean = 12, sd = 0.04)
head(soda_ounces)
## [1] 11.99444 12.04799 11.97009 11.97699 11.98946 11.98178
</code></pre>
In this code, we’re specifying that we want to take a random draw of 100 different values (representing our 100 cans of soft drink), where the mean is 12 (representing the 12 ounces of soda expected to be within each can), and allowing for some variation (we’ve set the standard deviation to be 0.04).

We can see that the values are approximately, but not always exactly equal to the expected 12 ounces.
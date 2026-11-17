Advanced Factoring
==============================

### Chick Weights 
For the remainder of this lesson, we’re going to return to using a dataset that’s in R by default. 
We’ll use the chickwts dataset for exploring the remaining advanced functions. 
This dataset includes data from an experiment that was looking to compare the “*effectiveness of various feed supplements on the growth rate of chickens.*”


Figure: chickwts dataset

### Re-ordering Factor Levels by Frequency: fct_infreq()
To re-order factor levels by frequency of the value in the dataset, you’ll want to use <tt>fct_infreq()</tt>. 
Below, we see from the output from tabyl() that ‘soybean’ is the most frequent feed in the dataset while ‘horsebean’ is the least frequent. 
Thus, when we order by frequency, we can expect these two feeds to be at opposite ends for our levels.

<pre><code>
## take a look at frequency of each level 
## using tabyl() from `janitor` package
tabyl(chickwts$feed)
##  chickwts$feed  n   percent
##         casein 12 0.1690141
##      horsebean 10 0.1408451
##        linseed 12 0.1690141
##       meatmeal 11 0.1549296
##        soybean 14 0.1971831
##      sunflower 12 0.1690141
</code></pre>


Figure: fct_infreq orders levels based on frequency in dataset

As expected, soybean, the most frequent level, appears as the first level and horsebean, the least frequent level, appears last. 
The rest of the levels are sorted by frequency.


#### Reversing Order Levels: fct_rev()
If we wanted to sort the levels from least frequent to most frequent, we could just put <tt>fct_rev()</tt> around the code we just used to reverse the factor level order.

<pre><code>
## reverse factor level order
fct_rev(fct_infreq(chickwts$feed)) %>% head()
## [1] horsebean horsebean horsebean horsebean horsebean horsebean
## Levels: horsebean meatmeal sunflower linseed casein soybean
</code></pre>

Figure: fct_rev() reverses the factor level order



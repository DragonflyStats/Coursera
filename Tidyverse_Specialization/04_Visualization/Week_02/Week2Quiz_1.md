-------------------------------------------------------
#### Question 1
Which of these is NOT required when plotting in ggplot2?



* <tt>ggplot()</tt> function call
* **Correct** the shape you want to use
* an aesthetic (aes) specified
* the geom you want to plot


-------------------------------------------------------
#### Question 2
Which geom would you specify to generate a scatterplot?

* <tt>geom_scatter()</tt>
* **Correct**<tt>geom_point?()</tt>
* <tt>geom_histogram()</tt>
* <tt>geom_point_scatter()</tt>

Correct
-------------------------------------------------------
#### Question 3
Which geom would you specify to generate a barpot?


* <tt>geom_scatter()</tt>
* ***Incorrect***<tt>geom_barplot()</tt>
* <tt>geom_abline()</tt>
* **Correct**<tt>geom_bar()</tt>


-------------------------------------------------------
#### Question 4
Which geom would you specify if you wanted to know how many individuals in a data set fell into each level of a categorical variable?

* <tt>geom_smooth()</tt>
* **Correct** <tt>geom_bar()</tt>
* <tt>geom_curve()</tt>
* <tt>geom_scatter()</tt>



-------------------------------------------------------
#### Question 5

Which geom would you specify if you wanted to know how the distribution of values in a single numeric variable?


* **Correct** <tt>geom_histogram()</tt>
* <tt>geom_frequency()</tt>
* <tt>geom_scatterplot()</tt>
* <tt>geom_boxplot()</tt>


-------------------------------------------------------
####  Question 6
If you were to run the following code, what color would the points be?

<pre><code>
ggplot(data = diamonds, aes(x = carat, y = price, color = "blue")) + geom_point()
</code></pre>


* **Correct** coral
* ***Incorrect*** blue
* gray


-------------------------------------------------------
#### Question 7
If you were to run the following code, what color would the points be?: 

<pre><code>
ggplot(data = diamonds, aes(x = carat, y = price), color = "blue") + geom_point()</tt>

</code></pre>

* **Correct** black
* gray
* coral

-------------------------------------------------------
#### Question 8
If you were to run the following code, what color would the points be?: 

<pre><code>
ggplot(data = diamonds, aes(x = carat, y = price)) + geom_point(color = "blue")

</code></pre>

* coral
* gray
* **Correct**  blue


-------------------------------------------------------
#### Question 9
What does the alpha argument change in the plot generated from this code?

<pre><<ocde>
ggplot(data = diamonds) + 
 geom_point(mapping = aes(x = carat, y = price, alpha = clarity))
</code></pre>

* highlights points of the most common category within clarity
* shades points with IF being the lightest and I1 being the darkest
* **Correct** shades points with IF points the darkest and I1 being the lightest
* changes points to the greek letter "alpha"

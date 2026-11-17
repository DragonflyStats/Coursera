Working with Factors
===============================
In R, categorical data are handled as factors. By definition, categorical data are limited in that they have a set number of possible values they can take. 
For example, there are 12 months in a calendar year. In a month variable, each observation is limited to taking one of these twelve values. 
Thus, with a limited number of possible values, month is a categorical variable. 
Categorical data, which will be referred to as factors for the rest of this lesson, are regularly found in data. 
Learning how to work with this type of variable effectively will be incredibly helpful.

To make working with factors simpler, we’ll utilize the forcats package, a core tidyverse package. 
All functions within forcats begin with fct_, making them easier to look up and remember. 
As before, to see available functions you can type ?fct_ in your RStudio console. A drop-down menu will appear with all the possible forcats functions.


Figure: fct_ output from RStudio

#### Factor Review
In R, factors are comprised of two components: the actual values of the data and the possible levels within the factor. 
Thus, to create a factor, you need to supply both these pieces of information.

For example, if we were to create a character vector of the twelve months, we could certainly do that:

<pre><code?
## all 12 months
all_months <- c("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec")

## our data
some_months <- c("Mar", "Dec", "Jan",  "Apr", "Jul")
</code></pre>
However, if we were to sort this vector, R would sort this vector alphabetically.

<pre><code>
# alphabetical sort
sort(some_months)
## [1] "Apr" "Dec" "Jan" "Jul" "Mar"
</code></pre>

Figure: sort sorts variable alphabetically

While you and I know that this is not how months should be ordered, we haven’t yet told R that. 
To do so, we need to let R know that it’s a factor variable and what the levels of that factor variable should be.

<pre><code>
# create factor
mon <- factor(some_months, levels = all_months)

# look at factor
mon
## [1] Mar Dec Jan Apr Jul
## Levels: Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec
# look at sorted factor
sort(mon)
## [1] Jan Mar Apr Jul Dec
</code></pre>

Figure: defining the factor levels sorts this variable sensibly

Here, we specify all the possible values that the factor could take in the levels = all_months argument. 
So, even though not all twelve months are included in the some_months object, we’ve stated that all of the months are possible values. 
Further, when you sort this variable, it now sorts in the sensical way!

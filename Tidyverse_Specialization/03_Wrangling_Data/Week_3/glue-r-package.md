glue
========================================
Beyond using stringr to work with strings, there’s an additional helpful package called glue. 
According to the glue website:

<i>
Glue offers interpreted string literals that are small, fast, and dependency-free. Glue does this by embedding R expressions in curly braces which are then evaluated and inserted into the argument string.
</i>

To get started with this package, it will have to be installed and loaded in, as it is not a core tidyverse package.

<pre><code>
# install.packages("glue")
library(glue)
</code></pre>

So, if you want to pass an R variable directly into a string, that becomes simpler with glue.

For example:

<pre><code>
# use glue to interpret string literal
topic <- 'tidyverse'
glue('My favorite thing to learn about is the {topic}!')
## My favorite thing to learn about is the tidyverse!
</code></pre>
Note that the code above interprets the variable topic within the string specified in the glue() function. The variable is specified within curly braces: {}.

This becomes particularly helpful when combining information within a data frame.

For example, if we return to the msleep dataset with information about mammalian sleep, we could use mutate() to add a column summarizing the name of the animal, how many minutes the animal spends asleep and how many awake. Note that these columns are currently in hours, so we’re going to convert that to minutes within the glue statement here:

123456789101112131415161718
# add a description column using glue
msleep %>%
  mutate(description = glue("The {name} typically sleeps for {sleep_total * 60} minutes and is awake for {awake * 60} minutes each day.")) %>% 
  select(name, sleep_total, awake, description)
  ## # A tibble: 83 x 4
##    name             sleep_total awake description                               
##    <chr>                  <dbl> <dbl> <glue>                                    
##  1 Cheetah                 12.1  11.9 The Cheetah typically slee

Note that we’ve selected the four columns used in this example with select() to focus on the output created using glue() in the description column. 
For each observation the information in description utilizes the appropriate information for that observation and the columns specified within the curly braces within the glue() function.

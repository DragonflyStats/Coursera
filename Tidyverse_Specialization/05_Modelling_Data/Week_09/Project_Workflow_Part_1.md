Data Import
===========================
We have one CSV file that contains both our single outcome variable and all of our features (or predictor variables).

Next, we import our data into R now so that we can explore the data further. 
We will call our data object pm for particulate matter. 
We import the data using the read_csv() function from the readr package.

<pre><code>
library(here)

pm <- readr::read_csv(here("data","tidy_data","pm25_data.csv"))
## Parsed with column specification:
## cols(
##   .default = col_double(),
##   state = col_character(),
##   county = col_character(),
##   city = col_character()
## )
## See spec(...) for full column specifications.
</code></pre>
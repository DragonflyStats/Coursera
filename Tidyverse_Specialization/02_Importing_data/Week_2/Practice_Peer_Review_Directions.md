Week 2 Peer Review Solution Key
Problem 1
The object “dat” created in the assignment code will import the survey data for the assignment using read_csv, thereby creating a tibble. Using that object as your data, use select() to create a new tibble that include only the columns for educational level, whether the respondent has an educational loan, employment status, and Trump approval. Display that object. Hint: consult the codebook to identify the correct column names.

Your output should look like this:

## # A tibble: 869 x 4
##     educ edloan employ CC18_308a
##    <dbl>  <dbl>  <dbl>     <dbl>
##  1     2      2      5         2
##  2     6      2      1         4
##  3     3      2      1         4
##  4     5      2      5         4
##  5     3      2      1         4
##  6     2      2      5         1
##  7     3      2      7         1
##  8     5      1      1         4
##  9     6      2      1         1
## 10     2      2      5         4
## # … with 859 more rows


Problem 2
Continuing to use the new data table you created in Problem 1, use recode() to create a new column named “trump_approve_disapprove” that recodes the column for President Trump’s job approval. A value of “1” should mean that the respondent either “strongly” or “somewhat” approves of the President, and a value of 0 should mean that the respondent either “strongly” or “somewhat” DISapproves of the president. Display the resulting object.

Your output should look like this:

## # A tibble: 869 x 5
##     educ edloan employ CC18_308a trump_approve_disapprove
##    <dbl>  <dbl>  <dbl>     <dbl>                    <dbl>
##  1     2      2      5         2                        1
##  2     6      2      1         4                        0
##  3     3      2      1         4                        0
##  4     5      2      5         4                        0
##  5     3      2      1         4                        0
##  6     2      2      5         1                        1
##  7     3      2      7         1                        1
##  8     5      1      1         4                        0
##  9     6      2      1         1                        1
## 10     2      2      5         4                        0
## # … with 859 more rows
Problem 3
Use summarise() to create a summary table for survey respondents who are employed full time and are married. The table should have the mean and median for the importance of religion column.

Your output should look like this:

## # A tibble: 1 x 2
##   `Mean Importance of Religion` `Median Importance of Religion`
##                           <dbl>                           <dbl>
## 1                          2.19                               2

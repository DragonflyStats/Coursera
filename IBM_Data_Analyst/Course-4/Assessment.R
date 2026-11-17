library(tidyverse)
library(rvest)

# table changed location in the wikipage, so go to the
# table URL URL <-
# 'https://en.wikipedia.org/wiki/2019%E2%80%9320_coronavirus_pandemic'
URL <- "https://en.wikipedia.org/wiki/COVID-19_testing"

wikipage <- read_html(URL)

# originally the 5th table in the wiki html page had the
# country totals (so .[5] below) the number 5 is
# hardcoded here, not great programming style now that I
# point the the url of the table, it becomes .[1]

myData <- wikipage %>% html_nodes("table")

mytable <- wikipage %>% html_nodes("table") %>% .[3] %>% html_table(fill = TRUE, 
                                                                    header = T)


head(mytable)

# delete 1st row (incorrectly read in the header) and
# last three rows which are notes
table <- table[[1]]
table <- table[-c(1, (nrow(table) - 1):nrow(table)), -c(1, 
                                                        6)]
colnames(table) <- c("location", "cases", "deaths", "recov")

# drop footnotes from country names in col 1; could use
# fancier regex or perl style script; if last char is
# ']' then delete the last 3 characters; k is a
# temporary placeholder to make the code more readable
# as k appears multiple times in the 2nd line
k <- table[, 1]
k <- ifelse(substr(k, nchar(k), nchar(k)) == "]", substr(k, 
                                                         1, nchar(k) - 3), k)
table[, 1] <- k

# this line no longer needed as table has been
# reformatted; change label to sum referring to sum of
# all countries table[1,1] <- 'World Sum'

# print first 10 rows
head(table, 10)

# save into object
wiki.corona.counts <- table

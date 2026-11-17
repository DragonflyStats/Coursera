
library(tidyverse)

#Skip to Line 3
coverage <- readr::read_csv("https://raw.githubusercontent.com/opencasestudies/ocs-healthexpenditure/master/data/KFF/healthcare-coverage.csv",skip=2)
head(coverage)
spending <- readr::read_csv("https://raw.githubusercontent.com/opencasestudies/ocs-healthexpenditure/master/data/KFF/healthcare-spending.csv",skip=2)
head(spending)



## read coverage data into R
coverage <- read_csv('https://raw.githubusercontent.com/opencasestudies/ocs-healthexpenditure/master/data/KFF/healthcare-coverage.csv', 
                     skip = 2,
                     n_max  = which(coverage$Location == "Notes")-1)

tail(coverage)


spending <- read_csv('https://raw.githubusercontent.com/opencasestudies/ocs-healthexpenditure/master/data/KFF/healthcare-spending.csv', 
                     skip = 2, 
                     n_max  = which(spending$Location == "Notes")-1)
tail(spending)

# After creating a directory called raw_data within a directory that we called data, we can now save our raw data for case study #1 using the here package by simply typing:

library(here)
## here() starts at /Users/carriewright/Documents/GitHub/tidyversecourse
save(coverage, spending, file = here::here("data", "raw_data", "case_study_1.rda"))
#the coverage object and the spending object will get saved as case_study_1.rda within the raw_data directory which is a subdirectory of data 
#the here package identifies where the project directory is located based on the .Rproj, and thus the path to this directory is not needed

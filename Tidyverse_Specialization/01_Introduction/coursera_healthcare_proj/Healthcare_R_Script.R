
#Part 4 of Coursera Introduction to tidyverse homework

## Purpose
##
## The Purpose of the project is to use the R statistical programming language
## to analyze two healthcare datasets to derive insights that promote positive 
## outcomes for patient recovery, while optimizing value for money in terms of 
## spending, and reducing waste and inefficiency

## Load R packages

library(tidyverse)
library(janitor)
load.project()

## Import datasets

Healthcare_Data <- read_csv("data/Healthcare_Datasets/Healthcare_coverage.csv")
head(Healthcare_Data)


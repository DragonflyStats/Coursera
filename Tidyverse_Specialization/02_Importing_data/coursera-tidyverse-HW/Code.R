
library(readxl)

setwd("C:/Users/kilbi/Documents/GitHub/DataAnalyticsCourse/Tidyverse_Specialization/02_Importing_data/coursera-tidyverse-HW")

exceldata1 <- read_excel("excel_data.xlsx",sheet="Sheet1")
exceldata2 <- read_excel("excel_data.xlsx",sheet="Sheet2")

mean(exceldata2$X12)


X <- exceldata1$X5
Y <- exceldata2$X8
cor(X,Y)

library(RSQLite)
hw_db <- dbConnect(RSQLite::SQLite(), "sqlite_data.db")
thisdata <- dbGetQuery(hw_db, "SELECT * FROM table1")
thisdata %>% group_by(ID) %>% summarise(mycor=cor(S2,S3))

install.packages("rjson") # Optional.
library("rjson")
# Give the input file name to the function.
myData <- fromJSON(file="table2.json")
# Print the result.


data_raw <- enframe(unlist(myData))
data_raw <- data_raw %>% pivot_wider(names_from = "name",values_from = "value",values_fn = list) %>% unnest(c(ID, J1, J2, J3, J4))

joindata <- inner_join(exceldata2,data_raw,by="ID")

mean(joindata$J2)
cor(joindata$X2,joindata$J4)

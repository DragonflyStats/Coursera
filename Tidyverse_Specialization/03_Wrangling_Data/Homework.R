library(janitor)
library(tidyverse)
library(lubridate)

complaints <- read_csv("C:/Users/kilbi/Documents/GitHub/DataAnalyticsCourse/Tidyverse_Specialization/3_Wrangling_Data/Data_Complaints.csv")
complaints <- janitor::clean_names(complaints)
complaints <- complaints %>% mutate(date_received = mdy(date_received),.after = date_received)
complaints <- complaints %>% mutate(date_sent_to_company = mdy(date_sent_to_company) )
head(complaints)


Q1data <- complaints %>% filter(product=="Student loan")
Q1data <- Q1data %>% filter(date_received > as.Date("2018-01-01"))
Q1data %>% group_by(state) %>% tally() %>% arrange(desc(n)) %>% head()

Q2data <- complaints 
Q2data <- Q2data %>% mutate(process_time = as.Date(date_sent_to_company) - as.Date(date_received))
Q2data %>% group_by(submitted_via) %>%summarize(mean_times = mean(process_time,na.rm=T)) %>% mutate(mean_times = round(mean_times,1))

Q3data <- complaints %>% filter(product   == "Credit card or prepaid card"  )
str_count(Q3data$consumer_complaint_narrative,"student") %>% sum(na.rm=TRUE)

Q3data <- complaints %>% filter(product   == "Vehicle loan or lease"  )
str_count(Q3data$consumer_complaint_narrative,"student") %>% sum(na.rm=TRUE)



Q4data <- complaints %>% filter(product   == "Vehicle loan or lease"  )
Q4data <- Q4data %>% mutate(charlength = nchar(consumer_complaint_narrative))
Q4data %>% group_by(issue) %>% summarise(charlength = mean(charlength,na.rm=T)) %>% arrange(desc(charlength))


#Q5data <- complaints %>% filter(product   == "Credit card or prepaid card"  )

str_count(Q5data$consumer_complaint_narrative,"account") %>% sum(na.rm=TRUE)
str_count(Q5data$consumer_complaint_narrative,"card") %>% sum(na.rm=TRUE)
str_count(Q5data$consumer_complaint_narrative,"credit") %>% sum(na.rm=TRUE)
str_count(Q5data$consumer_complaint_narrative,"bank") %>% sum(na.rm=TRUE)
str_count(Q5data$consumer_complaint_narrative,"payment") %>% sum(na.rm=TRUE)

## Mortage: Home: Loan and Payment
Q5data <- complaints %>% filter(product   == "Mortgage"  )
str_count(Q5data$consumer_complaint_narrative,"loan") %>% sum(na.rm=TRUE)
str_count(Q5data$consumer_complaint_narrative,"home") %>% sum(na.rm=TRUE)
str_count(Q5data$consumer_complaint_narrative,"payments") %>% sum(na.rm=TRUE)
str_count(Q5data$consumer_complaint_narrative,"mortgage") %>% sum(na.rm=TRUE)
str_count(Q5data$consumer_complaint_narrative,"payment") %>% sum(na.rm=TRUE)
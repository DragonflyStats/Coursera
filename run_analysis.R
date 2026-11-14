###### R Packages
library(magrittr)
library(tidyverse)
library(stringr)

###### Data
## Downloading all Data Sets

filename <- "Coursera_Week4_FinalAssignment.zip"

# Checking if the file already exists.
if (!file.exists(filename)){
  fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(fileURL, filename, method="curl")
}  

# Checking if folder exists
if (!file.exists("UCI HAR Dataset")) { 
  unzip(filename) 
}

###### Preparatory Steps
## Reading test and training and assigning all datasets

featuresnames <- read.table("UCI HAR Dataset/features.txt", col.names = c("n","featurenames"))
activitylabels <- read.table("UCI HAR Dataset/activity_labels.txt", col.names = c("code", "activity"))

testsubject <- read.table("UCI HAR Dataset/test/subject_test.txt", col.names = "subject")
testfeatures  <- read.table("UCI HAR Dataset/test/X_test.txt", col.names = features$functions)
testactivity <- read.table("UCI HAR Dataset/test/y_test.txt", col.names = "code")

trainsubject <- read.table("UCI HAR Dataset/train/subject_train.txt", col.names = "subject")
trainfeatures <- read.table("UCI HAR Dataset/train/X_train.txt", col.names = features$functions)
trainactivity <- read.table("UCI HAR Dataset/train/y_train.txt", col.names = "code")


#combines activity, subject, and features sets from test and train repectively
#Merges the training and the test sets to create one data set.


activity <- rbind(trainactivity, testactivity)
subject <- rbind(trainsubject, testsubject)
features <- rbind(trainfeatures, testfeatures)

#use activity labels instead of activity codes
idcols <- dplyr::bind_cols(subject,activity)
idcols <- idcols %>% left_join(activitylabels,by="code")
idcols <- idcols %>% select(subject,activity)

featurenames <- featuresnames%>% pull(featurenames)
mean_cols <- grep(  "mean\\(\\)", featurenames)
std_cols <- grep(  "std\\(\\)", featurenames)
mean_std_cols <- c(mean_cols,std_cols) %>% sort()

features_sub <- features %>% select(mean_std_cols)
names(features_sub) <- featurenames[mean_std_cols]

features %>% select( matches("mean\\(\\)"))
#Combines data sets with activity names and labels

subjectactivity <- cbind(subject, activity)
finaldata <- cbind(subdata, subjectactivity)

#Clarifying time and frequency variables
names(finaldata)<-gsub("^t", "time", names(finaldata))
names(finaldata)<-gsub("^f", "frequency", names(finaldata))

#Creates new data set with subject and activity means

cleandata <- aggregate(finaldata, by = list(finaldata$subject, finaldata$activity), 
                       FUN = mean)
colnames(cleandata)[1] <- "Subject"
names(cleandata)[2] <- "Activity"

#removes avg and stdev for non-aggregated sub and act columns
cleandata <- cleandata[1:68]

#Writes tidy data to text file
write.table(cleandata, file = "cleandata.txt", row.name = FALSE)

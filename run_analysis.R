# run_analysis.R does the following.
# 0. Preprocessing, load the different files involved
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names. 
# 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

# Please run the code sequentially.

# 0 Preproccess 

library(httr)
library(httpuv)
if(!file.exists("./data")){dir.create("./data")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

# 0.1 Download the data

download.file(fileUrl,destfile="./data/Dataset.zip")
unzip("./data/Dataset.zip", exdir = "./data")

# 0,2 Creating a common path to read the files.

path_rf <- file.path("./data" , "UCI HAR Dataset")

files<-list.files(path_rf, recursive=TRUE)

# 0.3 Reading the files

#   0.3.1 Reading the Activity files.

library(plyr) # load plyr first, then dplyr 
library(data.table) # a prackage that handles dataframe better
library(dplyr) # for fancy data table manipulations and organization

dataActTest  <- read.table(file.path(path_rf, "test" , "Y_test.txt" ),header = FALSE)
dataActTrain <- read.table(file.path(path_rf, "train", "Y_train.txt"),header = FALSE)


#   0.3.2 Reading the feature files.

dataFeatTest  <- read.table(file.path(path_rf, "test" , "X_test.txt" ),header = FALSE)
dataFeatTrain <- read.table(file.path(path_rf, "train", "X_train.txt"),header = FALSE)



#   0.3.3 Reading the Subject files.

dataSubjTrain <- read.table(file.path(path_rf, "train", "subject_train.txt"),header = FALSE)
dataSubjTest  <- read.table(file.path(path_rf, "test" , "subject_test.txt"),header = FALSE)


#   0.3.4 Reading the feature files.

dataActTest  <- read.table(file.path(path_rf, "test" , "Y_test.txt" ),header = FALSE)
dataActTrain <- read.table(file.path(path_rf, "train", "Y_train.txt"),header = FALSE)


#   0.3.5 Reading the Names file

dataFeatNames <- read.table(file.path(path_rf, "features.txt"),head=FALSE)


## 1 Merging the different data frames to get only one

#  1.1 Concatenate the data tables by rows


dataSubject <- rbind(dataSubjTrain, dataSubjTest)
dataActivity<- rbind(dataActTrain, dataActTest)
dataFeatures<- rbind(dataFeatTrain, dataFeatTest)


#  1.2 set names to variables

names(dataSubject)<-c("subject")
names(dataActivity)<- c("activity")
names(dataFeatures)<- dataFeatNames$V2

#  1.3 Merge columns to get the data frame Data for all data

dataCombine <- cbind(dataSubject, dataActivity)
Data <- cbind(dataFeatures, dataCombine)


# 2 Extracting only the mean and standard deviation for each measurement

#  2.1 Subset Name of Features by measurements on the mean and standard deviation
#     i.e taken Names of Features with "mean()" or "std()"

dataFeatNames$V2 <- gsub("Mean", "mean", dataFeatNames$V2)
subdataFeatNames<-dataFeatNames$V2[grep("mean\\(\\)|std\\(\\)", dataFeatNames$V2)]

#  2.2 Subset the data frame Data by seleted names of Features

selectedNames<-c(as.character(subdataFeatNames), "subject", "activity" )
Data<-subset(Data,select=selectedNames)


#3  Uses descriptive activity names to name the activities in the data set
#  3.1 Read descriptive activity names from "activity_labels.txt"

activityLabels <- read.table(file.path(path_rf, "activity_labels.txt"),header = FALSE)
summary(activityLabels) # Cheking the categories

Data$activity<- as.character(Data$activity)
Data$activity[Data$activity== 1] <- "Walking"
Data$activity[Data$activity== 2] <- "Walking Upstairs"
Data$activity[Data$activity== 3] <- "Walking Downstairs"
Data$activity[Data$activity== 4] <- "Sitting"
Data$activity[Data$activity== 5] <- "Standing"
Data$activity[Data$activity== 6] <- "Laying"
Data$activity<- as.factor(Data$activity)


# 4 Appropiately label the data with descriptive names

names(Data)
names(Data) <- gsub("Acc", "Accelerator", names(Data))
names(Data) <- gsub("Mag", "Magnitude", names(Data))
names(Data) <- gsub("Gyro", "Gyroscope", names(Data))
names(Data) <- gsub("^t", "time", names(Data))
names(Data) <- gsub("^f", "frequency", names(Data))

names(Data) <- gsub("[[:punct:]]", "", names(Data))  # Eliminate all special symbols

#  Changing the numbers of participants to a more desciptive categories.

Data$subject <- as.character(Data$subject)
Data$subject[Data$subject == 1] <- "Participant 1"
Data$subject[Data$subject == 2] <- "Participant 2"
Data$subject[Data$subject == 3] <- "Participant 3"
Data$subject[Data$subject == 4] <- "Participant 4"
Data$subject[Data$subject == 5] <- "Participant 5"
Data$subject[Data$subject == 6] <- "Participant 6"
Data$subject[Data$subject == 7] <- "Participant 7"
Data$subject[Data$subject == 8] <- "Participant 8"
Data$subject[Data$subject == 9] <- "Participant 9"
Data$subject[Data$subject == 10] <- "Participant 10"
Data$subject[Data$subject == 11] <- "Participant 11"
Data$subject[Data$subject == 12] <- "Participant 12"
Data$subject[Data$subject == 13] <- "Participant 13"
Data$subject[Data$subject == 14] <- "Participant 14"
Data$subject[Data$subject == 15] <- "Participant 15"
Data$subject[Data$subject == 16] <- "Participant 16"
Data$subject[Data$subject == 17] <- "Participant 17"
Data$subject[Data$subject == 18] <- "Participant 18"
Data$subject[Data$subject == 19] <- "Participant 19"
Data$subject[Data$subject == 20] <- "Participant 20"
Data$subject[Data$subject == 21] <- "Participant 21"
Data$subject[Data$subject == 22] <- "Participant 22"
Data$subject[Data$subject == 23] <- "Participant 23"
Data$subject[Data$subject == 24] <- "Participant 24"
Data$subject[Data$subject == 25] <- "Participant 25"
Data$subject[Data$subject == 26] <- "Participant 26"
Data$subject[Data$subject == 27] <- "Participant 27"
Data$subject[Data$subject == 28] <- "Participant 28"
Data$subject[Data$subject == 29] <- "Participant 29"
Data$subject[Data$subject == 30] <- "Participant 30"
Data$subject <- as.factor(Data$subject)
````

# 5. Creating a independent tidy dataset. 


DataT<-aggregate(. ~subject + activity, Data, mean)
DataT<-DataT[order(DataT$subject,DataT$activity),]
write.table(DataT, file = "tidydata.txt",row.name=FALSE)

# For the Codebook:

write(names(Data), file = "variables.txt", ncolumns = 1)

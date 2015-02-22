# Getting and Cleaning Data Project  

# Instructions.
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

[http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

Here are the data for the project:

[https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
You should create one R script called run_analysis.R that does the following. 

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.  

The project involves the following datasets:  
1. The files **Y_train.txt** and **Y_train.txt** contains the values of the variable `Activity`  
2. The files **subject_train.txt** and **subject_test.txt** contains the values of the variable `Subject`  
3. The files **X_train.txt** and **X_test.txt** contains the values of the variable `Features`  
4. The file **features.txt** contains the names of variables `Features`  
5. The files **activity_labels.txt** contains the levels of the variable `Activity`  
The rest of the files will not be used.  


# R script "run_analysis.R"  

This first step is the preparation for the 5 main steps of the project.  

### Data preparation  
This section download and extract the data from the [FUCI HAR Dataset](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip). Also prepares a common path to read all the necessary files.  
### 1 Loading and merging the data.  
The code loads all the datasets, and combines in a meaningful manner, to get only one big dataset combining the training and test together.  
### 2. Variable selection  
This section search for the pattern "mean" or "std" in the data and extracts only the matching columns.  

### 3. Use descriptive names  
First get the activity names, then check on it, the next step is change the variable to string and replace the numbers for the categories.  


### 4. Labels the data.  
The data contains abbreviations like "Acc" for "Acceleration" and so on. This part of the code replaces all the abbreviations for complete names and get rid of special characters "()-." using the command `gsub`  

### 5. Creating the tidy dataset  

With the final dataset clean and tidy, this section creates an independent dataset aggregating the data by Subject and Activity.  
Finally writes the data locally  


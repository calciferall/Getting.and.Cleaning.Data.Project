# Getting.and.Cleaning.Data.Project
This readme explains how all of the scripts work and how they are connected.  

##Script Description
The R script called run_analysis.R does the following: 

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

##Requirements
The R script has the following requirements:

1. The following [data source](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) should be downloaded and unzipped to your working directory. A <B>UCI HAR Dataset</B> folder should be created in the working directory.
2. The <B>reshape2</B> library

##Operation of script
1. The script can be run with the command in R Studio: source('./run_analysis.R')
2. It will output a file called tidy.txt:
  * In the working directory
  * Contains means of each the mean/std column for each every activity and subject combination
  * Row name will be excluded


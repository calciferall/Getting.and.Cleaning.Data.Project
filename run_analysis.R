# You should create one R script called run_analysis.R that does the following. 
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names. 
# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# required libraries
require("reshape2");

# add activity_labels
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt",stringsAsFactors = FALSE)[,2];

# add label features
features <- read.table("./UCI HAR Dataset/features.txt",stringsAsFactors = FALSE)[,2];
select_features <- grepl("mean|std", features)

# load training data
trainingData = read.csv("./UCI HAR Dataset/train/X_train.txt",sep="");
trainingData <- trainingData[,select_features];
trainingData_Y = read.csv("./UCI HAR Dataset/train/y_train.txt",sep="");
trainingData[,length(trainingData)+1] = factor(trainingData_Y[[1]], levels=1:length(activity_labels), labels = activity_labels);
trainingData[,length(trainingData)+1] = read.csv("./UCI HAR Dataset/train/subject_train.txt",sep="");

# load test data
testData = read.csv("./UCI HAR Dataset/test/X_test.txt",sep="");
testData <- testData[,select_features];
testData_Y = read.csv("./UCI HAR Dataset/test/y_test.txt",sep="");
testData[,length(testData)+1] = factor(testData_Y[[1]], levels=1:length(activity_labels), labels = activity_labels);
testData[,length(testData)+1] = read.csv("./UCI HAR Dataset/test/subject_test.txt",sep="");

# add header
names(trainingData) <- c(features[select_features],"activity","subject");
names(testData) <- c(features[select_features],"activity","subject");

# combined data
combineData <- rbind(trainingData,testData);

# melt data
melted <- melt(combineData,c("activity","subject"));

# cast data
casted <- dcast(melted,activity + subject ~ variable,mean);

# write tidy data
write.table(casted, "./tidy.txt",row.names = FALSE);

#Tidy Data Set CodeBook
This codebook will describe the variables, the data, and any transformations or work that was performed to clean up the data

##Data Source
One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone.

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

Here are the data for the project: 
[https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

A full description is available at the site where the data was obtained: 
[http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

##Dataset description
The dataset includes the following files:

###General Files

* 'README.txt'

* 'features_info.txt': Shows information about the variables used on the feature vector.

* 'features.txt': List of all features. (Column names)

* 'activity_labels.txt': Links the class labels with their activity name.

###Train Dataset

* 'train/X_train.txt': Training experiment set.

* 'train/y_train.txt': Class Label for each training experiment.

* 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

###Test Dataset

* 'test/X_test.txt': Test experiment set.

* 'test/y_test.txt': Class Label for each test experiment.

* ‘test/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

##Transform
The following transforms were done to satisfy the following requirements:

1. Merges the training and the test sets to create one data set.
  * Created the train data set: X_train.txt, y_train.txt, subject_train.txt
  * Created the test data set: X_test.txt, y_test.txt, subject_test.txt
  * Combined the train and test data set 
2. Extracts only the measurements on the mean and standard deviation for each measurement.
  * Include only column data with mean/std words in the column names (features.txt), y_train/test, and subject_train/test 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive activity names.
  * Use activity_labels.txt as a key for y_train/test column data
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
  * Transpose combined data set so each mean/std column data is now a unique row
  * Find mean for each unique mean/std column, y_train/test, and subject_train/test combination

    

## Information about variables
===============================

The columns in the table from file 'extracted-tiny-data.txt' correspond to 70 variables described below:

"subjectNumber" - this variable identifies 30 volunteers participated in the experimetns. It's range is 1 to 30.

"activityLabel" - activities volunteers performed in the experiment. There were 6 activities overall: 

WALKING
WALKING_UPSTAIRS
WALKING_DOWNSTAIRS
SITTING
STANDING
LAYING


All variables listed below correpond to the mean and standard deviation values of various mesurements obtained from the accelerometer and gyroscope 3-axial raw signals. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise: 

"fBodyAccJerk-mean()-X"      
"fBodyAccJerk-mean()-Y"       "fBodyAccJerk-mean()-Z"      
"fBodyAccJerk-std()-X"        "fBodyAccJerk-std()-Y"       
"fBodyAccJerk-std()-Z"        "fBodyAccMag-mean()"         
"fBodyAccMag-std()"           "fBodyAcc-mean()-X"          
"fBodyAcc-mean()-Y"           "fBodyAcc-mean()-Z"          
"fBodyAcc-std()-X"            "fBodyAcc-std()-Y"           
"fBodyAcc-std()-Z"            "fBodyBodyAccJerkMag-mean()" 
"fBodyBodyAccJerkMag-std()"   

"fBodyBodyGyroJerkMag-mean()"
"fBodyBodyGyroJerkMag-std()"  "fBodyBodyGyroMag-mean()"    
"fBodyBodyGyroMag-std()"      "fBodyGyro-mean()-X"         
"fBodyGyro-mean()-Y"          "fBodyGyro-mean()-Z"         
"fBodyGyro-std()-X"           "fBodyGyro-std()-Y"          
"fBodyGyro-std()-Z"                         

"tBodyAccJerkMag-mean()"      "tBodyAccJerkMag-std()"      
"tBodyAccJerk-mean()-X"       "tBodyAccJerk-mean()-Y"      
"tBodyAccJerk-mean()-Z"       "tBodyAccJerk-std()-X"       
"tBodyAccJerk-std()-Y"        "tBodyAccJerk-std()-Z"       
"tBodyAccMag-mean()"          "tBodyAccMag-std()"          
"tBodyAcc-mean()-X"           "tBodyAcc-mean()-Y"          
"tBodyAcc-mean()-Z"           "tBodyAcc-std()-X"           
"tBodyAcc-std()-Y"            "tBodyAcc-std()-Z"           

"tBodyGyroJerkMag-mean()"     "tBodyGyroJerkMag-std()"     
"tBodyGyroJerk-mean()-X"      "tBodyGyroJerk-mean()-Y"     
"tBodyGyroJerk-mean()-Z"      "tBodyGyroJerk-std()-X"      
"tBodyGyroJerk-std()-Y"       "tBodyGyroJerk-std()-Z"      
"tBodyGyroMag-mean()"         "tBodyGyroMag-std()"         
"tBodyGyro-mean()-X"          "tBodyGyro-mean()-Y"         
"tBodyGyro-mean()-Z"          "tBodyGyro-std()-X"          
"tBodyGyro-std()-Y"           "tBodyGyro-std()-Z"          

"tGravityAccMag-mean()"       "tGravityAccMag-std()"       
"tGravityAcc-mean()-X"        "tGravityAcc-mean()-Y"       
"tGravityAcc-mean()-Z"        "tGravityAcc-std()-X"        
"tGravityAcc-std()-Y"         "tGravityAcc-std()-Z"

## Information about data
=========================
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

Check the README.txt file for further details about this dataset.

## Information about transformations
====================================

The only transformations I used to clean up the data are -mean() and -std() variables extractions and aggregations of the results with respect to ActivityLabel and subjectNumber variables (and averaging corresponding results). 
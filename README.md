## Requirements

This script assumes that zip file from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip was already downloaded into 
current directory and extracted into './UCI HAR Dataset' directory.

The script should be run from the current directory. 

## Notes

run_analysis.R does the following:

* reads training and testing sets from 'UCI HAR Dataset' directory
* merges them into one data set.
* extracts only the measurements on the mean and standard deviation for each measurement. 
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive activity names.
* Creates a second, independent tidy data set with the average of each variable 
 for eachactivity and each subject. Saves it into file 'extracted-tiny-data.txt'
(tab separator is used for delimeters).

## Usage

Execute 'Rscript run_analysis.R'

File 'extracted-tiny-data.txt' is generated ('\t' is used as delimeter).
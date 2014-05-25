# run_analysis.R

# 0) Loads data into variables.
# Note: I assume the zip file was already downloaded and extracted into current 
# directory (i.e. into './UCI HAR Dataset')
activityLabels <- read.table("./UCI HAR Dataset/activity_labels.txt", header=FALSE)
features <- read.table("./UCI HAR Dataset/features.txt", header=FALSE)
XTrain <- read.table("./UCI HAR Dataset/train/X_train.txt", header=FALSE)
yTrain <- read.table("./UCI HAR Dataset/train/y_train.txt", header=FALSE)
subjectTrain <- read.table("./UCI HAR Dataset/train/subject_train.txt", header=FALSE)
XTest <- read.table("./UCI HAR Dataset/test/X_test.txt", header=FALSE)
yTest <- read.table("./UCI HAR Dataset/test/y_test.txt", header=FALSE)
subjectTest <- read.table("./UCI HAR Dataset/test/subject_test.txt", header=FALSE)
  
# (1) Merges the training and the test sets to create one data set. (XysBinded)
# Note: I'm also attaching labels and subjects to the data set (thought I need 
# to work with only one single data set). 
# Functions 'rbind' and 'cbind' are used accordingly.
XBinded <- rbind(XTrain, XTest)
colnames( XBinded ) <- features$V2
yBinded <- rbind(yTrain, yTest)
colnames(yBinded) <- "activityLabel"
subjectBinded <- rbind(subjectTrain, subjectTest)
colnames(subjectBinded) <- "subjectNumber"
XysBinded <- cbind(XBinded, yBinded, subjectBinded)

# (2) Extracts only the measurements on the mean and standard deviation for each 
# measurement. 
# Note: I consider "measurements on themean and standard deviation" to be only 
# variables that use mean() directly or use it's X/Y/Z coordinate, i.e.
# 'tBodyAcc-mean()-X' is used, whereas 'fBodyBodyGyroMag-meanFreq()' isn't. 
# Function 'grep' is used for extracting needed names.
nameas <- names(XysBinded)
meanNames <- nameas[ grep("-mean[()$]", nameas)]
stdNames <- nameas[ grep("-std[()$]", nameas)]
XysExtracted <- XysBinded[,c(meanNames,stdNames,"activityLabel","subjectNumber")]

# (3) Uses descriptive activity names to name the activities in the data set
# (4) Appropriately labels the data set with descriptive activity names.
# Note: I'm doing this in one step because I'm working with one data frame that 
# already contains data and labels.
# Function 'gsub' is used for substitutions.
for (i in 1:6) {
  XysExtracted$activityLabel <- gsub(i,activityLabels$V2[i],XysExtracted$activityLabel);
}

# (5) Creates a second, independent tidy data set with the average of each variable 
# for eachactivity and each subject. 
# Note: tiny data is wriiten into file "extracted-tiny-data.txt" in the current 
# directory. It contains the average of each variable for each descriptive  activity 
# (i.e. it's a name/title, not a number!) and each subject (column 'subjectNumber'). 
# Function 'aggregate' is used for splitting and averaging of the extracted dataset.
groups <- list( XysExtracted$subjectNumber, XysExtracted$activityLabel)
tinyDS <- aggregate( XysExtracted, by=groups, FUN=mean)
colnames(tinyDS)[1] <- "subjectNumber"
colnames(tinyDS)[2] <- "activityLabel"
tinyDS <- tinyDS[1:68]
write.table(tinyDS, "extracted-tiny-data.txt", sep="\t")


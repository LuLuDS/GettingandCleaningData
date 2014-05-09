## this script merges the training and the test sets, then extracts only the 
## measurements on the mean and standard deviation for each measurement, finally
## creates a tidy data set with the average of each variable for each activity 
## and each subject.

## load data from the train folder
trainsub <- read.table("./UCI HAR Dataset/train/subject_train.txt")
trainact <- read.table("./UCI HAR Dataset/train/y_train.txt")
traindat <- read.table("./UCI HAR Dataset/train/X_train.txt")

## combine the subjectID, activityID and measurement data to one data set train
train <- cbind(trainsub,trainact,traindat)

## load data from the train folder
testsub <- read.table("./UCI HAR Dataset/test/subject_test.txt")
testact <- read.table("./UCI HAR Dataset/test/y_test.txt")
testdat <- read.table("./UCI HAR Dataset/test/X_test.txt")

## combine the subjectID, activityID and measurement data to one data set test
test <- cbind(testsub,testact,testdat)

## merge the training and the test sets to create one data set alldata
alldata <- rbind(train,test)

## use descriptive activity names to name the activities in the data set
feature <- read.table("./UCI HAR Dataset/features.txt",colClasses="character")
name <- c("subjectid", "activityid", feature[[2]])
names(alldata) <- name

## extract only the measurements on the mean and standard deviation for each 
## measurement. 
extractdata <- alldata[,c(1,2,grep("mean\\(|std\\(",name))]

## appropriately label the data set with descriptive activity names. 
names(extractdata) <- tolower(gsub("-|\\()","",names(extractdata)))

## create a second, independent tidy data set with the average of each variable 
## for each activity and each subject. 
library(reshape2)
melted <- melt(extractdata,(id.vars=c("activityid","subjectid")))
tidydata <- dcast(melted, subjectid + activityid ~ variable, mean)

tidydata
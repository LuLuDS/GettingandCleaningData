Code Book
========================================================
Code book describes the variables, the data, and any transformations or work that I performed to clean up the data.




#### run_analysis.R does the following:
* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement. 
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive activity names. 
* Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 


#### feature variables

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tacc-XYZ and tgyro-XYZ. 

* prefix 't' to denote time
* prefix 'f' to indicate frequency domain signals
* 'acc': accelerometer
* 'gyro': gyroscope
* 'x|y|z': 3-axial signals in the X, Y and Z directions
* Euclidean norm: tbodyaccmag, tgravityaccmag, tbodyaccjerkmag, tbodygyromag, tbodygyrojerkmag 
* mean: Mean value
* std: Standard deviation

#### activity id
* 1: WALKING
* 2: WALKING UPSTAIRS
* 3: WALKING DOWNSTAIRS
* 4: SITTING
* 5: STANDING
* 6: LAYING

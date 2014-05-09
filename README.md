README
========================================================

#### This is a R markdown file explains how the script works.




* Click the link below and save the file on local drive 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

* "Extract all" the downloaded file, you will see the folder called "UCI HAR Dataset"

* Place run_analysis.R in the same folder as "UCI HAR Dataset"

* Set R working dicrectory to the directory above "UCI HAR Dataset" use function
   ```{r}
   setwd(dir)
   ```
* Load run_analysis.R to the R console
   ```{r}
   source("run_analysis.R")
   ```
* tidy_data stores the final tidy data set with the average of each variable for each activity and each subject. 

* You can View the data with
   ```{r}
   view(tidydata)
   ```
* You can output the data to a new file with
   ```{r}
   write.table(tidydata,file="")
   ```
   
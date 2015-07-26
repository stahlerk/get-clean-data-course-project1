==================================================================
Getting and Cleaning Data: Course Project Codebook
Last modified: 7/26/2015 @ 2:30PM
==================================================================

Relevant File
=============

tidy_data.txt

Summary of tidy_data.txt
========================

data.frame':	2765 obs. of  4 variables:
 $ subjectID   : int  1 1 1 1 1 1 1 1 1 1 ...
 $ activityDesc: Factor w/ 6 levels "LAYING","SITTING",..: 6 6 6 6 6 6 6 6 6 6 ...
 $ measurement : Factor w/ 79 levels "tBodyAcc-mean()-X",..: 79 78 77 76 75 74 73 72 71 70 ...
 $ meanValue   : num  -0.699 -0.588 -0.567 -0.618 -0.676 ...

Variable names and descriptions
===============================

1_ subjectID

   Individual identifier of 30 volunteers within an age bracket of 19-48 years.
   There are 30 subjects (1 - 30).

2_ activityDesc

   Description of subject's physical action when measurements are taken.
   There are 6 actions (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING).

3_ measurement

   Mean and standard deviation of measurements taken using embedded accelerometer and gyroscope, which capture 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz.
   There are 79 measurements:

 [1] "tBodyAcc-mean()-X"               "tBodyAcc-mean()-Y"              
 [3] "tBodyAcc-mean()-Z"               "tGravityAcc-mean()-X"           
 [5] "tGravityAcc-mean()-Y"            "tGravityAcc-mean()-Z"           
 [7] "tBodyAccJerk-mean()-X"           "tBodyAccJerk-mean()-Y"          
 [9] "tBodyAccJerk-mean()-Z"           "tBodyGyro-mean()-X"             
[11] "tBodyGyro-mean()-Y"              "tBodyGyro-mean()-Z"             
[13] "tBodyGyroJerk-mean()-X"          "tBodyGyroJerk-mean()-Y"         
[15] "tBodyGyroJerk-mean()-Z"          "tBodyAccMag-mean()"             
[17] "tGravityAccMag-mean()"           "tBodyAccJerkMag-mean()"         
[19] "tBodyGyroMag-mean()"             "tBodyGyroJerkMag-mean()"        
[21] "fBodyAcc-mean()-X"               "fBodyAcc-mean()-Y"              
[23] "fBodyAcc-mean()-Z"               "fBodyAcc-meanFreq()-X"          
[25] "fBodyAcc-meanFreq()-Y"           "fBodyAcc-meanFreq()-Z"          
[27] "fBodyAccJerk-mean()-X"           "fBodyAccJerk-mean()-Y"          
[29] "fBodyAccJerk-mean()-Z"           "fBodyAccJerk-meanFreq()-X"      
[31] "fBodyAccJerk-meanFreq()-Y"       "fBodyAccJerk-meanFreq()-Z"      
[33] "fBodyGyro-mean()-X"              "fBodyGyro-mean()-Y"             
[35] "fBodyGyro-mean()-Z"              "fBodyGyro-meanFreq()-X"         
[37] "fBodyGyro-meanFreq()-Y"          "fBodyGyro-meanFreq()-Z"         
[39] "fBodyAccMag-mean()"              "fBodyAccMag-meanFreq()"         
[41] "fBodyBodyAccJerkMag-mean()"      "fBodyBodyAccJerkMag-meanFreq()" 
[43] "fBodyBodyGyroMag-mean()"         "fBodyBodyGyroMag-meanFreq()"    
[45] "fBodyBodyGyroJerkMag-mean()"     "fBodyBodyGyroJerkMag-meanFreq()"
[47] "tBodyAcc-std()-X"                "tBodyAcc-std()-Y"               
[49] "tBodyAcc-std()-Z"                "tGravityAcc-std()-X"            
[51] "tGravityAcc-std()-Y"             "tGravityAcc-std()-Z"            
[53] "tBodyAccJerk-std()-X"            "tBodyAccJerk-std()-Y"           
[55] "tBodyAccJerk-std()-Z"            "tBodyGyro-std()-X"              
[57] "tBodyGyro-std()-Y"               "tBodyGyro-std()-Z"              
[59] "tBodyGyroJerk-std()-X"           "tBodyGyroJerk-std()-Y"          
[61] "tBodyGyroJerk-std()-Z"           "tBodyAccMag-std()"              
[63] "tGravityAccMag-std()"            "tBodyAccJerkMag-std()"          
[65] "tBodyGyroMag-std()"              "tBodyGyroJerkMag-std()"         
[67] "fBodyAcc-std()-X"                "fBodyAcc-std()-Y"               
[69] "fBodyAcc-std()-Z"                "fBodyAccJerk-std()-X"           
[71] "fBodyAccJerk-std()-Y"            "fBodyAccJerk-std()-Z"           
[73] "fBodyGyro-std()-X"               "fBodyGyro-std()-Y"              
[75] "fBodyGyro-std()-Z"               "fBodyAccMag-std()"              
[77] "fBodyBodyAccJerkMag-std()"       "fBodyBodyGyroMag-std()"         
[79] "fBodyBodyGyroJerkMag-std()"


4_ meanValue

   Arithmetic mean of all observations in dataset, broken down by subject ID, activity, and measurement.

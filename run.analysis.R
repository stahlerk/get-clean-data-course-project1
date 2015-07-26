######################################################################
############  GETTING AND CLEANING DATA : COURSE PROJECT #############
######################################################################

######################################################################
# NOTES

#LAST MODIFIED: 7/26/2015 @ 12:22 PM

######################################################################
# STEP 1: SETUP

  getwd()

  if(!file.exists("course_project")) {
    dir.create("course_project")
  }


  library(reshape2)
  library(plyr)

######################################################################
# STEP 2: READ IN AND APPEND DATA SETS
# NOTE: Keep order of (1) test, (2) train throughout

  if (!file.exists("./course_project/activity.zip")){
    URL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    download.file(URL, destfile = "./course_project/activity.zip")
    unzip("./course_project/activity.zip", exdir = "./course_project" )
  }

  #Data sets
  test_dat <- read.table("./course_project/UCI HAR Dataset/test/X_test.txt", header=F)
  train_dat <-read.table("./course_project/UCI HAR Dataset/train/X_train.txt", header=F)

  #Subject IDs
  test_sub <- read.table("./course_project/UCI HAR Dataset/test/subject_test.txt", header=F) 
  train_sub <- read.table("./course_project/UCI HAR Dataset/train/subject_train.txt", header=F)

  #Activities and activity descriptions
  desc_activity <- read.table("./course_project/UCI HAR Dataset/activity_labels.txt", header=F)
  test_activity<- read.table("./course_project/UCI HAR Dataset/test/y_test.txt", header=F)
  train_activity <- read.table("./course_project/UCI HAR Dataset/train/y_train.txt", header=F)

######################################################################
# STEP 3: ROW BIND TEST DATA AND TRAINING DATA, AND APPEND FEATURE LABELS

  full_dat = rbind(test_dat, train_dat)
  label <- read.table("./course_project/UCI HAR Dataset/features.txt")[2]
  label <- t(label)
  colnames(full_dat) = label


######################################################################
# STEP 4: COLUMN BIND SUBJECT ID TO FULL_DATA

  subjectID <- rbind(test_sub, train_sub) ; colnames(subjectID) = "subjectID"
  full_dat = cbind(subjectID, full_dat)


######################################################################
# STEP 5: ROW BIND TEST AND TRAINING ACTIVITY IDs, MERGE ACTIVITY DESCRIPTIONS

  colnames(desc_activity) = c("activityID", "activityDesc")
  activity <- rbind(test_activity, train_activity) ; colnames(activity) = "activityID"
  activity <- merge(activity, desc_activity, by.x="activityID", by.y="activityID", all=T)


######################################################################
# STEP 6: COLUMN BIND ACTIVITY ID AND DESCRIPTION TO FULL DATA SET

  full_dat <- cbind(activity, full_dat)


######################################################################
# STEP 7: EXTRACT DATA FROME WITH ONLY MEAN AND STDEV VARIABLES

  list = c(1:3, grep("mean",names(full_dat)), grep("std",names(full_dat)))
  sel_dat = full_dat[list]


######################################################################
# STEP 8: MELT BY SUBJECT ID AND ACTIVITY, SUBSET TO MEANS

  list = names(sel_dat[4:82])
  datMelt <- melt(sel_dat, id=c("activityDesc", "subjectID"), measure.vars=list)

  DF = ddply(datMelt,activityDesc~subjectID~variable,summarise,mean=mean(value))
 
######################################################################
# STEP 9: CLEAN FINAL DATA SET AND WRITE TO .TXT

  colnames(DF) = c("activityDesc", "subjectID", "measurement", "meanValue")
  DF = DF[c("subjectID", "activityDesc", "measurement", "meanValue")]
  DF <- arrange(DF, subjectID, desc(activityDesc), desc(measurement) )  

  write.table(DF, file = "./course_project/tidy_data.txt", sep="\t", row.names = F)



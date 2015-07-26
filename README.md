# get-clean-data-course-project1
==================================================================
Getting and Cleaning Data: Course Project README
Last modified: 7/26/2015 @ 2:30PM
==================================================================

Folder contains (4) files:
==========================

1_ Course project README (README.md);

2_ Data set containing final output (tidy_data.txt);

3_ Course project codebook (codebook.md), which contains definitions and transformation information on variables in tidy_data.txt; and,

4_ Analysis file (run.analysis.R), which contains code (and notes) necessary to download, merge, and transform raw data, and output tidy_data.txt.


Raw data sourcing and notes: 
============================

- Data downloaded from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip on 7/25/2015.

- Further documentation on data can be found at: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.

- Use of this dataset in publications must be acknowledged by referencing the following publication:

      Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

- This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.


Additional notes: 
=================
- All values in tidy_data.txt are the arithmetic means of all observations grouped by subject ID, activity, and measurement.

- There are 30 subject IDs, 6 activities, and 78 unique measurements. 


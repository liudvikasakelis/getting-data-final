# getting-data-final
Coursera course - getting and cleaning data. The final assignment

### files 
*script.R* - the main script that produces the tidy data set. For its input it expects to be run from within the UCI HAR dataset directory. Main functions:
+ merges the test and train sets of calculated features
+ adds column names to the merged set (column names = feature names)
+ adds a subject id column to identify the test subject that performed the activity 
+ adds an activity column that identifies the activity 
+ subsets the merged set to only contain the columns that contain either the standard deviations or the mean values of the calculated features
+ for each activity and individual, calculates the mean value for each of the columns present in the previous subsetted set. This new set is then output into *tidyset.txt*

*quicklib.R* - a library for most of *script.R* functionality

*tidyset.txt* - NOT PRESENT IN THE REPOSITORY the output of *script.R*, containing a tidy data set. For variable descriptions, see CodeBook.md

### data set 

The data set information (excerpt from its README.txt):


Human Activity Recognition Using Smartphones Dataset
Version 1.0

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws


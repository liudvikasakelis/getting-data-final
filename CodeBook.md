# Codebook #
### for UCI HAR dataset data tidying script ###
The only output of the script (*run_analysis.R*) is *tidyset.txt*, which contains 88 columns, one for each variable, of entries. Variable descriptions:
+ subject (1) - an integer id of the test subject whose captured movements provided the raw data for analysis; range 1-30
+ activity (2) - a string name of the activity the subject was performing, one of six: {"laying","sitting", "standing", "walking", "walkingdownstairs", "walkingupstairs"}
+ all the other variables (3-88) have semi-descriptive names that reflect the features they represent; an excerpt from the original dataset codebook may help decipher the exact meanings:

> The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
>
> Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

> Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 
>
> These signals were used to estimate variables of the feature vector for each pattern:  
> '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

>...

> The set of variables that were estimated from these signals are: 
>
> mean(): Mean value

> std(): Standard deviation

> ...

> Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

> gravityMean

> tBodyAccMean

> tBodyAccJerkMean

> tBodyGyroMean

> tBodyGyroJerkMean

There were much more variables in the original data set, however this analysis only contains the ones that are either mean or standard deviation results. Each of these new variables is calculated by averaging all the corresponding original values for each subject/activity combination, for example: the entry that contains subject value of 1, activity value of "sitting" will contain, in the variable tbodyaccmeanx, the average of all the measured values of tbodyaccmeanx from the subject 1 while sitting (body accelleration signal in the x axis as explained by the original codebook) and so forth.

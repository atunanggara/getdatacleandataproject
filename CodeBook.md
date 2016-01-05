# Code Book for Getting and Cleaning Data Course Project

## Introduction
This code book describes the variables, the data, and the work that I performed to clean up the data 

## Data

The "tidydata.txt" file is in the wide tidy data format. It consists of 180 rows of observations with 68 different columns of variables. There are 180 rows because there are 30 participants in the dataset and there are 6 different activities that are measured by the data set (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING). The first two columns as explained below are the subjectID and the different activities that are being measured. The next 66 columns are:
* Average of the mean and standard deviation values of 5 various time domain signal measurements in the x, y, and z coordinates. First 30 columns.
* Average of the mean and standard deviation values of magnitude of 5 various time domain signal measurements using Eucledian norm. The next 10 columns
* Average of the mean and standard deviation values of 3 various frequency domain signal (from fast fourier transform) in the x, y, and z coordinates. The next 18 columns. 
* average of the mean and standard deviation values of magnitude of 4 various frequency domain signal measurements using Eucledian norm. The last 8 columns. 

As explained in the README.txt file, "features are normalized and bounded within [-1,1]". Therefore, all the variables are normalized and have no particular units associated with them. 

## Variables

All the variables, except for subjectID and ActivityDescription, are average of multiple measurements taken in "Human Activity Recognition Using Smartphones Data Set"

| Variables                                | Description                                                                                                 |
|------------------------------------------|---------------------------------------------------------------------------------------|
| subjectID                                | Identifier for the 30 volunteers in the "Human Activity Recognition Using Smartphones Data Set"|
| ActivityDescription                      | Description of the 6 activities performed by SubjectID (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) |
| tBodyAccelerometer.mean.X                | mean value for time domain signal in body acceleration signals in the x coordinate using accelerometer                            |
| tBodyAccelerometer.mean.Y                | mean value for time domain signal in body acceleration signals in the y coordinate using accelerometer                            |
| tBodyAccelerometer.mean.Z                | mean value for time domain signal in body acceleration signals in the z coordinate using accelerometer                            |
| tBodyAccelerometer.std.X                 | standard deviation value for time domain signal in body acceleration signals in the x coordinate using accelerometer              |
| tBodyAccelerometer.std.Y                 | standard deviation value for time domain signal in body acceleration signals in the y coordinate using accelerometer              |
| tBodyAccelerometer.std.Z                 | standard deviation value for time domain signal in body acceleration signals in the z coordinate using accelerometer              |
| tGravityAccelerometer.mean.X             | mean value for time domain signal in gravity acceleration signals in the x coordinate                                             |
| tGravityAccelerometer.mean.Y             | mean value for time domain signal in gravity acceleration signals in the y coordinate                                             |
| tGravityAccelerometer.mean.Z             | mean value for time domain signal in gravity acceleration signals in the z coordinate                                             |
| tGravityAccelerometer.std.X              | standard deviation value for time domain signal in gravity acceleration signals in the x coordinate                               |
| tGravityAccelerometer.std.Y              | standard deviation value for time domain signal in gravity acceleration signals in the y coordinate                               |
| tGravityAccelerometer.std.Z              | standard deviation value for time domain signal in gravity acceleration signals in the z coordinate                               |
| tBodyAccelerometerJerk.mean.X            | mean value for body linear acceleration signal (Jerk Signal) in the x coordinate                                                  |
| tBodyAccelerometerJerk.mean.Y            | mean value for body linear acceleration signal (Jerk Signal) in the y coordinate                                                  |
| tBodyAccelerometerJerk.mean.Z            | mean value for body linear acceleration signal (Jerk Signal) in the z coordinate                                                  |
| tBodyAccelerometerJerk.std.X             | standard deviation value for body linear acceleration signal (Jerk Signal) in the x coordinate                                    |
| tBodyAccelerometerJerk.std.Y             | standard deviation value for body linear acceleration signal (Jerk Signal) in the y coordinate                                    |
| tBodyAccelerometerJerk.std.Z             | standard deviation value for body linear acceleration signal (Jerk Signal) in the z coordinate                                    |
| tBodyGyroscope.mean.X                    | mean value for time domain signal in body acceleration signals in the x coordinate using gyroscope                                |
| tBodyGyroscope.mean.Y                    | mean value for time domain signal in body acceleration signals in the y coordinate using gyroscope                                |
| tBodyGyroscope.mean.Z                    | mean value for time domain signal in body acceleration signals in the z coordinate using gyroscope                                |
| tBodyGyroscope.std.X                     | standard deviation value for time domain signal in body acceleration signals in the x coordinate using gyroscope                  |
| tBodyGyroscope.std.Y                     | standard deviation value for time domain signal in body acceleration signals in the y coordinate using gyroscope                  |
| tBodyGyroscope.std.Z                     | standard deviation value for time domain signal in body acceleration signals in the z coordinate using gyroscope                  |
| tBodyGyroscopeJerk.mean.X                | mean value for body angular velocity signal (Jerk Signal) in the x coordinate                                                     |
| tBodyGyroscopeJerk.mean.Y                | mean value for body angular velocity signal (Jerk Signal) in the y coordinate                                                     |
| tBodyGyroscopeJerk.mean.Z                | mean value for body angular velocity signal (Jerk Signal) in the z coordinate                                                     |
| tBodyGyroscopeJerk.std.X                 | standard deviation value for body angular velocity signal (Jerk Signal) in the x coordinate                                       |
| tBodyGyroscopeJerk.std.Y                 | standard deviation value for body angular velocity signal (Jerk Signal) in the y coordinate                                       |
| tBodyGyroscopeJerk.std.Z                 | standard deviation value for body angular velocity signal (Jerk Signal) in the z coordinate                                       |
| tBodyAccelerometerMagnitude.mean         | mean value for magnitude of time domain signal in body acceleration signals computed using Eucledian norm                         |
| tBodyAccelerometerMagnitude.std          | standard deviation for magnitude of time domain signal in body acceleration signals computed using Eucledian norm                 |
| tGravityAccelerometerMagnitude.mean      | mean value for magnitude of the gravity acceleration signals computed using Eucledian norm                                        |
| tGravityAccelerometerMagnitude.std       | standard deviation value for magnitude of the gravity acceleration signals computed using Eucledian norm                          |
| tBodyAccelerometerJerkMagnitude.mean     | mean value for magnitude of body linear acceleration signal (Jerk Signal) computed using Eucledian norm                         |  
| tBodyAccelerometerJerkMagnitude.std      | standard deviation value for magnitude of body linear acceleration signal (Jerk Signal) computed using Eucledian norm             |
| tBodyGyroscopeMagnitude.mean             | mean value for magnitude of time domain signal in body acceleration signals computed using Eucledian norm                         |
| tBodyGyroscopeMagnitude.std              | standard deviation value for magnitude of time domain signal in body acceleration signals computed using Eucledian norm           |
| tBodyGyroscopeJerkMagnitude.mean         | mean value for magnitude of body angular velocity signal (Jerk Signal) computed using Eucledian norm                              |
| tBodyGyroscopeJerkMagnitude.std          | standard deviation value for magnitude of body angular velocity signal (Jerk Signal) computed using Eucledian norm                |
| fBodyAccelerometer.mean.X            | mean value for frequency domain signal in body acceleration signals in the x coordinate using accelerometer                       |
| fBodyAccelerometer.mean.Y            | mean value for frequency domain signal in body acceleration signals in the y coordinate using accelerometer                       |
| fBodyAccelerometer.mean.Z            | mean value for frequency domain signal in body acceleration signals in the z coordinate using accelerometer                       |
| fBodyAccelerometer.std.X             | standard deviation value for frequency domain signal in body acceleration signals in the x coordinate using accelerometer         |
| fBodyAccelerometer.std.Y             | standard deviation value for frequency domain signal in body acceleration signals in the y coordinate using accelerometer         |
| fBodyAccelerometer.std.Z             | standard deviation value for frequency domain signal in body acceleration signals in the z coordinate using accelerometer         |
| fBodyAccelerometerJerk.mean.X        | mean value for body linear acceleration signal (frequency Jerk Signal) in the x coordinate                                        |
| fBodyAccelerometerJerk.mean.Y        | mean value for body linear acceleration signal (frequency Jerk Signal) in the y coordinate                                        |
| fBodyAccelerometerJerk.mean.Z        | mean value for body linear acceleration signal (frequency Jerk Signal) in the z coordinate                                        |
| fBodyAccelerometerJerk.std.X         | standard deviation value for body angular velocity signal (frequency Jerk Signal) in the x coordinate                             |
| fBodyAccelerometerJerk.std.Y         | standard deviation value for body angular velocity signal (frequency Jerk Signal) in the y coordinate                             |
| fBodyAccelerometerJerk.std.Z         | standard deviation value for body angular velocity signal (frequency Jerk Signal) in the z coordinate                             |
| fBodyGyroscope.mean.X                | mean value for frequency domain signal in body acceleration signals in the x coordinate using gyroscope                           |
| fBodyGyroscope.mean.Y                | mean value for frequency domain signal in body acceleration signals in the y coordinate using gyroscope                           |
| fBodyGyroscope.mean.Z                | mean value for frequency domain signal in body acceleration signals in the z coordinate using gyroscope                           |
| fBodyGyroscope.std.X                 | standard deviation value for frequency domain signal in body acceleration signals in the x coordinate using gyroscope             |
| fBodyGyroscope.std.Y                 | standard deviation value for frequency domain signal in body acceleration signals in the y coordinate using gyroscope             |
| fBodyGyroscope.std.Z                 | standard deviation value for frequency domain signal in body acceleration signals in the z coordinate using gyroscope             |
| fBodyAccelerometerMagnitude.mean     | mean value for magnitude of frequency domain signal in body acceleration signals computed using Eucledian norm                    |
| fBodyAccelerometerMagnitude.std      | standard deviation for magnitude of frequency domain signal in body acceleration signals computed using Eucledian norm            |
| fBodyAccelerometerJerkMagnitude.mean | mean value for magnitude of body angular velocity signal (Jerk Signal) computed using Eucledian norm                              |
| fBodyAccelerometerJerkMagnitude.std  | standard deviation value for magnitude of body angular velocity signal (Jerk Signal) computed using Eucledian norm                |
| fBodyGyroscopeMagnitude.mean         | mean value for magnitude of frequency domain signal in body acceleration signals computed using Eucledian norm                    |
| fBodyGyroscopeMagnitude.std          | standard deviation value for magnitude of frequency domain signal in body acceleration signals computed using Eucledian norm      |
| fBodyGyroscopeJerkMagnitude.mean     | mean value for magnitude of frequency domain signal in body acceleration signals computed using Eucledian norm                    |
| fBodyGyroscopeJerkMagnitude.std      | standard deviation value for magnitude of frequency domain signal in body acceleration signals computed using Eucledian norm      |


## Work done on the raw data to get into tidy data

Following the instructions given in the project, I created one R script called run_analysis.R that:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Please read through the Readme.md or run_analysis script comments for more details. 

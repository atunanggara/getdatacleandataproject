# Readme File for Getting and Cleaning Data Course

Run analysis script for all the files in the UCI HAR dataset is saved under the run_analysis.R

Step by step analysis
1. Merges the training and the test sets to create one data set.
I put all the training data in the test folder into a couple different dataset:
* test_x_test: the test values
* test_subj_test: the subject ID 
* test_y_test: the numeral activity description
Then, I combined the three into one dataset using cbind function called test_dataset. 
I Put all the data in the train folder into a couple different dataset:
* train_x_train: the training values
* train_subj_train: the subject ID
* train_y_train: the numeral activity description
Then, combine the three dataset into one train dataset using cbind function called: train_dataset. Lastly, I combined both the train and the test dataset into "one_dataset" using the rbind function. 
I will then put all the different variable names from "features.txt" into "var_name". 

2. Extracts only the measurements on the mean and standard deviation for each measurement

I first need to figure out which columns in the one_dataset data set contains string of characters of Mean/mean and Std/std in their name ( will output a boolean logic, True or False) using the grepl function. I am discarding the weighted average MeanFrequency since I don't think it's relevant to the project. I saved them as "has_std" data set. Then I collect the values into "namesall" variable. Since the boolean set does not include the subject ID column or the activity description column, I added two "TRUE"s into the dataset. 

I then extracted all the values by subsetting the one_dataset with the has_std boolean logic dataset and named it "extract_dataset". I also gave them all the names.

3. Uses descriptive activity names to name the activities in the data set
First, read the "activity_label.txt" that provides correlation of the numeral activity description with their related activity description. Put names into the table, so that I can match them with the extract_dataset data set. Then I merged the two tables by "activity" and deleted the "activity" column. 

4. Appropriately labels the data set with descriptive variable names. 
I switched Acc, Gyro, Mag with Accelerometer, Gyroscope, and Magnitude. I deleted all the brackets () from the name descriptions. I also remove the duplications of BodyBody into just one Body for the last couple variables. 

5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

I used the reshape2 package to tidy the data. Here, I am melting the dataset where the ID is the 67th and 68th variables, namely "subjectID" and "ActivityDescription" and the variables to consider is anything other than the 67th and the 68th name. This resulted in data frame that contains the combination of the SubjectID and the Activity Description with the different variables that accompany them. Afterwards, I casted the melted product and take an average of each variables, based on each subjectID and the ActivityDescription

This provides a "wide form" tidy data frame table with 180 rows and 68 columns. The first two column consists of the subjectID and the Activity description The rest of the column provides the average for 66 of the mean and standard deviation that was recorded from the data. Codebook.md provides a detailed description on what all the variables mean. Finally, I exported the tidy_data data frame into a file. I used write.table to do so, I also put row.names to be false, as requested. 







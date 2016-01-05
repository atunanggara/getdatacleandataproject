## I have extracted the data set and has the test and train in a separate folder called "test" and train" 

## Run analysis for all the files in the UCI HAR dataset
# 1. Merges the training and the test sets to create one data set.
## Put all the data in the test folder into a couple different dataset
test_x_test<-read.table("./test/X_test.txt")
test_subj_test<-read.table("./test/subject_test.txt")
test_y_test<-read.table("./test/y_test.txt")
## combine the three datasets into one test dataset
test_dataset<-cbind(test_x_test,test_subj_test,test_y_test)
## Put all the data in the train folder into a couple different dataset
train_x_train<-read.table("./train/X_train.txt")
train_subj_train<-read.table("./train/subject_train.txt")
train_y_train<-read.table("./train/y_train.txt")
## combine the three dataset into one train dataset
train_dataset<-cbind(train_x_train,train_subj_train,train_y_train)
## combine the test and train dataset into one whole dataset
one_dataset<-rbind(test_dataset,train_dataset)
## Put the different variable names into a file
var_name <- read.table("features.txt",stringsAsFactors=FALSE)
# 2. Extracts only the measurements on the mean and standard deviation for each measurement
## figure out which variable contains string of characters of Mean/mean and Std/std 
## in their name <- will output a boolean logic (True or False)
## take only the mean, and not the weighted average meanFrequency
has_std <- grepl("(.mean[^F].|.std().)",var_name[,2])
## collect all the var_name that has mean or std into one variable
namesall <- var_name[has_std,2]

## add two True into the list to accommodate the subject and the y value 
has_std<-c(has_std,TRUE,TRUE)
## Extract the mean and standard deviation values for each measurements 
## in one_dataset variable
extract_dataset <- one_dataset[,has_std]

names(extract_dataset)<- c(namesall,"subjectID","activity")

# 3. Uses descriptive activity names to name the activities in the data set
## First, read the table that explains the activity numbering with their related
## activity description
act_descr <- read.table("activity_labels.txt")
## put names into the table
names(act_descr)<-c("activity","ActivityDescription")
## Second, I need to join both the act_descr table with the extract_dataset
## I will be using merge function for doing so
data_by3<-merge(extract_dataset,act_descr, by="activity",sort=FALSE)
## now I would like to delete the numeric activity column
data_by3$activity <- NULL

# 4. Appropriately labels the data set with descriptive variable names. 
## switch Acc into accelerometer
newaccel<-sub("Acc","Accelerometer",names(data_by3))
names(data_by3) <- newaccel
## switch Gyro into Gyroscope
newaccel2<-sub("Gyro?","Gyroscope",names(data_by3))
names(data_by3) <- newaccel2
## Switch Mag with Magnitude
newaccel3<-sub("Mag?","Magnitude",names(data_by3))
names(data_by3) <- newaccel3
## delete all the bracket () from the name descriptions
newaccel4<-sub("[(][)]","",names(data_by3))
names(data_by3)<-newaccel4

## there seems to be a duplications of BodyBody in the last couple variables
newaccel5<-sub("BodyBody","Body",names(data_by3))
names(data_by3)<-newaccel5

# 5. From the data set in step 4, creates a second, independent 
# tidy data set with the average of each variable for each activity and 
# each subject.
library(dplyr)
## I am using the reshape2 package to tidy the data
library(reshape2)
## Here, I am melting the dataset where the ID is the 67th and 68th 
## variables, namely "subjectID" and "ActivityDescription"
## and the variables to consider is anything other than the 67th and the 68th
## name.
melted_product<-melt(data_by3,id=names(data_by3)[67:68],measure.vars = names(data_by3)[-(67:68)])
## This resulted in data frame that contains the combination of the SubjectID
## and the Activity Description with the different variables that accompany them

## Now, I am casting the melted product and take an average of each variables, 
## based on each subjectID and the ActivityDescription
tidy_data<-dcast(melted_product,subjectID+ActivityDescription~variable,mean)
## This provides a "wide form" tidy data frame table with 180 rows and 68 columns. 
## The first two column consists of the subjectID and the Activity description
## The rest of the column provides the average for 66 of the mean and standard
## deviation that was recorded from the data.
## There is 180 rows because there are 30 subjects, and each subject has 
## recorded 6 different activities as described in act_descr table
## Therefore the list of variables amounted to 180 possibilities.
## Finally, I need to export the tidy_data data frame into a file.
## I use write.table to do so, I also put row.names to be false,
## Since I do not want to have row numbering in my file, I put FALSE for my
## row.names
write.table(tidy_data,"tidydata.txt",row.names = FALSE)

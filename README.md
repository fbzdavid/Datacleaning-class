##Description of the varaible and scripts

###Varible:
* featureNames: descriptive variable names
* Data: combined training and test data
* subject: subject names for Data variable
* label: activity names for Data variable
* temp: temp varialbe to store activity_lable data.frame
* Data1: final tidy data for output

###Descriptiton of the script:
* The script first load the dplyr libray, then read the training and test data, and the data is combined using rbind, saved in varialbe Data;
* Then the varialbe names in Data are changed according to the results reading from "features.txt", and then  the mean and standard deviation for each measurement are subsetted from variable Data, and saved in the same variable Data.
* Descriptive activity names are updated to name the activities in the data set
* Then from Data variable, Data1 is computed, which is the  independent tidy data set with the average of each variable for each activity and each subject, and write it as a file name "Mydata.txt".


library(dplyr)
featureNames<-as.character(read.table("features.txt")$V2)
Data<- rbind(read.table("train/X_train.txt"),read.table("test/X_test.txt"))
subject<-rbind(read.table("train/subject_train.txt"),read.table("test/subject_test.txt"))
label<-rbind(read.table("train/y_train.txt"),read.table("test/y_test.txt"))
names(Data)<-featureNames
Data<-Data[,grep("mean|std",featureNames)]
Data<-cbind(Data,"subject"=subject,"activity"=label)
names(Data)[80:81]<-c("subject","activity")
Data$activity<-as.factor(Data$activity)
temp<-read.table("activity_labels.txt")
levels(Data$activity)<-temp[,2]
Data1<- group_by(Data,subject,activity) %>% summarise_each(funs(mean))
write.table(Data1,"Mydata.txt",row.name=FALSE)
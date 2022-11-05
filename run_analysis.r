library("dplyr")

tr_s=read.csv("E:\\Downloads\\getdata_projectfiles_UCI HAR Dataset\\UCI HAR Dataset\\train\\subject_train.txt")
tr_x=read.csv("E:\\Downloads\\getdata_projectfiles_UCI HAR Dataset\\UCI HAR Dataset\\train\\X_train.txt")
tr_y=read.csv("E:\\Downloads\\getdata_projectfiles_UCI HAR Dataset\\UCI HAR Dataset\\train\\y_train.txt")

te_s=read.csv("E:\\Downloads\\getdata_projectfiles_UCI HAR Dataset\\UCI HAR Dataset\\test\\subject_test.txt")
te_x=read.csv("E:\\Downloads\\getdata_projectfiles_UCI HAR Dataset\\UCI HAR Dataset\\test\\X_test.txt")
te_y=read.csv("E:\\Downloads\\getdata_projectfiles_UCI HAR Dataset\\UCI HAR Dataset\\test\\y_test.txt")

train=cbind(tr_s,tr_x,tr_y)
test=cbind(te_s,te_x,te_y)

data.set<-bind_rows(train,test)

sapply(data.set,margin=1,mean)
sapply(data.set,margin=1,sd)

colnames(data.set)<-c("column1","column2","column3","column4","column5")


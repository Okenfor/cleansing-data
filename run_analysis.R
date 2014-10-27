setwd("~/R/UCI HAR Dataset")

#
# Loading training set

X_train <- read.table("train/X_train.txt", quote="")
y_train <- read.table("train/y_train.txt", quote="")
names(y_train) <- "activity_label"
#load subject train
subject <- read.table("train/subject_train.txt", quote="", stringsAsFactors=FALSE)

traning_set <- cbind(X_train,y_train,subject)
#
# Loading test set

X_test <- read.table("test/X_test.txt", quote="")
y_test <- read.table("test/y_test.txt", quote="")
names(y_test) <- "activity_label"
#load subject test
subject <- read.table("test/subject_test.txt", quote="", stringsAsFactors=FALSE)
test_set <- cbind(X_test,y_test,subject)

#merging data vertically
data <- rbind(traning_set, test_set)

#Extracts the measurements on the mean and standar deviaton
data <- data[,c(1:6,41:46,81:86,121:126,161:166,562:563)]

#loading activities labels
activity_labels <- read.table("activity_labels.txt", quote="")
activity_labels$V1 <- as.numeric(activity_labels$V1)

#naming labels with the activities set
data <- merge(data, activity_labels, by.x = "activity_label", by.y = "V1", all = FALSE)

#loading names of features
features <- read.table("features.txt", quote="", stringsAsFactors=FALSE)

#naming variables of data
names(data)[2:31] <- features[c(1:6,41:46,81:86,121:126,161:166),"V2"]
names(data)[32]<- "subject"
names(data)[33]<- "activity"

means <- mean(data[,c(2:31)])

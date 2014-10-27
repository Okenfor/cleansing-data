setwd("~/R/UCI HAR Dataset")

#
# Loading training set

X_train <- read.table("~/R/UCI HAR Dataset/train/X_train.txt", quote="")
y_train <- read.table("~/R/UCI HAR Dataset/train/y_train.txt", quote="")
names(y_train) <- "activity_label"
traning_set <- cbind(X_train,y_train)
#
# Loading test set

X_test <- read.table("~/R/UCI HAR Dataset/test/X_test.txt", quote="")
y_test <- read.table("~/R/UCI HAR Dataset/test/y_test.txt", quote="")
names(y_test) <- "activity_label"
test_set <- cbind(X_test,y_test)

#merging data vertically
data <- rbind(traning_set, test_set)

#Extracts the measurements on the mean and standar deviaton
data <- data[,c(1:6,41:46,81:86,121:126,161:166,562)]

#loading activities labels
activity_labels <- read.table("~/R/UCI HAR Dataset/activity_labels.txt", quote="")
activity_labels$V1 <- as.numeric(activity_labels$V1)

#naming labels with the activities set
data <- merge(data, activity_labels, by.x = "activity_label", by.y = "V1", all = FALSE)

#loading names of features
features <- read.table("~/R/UCI HAR Dataset/features.txt", quote="", stringsAsFactors=FALSE)

#naming variables of data
names(data)[2:31] <- features[c(1:6,41:46,81:86,121:126,161:166),"V2"]
names(data)[32]<- "activity"

means <- mean(data[,c(2:31)])



setwd("~/R/UCI HAR Dataset")

#
# Loading training set

X_train <- read.table("~/R/UCI HAR Dataset/train/X_train.txt", quote="")

#
# Loading test set

X_test <- read.table("~/R/UCI HAR Dataset/test/X_test.txt", quote="")

data <- rbind(X_train, X_test)

#Extracts the measurements on the mean and standar deviaton
data <- data[,c(1:6,41:46,81:86,121:126,161:166)]

means <- mean(data)

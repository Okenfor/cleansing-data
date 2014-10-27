cleansing-data
==============
This repo contains a script with the process of loading, merging an transforming over a data package of wealthcomputing.

The variables used for this project were ones related with the mean and standard deviation of different features.

At the end, the script generates two tidy data sets in which they were cleansed and transformed.


Steps of the analysis were:
1. Read from txt files and load data sets into variables in R
2. Data were loaded into X_train, X_test, y_train and y_test variables
3. Each "X" variable was merged with the corresponding "y" variable, the labels.
4. training and test sets were joined by rows making a unique data set.
5. There were 30 variables extracted, those corresponding to mean and standard deviation measurements.
6. Activity labels were merged with the data set in order to make clear the labels
7. The average of each variable for each activity and each subject were calculated.
8. Tidy data was written into a txt file using write.table function.

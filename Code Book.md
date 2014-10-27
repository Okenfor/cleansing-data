Code Book
=========



<p>Steps of the analysis were:</p>
<ol>
<li>Read from txt files and load data sets into variables in R.</li>
<li>Data were loaded into X_train, X_test, y_train and y_test variables.</li>
<li>Each "X" variable was merged with the corresponding "y" variable, the labels.</li>
<li>Training and test sets were joined by rows making a unique data set.</li>
<li>There were 30 variables extracted, those corresponding to mean and standard deviation measurements.</li>
<li>Activity labels were merged with the data set in order to make clear the labels.</li>
<li>The average of each variable for each activity and each subject were calculated.</li>
<li>Tidy data was written into a txt file using write.table function.</li>
</ol>

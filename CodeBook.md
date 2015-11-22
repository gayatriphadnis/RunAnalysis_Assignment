## Getting and Cleaning Data
### Run Analysis Assignment

Following are the variables used in the program run_analysis.r
* 1. traindata - This is the data read from the file X_train.txt
* 2. trainactivity - This is the data read from the file Y_train.txt
* 3. trainsub - This is the data read from the file subject_train.txt
* 4. testdata - This is the data read from the file X_test.txt
* 5. testactivity - This is the data read from the file Y_test.txt
* 6. testsub - This is the data read from the file subject_test.txt
* 7. mergedata - This contains the data from traindata and testdata above merged together
* 8. features - This is the data read from the file features.txt
* 9. varnames - This contains the data from second column of features (feature names). This is used to rename the columns of mergedata
* 10. selmean - Subset of mergedata for columns with mean in their names
* 11. selMean - Subset of mergedata for columns with Mean in their names
* 12. selstd - Subset of mergedata for columns with std in their names
* 13. seldata - Above three data combined together
* 14. mergeactivity - This contains data from trainactivity and testactivity merged together
* 15. mergesub - This contains data from trainsub and testsub merged together
* 16. finaldata - Above three data combined together
* 17. n - number of columns in finaldata
* 18. activity - This is the data read from the file activity_labels.txt
* 19. nr - number of rows in finaldata
* 20. i - variable for for loop to run through all rows of finaldata

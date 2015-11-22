run_analysis <- function() {
  
  #Fetch training data and its corresponding
  #activity and subject details
  traindata <- read.table("./train/X_train.txt")
  trainactivity <- read.table("./train/y_train.txt")
  trainsub <- read.table("./train/subject_train.txt")

  #Fetch test data and its corresponding
  #activity and subject details  
  testdata <- read.table("./test/X_test.txt")
  testactivity <- read.table("./test/y_test.txt")
  testsub <- read.table("./test/subject_test.txt")
  
  #Merge training and test data sets
  mergedata <- rbind(traindata, testdata)
  #Label the columns with feature names
  features <- read.table("./features.txt")
  varnames <- features[,2]
  colnames(mergedata) <- varnames
  
  #Extract mean and std columns from dataset
  selmean <- mergedata[,grep("mean", colnames(mergedata))]
  selMean <- mergedata[,grep("Mean", colnames(mergedata))]
  selstd <- mergedata[,grep("std", colnames(mergedata))]
  #Merge the dataset with required columns
  seldata <- cbind(selmean, selMean, selstd)
  
  #Merge activity and subject details
  #for training and test data
  mergeactivity <- rbind(trainactivity, testactivity)
  mergesub <- rbind(trainsub, testsub)
  #Add these coulmns to main dataset
  #Rename the columns appropriately
  finaldata <- cbind(seldata, mergeactivity, mergesub)
  n <- ncol(finaldata)
  colnames(finaldata)[n-1] <- "Activity"
  colnames(finaldata)[n] <- "Subject"
  
  #Replace activty numbers wit details
  activity <- read.table("./activity_labels.txt")
  nr <- nrow(finaldata)
    for (i in 1:nr) {
    if (finaldata[i,n-1] == 1){
    finaldata[i,n-1] = activity[1,2]
    }
    else if (finaldata[i,n-1] == 2){
      finaldata[i,n-1] = activity[2,2]
    }
    else if (finaldata[i,n-1] == 3){
      finaldata[i,n-1] = activity[3,2]
    }
    else if (finaldata[i,n-1] == 4){
      finaldata[i,n-1] = activity[4,2]
    }
    else if (finaldata[i,n-1] == 5){
      finaldata[i,n-1] = activity[5,2]
    }
    else if (finaldata[i,n-1] == 6){
      finaldata[i,n-1] = activity[6,2]
    }
  }
  write.table(finaldata, "TidyData.txt", row.name=FALSE)
  
  
}

    # Get merged data
    trainX <- read.table("./UCI HAR Dataset/train/X_train.txt", header = FALSE)
    trainSubject <- read.table("./UCI HAR Dataset/train/subject_train.txt",header = FALSE)
    trainY <- read.table("./UCI HAR Dataset/train/y_train.txt",header = FALSE)

    testX <- read.table("./UCI HAR Dataset/test/X_test.txt", header = FALSE)
    testSubject <- read.table("./UCI HAR Dataset/test/subject_test.txt",header = FALSE)
    testY <- read.table("./UCI HAR Dataset/test/y_test.txt",header = FALSE)

    combined <- rbind(trainX, testX)
    colnames(combined) <- read.table("./UCI HAR Dataset/features.txt")[[2]]
    subject <- rbind(trainSubject, testSubject)
    colnames(subject) = "subject"
    combined <- cbind(combined, subject)
    act <- rbind(trainY, testY)
    colnames(act) = "activity"
    combined <- cbind(combined, act)

    # Get only mean and std columns along with subject and activity
    cleanData <- combined[,grep("mean\\(\\)|std\\(\\)|subject|activity", names(combined))]

    # Update activity description
    activitiesList <- read.table("./UCI HAR Dataset/activity_labels.txt", header = FALSE)$V2
    activityDesc <- data.frame(sapply(cleanData$activity, function(x) {activitiesList[x]}))
    colnames(activityDesc) = "activityDescription"
    cleanData <- cbind(cleanData, activityDesc)

    # Add descriptive names
    names(cleanData)<-gsub("^t", "time", names(cleanData))
    names(cleanData)<-gsub("^f", "frequency", names(cleanData))
    names(cleanData)<-gsub("Acc", "Accelerometer", names(cleanData))
    names(cleanData)<-gsub("Gyro", "Gyroscope", names(cleanData))
    names(cleanData)<-gsub("Mag", "Magnitude", names(cleanData))
    names(cleanData)<-gsub("-mean\\(\\)","Mean", names(cleanData))
    names(cleanData)<-gsub("-std\\(\\)","StandardDeviation", names(cleanData))

    # Extract tidy data by calculating means grouped by last 3 columns
    tidyData <- aggregate( cleanData[,1:66], cleanData[,67:69], FUN = mean )

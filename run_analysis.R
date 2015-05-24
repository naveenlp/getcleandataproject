run_analysis <- function() {
    # Get merged data
    combinedData <- get_merged_data()

    # Get only mean and std columns along with subject and activity
    cleanData <- combinedData[,grep("mean\\(\\)|std\\(\\)|subject|activity", names(combinedData))]

    # Read activities data
    activitiesList <- read.table("./UCI HAR Dataset/activity_labels.txt", header = FALSE)$V2
    activityDesc <- data.frame(sapply(cleanData$activity, function(x) {activitiesList[x]}))
    colnames(activityDesc) = "activityDescription"
    cleanData <- cbind(cleanData, activityDesc)

    cleanData
}

get_merged_data <- function() {
    trainX <- read.table("./UCI HAR Dataset/train/X_train.txt", header = FALSE)
    trainSubject <- read.table("./UCI HAR Dataset/train/subject_train.txt",header = FALSE)
    trainY <- read.table("./UCI HAR Dataset/train/y_train.txt",header = FALSE)

    testX <- read.table("./UCI HAR Dataset/test/X_test.txt", header = FALSE)
    testSubject <- read.table("./UCI HAR Dataset/test/subject_test.txt",header = FALSE)
    testY <- read.table("./UCI HAR Dataset/test/y_test.txt",header = FALSE)

    combined <- rbind(trainX, testX)
    colnames(combined) <- read.table("./UCI HAR Dataset/features.txt")[[2]]
    combined$subject <- rbind(trainSubject, testSubject)
    combined$activity <- rbind(trainY, testY)

    combined
}

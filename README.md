# Get merged data
First, we read in the training data and test data separately including measurements, activity and subject.
Then we combine the measurements, activity and subject for test and training data separately and vertically using rbind. Then, we merge the 3 resultant data frames using cbind. We also add in column names using the data described in features.txt

# Get only mean and std columns along with subject and activity
From the merged data, we extract only columns measuring the mean and standard deviation.

```
    cleanData <- combined[,grep("mean\\(\\)|std\\(\\)|subject|activity", names(combined))]
```

# Update activity description
We add in an activityDescription column which uses the data in activity_labels.txt to provide a descriptive text to identify the data in the activity column

# Add descriptive names
We modify the column names to make it easier to understand the value being measured

```
    names(cleanData)<-gsub("^t", "time", names(cleanData))
    names(cleanData)<-gsub("^f", "frequency", names(cleanData))
    names(cleanData)<-gsub("Acc", "Accelerometer", names(cleanData))
    names(cleanData)<-gsub("Gyro", "Gyroscope", names(cleanData))
    names(cleanData)<-gsub("Mag", "Magnitude", names(cleanData))
    names(cleanData)<-gsub("-mean\\(\\)","Mean", names(cleanData))
    names(cleanData)<-gsub("-std\\(\\)","StandardDeviation", names(cleanData))
```

# Extract tidy data by calculating means grouped by last 3 columns
We use aggregate method to calculate the means for the various measurements grouping by the subject and activity columns. We then order by the subject and activity columns to make the data easier to read.

```
    tidyData <- aggregate( cleanData[,1:66], cleanData[,67:69], FUN = mean )
    tidyData <- tidyData[order(tidyData$subject,tidyData$activity),]
```

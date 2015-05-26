Variables in Output Data
=================

#####subject
Ranges from 1-30. Each number represents a person within an age bracket of 19-48 years who has volunteered to participate in an experiment to measure accelerometer and gyroscope sensor data while performing different activities                                           
#####activity
Ranges from 1-6. Identifies different types of activities undertaken by the subject           
#####activityDescription
A descriptive name for the activity performed by the subject. Can be one of WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

#####Sensor Measurements
Average of Means and Standard Deviations for measurements by accelerometer and gyroscope sensors grouped by subject (user) and activity (with activity description) with data in the time domain or the frequency domain as per the title

timeBodyAccelerometerMean-X
timeBodyAccelerometerMean-Y
timeBodyAccelerometerMean-Z
timeBodyAccelerometerStandardDeviation-X
timeBodyAccelerometerStandardDeviation-Y
timeBodyAccelerometerStandardDeviation-Z
timeGravityAccelerometerMean-X
timeGravityAccelerometerMean-Y
timeGravityAccelerometerMean-Z
timeGravityAccelerometerStandardDeviation-X
timeGravityAccelerometerStandardDeviation-Y
timeGravityAccelerometerStandardDeviation-Z
timeBodyAccelerometerJerkMean-X
timeBodyAccelerometerJerkMean-Y
timeBodyAccelerometerJerkMean-Z
timeBodyAccelerometerJerkStandardDeviation-X
timeBodyAccelerometerJerkStandardDeviation-Y
timeBodyAccelerometerJerkStandardDeviation-Z
timeBodyGyroscopeMean-X
timeBodyGyroscopeMean-Y
timeBodyGyroscopeMean-Z
timeBodyGyroscopeStandardDeviation-X
timeBodyGyroscopeStandardDeviation-Y
timeBodyGyroscopeStandardDeviation-Z
timeBodyGyroscopeJerkMean-X
timeBodyGyroscopeJerkMean-Y
timeBodyGyroscopeJerkMean-Z
timeBodyGyroscopeJerkStandardDeviation-X
timeBodyGyroscopeJerkStandardDeviation-Y
timeBodyGyroscopeJerkStandardDeviation-Z
timeBodyAccelerometerMagnitudeMean
timeBodyAccelerometerMagnitudeStandardDeviation
timeGravityAccelerometerMagnitudeMean
timeGravityAccelerometerMagnitudeStandardDeviation
timeBodyAccelerometerJerkMagnitudeMean
timeBodyAccelerometerJerkMagnitudeStandardDeviation
timeBodyGyroscopeMagnitudeMean         
timeBodyGyroscopeMagnitudeStandardDeviation
timeBodyGyroscopeJerkMagnitudeMean
timeBodyGyroscopeJerkMagnitudeStandardDeviation
frequencyBodyAccelerometerMean-X
frequencyBodyAccelerometerMean-Y
frequencyBodyAccelerometerMean-Z
frequencyBodyAccelerometerStandardDeviation-X
frequencyBodyAccelerometerStandardDeviation-Y
frequencyBodyAccelerometerStandardDeviation-Z
frequencyBodyAccelerometerJerkMean-X
frequencyBodyAccelerometerJerkMean-Y
frequencyBodyAccelerometerJerkMean-Z
frequencyBodyAccelerometerJerkStandardDeviation-X
frequencyBodyAccelerometerJerkStandardDeviation-Y
frequencyBodyAccelerometerJerkStandardDeviation-Z
frequencyBodyGyroscopeMean-X
frequencyBodyGyroscopeMean-Y
frequencyBodyGyroscopeMean-Z
frequencyBodyGyroscopeStandardDeviation-X
frequencyBodyGyroscopeStandardDeviation-Y
frequencyBodyGyroscopeStandardDeviation-Z
frequencyBodyAccelerometerMagnitudeMean
frequencyBodyAccelerometerMagnitudeStandardDeviation
frequencyBodyBodyAccelerometerJerkMagnitudeMean
frequencyBodyBodyAccelerometerJerkMagnitudeStandardDeviation
frequencyBodyBodyGyroscopeMagnitudeMean
frequencyBodyBodyGyroscopeMagnitudeStandardDeviation
frequencyBodyBodyGyroscopeJerkMagnitudeMean
frequencyBodyBodyGyroscopeJerkMagnitudeStandardDeviation

Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (timeBodyAccelerometerMagnitude, timeGravityAccelerometerMagnitude, timeBodyAccelerometerJerkMagnitude, timeBodyGyroscopeMagnitude, timeBodyGyroscopeJerkMagnitude). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing frequency domain signals such as: frequencyBodyAccelerometer-XYZ, frequencyBodyAccelerometerJerk-XYZ, frequencyBodyGyroscope-XYZ, frequencyBodyAccelerometerJerkMagnitude, frequencyBodyGyroscopeMagnitude, frequencyBodyGyroscopeJerkMagnitude

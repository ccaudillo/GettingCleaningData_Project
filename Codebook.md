# Codebook for the tidy data.  

File name: **tidydata.txt**.  
Number of rows: 180.  
Number of columns: 68  
Content: This dataset contains aggregated mean and standard deviation values grouped by activity and subject.  

Variables description:  
- **Activity label.** Is a factor label with the following levels:  
  LAYING  
  SITTINF  
  STANDING  
  WALKING  
  WALKING_DOWNSTAIRS  
  WALKING_UPSTAIRS  
- **Subject.** Identifier of the experiment's participant, factor variable ranging from 1 to 30.  
- 66 variables with:  
  - Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration  
  - Triaxial Angular velocity from the gyroscope.  

List of variables:  

Variable number | Variable name | Class | Variable number | Variable name | Class
----------------|---------------|-------|-----------------|---------------|---------
1 | timeBodyAcceleratormeanX | Number | 35 | timeBodyAcceleratorJerkMagnitudemean | Number
2 | timeBodyAcceleratormeanY | Number | 36 | timeBodyAcceleratorJerkMagnitudestd | Number
3 | timeBodyAcceleratormeanZ | Number | 37 | timeBodyGyroscopeMagnitudemean | Number
4 | timeBodyAcceleratorstdX | Number | 38 | timeBodyGyroscopeMagnitudestd | Number
Variable number | Variable name | Class | Variable number | Variable name | Class
5 | timeBodyAcceleratorstdY | Number | 39 | timeBodyGyroscopeJerkMagnitudemean | Number
6 | timeBodyAcceleratorstdZ | Number | 40 | timeBodyGyroscopeJerkMagnitudestd | Number
7 | timeGravityAcceleratormeanX | Number | 41 | frequencyBodyAcceleratormeanX | Number
8 | timeGravityAcceleratormeanY | Number | 42 | frequencyBodyAcceleratormeanY | Number
9 | timeGravityAcceleratormeanZ | Number | 43 | frequencyBodyAcceleratormeanZ | Number
10 | timeGravityAcceleratorstdX | Number | 44 | frequencyBodyAcceleratorstdX | Number
11 | timeGravityAcceleratorstdY | Number | 45 | frequencyBodyAcceleratorstdY | Number
12 | timeGravityAcceleratorstdZ | Number | 46 | frequencyBodyAcceleratorstdZ | Number
13 | timeBodyAcceleratorJerkmeanX | Number | 47 | frequencyBodyAcceleratorJerkmeanX | Number
14 | timeBodyAcceleratorJerkmeanY | Number | 48 | frequencyBodyAcceleratorJerkmeanY | Number
15 | timeBodyAcceleratorJerkmeanZ | Number | 49 | frequencyBodyAcceleratorJerkmeanZ | Number
16 | timeBodyAcceleratorJerkstdX | Number | 50 | frequencyBodyAcceleratorJerkstdX | Number
17 | timeBodyAcceleratorJerkstdY | Number | 51 | frequencyBodyAcceleratorJerkstdY | Number
18 | timeBodyAcceleratorJerkstdZ | Number | 52 | frequencyBodyAcceleratorJerkstdZ | Number
19 | timeBodyGyroscopemeanX | Number | 53 | frequencyBodyGyroscopemeanX | Number
20 | timeBodyGyroscopemeanY | Number | 54 | frequencyBodyGyroscopemeanY | Number
21 | timeBodyGyroscopemeanZ | Number | 55 | frequencyBodyGyroscopemeanZ | Number
22 | timeBodyGyroscopestdX | Number | 56 | frequencyBodyGyroscopestdX | Number
23 | timeBodyGyroscopestdY | Number | 57 | frequencyBodyGyroscopestdY | Number
24 | timeBodyGyroscopestdZ | Number | 58 | frequencyBodyGyroscopestdZ | Number
25 | timeBodyGyroscopeJerkmeanX | Number | 59 | frequencyBodyAcceleratorMagnitudemean | Number
26 | timeBodyGyroscopeJerkmeanY | Number | 60 | frequencyBodyAcceleratorMagnitudestd | Number
27 | timeBodyGyroscopeJerkmeanZ | Number | 61 | frequencyBodyBodyAcceleratorJerkMagnitudemean | Number
28 | timeBodyGyroscopeJerkstdX | Number | 62 | frequencyBodyBodyAcceleratorJerkMagnitudestd | Number
29 | timeBodyGyroscopeJerkstdY | Number | 63 | frequencyBodyBodyGyroscopeMagnitudemean | Number
30 | timeBodyGyroscopeJerkstdZ | Number | 64 | frequencyBodyBodyGyroscopeMagnitudestd | Number
31 | timeBodyAcceleratorMagnitudemean | Number | 65 | frequencyBodyBodyGyroscopeJerkMagnitudemean | Number
32 | timeBodyAcceleratorMagnitudestd | Number | 66 | frequencyBodyBodyGyroscopeJerkMagnitudestd | Number
33 | timeGravityAcceleratorMagnitudemean | Number | 67 | subject | Factor
34 | timeGravityAcceleratorMagnitudestd | Number | 68 | activity | Factor

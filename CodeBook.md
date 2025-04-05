# Code Book for Tidy Dataset

## Overview:
This code book describes the variables and summary statistics in the tidy dataset created from the UCI HAR Dataset.

## Variables:

- `subject`: Integer ID of the subject (1–30).
- `activity`: Type of activity performed (e.g., WALKING, SITTING).

## Measurement Variables:
The remaining columns are measurements of various sensor signals from the smartphone, averaged per activity and subject. All variables are in units of acceleration (g) or angular velocity (rad/s), as applicable.

Examples include:
- `tBodyAcc-mean()-X`
- `tBodyGyro-std()-Z`
- `fBodyAcc-meanFreq()-X`

These were extracted from the original 561 features using `grep("mean\\(\\)|std\\(\\)", features$feature)`.

## Summary:
Each row in the tidy dataset contains the **average value** of each selected feature for each `subject` and `activity` pair.

Units:
- Acceleration: g (gravity)
- Angular velocity: rad/s

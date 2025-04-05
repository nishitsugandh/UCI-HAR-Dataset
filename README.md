# UCI-HAR-Dataset
# Human Activity Recognition Using Smartphones Dataset - Analysis

This project performs analysis on the UCI HAR Dataset to produce a tidy dataset with the average of each variable for each activity and each subject.

## Files Included:
- `run_analysis.R`: Script that processes the data and creates `tidy_data.txt`.
- `tidy_data.txt`: Output file containing the final tidy dataset.
- `CodeBook.md`: Explains the variables, transformations, and summary statistics.

## Summary of the Analysis:
1. Merges the training and test datasets.
2. Extracts measurements on the mean and standard deviation.
3. Applies descriptive activity names.
4. Labels the dataset with descriptive variable names.
5. Creates a second, independent tidy dataset with the average of each variable for each activity and subject.

## Data Source:
Data was taken from the UCI Machine Learning Repository:
[UCI HAR Dataset](https://archive.ics.uci.edu/ml/datasets/human+activity+recognition+using+smartphones)

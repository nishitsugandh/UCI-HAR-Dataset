library(dplyr)

# Load activity labels and features
activity_labels <- read.table("activity_labels.txt", col.names = c("activityId", "activity"))
features <- read.table("features.txt", col.names = c("index", "feature"))

# Extract only mean and std features
mean_std_features <- grep("mean\\(\\)|std\\(\\)", features$feature)

# Load training data
train_x <- read.table("train/X_train.txt")[, mean_std_features]
train_y <- read.table("train/y_train.txt", col.names = "activityId")
train_subject <- read.table("train/subject_train.txt", col.names = "subject")

# Load test data
test_x <- read.table("test/X_test.txt")[, mean_std_features]
test_y <- read.table("test/y_test.txt", col.names = "activityId")
test_subject <- read.table("test/subject_test.txt", col.names = "subject")

# Merge training and test data
merged_x <- rbind(train_x, test_x)
merged_y <- rbind(train_y, test_y)
merged_subject <- rbind(train_subject, test_subject)

# Assign column names̥
colnames(merged_x) <- features$feature[mean_std_features]

# Merge data into one dataset
data <- cbind(merged_subject, merged_y, merged_x)

# Use descriptive activity names
data$activityId <- factor(data$activityId, levels = activity_labels$activityId, labels = activity_labels$activity)
colnames(data)[2] <- "activity"

# Create tidy dataset with averages
tidy_data <- data %>%
  group_by(subject, activity) %>%
  summarise_all(mean)

# Write tidy dataset to a file
write.table(tidy_data, "tidy_data.txt", row.name = FALSE)
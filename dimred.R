# Set the directory path
dir_project1 <- "C:/Users/choyo/Desktop/CODEDATA/biomeddatasci/II/hw2/"
dir_res1 <- dir_project1

# Load in the data
f_data1 <- paste(dir_project1, 'phe.tsv', sep='/')
data1 <- read.delim(f_data1, sep='\t')

# Select the relevant features and label
features <- c("age_at_initial_pathologic_diagnosis", "karnofsky_performance_score", 
              "performance_status_scale_timing", "primary_therapy_outcome_success", 
              "radiation_therapy", "tissue_source_site")
label <- "days_to_death.demographic"

# Create a new dataframe with only the selected features and label
data2 <- data1[c(features, label)]

# Remove rows with missing data
data2 <- na.omit(data2)

# Convert the label to a binary classification problem
threshold <- 365  # Set a threshold of 365 days
data2$label3 <- ifelse(data2$days_to_death.demographic > threshold, "survived", "did not survive")

# Split the data into training and testing sets
n_sample <- dim(data2)[1]
idx_train <- sample(c(1:n_sample), round(n_sample * 0.67))
idx_test <- setdiff(c(1:n_sample), idx_train)
data_train <- data2[idx_train, ]
data_test <- data2[idx_test, ]

# Train the decision tree model
install.packages("rpart.plot")
library(rpart.plot)
library(rpart)
fit1 <- rpart(label3 ~ ., data = data_train, method = 'class')
rpart.plot(fit1)

# Make predictions on the test set
prediction1 <- predict(fit1, data_test, type = 'class')

# Compute the confusion matrix for the test set
table_mat1 <- table(data_test$label3, prediction1)
table_mat1

# Make predictions on the training set
prediction2 <- predict(fit1, data_train, type = 'class')

# Compute the confusion matrix for the training set
table_mat2 <- table(data_train$label3, prediction2)
table_mat2

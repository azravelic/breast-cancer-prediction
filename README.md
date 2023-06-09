# Breast cancer prediction

# Dataset:
https://www.kaggle.com/datasets/uciml/breast-cancer-wisconsin-data contains 569 records about breast cancer appearance (described with 30 different
features). Each record is labeled as either malignant (M) or benign (B).

# Assignment 1 - Preprocessing
Load the data into the Octave environment, observe the dataset, identify the target variable and
features, determine if there are any meaningless features (those that will not have a positive
impact on the model, i.e. features with all of the same values, id numbers, etc.), and remove them
(if there is any). Normalize the rest of the features and encode the values of the target feature
(use 0 for B (benign), and 1 for M (malignant)).

# Assignment 2 - Train/Test Split
Split the dataset into the train (75% of data) and test (25% of data) datasets.

# Assignment 3 - Prior probabilities
Create the function for calculating prior probabilities. To do so, count the number of records per
label and divide it by the total number of records. The function accepts a 1x2 (or 2x1) vector,
where one element is the count of benign and another one is the count of malignant records (of
training dataset). The return value of the function is a 1x2 (or 2x1) vector, where one element
represents the prior probability that the tumor is benign and another that it is malignant.

# Assignment 4 - Mean Value and Variance of Groups
Create the function that accepts two matrices as arguments, the first one with all records labeled
as benign, and the second one with all records labeled as malignant. The function should return
mean values and variance per column of each matrix. Keep in mind that the dimensions of return
values should be 2xN (or Nx2) (there are N features, and we are calculating two mean values for
each feature, one for benign records, and one for malignant records; the same is for variance).

# Assignment 5 - Prediction
Create a function for calculating predictions. The function accepts one data record (dim: 1xN, N
number of features), mean values and variance of groups, and prior probability. Create an
additional function for calculating probability density function value (for normal distribution),
and then use this function within your prediction calculation. The prediction function returns a
label of the sent record.

# Assignment 6 - Confusion matrix
Create a function for calculating the confusion matrix. Input values are true labels of records and
predicted labels of records, and output is a confusion matrix (TP, FP, FN, TN). Create additional
functions for calculating evaluation metrics based on the confusion matrix (sensitivity, recall,
precision, accuracy, and F-score).

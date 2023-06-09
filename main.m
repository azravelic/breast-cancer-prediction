clear;
clc;
pkg load io;

data = csv2cell('data.csv');
[row, col] = size(data);
data = data(2:row, 2:(col-1));
data(:,1) = encode_diagnosis(data(:,1));

#normalizing data without 1st col
data_norm = (cell2mat(data(:, 2:31)) - mean(cell2mat(data(:, 2:31))))./std(cell2mat(data(:, 2:31)));
data_norm = [cell2mat(data(:,1)) data_norm];

#get 75% train data
d75 = ceil(length(data_norm(:,1))* 0.75);
train_d = data_norm(1:d75, :);
test_d = data_norm((d75+1):569, :);

#normalize again
train_data = [train_d(:,1) train_d(:, 2:end).*10];
test_data = [test_d(:,1) test_d(:, 2:end).*10];

counts = count_labels(train_data(:,1)); #returns an array of [ben mal] label counts
prior_probs = prior_probabilities(train_data(:,1), counts); #[benprior, malprior] probabilities for train data

separated = separate_data(train_data, 1);
mean = get_mean(separated{1}, separated{2}); %mean value for train data
var = get_variance(separated{1}, separated{2}); %variance for train data

predictions = (get_predictions_array(test_data, mean, var, prior_probs))';

[TP, FP, FN, TN] = confusion_matrix(test_data(:,1), predictions);
[sens, prec, acc, fscore] = evaluate(TP, FP, FN, TN);


cnf = {"\\","actualM","actualB"; "predictedM", num2str(TP), num2str(FP); "predictedB", num2str(FN), num2str(TN)};
col_width = [15 15 15];
row_template= [sprintf("%%%is", col_width) "\n"];
printf(row_template, cnf'{:}, "\n");

printf("Evaluation metrics:\n\n\tAccuracy:%d\n\tSensitivity:%d\n\tPrecision:%d\n\tF-score:%d\n", acc, sens, prec, fscore);


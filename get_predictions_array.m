function [predictions] = get_predictions_array(data, mean, var, prior_probabilities)

  true_labels = data(:,1);
  [row, col] = size(data);
  predictions = [ ];

  for i = 1:row

    pred_label = predict(data(i,2:end), mean, var, prior_probabilities);
    predictions = [predictions, pred_label];


  endfor
  end

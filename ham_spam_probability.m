function [p_ham, p_spam] = ham_spam_probability(data)


% Calculate the total number of samples
  totalSamples = size(data, 1);

% Calculate the number of spam samples
  spamSamples = sum(data(:, 1) == 1);

% Calculate the number of ham samples
  hamSamples = sum(data(:, 1) == 0);

% Calculate the probabilities
  p_spam = spamSamples / totalSamples;
  p_ham = hamSamples / totalSamples;


end

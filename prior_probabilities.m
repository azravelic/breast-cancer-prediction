function [P]  = prior_probabilities(labels, counts)

  P = counts./length(labels);

 end

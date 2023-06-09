function prediction = predict(x, mean, var, prior_probabilities)

  prediction = 0;

  pdf_ben = pdf(x,mean(1,:), var(1,:)); #is an array of pdfs of each column, we need to multiply them all
  pdf_mal = pdf(x, mean(2,:), var(2,:));

  post_ben = prod(pdf_ben)*prior_probabilities(1);
  post_mal = prod(pdf_mal)*prior_probabilities(2);

  if post_ben>post_mal
    prediction = 0;
  elseif post_ben<post_mal
    prediction = 1;


end

function [sens, prec, acc, fscore] = evaluate(TP, FP, FN, TN)

  sens = TP/(TP+FN);
  prec = TP/(TP+FP);
  acc = (TP+TN)/(TP+TN+FP+FN);
  fscore = (2*prec*sens)/(prec+sens)


  end

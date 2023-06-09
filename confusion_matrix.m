function [TP, FP, FN, TN] = confusion_matrix(actual, predicted)

    TP = 0;
    FP = 0;
    FN = 0;
    TN = 0;

    for i = 1: length(actual)
      if(predicted(i) == actual (i))
        if(predicted(i)==1)
          TP += 1;
        elseif(predicted(i)==0)
          TN += 1;
        end

      else
          if(predicted(i)==1)
            FP += 1;
          elseif(predicted(i)==0)
            FN += 1;
          end
      end
    endfor
end

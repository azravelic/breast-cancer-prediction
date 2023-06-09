function [C] =  count_labels(labels)
  ben=0;
  mal=0;
  for i = 1:length(labels)
    if(labels(i) == 0)
      ben=ben+1;
    else
      mal=mal+1;
    endif
  endfor

  C  = [ben mal];
end

function diagnosis_col = encode_diagnosis(diagnosis_col)

  for i = 1:length(diagnosis_col)
    if (strcmp(diagnosis_col(i),'M'))
      diagnosis_col(i) = 1;
    else
      diagnosis_col(i) = 0;
    endif
  endfor
end


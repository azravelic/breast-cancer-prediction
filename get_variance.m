function variances = get_variance(ben, mal)

  variances = [var(ben(:,2:end),1); var(mal(:,2:end),1)];

 end

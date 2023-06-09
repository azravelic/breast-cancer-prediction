function pdf = pdf(x, mean, var)

  pdf = exp(-((x-mean).^2)./(2*var))./sqrt(2*pi.*var);

end

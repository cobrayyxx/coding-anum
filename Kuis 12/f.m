function y = f(x)
  for i= 1:length(x)
    y(i) = 1/(1+10*x(i)^2);
  endfor
function g = gradfd(x)
  n = length(x);
  h = 10^-5;
  for i = 1:n
    xh = x;
    xh(i) = xh(i) + h;
    f = fungsi(x);
    fh = fungsi(xh);
    g(i) = (fh - f)/h;
  endfor
  g = g';
 end
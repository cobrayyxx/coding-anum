function r = make_plot(n)
  # membuat plot
  
  t = -1:2/(n-1):1;
  u = fungsi(t);
  
  coef = newton(t, u)
  
  k=400;
  x = -1:2/k:1;
  
  for i=1:length(x)
    y(i) = interpolate(coef, t, x(i));
  endfor
  
  plot(x, fungsi(x));
  hold on
  plot(x, y);
  scatter(t, u, 10, 'g', 'filled');
  hold off
  title(strcat("n=", int2str(n)));
  legend("exact","interpolate");
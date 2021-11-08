function H = Hessianfd(x)
  n = length(x);
  h = 10^-5;
  for i = 1:n
    xih = x;
    xih(i) = xih(i) + h;
    f = fungsi(x);
    fih = fungsi(xih);
    for j= i:n
      xjh = x;
      xjh(j) = xjh(j) + h;
      f = fungsi(x);
      fjh = fungsi(xjh);
      xijh = xih;
      xijh(j) = xijh(j) + h;
      fijh = fungsi(xijh);
      H(i,j) = (fijh-fjh-fih+f)/h^2;
      H(j,i) = H(i,j); 
    endfor
  endfor
  end

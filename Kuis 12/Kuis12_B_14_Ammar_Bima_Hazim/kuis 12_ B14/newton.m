function [a] = newton(t, y)
  n = length(t);
  A = zeros(n);
  A(:,1)=ones(n,1);
  for j=2:n
    for i=j:n
      temp = t(i)-t(1);
      for k=2:j-1
        temp = temp * (t(i) - t(k));
      endfor
      A(i, j) = temp;
    endfor
  endfor
  a = segitigaBawah(A,y);
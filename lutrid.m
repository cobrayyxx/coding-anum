function [L,U] = lutrid(T)
  [n n] = size(T)
  L = eye(n)
  count_mul = 0
  count_div = 0
  count_min = 0
  for i = 1:n-1
    L(i+1,i) = T(i+1,i)/T(i,i);
    count_div+=1
  
    T(i+1,:) = T(i+1,:) - L(i+1,i)*T(i,:);
    count_mul+=n
    count_min+=n
  endfor
  U = triu(T)

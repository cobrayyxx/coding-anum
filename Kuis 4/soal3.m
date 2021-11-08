function [L, U, X] = soal3()
  n = 100;
  T = zeros(n);
  T(1, [1 2]) = rand(1,2);
  b = rand(n,1);
  for i=2:n-1
    T(i, [i-1 i i+1]) = rand(1,3);
    
  endfor
  
  T(n, [n-1 n]) = rand(1,2);
  
  L = eye(n);
  for i = 1:n-2
    L(i+1,i) = T(i+1,i)/T(i,i);
    T(i+1, [i i+1 i+2]) = T(i+1,[i i+1 i+2]) - L(i+1,i)*T(i,[i i+1 i+2]);
  endfor
  L(n, n-1) = T(n, n-1) / T(n-1, n-1);
  T(n, [n-1 n]) = T(n, [n-1 n]) - L(n, n-1) * T(n-1, [n-1 n]);
  U = triu(T)
  y = L\b;
  X = U\y
  
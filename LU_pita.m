function [L,U] = LU_pita(A)
  [n,n] = size(A);
  L = eye(n);
  for k =1 :n-1
    for i = k+1 : min(k+4,n)
      L(i, k) = A(i, k)/A(k, k);
      for j = k:min(k+4,n)
        A(i,j) = A(i, j) - L(i,k)*A(k,j)
      endfor
    endfor
  endfor
  U = A;

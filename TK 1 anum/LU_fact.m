function [L,U] = LU_fact(A)
  [n,n] = size(A);
  L = eye(n);
  for j =1 :n-1
    for i = j+1 : n
      L(i, j) = A(i, j)/A(j, j);
      A(i,:) = A(i, :) - L(i,j)*A(j,:);
    endfor
  endfor
  U = A;

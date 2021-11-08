function [L,d] = LDLT(A);
  [n,n] = size(A);
  L = eye(n);
  for j=1 : n-1
    d(j) = A(j,j);
    for i=j+1:n
      L(i,j)=A(j,i)/A(j,j);
      A(i,j:n)=A(i,j:n)-L(i,j)*A(j,j:n);
    endfor
  endfor
  d(n)=A(n,n)

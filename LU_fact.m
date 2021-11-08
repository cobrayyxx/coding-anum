function [L,U, flop] = LU_fact(A)
  [n,n] = size(A);
  L = eye(n);
  flop=0;
  for j =1 :n-1
    for i = j+1 : n
      flop = flop+1+(2*(n-i+1))  
      L(i, j) = A(i, j)/A(j, j); %flop = 1 setiap iterasi
      A(i,:) = A(i, :) - L(i,j)*A(j,:);  % flop = (2(n-i))
    endfor
  endfor
  U = A;
  flop

function [L,U] = LU_fact_efisien(A)
  [n,n] = size(A);
  L = eye(n);
  for j =1 :n-1
    for i = j+1 : n
      if A(i,j) != 0 %elemen yang sudah nol tidak operasikan
         L(i, j) = A(i, j)/A(j, j); %flops = 1
         A(i,:) = A(i, :) - L(i,j)*A(j,:); %flops = 
      else
         break;
      endif
    endfor
  endfor
  U = A;

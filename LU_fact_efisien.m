function [L,U] = LU_fact_efisien(A)
  [n,n] = size(A);
  L = eye(n);
  flop=0;
  for j =1 :n-1
    for i = j+1 : n
      if A(i,j) != 0 %elemen yang sudah nol tidak operasikan
        flop = flop+1+(2*(n-i+1)) 
         L(i, j) = A(i, j)/A(j, j); %flops = 1
         A(i,:) = A(i, :) - L(i,j)*A(j,:); %flops = (2(n-i))
      else
         break;
      endif
    endfor
  endfor
  U = A;

function [A] = eulerbernoullibeam(n)
  A = zeros(n);
  A(1,1:4) = [16 -9 (8/3) -(1/4)] 
  A(2,1:4) = [-4 6 -4 1]
  A(n-1, n-3:n) = [16/17 -(60/17) 72/17 -(28/17)]
  A(n, n-3:n) = [-(12/17) 96/17 -(156/17) 72/17]
  for i=3:n-2   
    for j=i-2 : i+2 % yang gk efisien dari j = 1:n
      if (abs(i-j)<=3)
        i
        j
        A(i,j:j+4) = [1 -4 6 -4 1]
        break;
      endif
    endfor
  endfor
  

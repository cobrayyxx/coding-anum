function k = koef(x,y)
  n= length(x);
  b = zeros(n-2,1);
  A = zeros(n-2,n-2);
  %n-2 karena k yang dicari hanya n-2
  for i = 2:n-2
     A(i-1,i-1) = 2*(x(i-1)-x(i+1));
     A(i-1,i) = x(i)-x(i+1);
     A(i,i-1) = x(i-1)-x(i);
     b(i-1) = 6*(y(i-1)-y(i))/(x(i-1)-x(i))-(y(i)-y(i+1))/(x(i)-x(i+1))% kurang lihat notion
  endfor
  A(n-2, n-2) =  2*(x(n-2)-x(n)); 
  b(n-2) = 

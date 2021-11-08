function [R,bt] = Household(A,b)
  [m,n] = size(A);
  c = [A,b];
  for j=1:n
    v = c(j:m,j) + sign(c(j,j))*norm(c(j:m,j))*[1;zeros(m-j,1)];
    d = v'*v;
    for k=j:n+1
      c(j:m,k) = c(j:m,k)-((2*v'*c(j:m,k)/d))*v;
      
    endfor
  endfor
  R=c(1:m,1:n);
  bt=c(1:m,n+1);
  
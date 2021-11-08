function [R,bt,p] = HouseholdPivot(A,b)
  [m,n] = size(A);
  c = [A,b];
  p = 1:n;
  for j=1:n
    for i= j:n
      f(i) = norm(c(j:m,i));
    endfor
    [x,l] = max(f);
    l = l+j-1;
    c(:,[j l])= c(:,[l j])
    p([j l]) = p([l j]) 
    v = c(j:m,j) + sign(c(j,j))*norm(c(j:m,j))*[1;zeros(m-j,1)];
    d = v'*v;
    for k=j:n+1
      c(j:m,k) = c(j:m,k)-((2*v'*c(j:m,k)/d))*v;
      
    endfor
  endfor
  R=c(1:m,1:n);
  bt=c(1:m,n+1);
  
  
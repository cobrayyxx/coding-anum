function x = steepestdescent(x)
  g = gradfd(x);
  maxiter = 5;
  tol = 10^-6;
  count = 0;
  while norm(g)>tol && count<maxiter
    p = -g;
    alpha = armijo(x,g)
    x = x + alpha*p; 
    g = gradfd(x);
    count = count+1;
  endwhile
 

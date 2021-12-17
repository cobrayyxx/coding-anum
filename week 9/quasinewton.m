function [x0,count] = quasinewton(x0, tol, maxiter)
  g = gradfd(x0);
  count = 1;
  % tambahin ini
  B = eye(length(g));
  while norm(g)>tol && count<maxiter
    %tambahin ini
    p = -B*g
    %line search armijo backtracking
    
    %%%
    
    x1 = x0-alpha*p;
    g1 = gradfd(x1);
    delta = x1-x0
    gamma = g1-g
    B = BFGS()
    x0 = x1
    g=g1
    count = count+1;
  endwhile

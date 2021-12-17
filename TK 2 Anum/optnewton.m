function [x0,count] = optnewton(x0)
  g = gradfd(x0);
  count = 0;
  tol = 10^-6;
  maxiter=5;
  while norm(g)>tol && count<maxiter
    H = Hessianfd(x0);
    d = H\g;
    x0 = x0-d;
    g = gradfd(x0);
    count = count+1;
  endwhile

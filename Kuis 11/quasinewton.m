function [x0,count] = quasinewton(x0, tol, maxiter)
  g = gradfd(x0);
  count = 1;
  % Inisiasi B = matriks identitas
  B = eye(length(g));
  while norm(g)>tol && count<maxiter
    %hitung p
    p = -B*g;
    %line search armijo backtracking untuk mencari alpha
    alpha = armijo(x0,g);
    %%%
    %cari x_k+1
    x1 = x0+alpha*p;
    %%hitung BFGS
    g1 = gradfd(x1);
    delta = x1-x0;
    gamma = g1-g;
    B = BFGS(B,delta,gamma);
    %%%
    x0 = x1;
    g=g1;
    count = count+1;
  endwhile

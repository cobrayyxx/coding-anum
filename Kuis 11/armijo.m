function alpha = armijo(x,g)
  alpha = 1;
  beta = 0.1;
  p = -g;
  tau = 0.5;
  while fungsi(x+alpha*p)>fungsi(x)+alpha*beta*g'*p
    alpha = tau * alpha;
  endwhile
  

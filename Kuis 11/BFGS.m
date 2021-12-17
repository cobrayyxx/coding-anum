function B = BFGS(B, delta, gamma)
  a = (1- ((gamma'*B*gamma)/(delta'*gamma)));
  b = (delta*delta')/(delta'*gamma);
  c = ((delta*gamma'*B) + (B*gamma*delta'))/(delta'*gamma);
  B = B - a*b-c;
  
  
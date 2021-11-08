a = 1
b = 2
m = (a+b)/2
TOL = 10^-6
iter = 0

function y = f(x)
  y = x^x - 3
endfunction

while (abs(f(m)) > TOL)
  if f(a)*f(m) < 0
    b = m;
  else
    a = m;
  endif
  m = (a+b)/2
  f(m), TOL
  iter = iter + 1
  a,b
endwhile



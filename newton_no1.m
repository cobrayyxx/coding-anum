x0 = 2
TOL = 10^-6

function y = f(x)
  y = x^3 + x -1;
  %y = x^2 - cos(pi*x);
  %y = x^x -3
endfunction

function yx = fx(x)
  yx = 3*x^2 + 1;
  %yx = 2*x + pi*sin(pi*x);
  %yx = (log(x)+1)*x^x
endfunction

count = 0
while (abs(f(x0))>TOL)
  x0 = x0 - (f(x0)/fx(x0))
  count = count + 1
endwhile


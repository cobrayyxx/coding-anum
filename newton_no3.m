x0 = 2
TOL = 10^-6;

% f(x)
function y = f(x) 
  %y = x^x -3;
  y = x^x - 3
endfunction

% f'(x)
function yx = fx(x)
  %yx = (log(x)+1)*x^x;
  yx = (log(x)+1)*x^x
endfunction

count = 0
while (abs(f(x0)) > TOL) 
  x0 = x0 - (f(x0)/fx(x0))
  count = count + 1
endwhile


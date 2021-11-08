 x0 = 2
 TOL = 10^-6
 % f(x)
 function y = f(x)
    %y = x^2 - cos(pi*x);
     y = x^2 - cos(pi*x);
 endfunction
 
 % f'(x)
 function yx = fx(x)
   %yx = 2*x + pi*sin(pi*x);
   yx = 2*x + pi*sin(pi*x);
 endfunction

 counter = 0
 while (abs(f(x0))>TOL )
   x0 = x0 - f(x0)/fx(x0)
   counter+=1
 endwhile

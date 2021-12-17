function [coef] = newton(x, y)
  # mencari koefisien dengan metode interpolasi newton
  
  n = length(x);
  A = zeros(n, n);
  
  A(:, 1) = ones(n,1);
  for j=2:n
    for i=j:n
      A(i, j) = subfunc(x(i), x(1:j-1));
    endfor
  endfor
  
  coef = solve_lower_triangle(A, y);
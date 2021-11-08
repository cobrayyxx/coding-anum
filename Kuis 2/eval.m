# Kelompok 14
# Bima Bagas Raditya - 1906398585
# Ammar Muhammad Zufar M - 1906308223
# Muhammad Hazim Al Farouq - 1906400103
function ans = eval(coef,a)
  sum = coef(1) ;
  recent_a = a;
  for i=2 : length(coef)
    sum += coef(i)*recent_a;
    recent_a*=a;
  endfor
  ans = sum;
 

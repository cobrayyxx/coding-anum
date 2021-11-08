# Kelompok 14
# Bima Bagas Raditya - 1906398585
# Ammar Muhammad Zufar M - 1906308223
# Muhammad Hazim Al Farouq - 1906400103
function a = interpol(x,y)
    a = ones(length(x), length(y));
    
    for i=1 : length(x)
      recent_x = x(i);
      for j=2 : length(y)
        a(i,j) = recent_x;
        recent_x*=x(i);
        
      endfor

  endfor
 # Gauss code from Pa Chan
  n = length(a);
  for j = 1 : n-1
    for i = j+1:n
      r = a(i,j)/a(j,j);
      a(i,:) = a(i,:)-r*a(j,:);
      y(i) = y(i) - r*y(j);
    endfor
  endfor
  U=a
  bt=y
  hasil = inv(U)*bt'
  a = hasil'
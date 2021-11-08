# Kelompok 14
# Bima Bagas Raditya - 1906398585
# Ammar Muhammad Zufar M - 1906308223
# Muhammad Hazim Al Farouq - 1906400103
x = [-2 -1 0 1 2];
y = [3 0 -8 7 0];
hasil = interpol(x,y);
s =  -2 : 0.01 : 2;
t= zeros(length(s),1);
for i=1 : length(s)
  t(i)=eval(hasil,s(i));
endfor
plot(s,t);
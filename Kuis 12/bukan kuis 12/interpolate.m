function result = interpolate(coef, t, x)
  # hitung nilai fungsi interpolasi pada x
  
  result = coef(1);
  for p=2:length(coef)
    result = result + coef(p) * subfunc(x, t(1:p-1));
  endfor

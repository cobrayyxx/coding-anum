function result = subfunc(x, y)
  # hitung (x-y1)(x-y2)...(x-yn)
  
  result = x-y(1);
  for i=2:length(y)
    result = result * (x - y(i));
  endfor

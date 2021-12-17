function p = polynomial(a, t, T)
  p = a(1); %a0
  for i=2:length(a)
    variable = T-t(1);
    for j=2:i
      variable = variable*(T-t(j));
    endfor
    p = p+a(i)*variable;
  endfor

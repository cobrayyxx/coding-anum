function int =  midpoint(a,b,n)
  h = (b-a)/(n-1) ;
  int = 0;
  x(1) = a;
  for i=2:n
    x(i) = x(i-1)+h;
  endfor
  for i=1:n-1
    int = int+h*fungsi1((x(i)+x(i+1))/2);
  endfor

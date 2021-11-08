function[R,bt] = Rotasi(A,b)
    [m,n] = size(A);
    E = [A b];
    for j=1:n
      for i=j+1:m
        r = sqrt(E(j,j)^2+E(i,j)^2);
        c = E(j,j)/r; #cos
        s = E(i,j)/r; #sin
        tmp = c*E(j,j:n+1)+s*E(i,j:n+1);
        E(i,j:n+1) = -s * E(j,j:n+1)+c*E(i,j:n+1);
        E(j,j:n+1) = tmp;
      endfor
    endfor
    R = E(:,1:n);
    bt = E(:,n+1);
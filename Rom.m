%Approximating an integral using rombergs method
function [IR] = Rom(f,a,b,ni,lev)
  for i = 1:(lev+1)
    nsub = ni*2^(i-1)
    h = (b-a)/nsub;
    x = a:h:b;
    F = f(x);
    IR(i,1) = h*(F(nsub+1))/2 + h*sum(F(2:nsub));
  endfor
for j = 2:(lev+1)
  for i = 1:(lev-j+2)
    IR(i,j) = ((4^(j-1))*(IR(i+1, j-1))-(IR(i, j-1)))/((4^(j-1))-1);
  endfor
end

% Approximating an intergral using Simpson's 1/3 rule
function [I] = Simps(f,a,b,n)
  h = (b-a)/n;
  x = a:h:b;
  L = length(x);
  F = zeros(1,L);
  for i = 1:L
    F(i) = f(i);
  endfor
I = (h/3)*(F(1)+4*(sum(F(2:2:n)))+2*(sum(F(3:2:n-1)))+F(n+1));
endfunction

%Function to approximate an integral using the composite trapezoid rule
function [I] = Trap(f,a,b,n)
format long
h = (b-a)/n;
x = a:h:b;
L = length(x);
F = zeros(1,L);
for i = 1:L
  F(i) = f(x(i));
end
I = h*(F(1)+F(n+1))/2 + h*sum(F(2:n))
endfunction


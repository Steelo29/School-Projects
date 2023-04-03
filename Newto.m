clc;
clear;
x0 = input('Enter initial guess: ');
n = input('Enter no of iterations: ');
e = input('Enter tolerance: ');
f = @(x)tanh(x);

for i=1:n
  xn = x0-(f(x0)./diff(f(x0)));
  if abs(xn-x0)<e
    fprintf('The approx root is: %f', x0)
    break
  else
    x0 = xn;
    xn = x0-(f(x0)./diff(f(x0)));
  endif
endfor
 x0
 xn

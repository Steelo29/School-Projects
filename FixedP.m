%Alternate function to approximate the root of a function using the Fixed Point Method
clc;
clear;
format long;
display('Function is chosen in y.m');
xi = input('Enter initial guess: ');
e = input('Enter tolerance: ');
fxi = y(xi);

while abs(fxi - xi) > e
   if (fxi-xi) == 0
     fprintf('The Root is: %14.14f\n', xi);
   else
    xi = fxi;
   endif
 endwhile
 fprintf('The Root is: %f\n', xi);

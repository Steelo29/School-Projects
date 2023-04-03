%this is program to calculate root of Non linear differential eqn
clc;
clear;
format long;
f=input('Enter function: ');
a=input('Enter minimum value: ');
b=input('Enter maximum value: ');
e=input('Enter tolerence: ');
n=input('Enter no of iterations: ');
i = 1:n;
for i = 1:n
  while abs((b-a))>e
  c=(b+a)/2;    %Find midtpoint (c)
  if (f(c)==0)    %Check to see if midpoint (c) is a root
    break
  elseif f(a)*f(c)<0    % Decide which subinterval to keep
    b=c;
  else
    a=c;
  endif
endwhile
fprintf('The approx root is: %16.16f\n',c)
endfor



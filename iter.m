clc;
clear;
%Inputs
a0 = input('Enter lower value: ');
b0 = input('Enter upper value: ');
e = input('Enter tolerance: ');
n = ((log(b0-a0)-log(e))/log(2))-1;

fprintf('The no of iterations is: %f\n', n)

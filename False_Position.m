%This function will approximate the root of a function using the False Position Method
%INPUTS: lower limit, upper limit, tolerance
clc;
clear;
format long;

i=1;
while(i)
    a=input('Enter lower value:');
    b=input('Enter upper value: ');
    e=input('Enter tolerance: ');

    if y(a)*y(b)<0
        i=0;
    else

        warning('Incorrect interval');
    end
end
if y(a)<0
    xn=a;
    xp=b;
else
    xn=b;
    xp=a;
end

xm=a;
while (abs(y(xm))>e)
   xm=(xn*y(xp)-xp*y(xn))/(y(xp)-y(xn));
    if y(xm)<0
        xn=xm;
    else
        xp=xm;
    end
end
fprintf('The Root is: %16.16f\n', xm)

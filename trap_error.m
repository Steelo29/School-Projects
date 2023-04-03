function q = trap_error(n)
% Composite Trapezoid rule error formula for f(x)=cos(exp(x)), integrated from 0 to pi
% Find the smallest value of h that gives an absolute error below 10^(-9)

% Define the function to be integrated
f = @(x) cos(exp(x));

% Define the limits of integration
a = 0;
b = pi;

% Initialize variables
h = 0.1;
E = inf;

% Iterate over different values of h until the error is below 10^(-9)
while E > 10^(-9)

    % Compute the nodes for the Trapezoid rule
    x = linspace(a, b, n+1);

    % Compute the approximation using the Trapezoid rule
    approx = (h/2) * (f(a) + 2*sum(f(x(2:end-1))) + f(b));

    % Compute the absolute error using the error formula for the Trapezoid rule
    syms y
    f2 = diff(f(y), 2);
    E = abs((pi^3)/(12*(n^2)) * max(abs(subs(f2, y, x))));

    % Decrease h if the error is still too large
    if E > 10^(-9)
        h = h - 0.1;
    end
end

end


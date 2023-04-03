%This function approximates an integral and computes the absolute error
INPUTS: function, lower boundary, upper boundary, no. of subintervals
function [ap, err] = composite_trap(f, a, b, n)
    % Compute the width of each subinterval
    h = (b-a) / n;

    % Compute the values of the function at the endpoints of each subinterval
    x = linspace(a, b, n+1);
    y = f(x);

    % Compute the composite trapezoid approximation of the integral
    approx = h/2 * (y(1) + 2*sum(y(2:n)) + y(n+1));

    % Compute the exact value of the integral (if available)
    exact = integral(f, a, b);

    % Compute the absolute error of the approximation
    err = abs(exact - approx);
end


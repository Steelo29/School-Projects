function E = simp_error(n,h)
% n is the number of subintervals

% Check that n is odd
if mod(n, 2) == 0
    error('Error: n must be an odd integer.')
end

% Define the function to be integrated
f = @(x) (x.^2)/((x.^3)-(exp(-x)));

% Define the limits of integration
a = 1;
b = 3;

% Compute the step size

% Compute the nodes and weights for the Simpson's 1/3 rule
x = linspace(a, b, n+1);
w = ones(1, n+1);
w(2:2:n) = 4;
w(3:2:n-1) = 2;

% Compute the approximation using the Simpson's 1/3 rule
approx = (h/3) * sum(w .* f(x));

% Compute the absolute error using the error formula for the Simpson's 1/3 rule
E = abs((1/180) * (h^4) * max(abs(12.*(x(2:end)-x(1:end-1)).^(-5))));

end


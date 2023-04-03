% Define the function
f = @(x,y) (1000*sqrt((15-x).^2+(40-y).^2)) + (2000*sqrt((12-x).^2+(10-y).^2)) + (3000*sqrt((50-x).^2+(20-y).^2));

% Define the range for x and y
x_range = [12, 50];
y_range = [10, 40];

% Define the starting point for the optimization
x0 = [1, 1];

% Use fminsearch to find the minimum value of the function
options = optimset('Display', 'iter');
[x_min, f_min] = fminsearch(@(x) f(x(1),x(2)), x0, options);

% Display the result
disp(['Minimum value: ' num2str(f_min)]);
disp(['Minimum point: (' num2str(x_min(1)) ',' num2str(x_min(2)) ')']);


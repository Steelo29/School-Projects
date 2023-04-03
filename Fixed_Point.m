%Input Values
g = input('Enter function: ');
x0 = input('Enter initial guess: ');
e = input('Enter tolerance: ');
n = input('Enter no of iterations: ');

for i = 1:n
  x1 = g(x0);
  fprintf('x%d %f\n',i, x1)
  if abs(x1-x0)<e
    break
  endif
  x0 = x1;
end
fprintf('The Root is: %f\n',x1)
 fprintf('No of iterations: %d',i)

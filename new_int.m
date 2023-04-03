x = input('Enter values for x: ');
y = input('Enter values for y: ');
p = input('Enter value of p: ');
n = length(x);
d = zeros(n,n);
d(:,1) = y;
for j = 2:n
  for i = j:n
    d(i,j) = (d(i,j-1) - d(i-1,j-1))/(x(i)-x(i-j+1));
  endfor

endfor
d

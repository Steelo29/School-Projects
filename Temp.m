
for x = input('Enter x values: ');
  y = input('Enter y values: ');
  f = [x.^0 x.^1 x.^2];
  f
endfor
format long
p = f'*f\f'*y
r = (f*p)-y
rmse = norm(r,2)/sqrt(length(x))
t = input('Enter value of x: ');
f = [t.^0 t.^1 t.^2];
q = sum(f*p)

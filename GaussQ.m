function [IG] = GaussQ (f,a,b,n)
format long
  Ci=[
  1, 1, 0, 0, 0, 0;
  0.5555555555555556, 0.8888888888888888, 0.5555555555555556, 0, 0, 0;
  0.3478548451374538, 0.6521451548625461, 0.6521451548625461, 0.3478548451374538, 0, 0;
  0.2369268850561891, 0.4786286704993665, 0.5688888888888889, 0.4786286704993665, 0.2369268850561891, 0;
  0.1713245, 0.3607616, 0.4679139, 0.4679139, 0.3607616, 0.1713245;
  ];
  Xi = [
  -0.5773502691896257, 0.5773502691896257, 0, 0, 0, 0;
  -0.7745966692414834, 0, 0.7745966692414834, 0, 0, 0;
  -0.8611363115940526, -0.339810435848563, 0.339810435848563, 0.8611363115940526, 0, 0;
  -0.9061798459386640, -0.5384693101056831, 0, 0.5384693101056831, 0.9061798459386640, 0;
  -0.93246951, -0.66120938, -0.23861919, 0.23861919, 0.66120938, 0.93246951;];
  C = Ci((n-1),(1:n));
  X = Xi((n-1),(1:n));

  for i = 1:n
    I(i) = C(i)*((b-a)/2)*f((((b-a)*X(i))+a+b)/2)
  endfor
IG =sum(I);
endfunction

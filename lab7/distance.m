function [l]=distance(x0, y0, a, b, c)
  l=abs(a*x0+b*y0+c)/sqrt(a^2+b^2);
end

x0=input("input x0: ");
y0=input("input y0: ");
a=input("input a for line: ");
b=input("input b for line: ");
c=input("input c for line: ");
l=distance(x0, y0, a, b, c);
disp("distance: ")
disp(l)

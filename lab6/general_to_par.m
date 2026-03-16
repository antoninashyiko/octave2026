function [x0, y0, l, m]=general_to_par(A, B, C)
  x0=0;
  y0=-C/B;
  l=B;
  m=-A;
end

function [A, B, C]=par_to_general(x0, y0, l, m)
  A=m;
  B=-l;
  C=l*y0-m*x0;
end

A=input("input the first coefficient for general equation: ");
B=input("input the second coefficient for general equation: ");
C=input("input the third coefficient for general equation: ");
[x0, y0, l, m]=general_to_par(A, B, C);
disp("this general equation as parametric(first is the x0, y0):")
disp([x0, y0, l, m])

x0=input("input the first coordinate: ");
y0=input("input the second coordinate: ");
l=input("input coordinate for vector: ");
m=input("input coordinate for vector: ");
[A, B, C]=par_to_general(x0, y0, l, m);
disp("this parametric equation as general:")
disp([A, B, C])

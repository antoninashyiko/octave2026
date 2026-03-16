function [intersection, angle]=lines(a1, b1, c1, a2, b2, c2)
  x = 0:10;
  y = -(a1*x+c1)/b1;
  plot(x, y)
  hold on;
  x = 0:10;
  y = -(a2*x+c2)/b2;
  plot(x, y)
  xlabel('x')
  ylabel('y')
  grid on

  if a1*b2 == a2*b1
      disp("The lines are parallel")
      intersection = [];
  else
    intersection=[];
    A=[a1 b1; a2 b2];
    c=[-c1; -c2];
    A1=inv(A); # matrix method
    intersection=A1*c;
  endif
  s1=[-a1, b1];
  s2=[-a2, b2];
  mod1=sqrt(a1^2+b1^2);
  mod2=sqrt(a2^2+b2^2);
  cosangle=abs(dot(s1, s2))/(mod1*mod2);
  angle=acos(cosangle);
end

a1=input("a1: ");
b1=input("b1: ");
c1=input("c1: ");
a2=input("a2: ");
b2=input("b2: ");
c2=input("c2: ");
[in, ang]=lines(a1, b1, c1, a2, b2, c2);
if length(in)>0
  disp("intersection point: ")
  disp(in)
endif

disp("angle between lines: ")
disp(ang)

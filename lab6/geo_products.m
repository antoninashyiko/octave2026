function [scalar, vector, s, v]=geo_products(A, B, C, D)
  AB=B-A;
  AC=C-A;
  AD=D-A;
  scalar=dot(AB, AC);
  vector=cross(AB, AC);
  s=norm(vector)/2;
  v=dot(vector, AD)/6;
end

a=zeros(1, 3);
b=zeros(1, 3);
c=zeros(1, 3);
d=zeros(1, 3);
for i=1:3
  a(i)=input("enter coordinate for A: ");
  b(i)=input("enter coordinate for B: ");
  c(i)=input("enter coordinate for C: ");
  d(i)=input("enter coordinate for D: ");
end

[sc, vec, sp, vl]=geo_products(a, b, c, d);
disp("scalar product:")
disp(sc)
disp("vector product:")
disp(vec)
disp("triangle area:")
disp(sp)
disp("volume:")
disp(vl)

quiver3(a(1),a(2),a(3),(b-a)(1),(b-a)(2), (b-a)(3));
hold on;
quiver3(a(1),a(2),a(3),(c-a)(1),(c-a)(2),(c-a)(3));
hold on;
quiver3(a(1),a(2),a(3),vec(1),vec(2), vec(3));

line([a(1),(b-a)(1)],[a(2),(b-a)(2)],[a(3), (b-a)(3)]);
hold on;
line([a(1),(c-a)(1)],[a(2),(c-a)(2)],[a(3), (c-a)(3)]);
hold on;
line([a(1),(d-a)(1)],[a(2),(d-a)(2)],[a(3), (d-a)(3)]);
hold on;
line([b(1),c(1)],[b(2),c(2)],[b(3), c(3)]);
hold on;
line([b(1),d(1)],[b(2),d(2)],[b(3), d(3)]);
hold on;
line([c(1),d(1)],[c(2),d(2)],[c(3), d(3)]);
hold on;
set(gca,'xlim',[-20,20]);
set(gca,'ylim',[-20,20]);
set(gca,'zlim',[-20,20]);
view(3);
xlabel('x'); ylabel('y'); zlabel('z');
grid on;

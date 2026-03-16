function [pr, ans1, ans2]=mx(A, B, C, D)
  AB=B-A;
  AC=C-A;
  AD=D-A;
  ans1=false;
  ans2=false;
  vector=cross(AB, AC);
  pr=dot(vector, AD);
  if pr==0
    ans1=true;
    ans2=true;
  endif
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
[mix, comp, ans]=mx(a, b, c, d);
disp("product")
disp(mix)
if comp && ans
  disp("the vectors are complanary and the dots are on the same surface")
else
  disp("the vector are not complanary")
endif

quiver3(a(1),a(2),a(3),(b-a)(1),(b-a)(2),(b-a)(3));
hold on;
quiver3(a(1),a(2),a(3),(c-a)(1),(c-a)(2),(c-a)(3));
hold on;
quiver3(a(1),a(2),a(3),(d-a)(1),(d-a)(2),(d-a)(3));
set(gca,'xlim',[-20,20]);
set(gca,'ylim',[-20,20]);
set(gca,'zlim',[-20,20]);
xlabel('x'); ylabel('y'); zlabel('z');
grid on;

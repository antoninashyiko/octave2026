a1=input("input a1: "); # вектор нормалі 1
b1=input("input b1: ");
c1=input("input c1: ");

x1=input("input x1: "); # точка для площини 1
y1=input("input y1: ");
z1=input("input z1: ");

d1=-a1*x1-b1*y1-c1*z1;

a2=input("input a2: "); # вектор нормалі 2
b2=input("input b2: ");
c2=input("input c2: ");

x2=input("input x2: "); # точка для площини 2
y2=input("input y2: ");
z2=input("input z2: ");

d2=-a2*x2-b2*y2-c2*z2;

B0=-d1/c1; B1=-a1/c1; B2=-b1/c1;
X=0 : 0.5 : 5;
Y=0 : 0.5 : 5;
[x,y] = meshgrid(X,Y);
z=B0+B1*x+B2*y;
surf(x,y,z);
grid on;
xlabel ('x' ,'FontSize' ,20);
ylabel ('y' ,'FontSize' ,20);
zlabel ('z' ,'FontSize' ,20);
hold on;
B0=-d2/c2; B1=-a2/c2; B2=-b2/c2;
X=0 : 0.5 : 5;
Y=0 : 0.5 : 5;
[x,y] = meshgrid(X,Y);
z=B0+B1*x+B2*y;
surf(x,y,z);

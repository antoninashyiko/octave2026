pkg load geometry
a=zeros(1, 3);
b=zeros(1, 3);
c=zeros(1, 3);
d=zeros(1, 3);
s=zeros(1, 3);
for i=1:3
  a(i)=input("enter coordinate for A: ");
  b(i)=input("enter coordinate for B: ");
  c(i)=input("enter coordinate for C: ");
  d(i)=input("enter coordinate for D: ");
  s(i)=input("enter coordinate for S: ");
end
M=zeros(1, 3);
N=zeros(1, 3);
K=zeros(1, 3);
for i=1:3
  M(i)=input("enter coordinate for M(plane): ");
  N(i)=input("enter coordinate for N(plane): ");
  K(i)=input("enter coordinate for K(plane): ");
end

per=createPlane(M, N, K);

lineAS=createLine3d(a, s);
lineBS=createLine3d(b, s);
lineCS=createLine3d(c, s);
lineDS=createLine3d(d, s);
lineAB=createLine3d(a, b);
lineAD=createLine3d(a, d);
lineBC=createLine3d(b, c);
lineCD=createLine3d(c, d);

P1 = intersectLinePlane(lineAS, per);
P2 = intersectLinePlane(lineBS, per);
P3 = intersectLinePlane(lineCS, per);
P4 = intersectLinePlane(lineDS, per);
P5 = intersectLinePlane(lineAB, per);
P6 = intersectLinePlane(lineBC, per);
P7 = intersectLinePlane(lineCD, per);
P8 = intersectLinePlane(lineAD, per);

sectionPoints=[];
if length(P1)>0
  sectionPoints=[sectionPoints;P1];
endif
if length(P2)>0
  sectionPoints=[sectionPoints;P2];
endif
if length(P3)>0
  sectionPoints=[sectionPoints;P3];
endif
if length(P4)>0
  sectionPoints=[sectionPoints;P4];
endif
if length(P5)>0
  sectionPoints=[sectionPoints;P5];
endif
if length(P6)>0
  sectionPoints=[sectionPoints;P6];
endif
if length(P7)>0
  sectionPoints=[sectionPoints;P7];
endif
if length(P8)>0
  sectionPoints=[sectionPoints;P8];
endif

s_area = 0;
if size(sectionPoints, 1) >= 3
    s_area = polygonArea3d(sectionPoints);
end

disp("area: ")
disp(s_area)

drawEdge3d([a; b], 'b');
drawEdge3d([b; c], 'b');
drawEdge3d([c; d], 'b');
drawEdge3d([d; a], 'b');
drawEdge3d([a; s], 'b');
drawEdge3d([b; s], 'b');
drawEdge3d([c; s], 'b');
drawEdge3d([d; s], 'b');

hold on;
drawPlane3d(per, 'FaceAlpha', 0.3, 'FaceColor', 'g');

if size(sectionPoints, 1) >= 3
    drawPoint3d(sectionPoints, 'Marker', 'o', 'MarkerFaceColor', 'r');
    fill3(sectionPoints(:,1), sectionPoints(:,2), sectionPoints(:,3), 'r', 'FaceAlpha', 0.5);
else
    disp("plane has not enough points");
end

grid on;
axis equal;
view(3);
hold off;

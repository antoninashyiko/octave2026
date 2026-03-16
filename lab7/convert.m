function [polar, pdec, cyl, cdec, sph, sdec]=convert(x, y, z)
  [x1, y1]=cart2pol(x, y);
  polar=[x1, y1];
  [x2, y2]=pol2cart(x1, y1);
  pdec=[x2, y2];
  [x3, y3, z3]=cart2pol(x, y, z);
  cyl=[x3, y3, z3];
  [x4, y4, z4]=pol2cart(x3, y3, z3);
  cdec=[x4, y4, z4];
  [x5, y5, z5]=cart2sph(x, y, z);
  sph=[x5, y5, z5];
  [x6, y6, z6]=sph2cart(x5, y5, z5);
  sdec=[x6, y6, z6];
end

x=input("input x: ");
y=input("input y: ");
z=input("input z: ");
[p, prec, cyl, crec, sph, srec]=convert(x, y, z);
disp("rectangular -> polar")
disp(p)
disp("polar -> rectangular")
disp(prec)
disp("rectangular -> cylindrical")
disp(cyl)
disp("cylindric -> rectangular")
disp(crec)
disp("rectangular -> spherical")
disp(sph)
disp("spherical -> rectangular")
disp(srec)

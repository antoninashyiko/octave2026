fi=-pi/4:0.001:pi/4;
rho=sqrt(2*4*cos(2*fi)); # a=2
polar(fi, rho, 'r')
hold on;
fi=3*pi/4:0.001:5*pi/4;
rho=sqrt(2*4*cos(2*fi));
polar(fi, rho, 'r')
grid on;

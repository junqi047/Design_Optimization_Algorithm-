% Graphical solution to the tubular column problem
% create a meshgrid of points in the variable space
[x1,x2]=meshgrid(0.0:0.005:0.16,0.001:0.0005:0.01);

% evaluate the objective function
f=5*2700*pi*2.5.*x1.*x2+200*x1; 

%evaluate the constraints
g1=2500*9.82/pi./x1./x2/50e6-1;
g2=2500*9.82/pi./x1./x2-pi^2*70e9*(x1.^2+x2.^2)/8/2.5^2;
g3=-x1+0.02;
g4=x1-0.14;
g5=-x2+0.002;
g6=x2-0.008;

% plot the contours of the objective function
figure
contour(x1,x2,f,[140 120 100 80 60 40 30 26])
hold

%plot lines where the constraints are active
%plot variable limits
contour(x1,x2,g3,[0 0],'k')
contour(x1,x2,g4,[0 0],'k')
contour(x1,x2,g5,[0 0],'k')
contour(x1,x2,g6,[0 0],'k')
% plot stress and buckling constraint
contour(x1,x2,g1,[0 0],'g')
contour(x1,x2,g2,[0 0],'k')
plot(x(:,1),x(:,2),'*') 
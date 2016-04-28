% Objective function for the tubolar column problem with 
% the constrints added as penalty functions.
% You need to fill out each equation ending with dots.....

function obj=ex2_tubular_cmplx(x);
x1=x(1);
x2=x(2);

% objective function
f=5*2700*pi*2.5.*x1.*x2+200*x1; 

%evaluate the constraints
g1=2500*9.82/pi./x1./x2/50e6-1;
g2=2500*9.82/pi./x1./x2-pi^2*70e9*(x1.^2+x2.^2)/8/2.5^2;


%penalty function
p1=max(0,g1);
p2=max(0,g2);

%objective function with penalties
my1=1000;
my2=1000;
obj= f+my1*p1+my2*p2;




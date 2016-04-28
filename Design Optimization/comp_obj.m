function ObjVal = comp_obj(x)
x1=x(1);
x2=x(2);
%calcualate the volume of the truss
Volume = sqrt(x2^2+0.75^2)*0.0025*x1*pi*2; 
    
Stress =150*1000*sqrt(0.75*x1/2+x2^2)/(2*pi*0.0025*x2*x1);

global alfa;
%alfa =0;       % weighting factor for the first objective (volume)

norm1=      3.1878e-04;       % nomalization for objective 1, this needs to be changed
norm2=   1.2114e+08;        % nomalization for objective 2, needs to be changed

ObjVal = alfa * Volume/norm1 + (1-alfa)* Stress/norm2;

% add a penalty for stresses above 100 MPa.
g1=Stress-400*10^6;
p1=max(0,g1);

%objective function with penalties
my1=1000;
ObjVal= ObjVal+my1*p1;
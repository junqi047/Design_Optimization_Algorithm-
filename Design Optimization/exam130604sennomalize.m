clear
clc
s=174;
wf=252;
A=7.52;
beta=0.1;
q=34;
landa=0.672;
rtc=0.12;
N=3.8;
wd=2000;
wp=0.064;

S=ones(1,5);


delta = 0.03;

w=0.036*s^0.758*wf^0.0035*(A/(cos(beta)^2))^0.6*q^0.006*landa^0.04*(100*rtc/cos(beta))^(-0.3)*(N*wd)^0.49+s*wp;
w1=w;

s=s*(1+delta);
w=0.036*s^0.758*wf^0.0035*(A/(cos(beta)^2))^0.6*q^0.006*landa^0.04*(100*rtc/cos(beta))^(-.3)*(N*wd)^0.49+s*wp;                                             
S(1,1)=(w-w1)/(delta*s)/w1*s;
s=s/(1+delta);


wf=wf*(1+delta);
w=0.036*s^0.758*wf^0.0035*(A/(cos(beta)^2))^0.6*q^0.006*landa^0.04*(100*rtc/cos(beta))^(-.3)*(N*wd)^0.49+s*wp;    
S(1,2)=(w-w1)/(delta*wf)/w1*wf;
wf=wf/(1+delta);


A=A*(1+delta);
w=0.036*s^0.758*wf^0.0035*(A/(cos(beta)^2))^0.6*q^0.006*landa^0.04*(100*rtc/cos(beta))^(-.3)*(N*wd)^0.49+s*wp; 
S(1,3)=(w-w1)/(delta*A)/w1*A;
A=A/(1+delta);


beta=beta*(1+delta);
w=0.036*s^0.758*wf^0.0035*(A/(cos(beta)^2))^0.6*q^0.006*landa^0.04*(100*rtc/cos(beta))^(-.3)*(N*wd)^0.49+s*wp;                                                 
S(1,4)=(w-w1)/(delta*beta)/w1*beta;
beta=beta/(1+delta);


q=q*(1+delta);
w=0.036*s^0.758*wf^0.0035*(A/(cos(beta)^2))^0.6*q^0.006*landa^0.04*(100*rtc/cos(beta))^(-.3)*(N*wd)^0.49+s*wp;                                                 
S(1,5)=(w-w1)/(delta*q)/w1*q;
q=q/(1+delta);


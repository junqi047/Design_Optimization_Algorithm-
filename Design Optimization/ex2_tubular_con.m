% Constraint function for the tubolar column problem 

% You need to fill out each equation ending with dots.....

function [C, Ceq]=ex2_tubular_con(x);

% C stands for inequality constraints. This problem has two inequality
% constrints.
% Ceq stands for equality constraints. This problem has no equality
% constrints. That is why Ceq=[], an empty matrix!
% The constraints should be stated on the form: C(x)<=0

x1=x(1);
x2=x(2);
C(1)=2500*9.82/pi./x1./x2/50e6-1;
C(2)=2500*9.82/pi./x1./x2-pi^2*70e9*(x1.^2+x2.^2)/8/2.5^2;
Ceq=[];

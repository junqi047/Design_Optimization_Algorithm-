% Objective function for the tubolar column problem without constrints

% You need to fill out each equation ending with dots.....

function f=ex2_tubular_fun(x);
x1=x(1);
x2=x(2);

% objective function
f=5*2700*pi*2.5.*x1.*x2+200*x1;

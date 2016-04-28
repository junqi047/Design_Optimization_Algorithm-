clear
clc
t=[];
y=[];
s=[];
v=[];
for i = 0 : 5 ;
    global alfa ;
    alfa = 1-i/5 ;
%     [x,f]=fmincon('comp_fun',[0.02+(0.06*i/5) 0.2+(0.8*i/5)],[], [], [], [], [0.02 0.2],[0.08 1],'comp_con');
    [x,f]=complexrf('comp_obj',[0.02 0.2],[0.08 1]);
    x1 = x(1) ;
    x2 = x(2) ;
    %calcualate the volume of the truss
    Volume =sqrt(x2^2+0.75^2)*0.0025*x1*pi*2;

    % take the max stress
    Stress = 150*1000*sqrt(0.75*x1/2+x2^2)/(2*pi*0.0025*x2*x1);
    t=[t,x1];
    y=[y,x2];
    v=[v,Volume];
    s=[s,Stress];
    %plot(x1,x2,'.') ;
     plot(Volume,Stress,'.')
      hold on;
end
t
y
s
v
% hold off;

%  plot(t,y,'.')
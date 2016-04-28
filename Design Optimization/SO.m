x1=[2.5 ;0; 5 ;2.5 ;2.5 ;4];
x2=[2.5; 2.5 ;2.5; 0 ;5 ;3];
y=[1.75; 5.5 ;10.5 ;11.75 ;16.75 ;5];
m=ones(length(x1),6);
for k=1:length(x1)
    for n=1:6
        if n==1
        m(k,n)=1;
        elseif n==2
            m(k,n)=x1(k,1);
        elseif n==3
            m(k,n)=x2(k,1);
        elseif n==4
            m(k,n)=x1(k,1)^2;
        elseif n==5
            m(k,n)=x1(k,1)*x2(k,1);
        elseif n==6
            m(k,n)=x2(k,1)^2;
        end
    end
end
b=inv(m)*y


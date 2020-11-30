function [xk,f0,Series,magxk,angxk] = FourierSeriesAric(input,order,t)


T0=6913; % length of .mat file used
f0=1./T0;
Series=zeros(1,length(t));
xk=zeros(1,2*order+1);
magxk=zeros(1,order);
angxk=zeros(1,order);
dt=t(2)-t(1);

for a=1:2*order+1
    
    if a<=(order)
       k=-a; 
    end
    
    if a==(order+1)
        k=0;
    end
    
    if a>=(order+2)
        k=a-order-1;
    end
    
    xk(a)=(1./T0).*sum(input.*exp(-2.*pi.*j.*(k).*f0.*t)).*dt;

    Series=Series+ xk(a).*exp(2.*pi.*1i.*k.*f0.*t);
    
  

end

for h=1:order
        magxk(h)=abs(xk(order+h));
    angxk(h)=angle(xk(order+h));
    
end

end


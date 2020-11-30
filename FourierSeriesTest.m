load('EKGDataUpdate.mat')
 t=1:6913;
 EKGc=zeros(1,6913);
 for a=1:6913
     EKGc(a)=EKG(1434+a);
 end





[xk,f0,Series,magxk,angxk]=FourierSeriesAric(EKGc,1000,t);

hold on;
plot(t,EKGc,'g')
plot(t,Series,'b')
legend('Original EKG','FS Approx.')
title('Cut EKG and FS Approx.')
xlabel('t(ms)')
ylabel('EKG (mV)')
hold off

% hold on;
% plot(1:60, magxk)
% plot(1:60, angxk)
% legend('magnitude X[k]','angle X[k]')
% title('Magnitude and Angle of X[k] for positive k values')
% xlabel('k')






% t=linspace(-5,5,1000);
% t2=t+2.5;
% input=Rect(t,2.5);
% order=10;
%[xk,f0,Series]=FourierSeriesAric(input,order,t);
%[xk2,f02,Series2]=FourierSeriesAric(input,order,t2)

% subplot(2,1,1)
% hold on;
% plot(t,input)
% plot(t,Series)
% hold off;
% axis([-5 5 -1 2])
% title('10th order FS Approximation of Rect(t/5) for 1 Period')
% xlabel('t')
% ylabel('f(t)')
% 
% subplot(2,1,2)
% hold on;
% plot(t2,Rect(t,2.5))
% plot(t2,Series2)
% axis([-5 5 -1 2 ])
% hold off;
% title('10th order FS Approximation of Rect((t-2.5)/5) for 1 Period')
% xlabel('t')
% ylabel('f(t)')

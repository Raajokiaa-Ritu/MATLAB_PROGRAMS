clc;
clear all;
close all;
%Modulation
t=0:0.001:.5;
Am=1;%Message signal ampl
Ac=2;%carrier sig ampl
Fm=10;%msg sig freq
Fc=100;
Mt=Am*sin(2*pi*Fm*t);%msg signal sine wave
Ct=Ac*sin(2*pi*Fc*t);%carrier sig
k=Am/Ac;
Y=Ac*(1+k*Mt).*Ct;
subplot(4,1,1);
plot(t,Mt);
title('Modulating Signal');
subplot(4,1,2);
plot(t,Ct);
title('Carrier signal');
subplot(4,1,3);
plot(t,Y,t,Ac+Mt,t,-Ac-Mt);
title('Modulated SIgnal');
subplot(4,1,4);
y1=(1/pi)*(Ac*Mt);
plot(t,Mt,t,y1);
title('De-modulated SIgnal');

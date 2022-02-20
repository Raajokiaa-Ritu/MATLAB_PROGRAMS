clc;
clear all;
close all;

Fc = 500;
Fs = 4500;

t = 0: 0.01 : 5 ;
x = sin(t);
y = ammod(x,Fc,Fs);
y1 = amdemod(x,Fc,Fs);

subplot(3,1,1);
plot(t,x); 
title('actual signal ');

subplot(3,1,2);
plot(t,y);
title('modulated signal ');

subplot(3,1,3);
plot(t,y1);
title('demodulated signal ');

%plot(t,x,'c',t,y,'b--')
%legend('Original Signal','Modulated Signal')
%xlabel('Time (s)')
%ylabel('Amplitude')
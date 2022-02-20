clc;
clear all;
close all;

Fc = 200;
Fs = 1000;
freqdev = 50;

t = (0:0.0025:0.2)' ;

x = sin(2*pi*30*t)+ 2*sin(2*pi*60*t);
y = fmdemod(x,Fc,Fs,freqdev);

plot(t,x,'c',t,y,'b--');
xlabel('Time (s)')
ylabel('Amplitude')
legend('Original Signal','Demodulated Signal')
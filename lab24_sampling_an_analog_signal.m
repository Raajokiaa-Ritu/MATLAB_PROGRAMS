clc;
clear all;
close all;

a = 40;

F = 10;
t = (0: .01 :1);

Fs = 15; 
ts = (0: 5: 100);

x = a*sin(2*pi*F*t);
subplot(2,1,1);
plot(t,x);

y = a*sin(2*pi*(F/Fs)*ts);
subplot(2,1,2);
stem(ts,y);
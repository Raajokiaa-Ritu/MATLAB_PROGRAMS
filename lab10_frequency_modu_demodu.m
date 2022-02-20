clc;
clear all;
close all;

t = 0: .0001 : 1;

a =  input('Amplitude     : '); % 3;
fm = input('Message freq  : ');
fc = input('Carrier freq  : ');
fs = input('Sampling freq : ');
m = 5;

M_signal = a*sin(2*pi*fm*t);%generate message signal
C_signal = a*sin(2*pi*fc*t);%generate carrier signal

x = a*sin((2*pi*fc*t)+(m.*sin(2*pi*fm*t)));%modulated signal
fdev = fc+10;
y = fmdemod(x,fc,fs,fdev);%demodulated signal

%plotting all signal
subplot(4,1,1);
plot(t,M_signal);
xlabel('time');
ylabel('amplitude');
title('message signal');
grid on

subplot(4,1,2);
plot(t,C_signal);
xlabel('time');
ylabel('amplitude');
title('carrier signal');
grid on;

subplot(4,1,3);
plot(t,x);
xlabel('time');
ylabel('amplitude');
title('modulated signal');
grid on;

subplot(4,1,4);
plot(t,y);
xlabel('time');
ylabel('amplitude');
title('demodulated signal');
grid on;










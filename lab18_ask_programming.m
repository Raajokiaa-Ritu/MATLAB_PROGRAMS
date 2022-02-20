clc;
clear all;
close all;

%message signal
fm = input('enter message signal :');
%carrier signal
fc = input('enter carrier signal :');

%generate message signal
a = 5;
t = 0: .001 :1
M_signal = (a.*square(2*pi*fm*t,50)+a)/2;

%generate carrier signal
C_signal = cos(2*pi*fc*t);

%output signal
S_signal = M_signal.*C_signal ;

%to plot all 3 signals;
subplot(3,1,1);
plot(t,C_signal);
title('carrier signal ');
xlabel('time');
ylabel('amplitude');

subplot(3,1,2);
plot(t,M_signal);
title('message signal ');
xlabel('time');
ylabel('amplitude');

subplot(3,1,3);
plot(t,S_signal);
title('ASK');
xlabel('time');
ylabel('amplitude');





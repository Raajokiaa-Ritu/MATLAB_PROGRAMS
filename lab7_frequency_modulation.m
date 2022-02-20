%perform frequency modulation and de-modulation using MATLAB function
clc; clear all; close all;

Fc = input('enter carrier signal : ');
Fs = input('enter message signal : ');
freqdev = input('enter frequency deviation : ');
t = 0 : 0.001 : 0.2;

actual_signal = sin(2*pi*30*t)+ 2*sin(2*pi*60*t);
modulated_signal = fmmod(actual_signal,Fc,Fs,freqdev);
demodulated_signal = fmdemod(actual_signal,Fc,Fs,freqdev);

subplot(3,1,1);
plot(t,actual_signal); 
title('actual signal ');
xlabel('time(s)'); ylabel('amplitude(v)');

subplot(3,1,2);
plot(t,modulated_signal);
title('modulated signal ');
xlabel('time(s)'); ylabel('amplitude(v)');

subplot(3,1,3);
plot(t,demodulated_signal);
title('demodulated signal ');
xlabel('time(s)'); ylabel('amplitude(v)');

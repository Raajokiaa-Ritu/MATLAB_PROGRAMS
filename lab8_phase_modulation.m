%perform Phase modulation and de-modulation using MATLAB function.
clc;clear all;close all;

Fc = input('carrier frequency : ');
Fs = input('signal frequency : ');

t = (0:2*Fs+1)'/Fs;
phasedev = pi /2;

actual_signal = sin(2*pi*t) + sin(4*pi*t);
modulated_signal = pmmod(actual_signal,Fc,Fs,phasedev);

tx = pmmod(actual_signal,Fc,Fs,phasedev);
rx = awgn(tx,10,'measured');
demodulated_signal = pmdemod(rx,Fc,Fs,phasedev);

subplot(3,1,1);
plot(t,actual_signal); 
title('actual signal');
xlabel('time(s)');ylabel('amplitude(v)');

subplot(3,1,2);
plot(t,modulated_signal,'RED');
title('modulated signal');
xlabel('time(s)');ylabel('amplitude(v)');

subplot(3,1,3);
plot(t,demodulated_signal,'GREEN');
title('demodulated signal ');
xlabel('time(s)');ylabel('amplitude(v)');


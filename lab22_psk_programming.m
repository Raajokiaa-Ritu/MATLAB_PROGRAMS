%Write a code to perform Phase Shift Keying using Matlab Programming.
clc;clear all;close all;

a  = input('amplitude : '); 
f1 = input('frequency_1 : '); 
f2 = input('frequency_2 : ');
t = 0:0.001:1;

carrier_signal = a.*sin(2*pi*f1*t);
message_signal = square(2*pi*f2*t);
psk = carrier_signal.*message_signal;

subplot(3,1,1);
plot(t,carrier_signal,'BLUE');
title('carrier signal');
xlabel('Time');  ylabel('Amplitude');

subplot(3,1,2);
plot(t,message_signal,'BLACK');
title('message signal');
xlabel('Time');  ylabel('Amplitude');

subplot(3,1,3);
plot(t,psk,'RED');
title('PSK');
xlabel('Time');  ylabel('Amplitude');




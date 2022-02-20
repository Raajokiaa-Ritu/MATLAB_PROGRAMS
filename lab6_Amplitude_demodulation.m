clc;
clear all;
close all;

t = 0: .01 : 5;
x = sin(t);
Fc = input('carrier frequency :');
Fs = input('signal  frequency :');

y = amdemod(x,Fc,Fs);

plot(t,x,'c',t,y,'b--')
legend('Original Signal','deModulated Signal')
xlabel('Time (s)')
ylabel('Amplitude')

%subplot(2,1,1);
%plot(t,x); 
%title('actual signal');

%subplot(2,1,2);
%plot(t,y);
%title('modulated signal');
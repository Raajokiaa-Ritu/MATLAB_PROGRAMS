%Write a code to perform Frequency Shift Keying using Matlab Programming.
clc ;close all ;clear all;

fc1=input('carrier frequency_1 :');
fc2=input('carrier frequency_2 :');
fp=input('freq of Periodic Binary pulse:');
amp=input('amplitude(Both Carrier & Binary Pulse Message):');
amp=amp/2;

t=0:0.001:1; 
c1=amp.*sin(2*pi*fc1*t);
c2=amp.*sin(2*pi*fc2*t);

subplot(4,1,1);  plot(t,c1,'GREEN');
xlabel('Time');  ylabel('Amplitude');
title('Carrier 1 Wave')

subplot(4,1,2);  plot(t,c2,'GREEN');
xlabel('Time');  ylabel('Amplitude');
title('Carrier 2 Wave');

m=amp.*square(2*pi*fp*t)+amp;

subplot(4,1,3) ; plot(t,m,'BLUE');
xlabel('Time');  ylabel('Amplitude');
title('Binary Message Pulses');
for i=0:1000 
    if m(i+1)==0
        mm(i+1)=c2(i+1);
        else
        mm(i+1)=c1(i+1);
    end
end
subplot(4,1,4);  plot(t,mm,'RED');
xlabel('Time');  ylabel('Amplitude');
title('Modulated Wave');
%perform frequency modulation and de-modulation using MATLAB programming.
clc;clear all;close all;
fc = input('carrier frequency :  '); 
fm = input('modulating signal :  ');
a  = input('amplitude : '); 
theta = pi/4;
beta  = pi/5; 
receiverKnowsCarrier= 'False'; 

fs = 8*fc; 
t  = 0:1/fs:1-1/fs; 
message_signal   = a*sin(2*pi*fm*t + theta); 
modulated_signal = cos(2*pi*fc*t + beta + message_signal ); 

subplot(3,1,1) ;   plot(t,message_signal);
title('Actual signal'); 
xlabel('time(s)'); ylabel('amplitude(v)');

subplot(3,1,2) ;   plot(t,modulated_signal); 
title('Modulated signal');
xlabel('time(s)'); ylabel('amplitude(v)');

nMean  = 0; 
nSigma = 0.1; 
n = nMean + nSigma*randn(size(t)); 
r = modulated_signal + n;  
z = hilbert(r); 
inst_phase = unwrap(angle(z)); 

if strcmpi(receiverKnowsCarrier,'True')
    offsetTerm = 2*pi*fc*t+beta; 
else
    p = polyfit(t,inst_phase,1); 
    estimated = polyval(p,t); 
    offsetTerm = estimated;
end
    
demodulated = inst_phase - offsetTerm;
subplot(3,1,3);    plot(t,demodulated); 
title('Demodulated signal');
xlabel('time(s)'); ylabel('amplitude(v)');
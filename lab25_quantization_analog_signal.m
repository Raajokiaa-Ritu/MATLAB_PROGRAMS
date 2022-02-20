%Write a code to perform quantization of an analog signal using MATLAB.
clc;clear all;close all;
Ts = 0.0001;
t  = 0:.00001:20*Ts;
sig=sin(2000*pi*t)+cos(2000*pi*t);
maxsig = max(sig); 
interv = 2*maxsig/(2^3-1);
u = maxsig+interv;
partition = [-maxsig:interv:maxsig]; 
codebook  = [-maxsig:interv:u]; 
[index,quants] = quantiz(sig,partition,codebook); 

plot(t,sig,'-',t,quants,'-');
legend('Original signal','Quantized signal');

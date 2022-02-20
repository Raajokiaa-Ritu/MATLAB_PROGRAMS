%generate and plot a sine wave with different phase, amplitude
clc;
clear all;
close all;

f = input('frequency : ');
t = (0: .01 : 1);
a = input('amplitude : ');
phi = input('phase     : ');

y = a*sin(2*pi*f*t +phi);

plot(t,y)
xlabel('time(s)')
ylabel('amplitude(v)')

clc;
clear all;
close all;
t = (0: .08 : 6);
y  = 10 * sin(2*pi*1*t + 0);
y1 = 5  * sin(4*pi*2*t + 0);
y2 = 15 * sin(8*pi*4*t + 0);
y3 = 20 * sin(2*pi*8*t + 0);

x = y+y1+y2+y3;

plot(t,x,'BLUE');

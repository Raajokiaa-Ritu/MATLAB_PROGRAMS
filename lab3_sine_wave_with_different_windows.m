clc;
clear all;
close all;
t = (0: .08 : 6);
y  = 10 * sin(2*pi*1*t + 0);
y1 = 5  * sin(4*pi*2*t + 0);
y2 = 15 * sin(8*pi*4*t + 0);
y3 = 20 * sin(2*pi*8*t + 0);

subplot(2,2,1);
plot(t,y,'YELLOW');
%stem(t,y,'YELLOW');

subplot(2,2,2);
plot(t,y1,'RED');
%stem(t,y1,'RED');

subplot(2,2,3);
plot(t,y2,'BLUE');
%stem(t,y2,'BLUE');

subplot(2,2,4);
plot(t,y3,'GREEN');
%stem(t,y3,'GREEN');
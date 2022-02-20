
clc;
clear all;
close all;
p = input('phase p :');
p1 = input('phase p1 :');
p2 = input('phase p2 :');
p3 = input('phase p3 : ');

a = 4;
f = 1;
t = (0: .08 : 6);
y  = a * sin(2*pi*f*t + p);
y1 = a * sin(2*pi*f*t + p1);
y2 = a * sin(2*pi*f*t + p2);
y3 = a * sin(2*pi*f*t + p3);

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
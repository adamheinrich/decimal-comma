close all
clear all
clc

x = -1:0.1:1;
y = x.^3;

figure;
plot(x, y);

grid on;
title('Simple plot');
ylabel('y=x^3');
xlabel('x');

decimal_comma(gca, 'XY');

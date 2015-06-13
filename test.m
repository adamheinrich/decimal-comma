close all
clear all
clc

x = -1:0.1:1;
y = x.^3;

figure;

for i=1:4
    subplot(2, 2, i);
    plot(x, y);

    grid on;
    title([ 'Simple plot #', num2str(i) ]);
    ylabel('y=x^3');
    xlabel('x');

    switch i
        case 1
            decimal_comma(gca, 'XY');
            
       case 2
            decimal_comma(gca, 'Y');
            
       case 3
            decimal_comma(gca, 'XY', '%1.2f');
            
       case 4
            decimal_comma(gca, 'X', '%1.2f');
            decimal_comma(gca, 'Y');
            
        otherwise
            
    end
end
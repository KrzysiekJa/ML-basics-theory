clearvars; close all; clc;
format compact;

n = 1000;
aA = 2 * pi * rand(1, n);
aB = 2 * pi * rand(1, n);

xA = cos(aA);
yA = sin(aA);

xB = cos(aB);
yB = sin(aB);

count = 0;

for i = 1:n
    if norm([xA(i); yA(i)] - [xB(i); yB(i)]) > 3^0.5
        count = count + 1;
    end
end

disp(100 * count / n);
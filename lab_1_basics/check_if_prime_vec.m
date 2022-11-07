clearvars; close all; clc;
format compact;


number = input('Choose number:');

x = 2:sqrt(number);

if any(mod(number, x) == 0)
    disp('No.');
else
    disp('Yes.');
end
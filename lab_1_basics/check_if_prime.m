clearvars; close all; clc;
format compact;


number = input('Choose number:');
is_prime = true;


for i = 2:sqrt(number)
    if mod(number, i) == 0
        is_prime = false;
        break;
    end
end


if is_prime
    disp('Yes.');
else
    disp('No.');
end

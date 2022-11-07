clearvars; close all; clc;
format compact;

n = 100;
p = sum( repmat([1, -1], 1, n/2) ./ (1:100) );

disp(p);
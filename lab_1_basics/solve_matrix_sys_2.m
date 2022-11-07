clearvars; close all; clc;
format compact;

A = [2 , 6 ; 2 , 5.999999];
b = [8; 8.000002];

disp('Cond A:');
disp(cond(A));

x = A \ b
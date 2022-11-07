clearvars; close all; clc;
format compact;

p = 4 * ( sum( 1 ./ (1:4:1000) ) - sum( 1 ./ (3:4:1000) ));

disp(p);
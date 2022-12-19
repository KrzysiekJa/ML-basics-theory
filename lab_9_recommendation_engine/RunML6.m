clearvars; close all; clc;
format compact;

disp(' >> Krzysztof Jarek << ');


[Y,R] = ReadData();



% theta     generacja: randn(nf+1, nu)
% X         generacja: randn(nf, nu)

% theta_X : 100x1 -> 5x20
%           160x1 -> 4x40 (zamienić w CostFun) -> 5x40

% theta = randn(nf+1, nu)
% X = randn(nf, nu)
% theta_X = [ theta(:), X(:) ]

% jeden z wyników: 2,5e-09
% ostateczne: J_OPT ~= 15,67

% mean(mean(abs(Y-Y_pred))) ~= 1.4926 lub 0.67
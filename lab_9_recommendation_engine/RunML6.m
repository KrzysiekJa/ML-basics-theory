clearvars; close all; clc;
format shortG;

disp(' >> Krzysztof Jarek << ');

[Y,R] = ReadData();


nf = 4;
nu = size(Y, 1);
np = size(Y, 2);
theta = ones( nf+1, nu );
X = ones( nf, np );

Theta_X = [ reshape(theta, [], 1); reshape(X, [], 1) ]; % by columns


[ J, dJ ] = CostFun( Y, R, Theta_X, nu, np, nf )
NumdJ = NumGrad( Y, R, Theta_X, nu, np, nf )

[ Theta_X_Opt, JOpt ] = FindTheta( Y, R, Theta_X, nu, np, nf );


% theta     generacja: randn(nf+1, nu)
% X         generacja: randn(nf, np)

% theta_X : 100x1 -> 5x20
%           160x1 -> 4x40 (zamienić w CostFun) -> 5x40

% theta = randn(nf+1, nu)
% X = randn(nf, nu)
% theta_X = [ theta(:), X(:) ]

% jeden z wyników: 2,5e-09
% ostateczne: J_OPT ~= 15,67

% mean(mean(abs(Y-Y_pred))) ~= 1.4926 lub 0.67
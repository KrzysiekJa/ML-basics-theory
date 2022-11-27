clearvars; close all; clc;
format compact;

disp(' >> Krzysztof Jarek << ');
disp('  >>   ferrit   << ');

[X, Y] = ReadData('Y2');

X = MapFea(X);
[X, mu, sig] = NormFea(X);

X(1, :) = ones(1, size(X,2)); % repairing row with NaNs

Theta = rand(size(X,1), 1)

[J, dJ] = CostFun(X, Y, Theta)
NumdJ =  NumGrad(X, Y, Theta)

[ThetaOpt, JOpt] = FindTheta(X, Y, Theta)

%y = ThetaOpt' * X;
%y = reshape(Y, length(t), length(T));

%PlotBoundry();


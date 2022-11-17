clearvars; close all; clc;
format compact;

disp(' >> Krzysztof Jarek << ');

[X, Y] = ReadData;

X = MapFea(X);
[X, mu, sig] = NormFea(X);
X(1, :) = ones(1, size(X,2)); % repairing row with NaNs

names = ["train" "val"];
parts = [0.8 0];
ratio = dictionary( names, parts );

[Xtr, Ytr, Xval, Yval, Xte, Yte] = SplitData(X, Y, ratio);

Theta = zeros(1, size(X,1))

[J, dJ] = CostFun(X, Y, Theta)

%NumdJ = NumGrad(X, Y, Theta);
%[ThetaOpt, JOpt] = FindTheta(Theta0, X, Y);

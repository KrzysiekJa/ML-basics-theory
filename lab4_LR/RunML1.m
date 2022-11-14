clearvars; close all; clc;
format compact;

disp(' >> Krzysztof Jarek << ');

[X, Y] = ReadData;

X = MapFea(X);
[X, mu, sig] = NormFea(X);

names = ["train" "val"];
parts = [0.7 0.15];
ratio = dictionary( names, parts );

[Xtr, Ytr, Xval, Yval, Xte, Yte] = SplitData(X, Y, ratio);

%[J, dJ] = CostFun(X, Y, Theta);

%NumdJ = NumGrad(X, Y, Theta);
%[ThetaOpt, JOpt] = FindTheta(Theta0, X, Y);

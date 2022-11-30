clearvars; close all; clc;
format compact;

disp(' >> Krzysztof Jarek << ');
disp('  >>   ferrit   << ');

[X, Y] = ReadData();

X = MapFea(X);
[X, mu, sig] = NormFea(X);

X(1, :) = ones(1, size(X,2)); % repairing row with NaNs


names = ["train" "val" "test"];
parts = [0.8 0 0.2];
ratio = dictionary( names, parts );

[Xtr, Ytr, Xval, Yval, Xte, Yte] = SplitData(X, Y, ratio);

Ytr = Y_to_Y01( Ytr );


Theta = rand(size(X,1), 1)

[J, dJ] = CostFun(X, Y, Theta)
NumdJ =  NumGrad(X, Y, Theta)

[ThetaOpt, JOpt] = FindTheta(X, Y, Theta)


%PlotBoundry( X, Y, ThetaOpt, mu, sig );


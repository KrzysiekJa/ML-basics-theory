clearvars; close all; clc;
format compact;

disp(' >> Krzysztof Jarek << ');


[X, Y] = ReadData('Y');

X = MapFea(X);
[X, mu, sig] = NormFea(X);

X(1, :) = ones(1, size(X,2)); % repairing row with NaNs


names = ["train" "val" "test"];
parts = [0.8 0 0.2];
ratio = dictionary( names, parts );

[Xtr, Ytr, ~, ~, Xte, Yte] = SplitData(X, Y, ratio);


Theta =  ones(size(X,1), 1) % rand(size(X,1), 1)

[J, dJ] = CostFun(X, Y, Theta)
NumdJ =  NumGrad(X, Y, Theta)

[ThetaOpt, JOpt] = FindTheta(Xtr, Ytr, Theta)


PlotBoundry( X, Y, ThetaOpt, mu, sig );


Z  = sigmoid( ThetaOpt' * Xte ) >= 0.5;
CM = ConfMatrix( Yte, Z )

F = Fscore(CM)

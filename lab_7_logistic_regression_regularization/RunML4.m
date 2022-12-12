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


Theta =  rand(size(X,1), 1)
lambdas = [1, 0.1, 0.01, 0.001, 0.00001];
f_scores = zeros(size(lambdas));

for i = 1:length(lambdas)
    [J, dJ] = CostFun(X, Y, Theta, lambdas(i));
    %NumdJ =  NumGrad(X, Y, Theta, lambdas(i));
    
    [ThetaOpt, JOpt] = FindTheta(Xtr, Ytr, Theta, lambdas(i))
    
    
    PlotBoundry( X, Y, ThetaOpt, mu, sig );
    
    
    Z  = sigmoid( ThetaOpt' * Xte ) >= 0.5;
    CM = ConfMatrix( Yte, Z )
    
    F = Fscore(CM)
    f_scores(i) = F;
end

figure;
plot(lambdas, f_scores);
set(gca, 'xscale', 'log');
xlabel('lambda');
ylabel('F-score');

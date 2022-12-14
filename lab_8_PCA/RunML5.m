clearvars; close all; clc;
format compact;

disp(' >> Krzysztof Jarek << ');


[X, Y] = ReadData(1);


%[V,D] = eig(X)


%     m
% ∑ = ∑(x - mi) * (x-mi)^T
%      5x500              5x5

% eig
% svd   A^T * A -> N -> sqrt()


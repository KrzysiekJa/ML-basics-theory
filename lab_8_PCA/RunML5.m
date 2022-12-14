clearvars; close all; clc;
format compact;

disp(' >> Krzysztof Jarek << ');


[X, Y] = ReadData(1);

% >> Step 1
X_nex = ( X - mean(X, 2) ); % ./ std(X, 0, 2)

% >> Step 2
CovM = cov(X_nex')

% CovM = zeros(size(X_nex,1), size(X_nex,1));
% for i = 1:size(X_nex,1)
%     CovM(i,:) = sum( (X_nex(i,:) - mean(X_nex(i,:)) )  * ( X_nex(i,:) - mean(X_nex(i,:)) )' ) / length( (X_nex(i,:) );
% end

% >> Step 3
[V, d] = eig(CovM);

% >> Step 4
[~, ind] = sort(diag(d), 1, "descend");
d = d(ind, ind)
V = V(:, ind)

% >> Step 5 -> taking two most variant dims
X_final = V( :, ind(1:2) )' * X_nex( ind(1:2), : );
X_final = X_final';

%variance = d / sum(d(:))


%     m
% ∑ = ∑(x - mi) * (x-mi)^T
%      5x500              5x5

% eig
% svd   A^T * A -> N -> sqrt()


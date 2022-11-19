function [Xtr, Ytr, Xval, Yval, Xte, Yte] = SplitData( X, Y, ratio )

if size(X, 2) ~= size(Y, 2)
    return
end

setLen = size(X, 2); % number of columns/samples
trainAmount = floor(ratio("train") * setLen);
valAmount   = floor(ratio("val") * setLen);
%testAmount  = floor(ratio("test") * setLen);
rand_idx = randperm( setLen );

X = X(rand_idx);
Y = Y(rand_idx);

% training set
Xtr = X(:, 1:trainAmount); X(:, 1:trainAmount) = [];
Ytr = Y(:, 1:trainAmount); Y(:, 1:trainAmount) = [];

% validation set
Xval = X(:, 1:valAmount); X(:, 1:valAmount) = [];
Yval = Y(:, 1:valAmount); Y(:, 1:valAmount) = [];

% testing set
Xte = X(:, 1:end );
Yte = Y(:, 1:end );

end
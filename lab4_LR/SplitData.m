function [Xtr, Ytr, Xval, Yval, Xte, Yte] = SplitData( X, Y, ratio )

if size(X, 2) ~= size(Y, 2)
    return
end

setLen = size(X, 2); % number of columns
trainAmount = floor(ratio("train") * setLen);
valAmount = trainAmount + floor(ratio("val") * setLen);
rand_idx = randperm( setLen );

X = X(rand_idx);
Y = Y(rand_idx);

% training set
Xtr = X(:, 1:trainAmount);
Ytr = Y(:, 1:trainAmount);

% validation set
Xval = X(:, trainAmount:valAmount);
Yval = Y(:, trainAmount:valAmount);

% testing set
Xte = X(:, valAmount:end );
Yte = Y(:, valAmount:end );

end
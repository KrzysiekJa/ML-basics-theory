function [Xtr, Ytr, Xval, Yval, Xte, Yte] = SplitData( X, Y, ratio )

if size(X, 2) ~= size(Y, 2)
    return
end

setLen = size(X, 2); % number of columns
ratioAmountTr = floor(ratio("train") * setLen);
ratioAmountVal = ratioAmountTr + floor(ratio("val") * setLen);
rand_idx = randperm( setLen );

X = X(rand_idx);
Y = Y(rand_idx);

% training set
Xtr = X(:, 1:ratioAmountTr);
Ytr = Y(:, 1:ratioAmountTr);

% validation set
Xval = X(:, ratioAmountTr:ratioAmountVal);
Yval = Y(:, ratioAmountTr:ratioAmountVal);

% testing set
Xte = X(:, ratioAmountVal:end );
Yte = Y(:, ratioAmountVal:end );

end
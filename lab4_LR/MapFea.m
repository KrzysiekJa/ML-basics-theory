function X = MapFea( X )

% getting 2 powers of variables
extraRows = X .^ 2;
X = [X; extraRows];

end
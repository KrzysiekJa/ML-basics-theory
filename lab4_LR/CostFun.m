function [J, dJ] = CostFun( X, Y, Theta )

m = size(X, 2);
J = sum( (Theta.' * X - Y) .^2) /(2*m);
dJ = sum( (Theta.' * X - Y) .^(X.')) /m;

end
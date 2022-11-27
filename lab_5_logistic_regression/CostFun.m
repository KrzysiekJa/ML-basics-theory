function [J, dJ] = CostFun( X, Y, Theta )

m  = size(X, 2);
h_theta = sigmoid( Theta' * X );
J  = - sum( Y .* log(h_theta) + (1-Y) .* log(1-h_theta) ) /m;
dJ = ( (h_theta - Y) * (X') /m )';

end

% h_theta(x) = g( theta' * x)
% sigmoid:
% g(x) = 1. / (1 + exp(-x))

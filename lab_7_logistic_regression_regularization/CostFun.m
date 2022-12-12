function [J, dJ] = CostFun( X, Y, Theta, lambda )

m  = size(X, 2);
dJ = zeros( size(X,1), 1 );

h_theta = sigmoid( Theta' * X );

J = - sum( Y .* log(h_theta) + (1-Y) .* log(1-h_theta) ) /m ;
J = J + (lambda/(2*m)) * sum( Theta .^ 2);

dJ(1)     = ( (h_theta - Y) * (X(1,:)') /m )';
dJ(2:end) = ( (h_theta - Y) * (X(2:end,:)') /m )' + (lambda/m) * Theta(2:end,:);

end

% h_theta(x) = g( theta' * x)
% sigmoid:
% g(x) = 1. / (1 + exp(-x))

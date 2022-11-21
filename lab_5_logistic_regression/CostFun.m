function [J, dJ] = CostFun( X, Y, Theta )

m  = size(X, 2);
J  = sum( (Theta' * X - Y) .^2) /(2*m); % zmienić
dJ = ( (Theta' * X - Y) *(X') /m )'; % taki sam zostaje

end

% h_theta(x) = g( theta' * x)
% g(x) = 1 / (1 + exp(-x))
% 
% sigmoid

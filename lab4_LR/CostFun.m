function [J, dJ] = CostFun( X, Y, Theta )

J = (1/m) * sum( Theta' .* X );
dJ = 0;

end
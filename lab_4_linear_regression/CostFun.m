function [J, dJ] = CostFun( X, Y, Theta )
% https://github.com/leejaymin/machine_learning_coursera_python_octave/blob/master/ex1_Linear_Regression.md

m  = size(X, 2);
J  = sum( (Theta' * X - Y) .^2) /(2*m);
dJ = ( (Theta' * X - Y) *(X') /m )';

end

%  another way:
% J = 1/(2*m) * (X * theta - y)' * (X * theta - y);

% H_theta = X * theta;
% grad = (1/m).* x' * (H_theta - y);
% theta = theta - alpha .* grad;

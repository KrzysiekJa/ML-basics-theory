function [ThetaOpt, JOpt] = FindTheta( X, Y, Theta0 )

fun = @(z) CostFun(X, Y, z);

[ThetaOpt, JOpt] = fminunc(fun, Theta0);

end

% zamienić na fminunc()
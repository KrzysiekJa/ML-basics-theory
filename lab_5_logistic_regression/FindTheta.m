function [ThetaOpt, JOpt] = FindTheta( X, Y, Theta0 )

fun = @(z) CostFun(X, Y, z);
options = optimoptions('fminunc','Algorithm','trust-region','SpecifyObjectiveGradient',true);

[ThetaOpt, JOpt] = fminunc(fun, Theta0, options);

end

% zamienić na fminunc()
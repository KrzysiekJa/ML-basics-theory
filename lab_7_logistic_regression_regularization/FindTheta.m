function [ThetaOpt, JOpt] = FindTheta( X, Y, Theta0, lambda )

alpha     = 0.05
num_iters = 40
theta_tmp = Theta0;

for iter = 1:num_iters
    [~, dJ] = CostFun(X, Y, theta_tmp, lambda);
    theta_tmp = theta_tmp - alpha * dJ;
end

fun = @(z) CostFun(X, Y, z, lambda);
options = optimoptions('fminunc','Algorithm','trust-region','SpecifyObjectiveGradient',true);

[ThetaOpt, JOpt] = fminunc(fun, theta_tmp, options);

end

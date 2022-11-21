function [ThetaOpt, JOpt] = FindTheta( X, Y, Theta0 )

alpha     = 0.05
num_iters = 1000
theta_tmp = Theta0;

for iter = 1:num_iters
    [~, dJ] = CostFun(X, Y, theta_tmp);
    theta_tmp = theta_tmp - alpha * dJ;
end

ThetaOpt = theta_tmp;
JOpt = CostFun(X, Y, ThetaOpt);
end
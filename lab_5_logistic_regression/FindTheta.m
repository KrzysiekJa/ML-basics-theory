function [ThetaOpt, JOpt] = FindTheta( X, Y, Theta0 )

alpha     = 0.01;
num_iters = 2000;
theta_tmp = Theta0;

for iter = 1:num_iters
    theta_tmp = theta_tmp - alpha * NumGrad(X, Y, theta_tmp);
end

ThetaOpt = theta_tmp;
JOpt = NumGrad(X, Y, ThetaOpt);
end

% zamienić na fminunc()
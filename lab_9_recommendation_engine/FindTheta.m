function [Theta_X_Opt, JOpt]=FindTheta( Y, R, Theta_X0, nu, np, nf )

fun = @(z) CostFun(Y, R, z, nu, np, nf);
options = optimoptions('fminunc','Algorithm','trust-region','SpecifyObjectiveGradient',true);

[Theta_X_Opt, JOpt] = fminunc(fun, Theta_X0, options);

end

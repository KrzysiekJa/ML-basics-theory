function [ThetaOpt, JOpt] = FindTheta( X, Y, Theta0 )

ThetaOpt = [];
JOpt = [];

options = optimoptions('fminunc','Algorithm','trust-region','SpecifyObjectiveGradient',true);

for i = 1:size(Y, 1)
    fun = @(z) CostFun(X, Y(i,:), z);
    [ThetaOpt_tmp, JOpt_tmp] = fminunc(fun, Theta0, options);
    ThetaOpt = [ ThetaOpt ThetaOpt_tmp ];
    JOpt = [ JOpt JOpt_tmp ];
end

end

% zamienić na fminunc()
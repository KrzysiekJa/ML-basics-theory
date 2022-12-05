function [ThetaOpt, JOpt] = FindTheta( X, Y, Theta0 )

ThetaOpt = zeros( size(X, 1), size(Y, 1) );
JOpt = zeros( 1, size(Y, 1) );

options = optimoptions('fminunc','Algorithm','trust-region','SpecifyObjectiveGradient',true);

for i = 1:size(Y, 1)
    fun = @(z) CostFun(X, Y(i,:), z);
    [ThetaOpt_tmp, JOpt_tmp] = fminunc(fun, Theta0, options);
    
    ThetaOpt(:, i) = ThetaOpt_tmp;
    JOpt(i) = JOpt_tmp;
end

end

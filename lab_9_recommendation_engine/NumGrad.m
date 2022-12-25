function NumdJ = NumGrad( Y, R, Theta_X, nu, np, nf )
% help: https://www.matrixlab-examples.com/gradient.html

e = 1e-5;
NumdJ = zeros( size(Theta_X) );

for i = 1:length(Theta_X)
    Theta_X(i) = Theta_X(i) - e;
    J1 = CostFun( Y, R, Theta_X, nu, np, nf );

    Theta_X(i) = Theta_X(i) + 2*e;
    J2 = CostFun( Y, R, Theta_X, nu, np, nf );

    NumdJ(i) = (J2-J1) /(2*e);

    Theta_X(i) = Theta_X(i) - e;
end
end
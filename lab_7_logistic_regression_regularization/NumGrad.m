function NumdJ = NumGrad( X, Y, Theta, lambda )
% help: https://www.matrixlab-examples.com/gradient.html

e = 1e-5;
NumdJ = zeros( size(Theta) );

for i = 1:length(Theta)
    Theta(i) = Theta(i) - e;
    J1 = CostFun(X, Y, Theta, lambda);

    Theta(i) = Theta(i) + 2*e;
    J2 = CostFun(X, Y, Theta, lambda);

    NumdJ(i) = (J2-J1) /(2*e);

    Theta(i) = Theta(i) - e;
end
end
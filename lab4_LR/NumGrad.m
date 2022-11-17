function NumdJ = NumGrad( X, Y, Theta )
% help: https://www.matrixlab-examples.com/gradient.html

e = 1e-5;

for i = 1:size(Theta, 2)
    Theta(i) = Theta(i) - e;
    J1 = CostFun(X, Y, Theta);

    Theta(i) = Theta(i) + 2*e;
    J2 = CostFun(X, Y, Theta);

    NumdJ(i) = (J2-J1) /(2*e);

    Theta(i) = Theta(i) - e;
end
end
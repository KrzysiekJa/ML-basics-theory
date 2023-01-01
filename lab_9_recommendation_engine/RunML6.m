clearvars; close all; clc;
format shortG;

disp(' >> Krzysztof Jarek << ');

[ Y, R ] = ReadData();


nf = 4;
nu = size(Y, 1);
np = size(Y, 2);
theta = rand(nf+1, nu); %ones( nf+1, nu );
X = rand(nf, np); %ones( nf, np );

Theta_X = [ reshape(theta, [], 1); reshape(X, [], 1) ]; % by columns


[ J, dJ ] = CostFun( Y, R, Theta_X, nu, np, nf )
NumdJ = NumGrad( Y, R, Theta_X, nu, np, nf )

[ Theta_X_Opt, JOpt ] = FindTheta( Y, R, Theta_X, nu, np, nf )


theta_new = reshape( Theta_X_Opt( 1:((nf+1)*nu) ), nf+1, nu);
X_new     = [ ones(1, np); reshape( Theta_X_Opt( ((nf+1)*nu+1):end ), nf, np) ];

Y_pred = theta_new' * X_new

precision = mean( mean( abs(Y-Y_pred) ) )

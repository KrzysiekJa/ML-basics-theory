function [ J, dJ ] = CostFun( Y, R, Theta_X, nu, np, nf )

lambda = 1;
dJ = zeros( 2*nf+1, 1 );

theta = reshape( Theta_X( 1:((nf+1)*nu) ), nf+1, nu);
X = [ ones(1, np); reshape( Theta_X( ((nf+1)*nu+1):end ), nf, np) ];
disp([size(theta) size(X)]);

J = 0.5 * sum( ( (theta' * X).*R - Y.*R) .^2, "all") + (0.5*lambda) * ( sum( theta.^ 2, "all") + sum( X.^ 2, "all") );

disp(J);

dJ(1)        = sum( ( theta(1,:)' * X(1,:) ).*R - Y.*R, "all");
mutual_part  = sum( ( theta(2:end,:)' * X(2:end,:) ).*R - Y.*R, "all");
dJ(2:nf+1)   = mutual_part * X(2:end,:)     + lambda * sum( theta(2:end,:), "all");
dJ(nf+2:end) = mutual_part * theta(2:end,:) + lambda * sum( X(2:end,:), "all");

end

% X_grad     = (((X*Theta').*R*Theta-Y.*R*Theta)+lambda.*X);
% Theta_grad = ((X'*((X*Theta').*R)-X'*(Y.*R)))'+lambda.*Theta;

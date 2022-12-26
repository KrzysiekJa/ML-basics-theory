function [ J, dJ ] = CostFun( Y, R, Theta_X, nu, np, nf )

lambda = 1;
dJ = zeros( 2*nf+1, 1 );

theta = reshape( Theta_X( 1:((nf+1)*nu) ), nf+1, nu);
X = reshape( [ ones(nf+1, 1) Theta_X( ((nf+1)*nu+1):end ) ], nf+1, np);

J = 0.5 * sum( (theta' * X - Y).^2 ) + (lambda/2) * ( sum( theta .^ 2, "all" ) + sum( X .^ 2, "all" ) );

dJ(1)     = ( theta(1,:)' * X(1,:) - Y(1,:))';
dJ(2:nf+1)   = ( theta(2:end,:)' * X(2:end,:) - Y )' + lambda * theta(2:end,:, "all");
dJ(nf+2:end) = ( theta(2:end,:)' * X(2:end,:) - Y )' + lambda * X(2:end,:, "all");

end

function [ J, dJ ] = CostFun( Y, R, Theta_X, nu, np, nf )
% https://github.com/thegenuinegourav/Movies-Recommender/blob/master/cofiCostFunc.m

lambda = 0.0;
%dJ = zeros( 2*nf+1, 1 );

theta = reshape( Theta_X( 1:((nf+1)*nu) ), nf+1, nu);
X = [ ones(1, np); reshape( Theta_X( ((nf+1)*nu+1):end ), nf, np) ];

mutual_part = ( theta' * X ).*R - Y.*R;

J = 0.5 * sum( mutual_part.^2, "all") + (0.5*lambda) * ( sum( theta.^ 2, "all") + sum( X.^ 2, "all") );

%X = X(2:end,:);
% dJ(1)        = sum( ( theta(1,:)' * X(1,:) ).*R - Y.*R, "all" );
% mutual_part  = ( theta(2:end,:)' * X(2:end,:) ).*R - Y.*R;
% dJ(2:nf+1)   = sum( mutual_part' * theta(2:end,:)' )' + lambda * sum( theta(2:end,:), 2 );
% dJ(nf+2:end) = sum( mutual_part * X(2:end,:)' )' + lambda * sum( X(2:end,:), 2 );

X_grad      = theta * mutual_part + lambda * X;
X_grad      = X_grad(2:end,:);
theta_grad  = X * mutual_part' + lambda * theta;

dJ = [theta_grad(:); X_grad(:)];

end


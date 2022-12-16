clearvars; close all; clc;
format compact;

disp(' >> Krzysztof Jarek << ');


[X, Y] = ReadData(1);

% PCA steps
% >> Step 1
[mu, X_std] = deal( mean(X, 2), std(X, 0, 2) ); 
X_std = ( X - mu ) ./ X_std;

% >> Step 2
CovM = cov(X_std')

% >> Step 3
[V, d] = eig(CovM);

% >> Step 4
[~, ind] = sort(diag(d), 1, "descend");
d = d(ind, ind)
V = V(:, ind)

% >> Step 5 -> taking two most variant dims
n_components  = 2;
X_transformed = ( X_std' * V( :, ind(1:n_components)) )';

% other operations
variance = d / sum(d(:))
pca_error_variance = 1 - sum( diag(variance) )


figure;
PlotData( X_transformed, Y );
xlabel( ['Dim ' num2str( ind(1) )] );
ylabel( ['Dim ' num2str( ind(2) )] );
zlabel( 'Y' );


X_de_transformed = ( X_transformed' * V( :, ind(1:n_components))' )';

pca_error_direct = sum( X - (X_de_transformed .* X_std + mu), 'all' ) / numel( X )


%     m
% ∑ = ∑(x - mi) * (x-mi)^T
%      5x500              5x5
% eig()
% svd()


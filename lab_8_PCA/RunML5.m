clearvars; close all; clc;
format compact;

disp(' >> Krzysztof Jarek << ');


for i = 1:4
    [X, Y] = ReadData(i);
    
    % PCA steps
    % >> Step 1
    % [mu, X_std] = deal(0, 1);
    % X_norm = ( X - mu ) ./ X_std;
    
    % >> Step 2
    CovM = cov(X')
    
    % >> Step 3
    [V, d] = eig(CovM);
    
    % >> Step 4
    [~, ind] = sort(diag(d), 1, "descend");
    d = d(ind, ind)
    V = V(:, ind)
    
    % >> Step 5 -> taking two most variant dims
    X_transformed = ( V( :, 1:2 ) )' * X;
    
    % other operations
    %variance = d / sum(d(:))
    pca_error_variance = ( d(1,1) + d(2,2) ) / sum( diag(d) )
    
    
    figure;
    PlotData( X_transformed, Y );
    title ( ['Simulation no ' num2str( i )] );
    xlabel( ['Dim ' num2str( ind(1) )] );
    ylabel( ['Dim ' num2str( ind(2) )] );
    zlabel( 'Y' );
    
    
    X_de_transformed = ( X_transformed' * V( :, 1:2 )' )';
    
    pca_error_direct = sum( X - (X_de_transformed), 'all' ) / numel( X )
end


%     m
% ∑ = ∑(x - mi) * (x-mi)^T
%      5x500              5x5
% eig()
% svd()


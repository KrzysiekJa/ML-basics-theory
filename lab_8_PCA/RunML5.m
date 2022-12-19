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
    X_transformed = V( :, 1:2 )' * X;
    
    % besides PCA
    eigenvalues_proportion = ( d(1,1) + d(2,2) ) / sum( diag(d) )
    
    
    figure;
    PlotData( X_transformed, Y );
    title ( ['Simulation no ' num2str( i )] );
    labelFun = @(v) [num2str( v(1),3 ) '*m1 + ' num2str( v(2),3 ) '*m2 + '...
                     num2str( v(3),3 ) '*m3 + ' num2str( v(4),3 ) '*m4 + '...
                     num2str( v(5),3 ) '*m5'];
    xlabel( labelFun( V(:,1) ) , 'rotation', 15 );
    ylabel( labelFun( V(:,2) ) , 'rotation', -25 );
    zlabel( 'Y' );
    
    
    X_de_transformed = V( :, 1:2 ) * X_transformed;
    
    pca_error = sum( X - X_de_transformed, 'all' ) / numel( X )
end


%     m
% ∑ = ∑(x - mi) * (x-mi)^T
%      5x500              5x5
% eig()
% svd()


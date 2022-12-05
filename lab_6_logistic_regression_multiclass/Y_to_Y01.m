function Y01 = Y_to_Y01( Y )

n = max(Y);
Y01 = zeros( n, length(Y) );

linearIdx = sub2ind( size(Y01), Y, 1:length(Y) );
Y01( linearIdx ) = 1;

end

% Y = [1,1,2,2,3,3]

% Y01 = [[1 1 0 0 0 0]
%        [0 0 1 1 0 0]
%        [0 0 0 0 1 1]]

% ^ only for training set

% theta = [theta^1 theta^2 theta^3]

% Z = sigmoid( h_theta' * X )    X = [x1 x2]
% Z = [ 0.1  0.2]
%     [ 0.2  ...]
%     [ 0.2  ...]

% [~, Z] = max( sigmoid( h_theta' * X ) )

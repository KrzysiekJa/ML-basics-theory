function Y01 = Y_to_Y01( Y )


end

% Y = [1,1,2,2,3,3]

% Y01 = [[1 1 0 0 0 0]
%        [0 0 1 1 0 0]
%        [0 0 0 0 1 1]]

% tylko dla zbioru uczącego

% theta = [theta^1 theta^2 theta^3]

% Z = sigmoid( h_theta' * X )  X = [x1 x2]
% Z = [ 0.1  0.2]
%     [ 0.2  ...]
%     [ 0.2  ...]

% [~, Z] = max( sigmoid( h_theta' * X ) )
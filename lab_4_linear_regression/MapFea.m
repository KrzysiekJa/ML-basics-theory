function X = MapFea( X )

% getting 2 powers of variables
extraRowsUp = ones(1, size(X,2));
extraRowsDown = X .^ 2;
X = [extraRowsUp; X; extraRowsDown];

disp(' ');
disp("hypothesis:");
disp("x = [ 1, T, t, T^2, t^2 ]'");
end
function X = MapFea( X )

% getting 2 powers of variables
extraOnes = ones(1, size(X,2));
extraSecondPows = X .^ 2;
extraThirdPows  = X .^ 3;
mutualMult = X(1,:) .* X(2,:);
mutualMultX1 = ( X(1,:).^ 2 ) .* X(2,:);
mutualMultX2 = X(1,:) .* ( X(2,:).^ 2 );
X = [extraOnes; X; extraSecondPows; extraThirdPows; mutualMult; mutualMultX1; mutualMultX2];

disp(' ');
disp("hypothesis:");
disp("x = [ 1, T, t, T^2, t^2, T^3, t^3 , T*t, T^2*t, T*t^2]'");
end
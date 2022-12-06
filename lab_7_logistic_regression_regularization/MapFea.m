function X = MapFea( X )

hypothesis = "[ 1, T, t, ";

X = [ ones(1, size(X,2)); X ];

% for i = 2:5
%     X = [ X; X(2,:).^ i; X(3,:).^ i ];
%     hypothesis = hypothesis + sprintf('T^%d, t^%d, ', i, i);
% end

for i = 2:2:2
    X = [ X; X(2,:).^ i; X(3,:).^ i ];
    hypothesis = hypothesis + sprintf('T^%d, t^%d, ', i, i);
end

% mutualMult = X(2,:) .* X(3,:);
% X = [ X; mutualMult ];
% hypothesis = hypothesis + 'T*t, ';
% 
% for i = 2:2:8
%     X = [ X; ( X(2,:).^ i ) .* X(3,:); X(2,:) .* ( X(3,:).^ i ) ];
%     hypothesis = hypothesis + sprintf('T^%d*t, ', i);
%     hypothesis = hypothesis + sprintf('T*t^%d, ', i);
% end

disp(' ');
disp("hypothesis:");
disp(hypothesis + "]'");
end

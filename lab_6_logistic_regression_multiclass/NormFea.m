function [X, mu, sig] = NormFea( X, mu, sig )

if nargin == 1
    mu = mean(X, 2); % rows
    sig = std(X, 0, 2);
end

X = ( X - mu) ./sig;
end
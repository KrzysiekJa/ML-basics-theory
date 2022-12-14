function [X, Y] = ReadData( n )

vars = {['X' num2str(n)], ['Y' num2str(n)]};

struct = load('PCA_data.mat', vars{:});

X = struct.(vars{1});
Y = struct.(vars{2});

end
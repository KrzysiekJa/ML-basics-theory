function [X, Y] = ReadData( n )

struct = load('PCA_data.mat');

X = struct.X;
Y = Y; % ferrit

end
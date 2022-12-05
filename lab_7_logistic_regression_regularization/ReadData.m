function [X, Y] = ReadData( Y_name )

vars = {'X', Y_name};

struct = load('Data.mat', vars{:});

X = struct.X;
Y = struct.(Y_name); % ferrit

end
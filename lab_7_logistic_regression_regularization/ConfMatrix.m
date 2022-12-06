function CM = ConfMatrix( Yte, Z )
% for classes 0 and 1

dim = max( [Yte, Z] ) + 1;
CM  = zeros( dim, dim );

for i = 1 : length(Yte)
    CM( Yte(i)+1, Z(i)+1 ) = CM( Yte(i)+1, Z(i)+1 ) + 1;
end

end
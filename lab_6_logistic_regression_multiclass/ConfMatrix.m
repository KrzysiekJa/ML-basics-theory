function CM = ConfMatrix( Yte, Z )

dim = max( [Yte, Z] );
CM  = zeros( dim, dim );

for i = 1 : length(Yte)
    CM( Yte(i), Z(i) ) = CM( Yte(i), Z(i) ) + 1;
end

end
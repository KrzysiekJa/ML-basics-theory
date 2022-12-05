function PlotData( X, Y )

markers = {'x','*','o','+','s','^','v','p','h'};
colors  = {'r','b','g','k','m','c'};
getFirst = @(v) v{1};
getprop  = @(options, idx) getFirst( circshift( options, -idx+1 ) );

for i = 1:max(Y)
    scatter( X(2,Y==i), X(3,Y==i), getprop(colors, i), ...
        'Marker', getprop(markers, i), ...
        'DisplayName', num2str(i) ...
        );
    hold on;
end

end

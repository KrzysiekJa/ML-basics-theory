function PlotData( Z, Y )

color_vec = ['b', 'r', 'g', 'k', 'c', 'm'];
k = sort( randperm( numel(color_vec), 2 ));
c = color_vec( k(1) );

scatter3( Z(1,:), Z(2,:), Y , [c '.'] );
hold on;

end

function PlotBoundry( X, Y, Theta, mu, sig )

figure;
PlotData( X .* sig + mu, Y );

colors  = ['r','b','g','k','m','c','r','b','g'];

T = unique( X(2,:) * sig(2) + mu(2) );
t = unique( X(3,:) * sig(3) + mu(3) );
Z = Theta' * X;

for i = 1:size(Z, 1)
    Z_tmp = reshape( Z(i,:), length(t), length(T) );

    contour( T, t, Z_tmp, [0,0], colors(i), ...
        'HandleVisibility', 'off' ...
        );
    hold on;
end

legend( 'Location', 'northoutside' ,'Orientation', 'horizontal');
xlabel('T, C');
ylabel('t, s');

end

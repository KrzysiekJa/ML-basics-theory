function PlotBoundry( X, Y, Theta, mu, sig)

figure;
PlotData( X .* sig + mu, Y );

T = unique( X(2,:) * sig(2) + mu(2));
t = unique( X(3,:) * sig(3) + mu(3));
y = Theta' * X;
y = reshape(y, length(t), length(T));

contour( T, t, y, [0, 0], 'k');

legend( 'y = 1', 'y = 0', 'line', 'Location', 'northoutside' );
xlabel('T, C');
ylabel('t, s');

end

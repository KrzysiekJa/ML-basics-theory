function PlotBoundry( X, Y, Theta, mu, sig)

X = X .* sig + mu;

figure;
PlotData( X, Y );

T = unique( X(2,:) );
t = unique( X(3,:) );
y = Theta' * X;
y = reshape(Y, length(t), length(T));

contour( T, t, y, [0.5, 0.5], 'k');

legend(  'y = 1', 'y = 0', 'line', 'Location', 'northoutside' );
xlabel('T, C');
ylabel('t, s');

end

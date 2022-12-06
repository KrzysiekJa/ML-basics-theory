function PlotData( X, Y )

scatter( X(2,Y==1), X(3,Y==1), 'b*' );
hold on;
scatter( X(2,Y==0), X(3,Y==0), 'rx' );
hold on;

end

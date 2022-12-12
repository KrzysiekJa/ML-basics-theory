function PlotData( Z, Y )

scatter( Z(2,Y==1), Z(3,Y==1), 'b*' );
hold on;
scatter( Z(2,Y==0), Z(3,Y==0), 'rx' );
hold on;

end

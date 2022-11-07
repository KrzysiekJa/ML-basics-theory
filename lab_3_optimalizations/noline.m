function [ c, ceq ] = noline( x )

c = ( x(1)+1 ).^2 + ( x(2)+1 ).^2 - 0.5^2;
ceq = [];
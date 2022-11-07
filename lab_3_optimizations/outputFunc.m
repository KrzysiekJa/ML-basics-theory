function stop = outputFunc( x, vars, state )

global P;

P( :, vars.iteration+1 ) = x;
stop = false;

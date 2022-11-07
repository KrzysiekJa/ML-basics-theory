%% Restrigin function surf
clearvars; close all; clc;


f = @(x) x(1).^2 + x(2).^2 - cos( 2.5*pi*x(1) ) -  cos( 2.5*pi*x(2) ) + 2;

x1 = linspace(-1, 1, 100);
x2 = linspace(-1, 1, 100);
y  = zeros(100);

for i = 1:100
    for j = 1:100
        y(j, i) = f( [x1(i), x2(j)] );
    end
end

contourf(x1, x2, y);

x0 = 2 * rand( 2, 1 ) - 1;
hold on;
plot( x0(1), x0(2), 'k*', 'MarkerSize', 15, 'LineWidth', 2 );

[x_opt, y_opt, ~, output] = fminunc( f, x0 );
plot( x_opt(1), x_opt(2), 'w*', 'MarkerSize', 15, 'LineWidth', 2 );

disp(output);

%% Restrigin function syms gradient
clearvars; close all; clc;

syms x1 x2

f = x1.^2 + x2.^2 - cos( 2.5*pi*x1 ) -  cos( 2.5*pi*x2 ) + 2;

g = gradient(f);

disp(g);

%% Restrigin function symbolic gradient
clearvars; close all; clc;

x = sym('x', [2, 1]);

f = x(1).^2 + x(2).^2 - cos( 2.5*pi*x(1) ) -  cos( 2.5*pi*x(2) ) + 2;

g = gradient(f);

disp(g);

%% Restrigin function; with gradient -> faster; line restrictions
clearvars; close all; clc;

global P;
P = [];

f = @(x) x(1).^2 + x(2).^2 - cos( 2.5*pi*x(1) ) -  cos( 2.5*pi*x(2) ) + 2;
g = @(x) [2*x(1) + (5*pi*sin( (5*pi*x(1)) /2) )/2; ...
          2*x(2) + (5*pi*sin( (5*pi*x(2)) /2) )/2];

x1 = linspace(-1, 1, 100);
x2 = linspace(-1, 1, 100);
y  = zeros(100);

for i = 1:100
    for j = 1:100
        y(j, i) = f( [x1(i), x2(j)] );
    end
end

contourf(x1, x2, y);

x0 = 2 * rand( 2, 1 ) - 1;
hold on;
plot( x0(1), x0(2), 'k*', 'MarkerSize', 15, 'LineWidth', 2 );


F = { f; g };
options = optimset('GradObj', 'on', 'OutputFcn', @outputFunc);
A = [ 1, 1 ];
b = -1;
Aeq = [ 0, 1 ];
beq = -0.5;
lb = [-1, -1];
ub = [1, 1];

[x_opt, y_opt, ~, output] = fmincon( F, x0, A, b, Aeq, beq, lb, ub,[], options );  % faster
plot( x_opt(1), x_opt(2), 'w*', 'MarkerSize', 15, 'LineWidth', 2 );
plot( P(1, :), P(2, :), 'b+', 'MarkerSize', 8, 'LineWidth', 1.5 );

disp(output);
disp(P);

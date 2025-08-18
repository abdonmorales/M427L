% Quiz 6
% M 427L: Vector Calculus
% Abdon Morales

u = linspace(0, 2*pi, 200);
v = linspace(-5, 5, 200);
[U,V] = meshgrid(u,v);

R = sqrt(6 + V.^2);
X = R.*cos(U);
Y = R.*sin(U);
Z = V;

figure;
surf(X,Y,Z, 'EdgeColor', 'interp');
axis equal;
xlabel('x'); ylabel('y');zlabel('z');
%title('Parametric hyperboloid x^2 + y^2 - z^2 = 6');
shading interp;
camlight;
lighting phong;
hold on;
x0 = 3; y0 = 1; z0 = 2;
range = 1.5;

% Get X and Y bounds from your hyperboloid surface
x_min = min(X(:)); x_max = max(X(:));
y_min = min(Y(:)); y_max = max(Y(:));

% Define a meshgrid centered at (3,1) but limited to hyperboloid range
x_vals = linspace(max(x_min, x0 - range), min(x_max, x0 + range), 100);
y_vals = linspace(max(y_min, y0 - range), min(y_max, y0 + range), 100);
[x, y] = meshgrid(x_vals, y_vals);

% Compute plane values
z = (6*x + 2*y - 12)/4;

% Plot the tangent plane
surf(x, y, z, 'FaceColor', 'green', 'EdgeColor', 'interp');
plot3(3,1,2, 'ko', 'MarkerSize', 8, 'MarkerFaceColor','auto');

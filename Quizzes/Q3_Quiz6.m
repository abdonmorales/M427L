y = linspace(-2, 2, 200);
z = linspace(-2, 2, 200);
[Y,Z] = meshgrid(y,z);
X = log(1 + Y.^2 + Z.^2);

% Compute the normals
den = 1 + Y.^2 + Z.^2;
Nx = 1 * ones(size(Y));
Ny = -2*Y ./ den;
Nz = -2*Z ./ den;

% Build the graph
figure;
surf(X, Y, Z, 'EdgeColor', 'interp');
colormap parula;
hold on;

% Subsample of quivers
skip = 5;
Xs = X(1:skip:end, 1:skip:end);
Ys = Y(1:skip:end, 1:skip:end);
Zs = Z(1:skip:end, 1:skip:end);
Nxs = Nx(1:skip:end,1:skip:end);
Nys = Ny(1:skip:end,1:skip:end);
Nzs = Nz(1:skip:end,1:skip:end);

% Norm arrows
L = sqrt(Nxs.^2 + Nys.^2 + Nzs.^2);
Nxs = Nxs ./ L;
Nys = Nys ./ L;
Nzs = Nzs ./ L;

% Draw norms
quiver3(Xs, Ys, Zs, Nxs, Nys, Nzs, 0.5, 'k', 'LineWidth', 1);

% Highlight point and its normal
P = [log(2), 0, 1];
NormP = [1, 0, -1];
quiver3(P(1), P(2), P(3), NormP(1), NormP(2), NormP(3), 0.5, 'r', 'LineWidth', 2, 'MaxHeadSize',1);
plot3(P(1),P(2),P(3), 'ro', 'MarkerSize',8,'MarkerFaceColor','r');

% Prettifying the graph
xlabel('x=ln(1+y^2+x^2)');
ylabel('y');
zlabel('z');
title('Paraboloid x = ln(1 + y^2 + z^2) with normal vector orientation');
axis tight;
camlight;
lighting phong;
view([-30,20]);
grid on;
hold off
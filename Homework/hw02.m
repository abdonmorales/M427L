Q = [-2;-1;-1];
R = [0;-2;-1];
S = [-5;-1;-3];

u = R-Q;
disp(u);
v = S-Q;
disp(v);

resultVector = cross(u,v);
disp('Resulting vector from cross product:');
disp(resultVector);

disp('Question 10: Graphing a parametrized equation of a surface');
U = linspace(0,5,100);
V = linspace(0, 2*pi,100);
[u, v] = meshgrid(U,V);
X = u .* cos(v);
Y = u.^2;
Z = u .* sin(v);
surf(X,Y,Z);
xlabel('x');
ylabel('y');
zlabel('z');
title('Parametrized Surface');
shading interp;
colormap turbo;
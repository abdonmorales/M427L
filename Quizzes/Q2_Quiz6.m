% Quiz 6
% Question 2
% M 427L
% Abdon Morales

t = linspace(0, 1, 500);
x = t;
y = 1-t;
z = 1-2*t+2*t.^2;

figure;
plot3(x, y, z, 'b-', 'LineWidth', 2);
grid on;
xlabel('X-axis');
ylabel('Y-axis');
zlabel('Z-axis');
title('Curve c(t) = (t, 1-t, 1-2t + 2t^2) in the 1st octant');
axis equal;
view(3);

hold on;

x1 = t;
y1 = 1 -t;
z1 = 0.5*ones(size(t));
plot3(x1, y1, z1, 'r--', 'LineWidth', 2);
plot3(.5, .5, .5, 'ro', 'MarkerFaceColor','green');
% Add a legend to the plot
legend('Curve c(t)', '1(t)', 'Point of Tangency', 'Location', 'best');
% Quiz #2
% M 427L Vector Calculus, Alex Macedo

a = [2;-1;1];
b = [1;1;0];
c = [-1;1;0];

v1 = b - a; % This is segment AB
v2 = c - a; % This is segment AC

disp('Computing the the Gram matrix, to find the area(s):');
disp('Area of the parallelogram:');
AParallelogram = sqrt(det([dot(v1, v1) dot(v1, v2); dot(v2, v1) dot(v2, v2)]));
disp(AParallelogram)
disp('Area of the triangle:');
ATriangle = AParallelogram / 2;
disp(ATriangle);

disp('Compute cross product and its norm:');
disp('Cross product:');
cross_product = cross(v1, v2);
disp(cross_product);

disp('Norm of the cross product:');
norm_cross_product = norm(cross_product);
disp(norm_cross_product);
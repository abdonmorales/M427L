% This script calculates various vector operations including dot products, norms, 
% and cross products for Dr. Macedo M 427L class.

disp('Dr. Macedo M 427L')
disp('HW01')
disp('Abdon Morales')
disp('May 2025')

 v_1 = [2;-1;1;0;1]; v_2 = [1;1;0;-1;2]
 resultant = dot(v_1,v_2)

 a = [1;2;-1]
 b = [-3;-1;-2]
 norm(-2*a + b)
 sqrt(46)

 5*sqrt(12)
 5*sqrt(2)
 det([1 2 -1; -3 -2 -2; -1 1 -3])

 c = [2;-3;-2]
 d = [1;1;2]
 cross(c,d)

 e = [-1;1;3]
 f = [1;-3;1]
 cross(e,f)

 v = [-5;4]
 w = [4;-3]
 (dot(v,w)/norm(w))
 -32/5

 v = [2;1;3]
 w = [2;-2;-1]
 (dot(v,w)/norm(w))

 v = [-2;-1]
 w = [-1;-3]
 (dot(v,w)/norm(w))
 7/sqrt(10)
 5/sqrt(10)

 w/norm(w)

 (dot(v,w)/norm(w))*(w/norm(w))
 3*(1/2)

 v = [2;2;1]; w=[3;-1;2]
(dot(v,w)/(norm(w).^2))
3/7

P = [-3;-1];
Q = [-2;-2];
R = [3;3];
v1 = Q - P;
disp(v1);
v2 = R - P;
disp(v2);
resultant = (1/2)*sqrt(det([dot(v1, v1), dot(v1, v2); dot(v2, v1), dot(v2, v2)]));
disp(resultant);

P = [-3;-1]
disp(P)
Q = [-2;-2]
disp(Q)
R = [3;3]
disp(R)
v1 = Q - P
disp(v1)
v2 = R - P
disp(v2)
dot(v1, v1)
dot(v2, v2)
dot (v1,v2)
det([2 2; 2 52])
sqrt(ans)
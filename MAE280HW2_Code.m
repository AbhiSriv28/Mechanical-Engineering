syms x y 
L=[1 2; 7 8; 21 -1];
P=L*L'
Z=[1 -2 3 -2; -1 -1 -1 -1; 4 4 5 4; 7 8 9 2];
X=Z*Z'

%l1=[x 0 0; 0 x 0; 0 0 x];
%del1=P-l1;
%ex=det(del1);
%roots([-1 560 -32510]);
fprintf('Eigen Values of P')
eig(P)
fprintf('Rank of P')
rank(P)
fprintf('Singular Values of P')
svd(P)

%l2=[y 0 0 0; 0 y 0 0; 0 0 y 0; 0 0 0 y];
%del2=X-l2;
%ex2=det(del2)
%roots([1 -293 6549 -25116 324])
fprintf('Eigen Values of X')
eig(X)
fprintf('Rank of X')
rank(X)
fprintf('Singular Values of X')
svd(X)
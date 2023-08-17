function [theta] = normalEqn(X, y)
%NORMALEQN Computes the closed-form solution to linear regression 
%   NORMALEQN(X,y) computes the closed-form solution to linear 
%   regression using the normal equations.

theta = zeros(size(X, 2), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the code to compute the closed form solution
%               to linear regression and put the result in theta.
%

% ---------------------- Sample Solution ----------------------

theta=pinv(X*X')*X'*y;  %$\theta$的推导可以根据等式$X\theta=y$得到，$X^TX$的目的是将矩阵转化为方阵，因为求矩阵的逆的前提是方阵


% -------------------------------------------------------------


% ============================================================

end

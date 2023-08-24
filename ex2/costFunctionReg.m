%正则化代价函数，避免欠拟合和过拟合
function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples
% You need to return the following variables correctly
J = 0;
grad = zeros(size(theta));%初始化梯度，是J的偏导数
% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

J=-1./m*(y'*log(sigmoid(X*theta))+(1-y)'*log(1-sigmoid(X*theta)))+lambda./(2*m)*theta'*theta;
grad=1./m*X'*(sigmoid(X*theta)-y)+lambda./m*theta;
% =============================================================
%==========================================优化=======================================
%[J, grad] = costFunction(theta, X, y);
%J = J + lambda/(2*m)*(sum(theta.^2) - theta(1).^2);    %因为θ0对函数的欠拟合和过拟合没什么影响，所以默认不对θ0做惩罚
%grad = grad + lambda/m*theta;
%grad(1) = grad(1) - lambda/m*theta(1);    %不对θ0做出惩罚所以相对其它θ的导数要区别处理
end

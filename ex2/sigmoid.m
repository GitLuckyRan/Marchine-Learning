%若Y=1，则g>0.5,z>0即使得带入样本点到方程后使得给g>0.5,也就是y=1样本点应该在曲线上上方，即z>0；
%当y=1时，代价方程应当使g>0.5时花费代价较小，g<0.5时花费代价大
function g = sigmoid(z)
%SIGMOID Compute sigmoid function
%   g = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly
g = zeros(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).

g=1./(1+exp(-z));    %激活函数用于，表示满足特征的概率  0<g<1



% =============================================================

end

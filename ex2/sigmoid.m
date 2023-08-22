%z=Hθ(X)=θ^TX，如果Z>0则y=1,如果Z<0,则y=0
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

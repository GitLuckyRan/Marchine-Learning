function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));

% ====================== YOUR CODE HERE ======================
% Instructions: First, for each feature dimension, compute the mean
%               of the feature and subtract it from the dataset,
%               storing the mean value in mu. Next, compute the 
%               standard deviation of each feature and divide
%               each feature by it's standard deviation, storing
%               the standard deviation in sigma. 
%
%               Note that X is a matrix where each column is a 
%               feature and each row is an example. You need 
%               to perform the normalization separately for 
%               each feature. 
%
% Hint: You might find the 'mean' and 'std' functions useful.
mu=mean(X);           %M = mean(A) 返回 A 沿大小大于 1 的第一个数组维度的元素的均值。如果 A 是向量，则 mean(A) 返回元素均值。如果 A 为矩阵，那么 mean(A) 返回包含每列均值的行向量。
sigma=std(X,1,1);    %S = std(A,w,dim) 返回沿维度 dim 的标准差。要维持默认归一化并指定运算的维度，请在第二个参数中设置 w = 0。
for i=1:size(X,2);
  X_norm(:,i)=(X(:,i)-mu(i)) ./sigma(i)
end









% ============================================================

end

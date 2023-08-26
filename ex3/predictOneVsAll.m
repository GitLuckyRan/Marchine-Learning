function p = predictOneVsAll(all_theta, X)
%PREDICT Predict the label for a trained one-vs-all classifier. The labels
%are in the range 1..K, where K = size(all_theta, 1).
%  p = PREDICTONEVSALL(all_theta, X) will return a vector of predictions
%  for each example in the matrix X. Note that X contains the examples in
%  rows. all_theta is a matrix where the i-th row is a trained logistic
%  regression theta vector for the i-th class. You should set p to a vector
%  of values from 1..K (e.g., p = [1; 3; 1; 2] predicts classes 1, 3, 1, 2
%  for 4 examples)

m = size(X, 1);
num_labels = size(all_theta, 1);

% You need to return the following variables correctly
p = zeros(size(X, 1), 1);

% Add ones to the X data matrix
X = [ones(m, 1) X];

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned logistic regression parameters (one-vs-all).
%               You should set p to a vector of predictions (from 1 to
%               num_labels).
%
% Hint: This code can be done all vectorized using the max function.
%       In particular, the max function can also return the index of the
%       max element, for more information see 'help max'. If your examples
%       are in rows, then, you can use max(A, [], 2) to obtain the max
%       for each row.
%
%all_theta行应该为判断类别的个数，列应该为特征向量的个数

[c,p] = max(sigmoid(X*all_theta'),[],2);
 %M = max(A,[],dim) 返回维度 dim 上的最大元素。
 %例如，如果 A 为矩阵，则 max(A,[],2) 返回包含每一行的最大值的列向量。
 %[M,I] = max(___) 还返回 A 中最大值第一次在运算维度上出现时的对应索引。
%sigmoid(X*all_theta')对应的值越大，惩罚力度越小，就能区分多类别的逻辑分类
% =========================================================================


end

function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.
% Create New Figure
figure; hold on;
% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%
x1=X(:,1);
x2=X(:,2);
for i=1:size(X,1)
  if (y(i)==1)
     plot(x1(i),x2(i),'k+');
  else
    plot(x1(i),x2(i),'ro');
  endif
end
%优化
%pos=find(y==1);neg=find(y==0) %找到对应的索引下标
%plot(X(pos,1),X(pos,2),'k+')
%plot(X(neg,1),X(neg,2),'ko')


% =========================================================================


hold off;

end

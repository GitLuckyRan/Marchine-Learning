function plotData(x, y)
%PLOTDATA Plots the data points x and y into a new figure
%   PLOTDATA(x,y) plots the data points and gives the figure axes labels of
%   populationx

figure; % open a new figure window

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the training data into a figure using the
%               "figure" and "plot" commands. Set the axes labels using
%               the "xlabel" and "ylabel" commands. Assume the
%               population and revenue data have been passed in
%               as the x and y arguments of this function.
%
% Hint: You can use the 'rx' option with plot to have the markers
%       appear as red crosses. Furthermore, you can make the
%       markers larger by using plot(..., 'rx', 'MarkerSize', 10);

plot(x,y,'rx','MarkerSize',2);    %设置显示图像的参数
ylabel('Profit in $10,000s');     %y轴的标题
xlabel('Population of City in 10,000s');   %同上


% ============================================================

end

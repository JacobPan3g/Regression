load main
if !exist('data')
	data = csvread('train.csv');
end

[m,n] = size(data);
y = data(2:m, 1);
X = [ones(m-1, 1), data(2:m, 2:n)];
theta = zeros(n, 1);
alpha = 0.01;

%computeCost(X, y, theta)
[theta, dJ] = gradientDescent(X, y, theta, alpha);
%disp(dJ);

res = score(theta);
csvwrite('result_500.csv', res);




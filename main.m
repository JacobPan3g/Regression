load main
if !exist('data')
	data = csvread('train.csv');
end
if !exist('tests')
	tests = csvread('test.csv');
end

[m,n] = size(data);
y = data(2:m, 1);
X = [ones(m-1, 1), data(2:m, 2:n)];
theta = zeros(n, 1);
alpha = 0.001;

%computeCost(X, y, theta)
iter_time = 1000000000;
err = 0.00001;
[theta, dJ] = gradientDescent(X, y, theta, alpha, iter_time, err);
%disp(dJ);

res = score(theta, tests);
csvwrite('result_e-5-3.csv', res);




format long
load main
if !exist('data') || !exist('tests')
	pre
end

[m,n] = size(data);
y = data(:, 1);
X = [ones(m, 1), data(:, 2:n)];

theta = zeros(n, 1);
alpha = 0.001;

%computeCost(X, y, theta)
iter_time = 1e9;
err = 1e-8;
[theta, dJ] = gradientDescent(X, y, theta, alpha, 5.12, iter_time, err);
%disp(dJ);
computeCost(X, y, theta)

res = score(theta, tests);
csvwrite('result_e-8-3-rr.csv', res);




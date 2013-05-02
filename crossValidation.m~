format long
load main
if !exist('data') || !exist('tests')
	pre
end

[m,n] = size(data);

% train set
trainNum = fix(m*0.7);
y = data( 1:trainNum, 1);
X = [ones(trainNum, 1), data(1:trainNum, 2:n)];

% cv set
cv_y = data( trainNum+1:m, 1 );
cv_X = [ones(m-trainNum, 1), data(trainNum+1:m, 2:n)];


theta = zeros(n, 1);
alpha = 0.001;

%computeCost(X, y, theta)
iter_time = 1e9;
err = 1e-5;
bestLander = validation(X, y, theta, alpha, iter_time, err, cv_X, cv_y);
disp(bestLander);



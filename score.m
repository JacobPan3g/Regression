function res = score(theta)

if !exist('tests')
	tests = csvread('test.csv');
end

[m,n] = size(tests);
X = [ones(m-1,1), tests(2:m,:)];
y = zeros(m-1,1);

% h function
for i = 1:m-1
	h = theta' * X(i,:)';
	y(i) = h;
end

res = y;

end


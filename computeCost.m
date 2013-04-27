function J = computeCost(X, y, theta)

m = length(y);
J = 0;
for i = 1:m
	J = J + (theta' * X(i,:)' - y(i)) ^ 2;
end
J = J / (2*m);

end

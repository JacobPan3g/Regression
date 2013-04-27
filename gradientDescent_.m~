function [theta,dJSum] = gradientDescent(X, y, theta, alpha)

m = length(y);

for iter = 1:500
	n = length(X(1,:));
	dJSum = 0;
	for j = 1:n
		dJ = 0;
		for i = 1:m
			dJ = dJ + ( theta' * X(i,:)' - y(i) ) * X(i,j);
		end
		dJ = dJ / m;
		theta(j) = theta(j) - alpha * dJ;
		dJSum = dJSum + dJ;
	end

	if abs(dJSum/n) < 0.00015
		break;
		disp(iter);	
		disp(dJSum/n);
	end

%	disp('Hello!');
end

end

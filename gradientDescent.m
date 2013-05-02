function [theta,dJSum] = gradientDescent(X, y, theta, alpha, landa, iter_time, err )

n = length(y);
m = length(X(1,:));
regularizetionVector = ones(m,1) * (1 - alpha * landa / n);
regularizetionVector(1,1) = 1;

for iter = 1:iter_time

%	if abs(dJSum/n) < 0.00015
%		break;
%		disp(iter);	
%		disp(dJSum/n);
%	end
	dJ =  X' * (X * theta - y) / n;
	
	theta = theta .* regularizetionVector - alpha * dJ;
	
	dJSum = norm(dJ,1)/n;
	if abs(dJSum) < err
		disp(iter);
		break;
	end 
end

end

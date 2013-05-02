function [theta,dJNorm] = gradientDescent_nr(X, y, theta, alpha,  iter_time, err )

n = length(y);

for iter = 1:iter_time

%	if abs(dJSum/n) < 0.00015
%		break;
%		disp(iter);	
%		disp(dJSum/n);
%	end
	dJ =  X' * (X * theta - y) / n;
	
	theta = theta - alpha * dJ;
	
	dJNorm = norm(dJ,1)/n;
	if abs(dJNorm) < err
		disp(iter);
		break;
	end 
end

end

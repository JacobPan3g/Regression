function bestLander = validation(X, y, theta, alpha, iter_time, err, cv_X, cv_y)

minJ = 999999;
bestLander = -1;

i = 0.01;
while i <= 10
	[tmpTheta, dJNorm] = gradientDescent(X, y, theta, alpha, i, iter_time, err);
	tmpJ = computeCost(cv_X, cv_y, tmpTheta);
	disp(tmpJ);
	if tmpJ < minJ
		minJ = tmpJ;
		bestLander = i;
	end

	i = i * 2;
end 
	
end

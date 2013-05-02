function a = shuffling(a)

n = length(a(:,1));
for i = n:-1:1
	j = unidrnd(i);	%random
	tmp = a(i,:);
	a(i,:) = a(j,:);
	a(j,:) = tmp;
end

end


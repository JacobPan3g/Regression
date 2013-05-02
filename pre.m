data = csvread('train.csv');
tests = csvread('test.csv');
[m,n] = size(data);
% the first row should be ignored and shuffling
data = shuffling( data(2:m, :) );
save main

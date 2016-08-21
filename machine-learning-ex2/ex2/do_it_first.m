function [X,y] = do_it_first()
	data = load('ex2data1.txt');
	X = data(:,[1,2]);
	y = data(:,3);
end

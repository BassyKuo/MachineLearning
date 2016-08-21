function [X,y] = do_it_first(filename)
	data = load(filename);
	X = data(:,[1,2]);
	y = data(:,3);
end

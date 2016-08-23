function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);

% You need to return the following variables correctly 
p = zeros(size(X, 1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a 
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%

	X = [ones(m,1) X];	
	% num_labels : 10
	%	   X :	m x (n+1)
	% Theta1 :	j x (n+1)
	% Theta2 :	num_labels x (j+1)
	%	   p :	m x 1 (value between 1~10)
	%	   y :	m x 1 (value between 1~10)

	a2 = sigmoid( X * Theta1' );	% a2 : m x j
	a2 = [ones(size(a2,1),1) a2];	% a2 : m x (j+1)
	a3 = sigmoid( a2 * Theta2' );	% a3 : m x num_labels
	% h(x) = a3, like this:
	% [   0   0   0   0.75   0   0   0   0   0   0.15 ]=> row sum: approximate 1
	% [  0.6  0   0   0.15  0.05 0  0.2  0   0    0   ]
	% [  ...  ...  ...  ...  ...  ...  ...  ...  ...  ]
	% [  ...  ...  ...  ...  ...  ...  ...  ...  ...  ]
	% [  ...  ...  ...  ...  ...  ...  ...  ...  ...  ]
	% [  ...  ...  ...  ...  ...  ...  ...  ...  ...  ]
	% [  ...  ...  ...  ...  ...  ...  ...  ...  ...  ]

	[ max_value, max_at_col ] = max(a3,[],2);
	p = max_at_col;

% =========================================================================


end

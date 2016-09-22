function g = sigmoid(z)
%SIGMOID Compute sigmoid functoon
%   J = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
g = zeros(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).
if(rows(z) == 1&&columns(z) == 1)
	g = 1/(1+e.^(-1*z));
	else
		for i = 1:rows(z)
			for j = 1:columns(z)
				k = z(i,j); 
				z(i,j) = 1/(1+e.^(-1*k));
			end
		end
		g = z;
% =============================================================

end

function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples
n = length(theta);
% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));
k = 0;
l = 0;
for i = 1:m
k = k + -1*y(i,1)*log(sigmoid(theta'*X(i,:)'))-(1-y(i,1))*log(1-sigmoid(theta'*X(i,:)'));
end
for i = 2:n
l = l + theta(i,1)^2;
end
l = (lambda/(2*m))*l;
J = k/m + l;

k = zeros(size(theta));
for i = 1:m
	k = k + (sigmoid(theta'*X(i,:)') - y(i,1))*X(i,:)';
end
for i = 2:n
	k(i,1) = k(i,1) + lambda*theta(i,1);
end
grad = k/m;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta






% =============================================================

end

function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));
k = 0;
	for i = 1:m
	k = k + -1*y(i,1)*log(sigmoid(theta'*X(i,:)'))-(1-y(i,1))*log(1-sigmoid(theta'*X(i,:)'));
	end
J = k/m;
k = zeros(size(theta));
	for i = 1:m
	k = k + (sigmoid(theta'*X(i,:)') - y(i,1))*X(i,:)';
	end
grad = k/m;
% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note: grad should have the same dimensions as theta
%








% =============================================================

end

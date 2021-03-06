function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));
J_1=-y'*log(sigmoid(X*theta));
J_2=(ones(size(y))-y)'*log(ones(size(X,1),1)-sigmoid(X*theta));
J_R=0;
for i=2:size(theta,1);
    J_R+=theta(i)*theta(i);
end;
J=1/m*(J_1-J_2)+lambda/(2*m)*J_R;

grad=1/m*X'*(sigmoid(X*theta)-y)+lambda/m*theta;
grad(1)=1/m*X(:,1)'*(sigmoid(X*theta)-y);

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
% =============================================================

end

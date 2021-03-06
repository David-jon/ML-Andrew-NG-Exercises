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

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

%compute the cost function
add = 0;
z = X*theta;

for i = 1:m
    add = add - y(i)* log(sigmoid(z(i))) - (1-y(i))*log(1-sigmoid(z(i)));
end
%regularization term
regular = lambda/(2*m)*sum(theta(2:end,:).^2);
J = add/m+regular;

%computer the gradient
%size((((sigmoid(z(i)) - y(i))') * X(:,i)))
%size(grad)



grad(1) = ((sigmoid(z) - y)') * X(:,1);

%wasn't able to do it
for i = 2:max(size(theta))
    grad(i) =  ((sigmoid(z) - y)') * X(:,i)+lambda*grad(i);
end


%{

grad(2) = ((sigmoid(z) - y)') * X(:,2);
grad(3) = ((sigmoid(z) - y)') * X(:,3);
%}
grad= grad/m;





% =============================================================

end

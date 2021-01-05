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

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note: grad should have the same dimensions as theta
%

%compute the cost function
sum = 0;
z = X*theta;

for i = 1:m
    sum = sum - y(i)* log(sigmoid(z(i))) - (1-y(i))*log(1-sigmoid(z(i)));
end
J = sum/m;


%computer the gradient

sum = 0;

grad(1) = ((sigmoid(z) - y)') * X(:,1);
grad(2) = ((sigmoid(z) - y)') * X(:,2);
grad(3) = ((sigmoid(z) - y)') * X(:,3);

grad= grad/m;




%{
% Compute and display the initial cost and gradient
[cost, grad] = costFunction(initial_theta, X, y);
fprintf('Cost at initial theta (zeros): %f\n', cost);
disp('Gradient at initial theta (zeros):'); 
disp(grad);
%}

% =============================================================

end

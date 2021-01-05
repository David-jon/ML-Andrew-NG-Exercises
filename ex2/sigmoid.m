function g = sigmoid(z)
%SIGMOID Compute sigmoid function
%   g = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
g = zeros(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).

g = 1./(1+exp(-z));






%{
sz_temp = size(z);
sz1 = sz_temp(1);
sz2 = sz_temp(2);


for i = 1:sz1
    for j = 1:sz2
        %disp("The value is");
        temp = z(i,j);
        temp = 1/(1+exp(-temp));
        g(i,j) = temp;
    end
%}
%g = z.(1/(1+exp(-z)));



% =============================================================

end

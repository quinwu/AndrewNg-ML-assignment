function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
    
%     Z1 = (X* theta - y)' * X(:,1);
%     %Z1 = X(:,1)' * (X* theta - y);
%     theta1 = alpha * sum(Z1(:,1)) / m;
%     
%     Z2 = (X* theta - y)' * X(:,2);
%     %Z2 = X(:,2)' * (X* theta - y);
%     theta2 = alpha * sum(Z2(:,1)) / m;
%     
%     %updata theta
%     theta(1) = theta(1) - theta1;
%     theta(2) = theta(2) - theta2;

Z = X' * (X * theta - y) * alpha / m;
theta = theta - Z;


    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end

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


a1 = [ones(m,1) X];
Z2 = a1*Theta1';
a2 = sigmoid(Z2);
a2 = [ones(m,1) a2];
Z3 = a2*Theta2';
a3 = sigmoid(Z3);
[z,p] = max(a3,[],2);


% % X=(m*(n+1))=(m*401)
% X = [ones(m,1) X];
% %Theta1=(25*401) 
% %prob1=(m*25)
% prob1 = sigmoid(X * Theta1');
% %prob1=(m*26)
% prob1 = [ones(m,1) prob1];
% 
% %Theta2=(10*26)
% prob2 = sigmoid(prob1 * Theta2' );
% %prob2=(m*10)
% [z,p] = max (prob2,[],2);
%     



% =========================================================================


end

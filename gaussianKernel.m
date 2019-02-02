function sim = gaussianKernel(x1, x2, sigma)
% 
%   sim = gaussianKernel(x1, x2) returns a gaussian kernel between x1 and x2
%   and returns the value in sim

% Ensure that x1 and x2 are column vectors
x1 = x1(:); x2 = x2(:);

% You need to return the following variables correctly.
sim = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the similarity between x1
%               and x2 computed using a Gaussian kernel with bandwidth
%               sigma
%
%

%less efficient way of implementing the Gaussian Kernel Function
%diff = x1 - x2;
%sqDiff = diff.^2;
%sim = exp(-sum(sqDiff)/(2*sigma*sigma));


% More efficient(Vectorized) way of implementing the Gaussian Kernel Function
numerator = (x1-x2)'*(x1-x2);
denominator = 2*sigma*sigma;
sim = exp(-numerator/denominator);




% =============================================================
    
end

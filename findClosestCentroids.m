function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

for i =    1 : size(X,1)
    
    [M idx(i)] = min ( sum(  ( repmat(X(i,:), K, 1)  - centroids).^2 ,2  )) ;

end

end


function [indices] = FindMatchIndices(array1,array2)
% FindMatchIndices.m takes in two 1D arrays and returns positions of
% elements in array1 that were equal in value with an element in array2
% Input:  array1: 1D array of values
%         array2: 1D array of values 
% Output: indices: Position of elements in array1 that are present in array2
% Author: Quaid Sage | qsag699

% Initialise pos array
indices = [];

% Check for all values of array1
for i = 1:length(array1)
    % Check if element in array1 is present in array2
    if sum(array1(i) == array2(:)) > 0
        % Add position of shared element to pos array
        indices(end+1) = i;
    end
end

end
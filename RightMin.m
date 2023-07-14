function [minValue, pos] = RightMin(array)
% RightMin.m takes in 1D array of values and gives the minimum value and
% its rightmost position in the array.
% Input:  array:    1D array of values with length > 0
% Output: minValue: minimum Value of input array
%         pos:      position of rightmost minimum value
% Author: Quaid Sage | qsag699

% Get right most min value and position
[minValue, pos] = min(flip(array));

% Get position of rightmost min value in non-flipped array
pos = length(array) - pos + 1;

end
function [windowArray] = Window(windowSize,array)
% Window.m divides a 1D array of integers into as many windows of size w as
% possible.
% Input:  windowSize:  Size of windows (columns)
%         array:       1D array of integers to be sorted into windows
% Output: windowArray: 2D array of windows from sorted 1D array 'array'
% Author: Quaid Sage | qsag699

% Calculate amount of windows
n = length(array) - windowSize + 1;

% Initialise windowArray
windowArray = zeros([n,windowSize]);

% If length of windows does not exceed length of array, produce multiple
% rows
if windowSize < length(array)
    % For all number of possible windows, set values to portions of array of
    % length windowSize
    for i = 1:n
        windowArray(i,:) = array(i:windowSize+i-1);
    end
% If length of windows greater than length of array then output array
else
    windowArray = array;
end

end
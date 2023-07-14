function [hashValue] = Hash31(array)
% Hash31.m takes a given array of integers or characters and converts to a
% unique integer using a hash size of 1,048,576.
% Inputs:  array:      1D array of integers or string 
% Outputs: hashValue:  Corresponding hash integer of array
% Author: Quaid Sage | qsag699

% Initialise hashValue
hashValue = 0;

% For all elements of array, apply hash algorithm
% Algorithm retreived from "The C Programming Language" by Brian Kernighan
% and Dennis Ritchie
for i = 1:length(array)
    hashValue = mod((array(i) + 31 * hashValue),1048576);
end

end
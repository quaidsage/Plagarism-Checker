function [hashValues] = HashList(strArray)
% HashList.m takes in 1D cell array containing strings to be converted to
% hash values
% Input:  strArray:   1D cell array of strings
% Output: hashValues: Corresponding hash values for input strings as 1D
%                     array
% Author: Quaid Sage | qsag699

% Initalise hashValues array
hashValues = zeros([1,length(strArray)]);

% Convert all cell values to corresponding hash value
for i = 1:length(strArray)
    hashValues(i) = Hash31(strArray{i});
end

end
function [strStripped] = StripString(strOriginal)
% StripString.m takes a given string and removes irrelevant features
% (whitespace,unprintable characters, uppercase characters) and returns
% stripped version of input string
% Input:  strOriginal: 1D array of characters / string to be stripped
% Output: strStripped: 1D array of characters representing stripped version
%                      of input string
% Author: Quaid Sage | qsag699

% Initialise strStripped array
strStripped = char([]);

% Go through all characters in input string
for i = 1:length(strOriginal)
    % Check if character is not whitespace or unprintable character
    if (strOriginal(i) > 32) && (strOriginal(i) < 127)
        % Append to stripped string
        strStripped(end+1) = lower(strOriginal(i));
    end
end

end
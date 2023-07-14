function [fingerprint] = Fingerprint(windowArray)
% Fingerprint.m cycles through windows to find right most minimum value and
% add its value and position to fingerprint if unique
% Input:  windowArray: 2D array of windows
% Output: fingerprint: 2D 2 row array consisting of the minimum values (1st row) and
%                      their position (2nd row)
% Author: Quaid Sage | qsag699

% Sift through all windows
for i = 1:size(windowArray)
    % Get right most minimum value and its position of window i
    [m,pos] = RightMin(windowArray(i,:));

    % Append minimum value and its position in original array to
    % fingerprint array
    fingerprint(:,i) = [m;pos + i - 1];
end

% Remove all duplicate values
fingerprint = (unique(fingerprint.','rows','stable')).';

end
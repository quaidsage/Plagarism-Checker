function [score] = SimilarityScore(positions,k,origLength)
% SimilarityScore.m gives percentage matches from a stripped string given
% the positions of these matches, the length of the match, and length of
% original string.
% Input:  positions:  1D array of positions in stripped string that match
%         k:          Integer indicating length of each match
%         origLength: Total length of stripped string 
% Output: score:      Percentage of matching characters over entire stripped
%                     string
% Author: Quaid Sage | qsag699

% Initialise matches array
matches = zeros(1,origLength);

% Apply all matches to all positions given
for i = 1:length(positions)
    % Add k matching characters to matches array at position given
    matches(positions(i):positions(i)+k-1) = 1;
end

% Calculate percentage of matches over original length of stripped string
score = sum(matches) / origLength;

end
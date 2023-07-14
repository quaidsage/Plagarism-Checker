function [f1Matches, f2Matches] = FindMatchPositions(f1,f2)
% FindMatchPositions.m takes in two fingerprints and finds matching hash
% values and outputs their respective positions in fingerprint.
% Input:  f1: 2D array fingerprint first to compare
%         f2: 2D array fingerprint second to compare
% Output: f1Matches: 1D array of positions of hash values in f1 that match with f2
%         f2Matches: 1D array of positions of hash values in f2 that match
%         with f2
% Author: Quaid Sage | qsag699

% Initialise position arrays
f1Matches = [];
f2Matches = [];

% Find positions of hashes in f1 that match hashes in f2
f1indices = FindMatchIndices(f1(1,:),f2(1,:));

% For all matches find their corresponding position in original array
for i = 1:length(f1indices)
    f1Matches(i) = f1(2,f1indices(i));
end

% Find positions of hashes in f2 that match hashes in f1
f2indices = FindMatchIndices(f2(1,:),f1(1,:));

% For all matches find their corresponding position in original array
for i = 1:length(f2indices)
    f2Matches(i) = f2(2,f2indices(i));
end

end
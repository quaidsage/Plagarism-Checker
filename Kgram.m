function [kgram] = Kgram(k,strOriginal)
% Kgram.m takes a length k and string and produces k-grams of length k from
% the original string.
% Input:  k: length of k-grams as an integer
%         strOriginal: string to cut up into k-grams
% Output: kgram: 1D cell array of possible k-grams 
% Author: Quaid Sage | qsag699

% Calculate amount of kgrams to be produced
n = length(strOriginal) - k + 1;

% Initialise kgram cell array
kgram = cell(1,n);

% Produce all possible kgrams when k < length of original string
if k < length(strOriginal)
    for i = 1:n
       % For all possible kgrams, cut original string by i:k+i-1
       kgram{i} = strOriginal(i:k+i-1);
    end
% If k exceededs length of string, output original string in 1x1 cell array
else 
    kgram{1} = strOriginal;
end

end
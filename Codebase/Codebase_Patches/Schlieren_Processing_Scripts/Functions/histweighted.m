function [tEdges, fEdges, S] = histweighted(t,f,a,numTimeBins,numFreqBins,min_freq,max_freq)

% Define time and frequency edges
tEdges = linspace(min(t), max(t), numTimeBins + 1);
fEdges = linspace(min_freq, max_freq, numFreqBins + 1);

% Initialize the spectrogram matrix
S = zeros(numFreqBins, numTimeBins);
counts = zeros(numFreqBins, numTimeBins); % for normalization

% Bin each point into the spectrogram
for i = 1:length(t)
    % Find bin indices
    tIdx = find(t(i) >= tEdges(1:end-1) & t(i) < tEdges(2:end));
    fIdx = find(f(i) >= fEdges(1:end-1) & f(i) < fEdges(2:end));
    
    if ~isempty(tIdx) && ~isempty(fIdx)
        S(fIdx, tIdx) = S(fIdx, tIdx) + a(i);
        counts(fIdx, tIdx) = counts(fIdx, tIdx) + 1;
    end
end

% Normalize by number of points per bin (optional)
counts(counts == 0) = 1; % avoid division by zero
S = S ./ counts;

% % Plot the spectrogram
% figure;
% imagesc(tEdges, fEdges, S);
% axis xy; % put low freq at bottom
% xlabel('Time');
% ylabel('Frequency');
% title('Spectrogram');
% colorbar;
function [X] = invspod(P,A,nfft,nOvlp,n_modes_recon,n_blocks,dt)
%INVSPOD Inversion of SPOD using block-wise expansion coefficients
%
%   [X] = INVSPOD(P,A,WINDOW,NOVLP) inverts the SPOD and returns the
%   original data X. P are the SPOD modes and A the block-wise SPOD
%   expansion coefficients returned by [L,P,F,Lc,A] = SPOD(X,...). WINDOW
%   is the data window and NOVLP the number of overlapping snapshots
%   between blocks. The window-weighted average, equation (A1) in [1], is
%   used in overlapping regions. Multitaper estimation is not supported by
%   this version.
%
%   Reference:
%     [1] A. Nekkanti, O. T. Schmidt, Frequency–time analysis, low-rank 
%         reconstruction and denoising of turbulent flows using SPOD, 
%         Journal of Fluid Mechanics 926, A26, 2021
%
% O. T. Schmidt (oschmidt@ucsd.edu)
% Last revision: 7-Oct-2022 

% J Weightman note: The original script uses a Hamming window to weight
% overlapping block contributions. This has been replaced with a Hann
% window to remove discontinuities. The overlapping weights now also 
% accounts for multiple overlapping blocks (ovlp > 50%).
%
% dt (optional): time step of the data. spod.m (this repo's version)
% normalises the window to unit power and multiplies each block FFT by
% sqrt(dt), so the inverse needs norm(window)/sqrt(dt). With dt given, X is
% in the units of the original data. Without it, the old 1/mean(window)
% scaling is kept, which makes X too small by sqrt(dt)*sum(w)/norm(w)
% (e.g. ~1/14 for nfft = 1024 at 150 kHz), with a warning.

dim     = size(P);
if ndims(A)==2
    nBlks   = 1;
elseif n_blocks == 0
    nBlks   = size(A,3);
else
    nBlks   = n_blocks;
end
nFreqs  = dim(1);

if length(nfft)==1
    nDFT        = nfft;
    nfft      = hamming(nfft);
else
    nDFT    = numel(nfft);
end
nx      = prod(dim(2:end-1));
nt      = nDFT*nBlks-(nBlks-1)*nOvlp;
issymm  = nFreqs~=nDFT;

X       = zeros(nt,nx,'single');
w_glob  = zeros(nt,1,'single');
nfft_Hann = hann(length(nfft)); %%% Hann window is used for smoothly transitioning between overlapping blocks. Hamming causes discontinuities.
xHatBlk = complex(zeros([nDFT nx],'single'));

if nargin >= 7 && ~isempty(dt)
    win_corr = norm(nfft)/sqrt(dt);     % inverse of spod.m: sqrt(dt)*fft(x.*w/norm(w))
else
    win_corr = sum(nfft);
    warning('invspod:scaling','No dt given: reconstruction amplitude is scaled by sqrt(dt)*sum(w)/norm(w) relative to the data.');
end
P       = permute(reshape(P,[nFreqs nx dim(end)]),[1 3 2]);
timeIdx_prev    ...
        = [];

% loop over number of blocks and generate Fourier realizations
disp(' ')
disp('Reconstructing data from SPOD')
disp('------------------------------------')
for blk_i    = 1:nBlks
    % get time index for present block
    offset   = min((blk_i-1)*(nDFT-nOvlp)+nDFT,nt)-nDFT;
    timeIdx  = (1:nDFT) + offset;
    disp(['block ' num2str(blk_i) '/' num2str(nBlks) ' (' ...
        num2str(timeIdx(1)) ':' num2str(timeIdx(end)) ')'])
    xHatBlk(:)  = 0;
    
    % reconstruct Fourier realization
    xHatBlk(1:nFreqs,:)     = squeeze(sum(P(:,n_modes_recon(1):n_modes_recon(2),:).*squeeze(A(:,n_modes_recon(1):n_modes_recon(2),blk_i)),2));
    if issymm
        xHatBlk(nDFT/2+2:end,:)  = conj(xHatBlk(nDFT/2:-1:2,:));
    end
    
    % correction for windowing
    xHatBlk = xHatBlk*win_corr;
    xBlk    = ifft(xHatBlk,nDFT,1)./nfft;
    if issymm
        xBlk = real(xBlk);  % a complex DC/Nyquist bin would otherwise make X complex
    end

    
    
    % weighted reconstruction in overlapping segments: running Hann-weighted
    % average over all blocks covering a sample, done for the whole block at
    % once (the per-sample loop wrote one strided row of X at a time).
    % Samples not yet covered (w_glob = 0) take xBlk directly.
    w_new           = w_glob(timeIdx) + nfft_Hann;
    alpha           = ones(nDFT,1,'single');
    covered         = w_glob(timeIdx) > 0;
    alpha(covered)  = nfft_Hann(covered)./w_new(covered);
    X(timeIdx,:)    = alpha.*xBlk + (1-alpha).*X(timeIdx,:);
    w_glob(timeIdx) = w_new;

end

X   = reshape(X,[nt,dim(2:end-1)]);

end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [window] = hammwin(N)
%HAMMWIN Standard Hamming window of lenght N
    window = 0.54-0.46*cos(2*pi*(0:N-1)/(N-1))';
end
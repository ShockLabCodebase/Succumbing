function [a] = tcoeffs(X_full,P,window,weight,nModes,St_ind,first_bin)
%TCOEFFS Continuously-discrete temporal expansion coefficients of SPOD modes

%   [A] = TCOEFFS(X_full,P,WINDOW,WEIGHT,NMODES) returns the
%   continuously-discrete temporal SPOD mode expansion coefficients of the
%   leading NMODES modes. P is the data matrix of SPOD modes returned by
%   SPOD. X_full, WINDOW and WEIGHT are the same variables as for SPOD. If no
%   windowing function is specified, a Hamming window of length WINDOW will
%   be used. If WEIGHT is empty, a uniform weighting of 1 is used. Strouhal
%   range can be set via St_ind to limit the frequencies processed. 
%   St_ind = [start_index, end_index]; Uses all frequencies if St_ind is empty. 
%
%   Reference:
%     [1] A. Nekkanti, O. T. Schmidt, Frequency-time analysis, low-rank
%         reconstruction and denoising of turbulent flows using SPOD,
%         Journal of Fluid Mechanics 926, A26, 2021
%
% A. Nekkanti (aknekkan@eng.ucsd.edu), O. T. Schmidt (oschmidt@ucsd.edu)
% Previous revision: 7-Oct-2022 Brandon Yeung <byeung@ucsd.edu>

% Last revision:     04-Aug-2023 Tianyi Chu <tic173@eng.ucsd.edu>

% Phase reference (23-Oct-2026): a(f,t) is referenced to time step t, the
% centre of its window. It was referenced to the window start (as an FFT of
% the segment is), t - nDFT/2, which multiplies bin b by e^{-i 2 pi (b-1)/2}
% = (-1)^(b-1): no effect on |a| or on the phase evolution of one bin, but
% sums over neighbouring bins (a band field sum_f P(f) a(f,t)) cancelled
% instead of adding.
%
% X_full may be an integer array (e.g. int16 as stored); rows are converted to
% single as they are projected (23-Oct-2026).
%
% Optional first_bin (added 23-Oct-2026): the FFT bin (1-based, 1 = 0 Hz) of
% P(1,...), so P can hold only a band of frequencies (St_ind then indexes P's
% rows). Default 1 (P holds all frequencies from 0 Hz).
%
% Patched 22-Oct-2026 (Codebase_Patches): coefficients no longer conjugated;
% projection only onto St_ind; mean removed per row block without full copies
% of X; per-time-step FFTs replaced by one sliding-DFT convolution per
% frequency and mode (no parallel pool). Same results as before up to the
% conjugation (checked on synthetic data).
%
% Revised by Joel Weightman 13-Aug-2026 (joel.weightman@monash.edu)
% The process now splits X_full into blocks to process. Each block is
% individually processed in parallel to reduce memory requirements (using all available cores).
% Vectorisation has also been added to improve processing speed. 
% 20-50x improvement for tested (schlieren) data. Can now also specify
% a limited frequency range via St_ind's start and end index.


% Calculate the inner product between the data matrix X and the SPOD modes 
% in advance. Compute the temporal expansion coefficients for a specific 
% frequency by extracting the Fourier component of the pre-computed inner 
% product (which is low-dimensiomal) at that particular frequency.



if nargin < 7 || isempty(first_bin)
    first_bin = 1;
end
window = window(:); weight = weight(:);

% default window size and type
if length(window)==1
    window  = hammwin(window);
end
nDFT        = length(window);
winWeight   = 1/mean(window);

% use full frequency range if St_ind not specified
if isempty(St_ind)
    St_ind = [1,size(P,1)];
end

total_snapshots = size(X_full,1);

%%% Maximum block size. Hardcoded to 50k time-steps. Reduce if memory is an
%%% issue for parallel processing.
max_block_size = 50e3;
steps_per_block = min([max_block_size,total_snapshots]);  %%% Hardcoded for a max block size of 50k timesteps. Reduce if memory is an issue
n_blocks = ceil(total_snapshots/steps_per_block); % must result in a value greater than nfft
last_block = false;

a = complex(zeros(St_ind(2)-St_ind(1) + 1,nModes,total_snapshots,'single'));  % Preallocate the full a matrix

for j = 1:n_blocks
    fprintf("Completed %i Snapshots\n",(j-1)*steps_per_block);

    j_start = (j-1)*steps_per_block + 1;
    j_end = j_start + steps_per_block - 1;
    if j ~= 1
        j_start = j_start - nDFT;
    end
    if j == n_blocks
        j_end = total_snapshots;
        last_block = true;
    end

    dims        = size(X_full);
    nt          = j_end - j_start + 1;
    nGrid       = prod(dims(2:end));

    % reshape shares X_full's memory; indexing a chunk only copies when chunked
    if n_blocks == 1
        X       = reshape(X_full,nt,nGrid);
    else
        X       = reshape(X_full(j_start:j_end,:,:),nt,nGrid);
    end
    x_mean      = single(sum(X,1,'double')/nt);   % mean removed per row block below (no full copy; works for integer X)

    % inner product weight
    if isempty(weight)
        weight  = 1;
    end

    if j == 1
        ndims       = size(P);
        P           = permute(P,[1 length(ndims) 2:length(ndims)-1]);

        if isreal(X)
            nFreq   = size(P,1);%ceil(nDFT/2)+1;
            P       = reshape(P,nFreq,ndims(end),nGrid);
        else
            nFreq   = nDFT;
            P       = reshape(P,nDFT,ndims(end),nGrid);
        end

        % Project only onto the frequencies that are kept (St_ind), not all nFreq
        nSt    =   St_ind(2) - St_ind(1) + 1;
        P1     =   reshape(permute(P(St_ind(1):St_ind(2),1:nModes,:),[3 2 1]),nGrid, nSt*nModes);
    end
    if length(weight) ~= 1
        weight     = reshape(weight,1,nGrid);
    end

    % inner product with the modes, in blocks of rows, zero-padded by
    % ceil(nDFT/2) at both ends (the padding projects to zero)
    pad        = ceil(nDFT/2);
    X_proj     = complex(zeros(nModes*nSt, nt + 2*pad, 'single'));
    blocksize  = 1024;
    for r0 = 1:blocksize:nt
        rows = r0:min(r0+blocksize-1,nt);
        X_proj(:,pad + rows) = P1'*(weight'.*transpose(single(X(rows,:)) - x_mean));
    end
    clearvars X
    X_proj     = reshape(X_proj, nModes, nSt, nt + 2*pad);
    a_temp     = complex(zeros(nSt, nModes, nt,'single'));

    winCorr_fac= winWeight/nDFT;

    if ~last_block
        skip_steps = ceil(nDFT/2);
    else
        skip_steps = 0;
    end
    n_out = nt - skip_steps;

    % correction for windowing and zero-padding (as before, per time step)
    corr = ones(n_out,1);
    for i = 1:n_out
        if (i<ceil(nDFT/2)+1)
            corr(i) = 1/(winCorr_fac*sum(window(ceil(nDFT/2)-i+1:nDFT)));
        elseif (i>nt-ceil(nDFT/2)+1)
            corr(i) = 1/(winCorr_fac*sum(window(1:nt+ceil(nDFT/2)-i)));
        end
    end

    disp(' ')
    disp('Calculating expansion coefficients')
    disp('------------------------------------')

    % The coefficient at time i and FFT bin b is the windowed DFT of the
    % projection over samples i..i+nDFT-1:  sum_n w(n) X_proj(i+n) exp(-2i*pi*(b-1)*n/nDFT).
    % That is a sliding DFT, so each (frequency, mode) is one convolution
    % rather than an nDFT-point FFT per time step (which kept one bin per
    % frequency and needed a parallel pool with a copy of X_proj per worker).
    % The convolutions are done with FFTs (direct conv costs nt*nDFT per
    % frequency and mode: hours for 400k snapshots with nDFT = 4096).
    n_vec = (0:nDFT-1)';
    n_conv = size(X_proj,3);                                 % nt + 2*pad
    n_fft_conv = 2^nextpow2(n_conv + nDFT - 1);
    valid = nDFT:n_conv;                                     % 'valid' part of the full convolution
    for kk = 1:nSt
        b      = first_bin + St_ind(1) + kk - 2;             % FFT bin (1-based) of this frequency
        kernel = flipud(window.*exp(-2i*pi*(b-1)*(n_vec - pad)/nDFT));   % phase referenced to the window centre (time step i)
        K_hat  = fft(kernel, n_fft_conv);
        for jm = 1:nModes
            c = ifft(fft(double(squeeze(X_proj(jm,kk,:))), n_fft_conv).*K_hat);
            c = c(valid);
            a_temp(kk,jm,1:n_out) = corr.*winCorr_fac.*c(1:n_out);
        end
    end
    clearvars X_proj

    if j ~= 1
        j_shift = nDFT/2;
    else
        j_shift = 0;
    end

    a(:,:,j_start+j_shift:j_end) = a_temp(:,:,j_shift+1:end);

end


a = single(a);


end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [window] = hammwin(N)
%HAMMWIN Standard Hamming window of lenght N
window = 0.54-0.46*cos(2*pi*(0:N-1)/(N-1))';
end
function [L,P,f,Lc,A] = spod(X,varargin)
%SPOD Spectral proper orthogonal decomposition
%   [L,P,F] = SPOD(X) returns the spectral proper orthogonal decomposition
%   of the data matrix X whose first dimension is time. X can have any
%   number of additional spatial dimensions or variable indices. The
%   columns of L contain the modal energy spectra. P contains the SPOD
%   modes whose spatial dimensions are identical to those of X. The first
%   index of P is the frequency and the last one the mode number ranked in
%   descending order by modal energy. F is the frequency vector. If DT is
%   not specified, a unit frequency sampling is assumed. For real-valued
%   data, adjusted one-sided eigenvalue spectra are returned. Although
%   SPOD(X) automatically chooses default spectral estimation parameters,
%   the user is encouraged to manually specify problem-dependent parameters
%   on a case-to-case basis.
%
%   [L,P,F] = SPOD(X,WINDOW) uses a temporal window. If WINDOW is a vector,
%   X is divided into segments of the same length as WINDOW. Each segment
%   is then weighted (pointwise multiplied) by WINDOW. If WINDOW is a
%   scalar, a Hamming window of length WINDOW is used. If WINDOW is omitted
%   or set as empty, a Hamming window is used. Multitaper-Welch estimates
%   are computed with the syntax SPOD(X,[NFFT BW],...), where WINDOW is an
%   array of two scalars. NFFT is the window length and BW the
%   time-halfbandwidth product. See [4] for details. By default, a number
%   of FLOOR(2*BW)-1 discrete prolate spheroidal sequences (DPSS) is used
%   as tapers. Custom tapers can be specified in a column matrix of tapers
%   as WINDOW.
%
%   [L,P,F] = SPOD(X,WINDOW,WEIGHT) uses a spatial inner product weight in
%   which the SPOD modes are optimally ranked and orthogonal at each
%   frequency. WEIGHT must have the same spatial dimensions as X. 
%
%   [L,P,F] = SPOD(X,WINDOW,WEIGHT,NOVERLAP) increases the number of
%   segments by overlapping consecutive blocks by NOVERLAP snapshots.
%   NOVERLAP defaults to 50% of the length of WINDOW if not specified. 
%
%   [L,P,F] = SPOD(X,WINDOW,WEIGHT,NOVERLAP,DT) uses the time step DT
%   between consecutive snapshots to determine a physical frequency F. 
%
%   [L,P,F] = SPOD(XFUN,...,OPTS) accepts a function handle XFUN that
%   provides the i-th snapshot as x(i) = XFUN(i). Like the data matrix X,
%   x(i) can have any dimension. It is recommended to specify the total
%   number of snaphots in OPTS.nt (see below). If not specified, OPTS.nt
%   defaults to 10000. OPTS.isreal should be specified if a two-sided
%   spectrum is desired even though the data is real-valued, or if the data
%   is initially real-valued, but complex-valued for later snaphots.
%
%   [L,P,F] = SPOD(X,WINDOW,WEIGHT,NOVERLAP,DT,OPTS) specifies options:
%   OPTS.savefft: save FFT blocks to avoid storing all data in memory [{false} | true]
%   OPTS.deletefft: delete FFT blocks after calculation is completed [{true} | false]
%   OPTS.savedir: directory where FFT blocks and results are saved [ string | {'results'}]
%   OPTS.savefreqs: save results for specified frequencies only [ vector | {all} ]
%   OPTS.loadfft: load previously saved FFT blocks instead of recalculating [{false} | true]
%   OPTS.mean: provide a mean that is subtracted from each snapshot [ array of size X | 'blockwise' | {temporal mean of X; 0 if XFUN} ]
%   OPTS.nsave: number of most energtic modes to be saved [ integer | {all} ]
%   OPTS.isreal: complex-valuedity of X or represented by XFUN [{determined from X or first snapshot if XFUN is used} | logical ]
%   OPTS.nt: number of snapshots [ integer | {determined from X; defaults to 10000 if XFUN is used}]
%   OPTS.conflvl: confidence interval level [ scalar between 0 and 1 | {0.95} ]
%   OPTS.normvar: normalize each block by pointwise variance [{false} | true]
%
%   [L,PFUN,F] = SPOD(...,OPTS) returns a function PFUN instead of the SPOD
%   data matrix P if OPTS.savefft is true. The function returns the j-th
%   most energetic SPOD mode at the i-th frequency as p = PFUN(i,j) by
%   reading the modes from the saved files. Saving the data on the hard
%   drive avoids memory problems when P is large. The modal energy spectra
%   are returned in L, and saved in a separate file 'spod_energy.mat'.
%
%   [L,P,F,Lc] = SPOD(...) returns the confidence interval Lc of L. By
%   default, the lower and upper 95% confidence levels of the j-th most
%   energetic SPOD mode at the i-th frequency are returned in Lc(i,j,1) and
%   Lc(i,j,2), respectively. The OPTS.conflvl*100% confidence interval is
%   returned if OPTS.conflvl is set. For example, by setting OPTS.conflvl =
%   0.99 we obtain the 99% confidence interval. A chi-squared distribution
%   is used, i.e. we assume a standard normal distribution of the SPOD
%   eigenvalues.
%
%   [L,P,F,Lc,A] = SPOD(...) returns the block-wise expansion coefficients
%   in A. INVSPOD(P,A,WINDOW,NOVLP) uses A to reconstruct the original data
%   from the SPOD.
%
%   References:
%     [1] Towne, A. and Schmidt, O. T. and Colonius, T., Spectral proper 
%         orthogonal decomposition and its relationship to dynamic mode
%         decomposition and resolvent analysis, J. of Fluid Mech. 847, 821–867, 2018
%     [2] Schmidt, O. T. and Towne, A. and Rigas, G. and Colonius, T. and 
%         Bres, G. A., Spectral analysis of jet turbulence, J. of Fluid Mech. 855, 953–982, 2018
%     [3] Lumley, J. L., Stochastic tools in turbulence, Academic Press, 
%         1970
%     [4] Schmidt, O. T., Spectral proper orthogonal decomposition using
%         multitaper estimates, Theoretical and Computational Fluid 
%         Dynamics, 2022, 1-14, DOI 10.1007/s00162-022-00626-x,
%         https://rdcu.be/cUtP3
%
% O. T. Schmidt (oschmidt@ucsd.edu), A. Towne, T. Colonius
% Last revision: 5-Sep-2022 (OTS)
% 21-Aug-2025 (B. Yeung)
%
% PATCH 2026-10-23 (Codebase_Patches, Schlieren_Processing_Scripts):
%   - opts.savefft = true: the block files are written as fft_block####.mat
%     (one per block, all frequencies), but the opts.loadfft check and the
%     clean-up looked for fft_block####_freq####.mat, so temporary files
%     were never reused or deleted. Both now use the real names.
%   - opts.savefft, snapshot branch: A was filled with all nSamples modes
%     (size mismatch when opts.nsave < nSamples). Now the first nsave, as in
%     memory.
%   - Classical (spatial) branch, used when nx < nSamples: A had an extra
%     sqrt(nBlks); with modes P = Theta, the coefficients are Theta^H Q_hat.
%     The savefft classical branch also loaded only nsave blocks.
%   - A uses sqrt(nIndep) (was sqrt(nBlks)), so Q_hat = P*A also holds with
%     multitaper or blockwise-mean SPOD (identical otherwise).
%   - opts.nsave is capped at the number of blocks (and points): more modes
%     than blocks don't exist, and asking for them errored.
%   - opts.savefreqs is honoured in memory too (only those frequencies are
%     decomposed; the rest of L, P, A stay zero). It only worked with savefft.
%   - New: opts.freq_batches (integer) or opts.max_memory_GB (budget for the
%     whole call). The block FFTs are recomputed for each batch of
%     frequencies and only that batch is kept, so the FFT blocks take
%     1/n_batches of the memory, with no temporary files. Results are
%     identical to one batch. A memory estimate is printed either way.
%     opts.max_memory_GB = "auto" sets the budget to 85% of what
%     available_memory_GB finds (MATLAB's use + free memory, capped by the
%     SLURM allocation or cgroup limit).
%   - X can be an integer array (e.g. int16 as stored): blocks are converted
%     to single as they are used, so no single-precision copy of all the
%     data is needed. The mean is accumulated in double in chunks.
%   - opts.savefft (temporary files) is kept for compatibility, but it reads
%     every block file in full for every frequency and leaves one
%     spod_f####.mat per frequency; prefer freq_batches / max_memory_GB.



if nargin==6
    opts = varargin{5};
    if ~isfield(opts,'savefft')
        opts.savefft = false;
    end
else
    opts.savefft = false;
end

% get problem dimensions
if isa(X, 'function_handle')
    xfun    = true;
    if isfield(opts,'nt')
        nt  = opts.nt;
    else
        warning(['Please specify number of snapshots in "opts.nt".' ...
        ' Trying to use default value of 10000 snapshots.'])
        nt  = 10000;
    end
    sizex   = size(X(1));
    nx      = prod(sizex);
    dim     = [nt sizex];
else 
    xfun    = false;
    dim     = size(X);
    nt      = dim(1);
    nx      = prod(dim(2:end));
end

% Determine whether data is real-valued or complex-valued to decide on one-
% or two-sided spectrum. If "opts.isreal" is not set, determine from data.
% If data is provided through a function handle XFUN and opts.isreal is not
% specified, deternime complex-valuedity from first snapshot.
if isfield(opts,'isreal')
    isrealx = opts.isreal;
elseif ~xfun
    isrealx = isreal(X);
else
    x1      = X(1);
    isrealx = isreal(x1);
    clear x1;
end

% get default spectral estimation parameters and options
[window,weight,nOvlp,dt,nDFT,nBlks,nTapers] = spod_parser(nt,nx,isrealx,varargin{:});
nSamples    = nBlks*nTapers;
                                        
% Use data mean if not provided through "opts.mean".
blk_mean    = false;
if isfield(opts,'mean')
    if strcmp('blockwise',opts.mean)
        blk_mean    = true;       
    end
end

if blk_mean
    mean_name   = 'blockwise mean';
elseif isfield(opts,'mean')
    x_mean      = opts.mean(:);
    mean_name   = 'user specified';
else
    switch xfun
        case true
            x_mean      = 0;
            warning('No mean subtracted. Consider providing long-time mean through "opts.mean" for better accuracy at low frequencies.');
            mean_name   = '0';
        case false
            % mean in double, a few thousand snapshots at a time (mean(X,1)
            % of a large integer array makes a double copy of all of it)
            x_mean      = zeros(nx,1);
            for t1 = 1:256:nt
                rows = t1:min(nt,t1+255);
                x_mean = x_mean + sum(X(rows,:),1,'double').';   % no double copy of the rows
            end
            x_mean      = x_mean/nt;
            mean_name   = 'data mean';
    end
end
disp(['Mean                      : ' mean_name]);

% obtain frequency axis
f = (0:nDFT-1)/dt/nDFT;
if isrealx
    f = (0:ceil(nDFT/2))/nDFT/dt;
else
    if mod(nDFT,2)==0
        f(nDFT/2+1:end) = f(nDFT/2+1:end)-1/dt;
    else
        f((nDFT+1)/2+1:end) = f((nDFT+1)/2+1:end)-1/dt;
    end
end
nFreq = length(f);

% set default for confidence interval 
if nargout>=4
    confint = true;
    if ~isfield(opts,'conflvl')
        opts.conflvl = 0.95;
    end
    xi2_upper   = 2*gammaincinv(1-opts.conflvl,nBlks);
    xi2_lower   = 2*gammaincinv(  opts.conflvl,nBlks);
    Lc          = zeros(nFreq,nBlks,2,'single');
else
    confint = false;
    Lc      = [];
end

% set defaults for options for saving FFT data blocks
if ~isfield(opts,'savefreqs'),  opts.savefreqs  = 1:nFreq;   end
if opts.savefft
    if ~isfield(opts,'savedir'),    opts.savedir   = pwd;           end
    saveDir = fullfile(opts.savedir,['nfft' num2str(nDFT) '_novlp' num2str(nOvlp) '_nblks' num2str(nSamples)]);
    if ~exist(saveDir,'dir'),       mkdir(saveDir);                 end
    if ~isfield(opts,'nsave'),      opts.nsave      = nSamples;     end   
    if ~isfield(opts,'deletefft'),  opts.deletefft  = true;         end    
    omitFreqIdx = 1:nFreq; omitFreqIdx(opts.savefreqs) = []; 
end 
if ~isfield(opts,'loadfft'),    opts.loadfft    = false;     end
if ~isfield(opts,'normvar'),    opts.normvar    = false;     end

% unbiased estimator of CSD
if blk_mean
    nIndep = nSamples-1;
else
    nIndep = nSamples;
end

%%% Determine if snapshot or classical POD is more efficient
do_snapshot = (nx>=nSamples);
nSamples_all = nSamples; % all blocks x tapers (nSamples is reused as the number of saved modes below)
fprintf("Nx = %i,Nblocks = %i\n",nx,nSamples);

if ~isfield(opts,'nsave')
    opts.nsave = min([nSamples,nx]);
else
    % PATCH 2026-10-23: no more modes than blocks (or points) exist; asking
    % for more (e.g. nsave = 4 with 3 blocks on a short record) errored
    opts.nsave = min([opts.nsave,nSamples,nx]);
end

% outputs
if ~do_snapshot
    fprintf("Using Classical POD rather than Snapshot\n");
    A = complex(zeros(nFreq,opts.nsave,nSamples,'single'));
    L   = zeros(nFreq,nx,'single');
    Lc = zeros(nFreq,nx,2,'single');
    nSamples = opts.nsave;
else
    A   = complex(zeros(nFreq,opts.nsave,nSamples,'single'));   %made it only save first n modes of A as well.
    L   = zeros(nFreq,nSamples,'single');
    Lc = zeros(nFreq,nSamples,2,'single');
end
if ~opts.savefft
    P   = complex(zeros(nFreq,nx,opts.nsave,'single'));
end

%%% Frequency batches (in memory only): the block FFTs are recomputed for
%%% each batch and only that batch's frequencies are kept, so Q_hat takes
%%% 1/n_batches of the memory and no temporary files are written.
data_bytes = 0;
if ~xfun
    data_bytes = numel(X)*bytes_per_element(X);
end
Q_bytes = numel(opts.savefreqs)*nx*nSamples_all*8;
P_bytes = nFreq*nx*opts.nsave*8;
work_bytes = 3*nDFT*nx*8;                           % block, windowed block and its FFT
if isfield(opts,'max_memory_GB') && (isstring(opts.max_memory_GB) || ischar(opts.max_memory_GB))
    % "auto": 85% of the memory MATLAB can reach (its use + what is free,
    % capped by the SLURM allocation / cgroup limit); the rest is headroom
    % for MATLAB itself and the caller's other variables
    if ~strcmpi(opts.max_memory_GB,'auto')
        error('spod: opts.max_memory_GB must be a number (GB) or "auto".');
    end
    [mem_total, mem_info] = available_memory_GB();
    if isnan(mem_total)
        warning('spod: could not read the available memory; using one frequency batch.');
        opts.max_memory_GB = 0;
    else
        opts.max_memory_GB = 0.85*mem_total;
        fprintf('Memory budget (auto): %.1f GB = 85%% of %.1f GB (%s)\n', ...
            opts.max_memory_GB, mem_total, mem_info.source);
    end
end
if opts.savefft
    n_batches = 1;
elseif isfield(opts,'freq_batches') && ~isempty(opts.freq_batches) && opts.freq_batches > 1
    n_batches = min(opts.freq_batches, numel(opts.savefreqs));
elseif isfield(opts,'max_memory_GB') && ~isempty(opts.max_memory_GB) && opts.max_memory_GB > 0
    avail = opts.max_memory_GB*1e9 - data_bytes - P_bytes - work_bytes;
    if avail <= 0
        error('spod: opts.max_memory_GB = %g is less than the data (%.1f GB) and modes (%.1f GB) need; nothing left for the FFT blocks.', ...
            opts.max_memory_GB, data_bytes/1e9, P_bytes/1e9);
    end
    n_batches = min(max(1, ceil(Q_bytes/avail)), numel(opts.savefreqs));
else
    n_batches = 1;
end
fprintf('Memory estimate: data %.1f GB, FFT blocks %.1f GB in %d batch(es) (%.1f GB each), modes %.1f GB\n', ...
    data_bytes/1e9, Q_bytes/1e9, n_batches, Q_bytes/n_batches/1e9, P_bytes/1e9);
batch_edges = round(linspace(0, numel(opts.savefreqs), n_batches+1));

for iBatch = 1:n_batches
batch_freqs = opts.savefreqs(batch_edges(iBatch)+1:batch_edges(iBatch+1));
if opts.savefft
    batch_freqs = 1:nFreq;                          % savefft writes all frequencies of each block
end
n_bf = numel(batch_freqs);

% loop over number of blocks and generate Fourier realizations
disp(' ')
if n_batches > 1
    fprintf('Calculating temporal DFT, frequency batch %d/%d (%d frequencies)\n', iBatch, n_batches, n_bf);
else
    disp('Calculating temporal DFT')
end
disp('------------------------------------')
if ~opts.savefft
    % Free the previous batch's FFT blocks first: assigning the new array
    % straight over Q_hat holds both for a moment (2 batches' worth). The
    % 'like' form allocates the complex array directly, without a real copy.
    clear Q_hat
    Q_hat = zeros(n_bf,nx,nSamples_all,'like',complex(single(0)));
end
Q_blk       = zeros(nDFT,nx,'single');
for iBlk    = 1:nBlks

    % check if all FFT files are pre-saved
    all_exist   = 0;
    if opts.loadfft
        for iTaper = 1:nTapers
            if ~isempty(dir(fullfile(saveDir,['fft_block' num2str(iBlk+((iTaper-1)*nBlks),'%.4i') '.mat'])))
                all_exist   = all_exist + 1;
            end
        end
    end
    if opts.loadfft && all_exist==nTapers
        disp(['loading FFT of block ' num2str(iBlk) '/' num2str(nBlks) ' from file'])
    else

        % get time index for present block
        offset                  = min((iBlk-1)*(nDFT-nOvlp)+nDFT,nt)-nDFT;
        timeIdx                 = (1:nDFT) + offset;
        % build present block
        if blk_mean, x_mean = 0; end
        if xfun
            for ti = timeIdx
                x                  = X(ti);
                Q_blk(ti-offset,:) = single(x(:)) - x_mean;
            end
        else
            Q_blk   = bsxfun(@minus,single(X(timeIdx,:)),single(x_mean.'));   % single() also for integer data
        end
        % if block mean is to be subtracted, do it now that all data is
        % collected
        if blk_mean
            Q_blk   = bsxfun(@minus,Q_blk,mean(Q_blk,1));
        end

        % normalize by pointwise variance
        if opts.normvar
            Q_var   = sum(bsxfun(@minus,Q_blk,mean(Q_blk,1)).^2,1)/(nDFT-1);
            % address division-by-0 problem with NaNs
            Q_var(Q_var<4*eps)  = 1;
            Q_blk   = bsxfun(@rdivide,Q_blk,Q_var);
        end

        for iTaper  = 1:nTapers
            iSample = iBlk+((iTaper-1)*nBlks);
            if nTapers>1
               taperString  = [', taper ' num2str(iTaper) '/' num2str(nTapers)];
            else
               taperString  = [];
            end
            disp(['block ' num2str(iBlk) '/' num2str(nBlks) taperString ' (snapshots ' ...
            num2str(timeIdx(1)) ':' num2str(timeIdx(end)) ')'])
            % window and Fourier transform block
            Q_blk_win               = bsxfun(@times,Q_blk,window(:,iTaper));
            Q_blk_hat               = sqrt(dt)*fft(Q_blk_win);
            if ~opts.savefft
                % keep this batch's frequencies of the FFT blocks in memory
                Q_hat(:,:,iSample)         = Q_blk_hat(batch_freqs,:);
            else
                % for iFreq = opts.savefreqs
                Q_blk_hat           = Q_blk_hat(1:nFreq,:);
                file = fullfile(saveDir,['fft_block' num2str([iSample],'%.4i')]);
                Q_blk_hat_fi        = single(Q_blk_hat(:,:));
                save(file,'Q_blk_hat_fi','-v7.3');
                % end
            end
        end
    end
end
clear Q_blk Q_blk_win Q_blk_hat

disp(' ')
if nTapers>1
    disp('Calculating Multitaper SPOD')
else
    disp('Calculating SPOD')
end
disp('------------------------------------')


if ~opts.savefft
    % keep everything in memory (default)
    for kf = 1:n_bf
        iFreq = batch_freqs(kf);
        disp(['frequency ' num2str(iFreq) '/' num2str(nFreq) ' (f=' num2str(f(iFreq),'%.3g') ')'])
        Q_hat_f             = reshape(Q_hat(kf,:,:),nx,nSamples_all);
        
        if do_snapshot
            M                   = Q_hat_f'*bsxfun(@times,Q_hat_f,weight)/nIndep;
            [Theta,Lambda]      = eig(M);
            Lambda              = diag(Lambda);
            [Lambda,idx]        = sort(Lambda,'descend');
            Theta               = Theta(:,idx);
            Psi                 = Q_hat_f*Theta(:,1:opts.nsave)*diag(1./sqrt(Lambda(1:opts.nsave))/sqrt(nIndep));
            P(iFreq,:,:)        = Psi(:,1:opts.nsave);
            A(iFreq,:,:)        = diag(sqrt(nIndep)*sqrt(Lambda(1:opts.nsave)))*Theta(:,1:opts.nsave)';
            L(iFreq,:)          = abs(Lambda);
            % adjust mode energies for one-sided spectrum
            if isrealx
                if iFreq~=1&&iFreq~=nFreq
                    L(iFreq,:)  = 2*L(iFreq,:);
                end
            end
            if confint
                Lc(iFreq,:,1)       = L(iFreq,:)*2*nIndep/xi2_lower;
                Lc(iFreq,:,2)       = L(iFreq,:)*2*nIndep/xi2_upper;
            end
        else
            M                   = Q_hat_f*bsxfun(@times,Q_hat_f,weight)'/nIndep;
            [Theta,Lambda]      = eig(M);
            Lambda              = diag(Lambda);
            [Lambda,idx]        = sort(Lambda,'descend');
            Theta               = Theta(:,idx);
            Psi                 = Theta(:,1:opts.nsave);
            P(iFreq,:,:)        = Psi(:,1:opts.nsave);
            A(iFreq,:,:)        = Theta(:,1:nSamples)'*Q_hat_f;
            L(iFreq,:)          = abs(Lambda);
            % adjust mode energies for one-sided spectrum
            if isrealx
                if iFreq~=1&&iFreq~=nFreq
                    L(iFreq,:)  = 2*L(iFreq,:);
                end
            end
            if confint
                Lc(iFreq,:,1)       = L(iFreq,:)*2*nIndep/xi2_lower;
                Lc(iFreq,:,2)       = L(iFreq,:)*2*nIndep/xi2_upper;
            end
        end
    end
else
    % save FFT blocks on hard drive (for large data)
    for iFreq = opts.savefreqs
        disp(['frequency ' num2str(iFreq) '/' num2str(nFreq) ' (f=' num2str(f(iFreq),'%.3g') ')'])
        % load FFT data from previously saved file
        Q_hat_f             = complex(zeros(nx,nSamples_all,'single'));
        for iBlk    = 1:nSamples_all
            file    = fullfile(saveDir,['fft_block' num2str([iBlk],'%.4i')]);
            load(file,'Q_blk_hat_fi');
            Q_hat_f(:,iBlk) = Q_blk_hat_fi(iFreq,:);
        end
        if do_snapshot
            M                   = Q_hat_f'*bsxfun(@times,Q_hat_f,weight)/nIndep;
            [Theta,Lambda]      = eig(M);
            Lambda              = diag(Lambda);
            [Lambda,idx]        = sort(Lambda,'descend');
            Theta               = Theta(:,idx);
            Psi                 = Q_hat_f*Theta*diag(1./sqrt(Lambda)/sqrt(nIndep));
            A(iFreq,:,:)        = diag(sqrt(nIndep)*sqrt(Lambda(1:opts.nsave)))*Theta(:,1:opts.nsave)';
            L(iFreq,:)          = abs(Lambda);
        else
            M                   = Q_hat_f*bsxfun(@times,Q_hat_f,weight)'/nIndep;
            [Theta,Lambda]      = eig(M);
            Lambda              = diag(Lambda);
            [Lambda,idx]        = sort(Lambda,'descend');
            Theta               = Theta(:,idx);
            Psi                 = Theta(:,1:opts.nsave);
            A(iFreq,:,:)        = Theta(:,1:nSamples)'*Q_hat_f;
            L(iFreq,:)          = abs(Lambda);
        end
        if opts.nsave>0
            Psi             = single(reshape(Psi(:,1:opts.nsave),[dim(2:end) opts.nsave]));
            file            = fullfile(saveDir,['spod_f' num2str(iFreq,'%.4i')]);
            save(file,'Psi','-v7.3');
        else
            Psi             = [];
        end
        
        % adjust mode energies for one-sided spectrum
        if isrealx
            if iFreq~=1&&iFreq~=nFreq
                L(iFreq,:)  = 2*L(iFreq,:);
            end
        end
        if confint
            Lc(iFreq,:,1)       = L(iFreq,:)*2*nIndep/xi2_lower;
            Lc(iFreq,:,2)       = L(iFreq,:)*2*nIndep/xi2_upper;          
        end
    end
    % return anonymous function that loads SPOD modes from files instead of
    % actual solution
    P   = @(iFreq,iMode) getmode(iFreq,iMode,saveDir);
    
    file            = fullfile(saveDir,'spod_energy');
    save(file,'L','Lc','f','A','-v7.3');
    
    % clean up
    if opts.deletefft
        for iBlk    = 1:nSamples_all
            file    = fullfile(saveDir,['fft_block' num2str(iBlk,'%.4i') '.mat']);
            if exist(file,'file') == 2
                delete(file);
            end
        end
    end
    
    disp(' ')
    disp(['Results saved in folder ' saveDir])
end
end % frequency batches
clear Q_hat
if ~opts.savefft
    P   = reshape(P,[nFreq dim(2:end) opts.nsave]);
end
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [P] = getmode(iFreq,iMode,saveDir)
%GETMODE Anonymous function that loads SPOD modes from files
file        = matfile(fullfile(saveDir,['spod_f' num2str(iFreq,'%.4i')]));
dim         = size(file.Psi);
for di = 1:length(dim)-1
    idx{di} = 1:dim(di);
end
idx{di+1}   = iMode;
P           = file.Psi(idx{:});
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [window,weight,nOvlp,dt,nDFT,nBlks,nTapers] = spod_parser(nt,nx,isrealx,varargin)
%SPOD_PARSER Parser for SPOD parameters

% read input arguments from cell array
window = []; weight = []; nOvlp = []; dt = [];
nvarargin = length(varargin);

if nvarargin >= 1
    window = varargin{1};
    if nvarargin >= 2
        weight   = varargin{2};
        if nvarargin >= 3
            nOvlp   = varargin{3};
            if nvarargin >= 4
                dt      = varargin{4};
            end
        end
    end
end

if size(window,2)>size(window,1) % ensure column matrix format 
    window = permute(window,[2 1]);
end

% check arguments and determine default spectral estimation parameters
% window size and type
if isempty(window)
    nDFT        = 2^floor(log2(nt/10));
    window      = hammwin(nDFT);
    window_name = 'Hamming';
elseif length(window)==1
    nDFT        = window;
    window      = hammwin(window);
    window_name = 'Hamming';
elseif length(window)==2
    nDFT        = window(1);
    bw          = window(2);
    nTapers     = floor(2*bw)-1;
    window      =  slepsec(nDFT,bw,nTapers);
    window_name = 'DPSS';    
elseif length(window) == 2^nextpow2(length(window))
    nDFT        = length(window);
    window_name = 'user specified';
else
    nDFT        = length(window);
    window_name = 'user specified';
end

% normalize window to unit power
if size(window,2)==1
    window = window/sqrt(sum(window.^2)); 
end

nTapers     = size(window,2);
weight      = weight(:);

% block overlap
if isempty(nOvlp)
    nOvlp = floor(nDFT/2);
elseif nOvlp > nDFT-1
    error('Overlap too large.')
end

% time step between consecutive snapshots
if isempty(dt)
    dt = 1;
end

% inner product weight
if isempty(weight)
    weight      = ones(nx,1);
    weight_name = 'uniform';
elseif numel(weight) ~= nx
    error('Weights must have the same spatial dimensions as data.');
else
    weight_name = 'user specified';
end

% number of blocks
nBlks = floor((nt-nOvlp)/(nDFT-nOvlp));

% test feasibility
if nDFT < 4 || nBlks*nTapers < 3
    error('Spectral estimation parameters not meaningful.');
end
    
% display parameter summary
disp(' ')
if nTapers>1
    disp('Multitaper SPOD parameters')
else
    disp('SPOD parameters')
end
disp('------------------------------------')
if isrealx
    disp('Spectrum type             : one-sided (real-valued signal)')
else
    disp('Spectrum type             : two-sided (complex-valued signal)')
end
disp(['No. of snaphots per block : ' num2str(nDFT)])
disp(['Block overlap             : ' num2str(nOvlp)])
disp(['No. of blocks             : ' num2str(nBlks)])
disp(['Windowing fct. (time)     : ' window_name])
disp(['Weighting fct. (space)    : ' weight_name])
if nTapers>1
    disp(['No. of tapers             : ' num2str(nTapers)])
end
if exist('bw','var')
    disp(['Time-halfbandwidth product: ' num2str(bw)])
end
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [window] = hammwin(N)
%HAMMWIN Standard Hamming window of lentgh N
    window = 0.54-0.46*cos(2*pi*(0:N-1)/(N-1))';
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [window] = slepsec(nDFT,bw,nTapers)
%SLEPSEC Discrete prolate spheroidal sequences of length nDFT and
%time-halfbandwidth product bw
    df      = bw/nDFT;
    j       = 1:nDFT-1;
    r1      = [df*2*pi, sin(2*pi*df*j)./j];
    S       = toeplitz(r1);
    [U,L]   = eig(S);
    [~,idx] = sort(diag(L),'descend');
    U       = U(:,idx);
    window  = U(:,1:nTapers);
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function b = bytes_per_element(X)
%BYTES_PER_ELEMENT bytes per element of numeric array X
switch class(X)
    case {'double','int64','uint64'}, b = 8;
    case {'single','int32','uint32'}, b = 4;
    case {'int16','uint16'}, b = 2;
    otherwise, b = 1;
end
if ~isreal(X), b = 2*b; end
end

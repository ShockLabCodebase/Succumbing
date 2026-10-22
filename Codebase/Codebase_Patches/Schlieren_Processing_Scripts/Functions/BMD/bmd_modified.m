function [L,P,f,idx,T] = bmd_modified(X,varargin)
% BMD Bispectreal Mode Decomposition
%
%          f2 or l
%             ^
%     ________|
%     |\      |\
%     |  \  7 |  \
%     | 6  \  | 8 /\
%     |      \| / 1  \
% ----+-------+-------+-> f1 or k
%      \  5 / |\      |
%        \/ 4 |  \  2 |
%          \  | 3  \  |
%            \|______\|
%             |
% Figure. Regions in the f1-f2 plane (select via OPTS.regions). Triads are
%         expressed as frequency triplets, {f1,f2,f1+f2}, or frequency
%         index triplets, (k,l,k+l).
%
%  [L,P,F,IDX] = BMD(X) returns the bispectral mode decomposition of the
%  data matrix X. The first dimension of X must be time (use PERMUTE if it
%  does not). X can have any number of additional spatial dimensions or
%  variable indices. The mode bispectrum is returned in L and the modes in
%  P. The spatial dimensions of the modes are identical to those of X. The
%  bispectral modes are stored in P(1,...) and the cross-frequency fields
%  in P(2,...). The second index of P is the triad index. IDX contains the
%  linear index corresponding to the row and column subscripts of the
%  frequency doublets. Refer to the examples for conversion from linear
%  index to frequency doublets using IDX (Matlab does not support sparse
%  arrays). F is the frequency vector. If DT is not specified, the
%  frequency index is returned in F. Although BMD(X) automatically chooses
%  default spectral estimation parameters, it is recommended to manually
%  specify problem-dependent parameters on a case-to-case basis.
%
%  [L,P,F,IDX] = BMD(X,WINDOW) uses a temporal window. If WINDOW is a
%  vector, X is divided into segments of the same length as WINDOW. Each
%  segment is then weighted (pointwise multiplied) by WINDOW. If WINDOW is
%  a scalar, a Hamming window of length WINDOW is used. If WINDOW is
%  omitted or empty, a Hamming window is used.
%
%  [L,P,F,IDX] = BMD(X,WINDOW,WEIGHT) uses a spatial inner product weight,
%  usually quadrature weights. WEIGHT must have the same spatial dimensions
%  as X.
%
%  [L,P,F,IDX] = BMD(X,WINDOW,WEIGHT,NOVERLAP) increases the number of
%  segments by overlapping consecutive blocks by NOVERLAP snapshots.
%  NOVERLAP defaults to 50% of the length of WINDOW if not specified.
%
%  [L,P,F,IDX] = BMD(X,WINDOW,WEIGHT,NOVERLAP,DT) uses the time step DT
%  between consecutive snapshots to determine a physical frequency F.
%
%  [L,P,F,IDX] = BMD(X,WINDOW,WEIGHT,NOVERLAP,DT,OPTS) specifies options:
%  OPTS.regions     regions of the bispectrum to compute, see figure
%                   above [vector | {[1 2]}]
%  OPTS.precision   compute BMD in single precision [true | {false}]
%  OPTS.mean        provide a mean that is subtracted from each
%                   snapshot [array of size X | {temporal mean of X}]
%  OPTS.solver      optimizer for x*Ax [{'MengiOverton'} | 'HeWatson' |
%                   'simpleit'] 
%  OPTS.tol         tolerance for optimizer [scalar | {1e-6}]
%  OPTS.nfreq       restrict computation to |l|,|k|<=OPTS.nfreq
%                   [integer | {all}] 
%  OPTS.nitmax      number of iterations to converge numerical radius 
%                   [integer | 500] 
%
%  References:
%   [1] Schmidt, O. T., Bispectral mode decomposition of nonlinear flows,
%       Nonlinear Dynamics, 2020
%       DOI 10.1007/s11071-020-06037-z
%       https://rdcu.be/cbg3D
%
% O. T. Schmidt (oschmidt@ucsd.edu)
% Last revision: 17-Aug-2023
%       - Mengi & Overton's (2005) globally convergent numerical radius
%       algorithm implemented by B. Yeung is now standard
%       - standard tolerance changed to 1e-6

single_prec     = false;
if nargin==6
    opts = varargin{5};
    if ~isfield(opts,'regions')
        opts.regions    = [1 2];
    end
    if isfield(opts,'precision')
        if strncmpi(opts.precision,'single',6)
            single_prec = true;
        end
    end
else
    opts.regions = [1 2];
end

% get problem dimensions
dim     = size(X);
nt      = dim(1);
nx      = prod(dim(2:end));

% get default spectral estimation parameters and options
[window,weight,nOvlp,dt,nDFT,nBlks] = parser(nt,nx,varargin{:});

% determine correction for FFT window gain
winWeight   = 1/mean(window);

% optimizers for x*Ax
if isfield(opts,'solver')
    switch opts.solver
        case {'MengiOverton','HeWatson','simpleIteration','eig'}
        otherwise
            error('Unknown solver.')
    end
else
    opts.solver = 'MengiOverton';
end

% number of iterations to converge numerical radius
if ~isfield(opts,'nitmax')
    opts.nitmax = 500;
end

% standard tolerance
if ~isfield(opts,'tol')
    opts.tol    = 1e-6;
end

% use long-time mean if provided
if isfield(opts,'mean')
    x_mean      = opts.mean;
    mean_name   = 'provided long-time mean';    
else
    x_mean      = mean(X,1);
    mean_name   = 'data mean';
end
x_mean      = x_mean(:);
disp(['Mean                      : ' mean_name]);

% obtain frequency axis
[f,nFreq,idx,f_idx,f1_idx,f2_idx,f3_idx] = faxes(nDFT,dt,opts);

nTriads = length(idx);

% loop over number of blocks and generate Fourier realizations
disp(' ')
disp('Calculating temporal DFT')
disp('------------------------------------')
% Keep only the frequencies that appear in a triad (f1, f2 or f3). Q_hat over all
% nDFT frequencies is complex double nDFT x nx x nBlks (~28 GB for 94k px,
% nfft 1024, 18 blocks); with opts.specfreq only a few rows are needed.
keep_freq = unique([f1_idx(:);f2_idx(:);f3_idx(:)]);
row_of    = zeros(nFreq,1);
row_of(keep_freq) = 1:numel(keep_freq);
Q_hat = complex(zeros(numel(keep_freq),nx,nBlks));
for iBlk = 1:nBlks
    % get time index for present block
    offset                  = min((iBlk-1)*(nDFT-nOvlp)+nDFT,nt)-nDFT;
    timeIdx                 = (1:nDFT) + offset;
    disp(['block ' num2str(iBlk) '/' num2str(nBlks) ' (' ...
        num2str(timeIdx(1)) ':' num2str(timeIdx(end)) ')'])
    % assemble present block and subtract mean
    Q_blk   = bsxfun(@minus,X(timeIdx,:),x_mean.');
    
    % window and Fourier transform block
    Q_blk                   = bsxfun(@times,Q_blk,window);
    Q_blk_hat               = winWeight/nDFT*fft(Q_blk);
    Q_blk_hat               = fftshift(Q_blk_hat,1);
    
    Q_hat(:,:,iBlk)         = Q_blk_hat(keep_freq,:);
end
clear X x Q_blk_hat Q_blk x_mean

% loop over all triads and calculate BMD
L      = nan(nFreq,nFreq);
if nargout>4
    T      = nan(nFreq,nFreq);
end
disp(' ')
disp('Calculating BMD')
disp('------------------------------------')

if ~isfield(opts,'bicoherence')
    opts.bicoherence = false; 
end
if ~isfield(opts,'threads')
    opts.threads = 1;
end

% if a pool already exists, close it
if ~isempty(gcp('nocreate'))
    delete(gcp('nocreate')); 
end
parpool('threads',opts.threads);

if single_prec
    Q_hat   = single(Q_hat);
end


spmd
    nTriads_local = floor(nTriads/spmdSize);
    if spmdIndex~=spmdSize
        triadIndices = (spmdIndex-1)*nTriads_local+(1:nTriads_local);
    else
        triadIndices = ((spmdIndex-1)*nTriads_local+1):nTriads;
    end

    for i=triadIndices
        disp(['(' num2str(f_idx(f1_idx(i))) ',' num2str(f_idx(f2_idx(i))) ',' num2str(f_idx(f3_idx(i))) ') (' num2str(i) '/' num2str(nTriads) ')'])
        Q_hat_f1            = squeeze(Q_hat(row_of(f1_idx(i)),:,:));
        Q_hat_f2            = squeeze(Q_hat(row_of(f2_idx(i)),:,:));
        Q_hat_f3            = squeeze(Q_hat(row_of(f3_idx(i)),:,:));
    
        Q_hat_f1f2          = Q_hat_f1.*Q_hat_f2;
    
        if ~opts.bicoherence
            norm_f1f2       = 1;
            norm_f3         = 1;
        else
            norm_f1f2       = sqrt(mean(diag(Q_hat_f1f2'*(Q_hat_f1f2.*weight))));
            norm_f3         = sqrt(mean(diag(Q_hat_f3'*(Q_hat_f3.*weight))));
        end
    
        B                   = Q_hat_f3'*bsxfun(@times,Q_hat_f1f2,weight)/nBlks/(norm_f1f2*norm_f3);
        
        % optimizer for x*Ax
        switch opts.solver
            case {'MengiOverton'}
                %  Mengi & Overton's algorithm
                [r,a]  = MengiOverton(B,opts.tol,opts.nitmax);
            case {'HeWatson'}
                %  He & Watson's sophisticated iteration
                [r,a]  = HeWatson(B,opts.tol,opts.nitmax);
            case {'simpleit'}
                %  Watson's simple iteration
                a      = rand(nBlks,1) + 1i*rand(nBlks,1); % random initial guess
                [r,a]  = simpleIteration(B,a);
            otherwise
                error('Unknown solver.')
        end
    
        L(f1_idx(i),f2_idx(i)) ...
                      = r;
    
        % energy transfer term
        % if nargout>4
        % T(f1_idx(i),f2_idx(i)) ...
        %               = real((Q_hat_f3*a)' * ((Q_hat_f1.*Q_hat_f2)*a))/nBlks;
        % end
    end

    L = spmdReduce(@addnan,L,1);

end
L = gather(L);
L = L{1};

disp("Produce top N spatial modes")

n_modes = min([1000,nTriads]);

if single_prec
    % P       = zeros(2,n_modes,nx,'single');
    P = cell(n_modes,1);
    Q_hat   = single(Q_hat);
else
    P = cell(n_modes,1);
    % P       = zeros(2,n_modes,nx);
end

%%% get top 1000 (or nTriads if less) values of L and their location to
%%% perform the mode shape analysis

[~,idx] = maxk(L(:),n_modes,'ComparisonMethod','abs');
[f1_idx,f2_idx] = ind2sub(size(L),idx);
f3_idx = [];
for jj = 1:length(f1_idx)
    f1plus2  = f_idx(f1_idx(jj))+f_idx(f2_idx(jj));
    f3_idx(jj) = find(f_idx == f1plus2);
end


spmd
    nTriads_local = floor(n_modes/spmdSize);
    if spmdIndex~=spmdSize
        n_modes_split = (spmdIndex-1)*nTriads_local+(1:nTriads_local);
    else
        n_modes_split = ((spmdIndex-1)*nTriads_local+1):n_modes;
    end

    for i=n_modes_split
        disp(['(' num2str(f_idx(f1_idx(i))) ',' num2str(f_idx(f2_idx(i))) ',' num2str(f_idx(f3_idx(i))) ') (' num2str(i) '/' num2str(n_modes) ')'])
        Q_hat_f1            = squeeze(Q_hat(row_of(f1_idx(i)),:,:));
        Q_hat_f2            = squeeze(Q_hat(row_of(f2_idx(i)),:,:));
        Q_hat_f3            = squeeze(Q_hat(row_of(f3_idx(i)),:,:));


        Q_hat_f1f2          = Q_hat_f1.*Q_hat_f2;

        if ~opts.bicoherence
            norm_f1f2       = 1;
            norm_f3         = 1;
        else
            norm_f1f2       = sqrt(mean(diag(Q_hat_f1f2'*(Q_hat_f1f2.*weight))));
            norm_f3         = sqrt(mean(diag(Q_hat_f3'*(Q_hat_f3.*weight))));
        end

        B                   = Q_hat_f3'*bsxfun(@times,Q_hat_f1f2,weight)/nBlks/(norm_f1f2*norm_f3);

        % optimizer for x*Ax
        switch opts.solver
            case {'MengiOverton'}
                %  Mengi & Overton's algorithm
                [r,a]  = MengiOverton(B,opts.tol,opts.nitmax);
            case {'HeWatson'}
                %  He & Watson's sophisticated iteration
                [r,a]  = HeWatson(B,opts.tol,opts.nitmax);
            case {'simpleit'}
                %  Watson's simple iteration
                a      = rand(nBlks,1) + 1i*rand(nBlks,1); % random initial guess
                [r,a]  = simpleIteration(B,a);
            otherwise
                error('Unknown solver.')
        end

        % i+j component
        Psi           = Q_hat_f3*a;
        Psi           = Psi/sqrt(Psi'*(Psi.*weight)); % normalize by inner product
        % P(1,i,:)      = Psi;
        P{i}(1,:)     = Psi;
    %     P{i}          = reshape(Psi,[1 dim(2:end) 1]);
        % i*j component
        % Psi           = (Q_hat_f1.*Q_hat_f2)*a;
        Psi           = Q_hat_f1f2*a;
        Psi           = Psi/sqrt(Psi'*(Psi.*weight)); % normalize by inner product
        % P(2,i,:)      = Psi;
        P{i}(2,:)     = Psi;

    end
    P = spmdReduce(@addcell,P,1);
end
P = gather(P);
P = P{1};

% P   = reshape(P,[2 nTriads dim(2:end) 1]);
P = cellfun(@(p) reshape(p,[2 dim(2:end) 1]),P,'uniformoutput',false);

P = cell2mat(P);
P = reshape(P,[2,size(P,1)/2,size(P,2),size(P,3)]);


delete(gcp('nocreate'))
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [window,weight,nOvlp,dt,nDFT,nBlks] = parser(nt,nx,varargin)
% PARSER Parser for BMD parameters

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

window = window(:); weight = weight(:);

% check arguments and determine default spectral estimation parameters
% window size and type
if isempty(window)
    nDFT        = 2^floor(log2(nt/5)); if nDFT>256, nDFT=256; end
    window      = hammwin(nDFT);
    window_name = 'Hamming';
elseif length(window)==1
    nDFT        = window;
    window      = hammwin(window);
    window_name = 'Hamming';
elseif length(window) == 2^nextpow2(length(window))
    nDFT        = length(window);
    window_name = 'user specified';
else
    nDFT        = length(window);
    window_name = 'user specified';
end

% block overlap
if isempty(nOvlp)
    nOvlp = floor(nDFT/2);
elseif nOvlp > nDFT-1
    error('Overlap too large.')
end

% time step between consecutive snapshots
if isempty(dt)
    dt = 1/nDFT;
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
if nDFT < 4 || nBlks < 2
    error('Spectral estimation parameters not meaningful.');
end

% display parameter summary
disp(' ')
disp('BMD parameters')
disp('------------------------------------')
disp(['No. of snaphots per block : ' num2str(nDFT)])
disp(['Block overlap             : ' num2str(nOvlp)])
disp(['No. of blocks             : ' num2str(nBlks)])
disp(['Windowing fct. (time)     : ' window_name])
disp(['Weighting fct. (space)    : ' weight_name])
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [window] = hammwin(N)
% HAMMWIN standard Hamming window of lenght N
window = 0.54-0.46*cos(2*pi*(0:N-1)/(N-1))';
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [w,z] = simpleIteration(A,z_0,tol)
% SIMPLEITERATION simple power iteration from He & Watson that is not
% guaranteed to find global optimum; small tolerences proposed in original
% paper tends to prevent convergence. 1e-8 works in most cases.
z       = z_0/sqrt(z_0'*z_0);
w       = Inf;
w_err   = Inf;
it_max  = 100;
it      = 0;
% tol   = 10*length(A)*eps*norm(A,1);
while w_err > tol
    
    w_old   = w;
    w       = z'*A*z;
    w_err   = abs(w-w_old);
    z       = w*A'*z + w'*A*z;
    z       = z/sqrt(z'*z);
    
    it      = it+1;
    if it>it_max, break, end
end
w       = z'*A*z;
% disp(['Watson's simple iteration required ' num2str(it) ' iterations.']);
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [w,z] = HeWatson(A,tol,nitmax)
% HEWATSON 'An Algorithm' from He & Watson (1997) that is guranteed to find
% the global optimum upon convergence
N       = size(A,1);
normA   = norm(A,1);
z       = rand(N,1) + 1i*rand(N,1);
lb      = 0;
ub      = normA;
Z       = zeros(N);
I       = eye(N);
S       = [A Z; Z I];

it  = 0;
while (ub-lb)>tol || it==0
    it = it + 1;
    
    [w,z]   = simpleIteration(A,z,tol);
    lb      = max(lb,abs(w));
    alpha   = lb + tol;
    R       = [2*alpha*I -A'; I Z];
    [V,D]   = eig(R,S);
    D       = diag(D);
    
    ucirc   = abs(abs(D)-1) < (sqrt(eps)*normA);
    if sum(ucirc)==0
        break
    elseif mod(it,100)==0
        disp(['He & Watson algorithm did not converge in ' num2str(it) ' iterations! Trying new initial guess...']);
        z       = rand(N,1) + 1i*rand(N,1);
    elseif it>=nitmax
        disp(['He & Watson algorithm did not converge in ' num2str(it) ' iterations!']);
        break
    else
        idx = find(ucirc==1);
        z   = V(end-N+1:end,idx(1));
    end
end
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [w,z] = MengiOverton(A,tol,nitmax)
% MENGIOVERTON level-set algorithm from Mengi & Overton (2005) that is
% globally convergent
%
% B. Yeung (byeung@ucsd.edu)
% Last revision: 2023-08-16

N       = size(A,1);
normA   = norm(A,1);
Z       = zeros(N);
I       = eye(N);
S       = [A Z; Z I];

it = 0;
phi = 0;
while ~isempty(phi)
    w_temp = maxFOV(A,phi);
    [w,idx] = max(w_temp);
    phi_max = phi(idx);
    
    w = w*(1+tol);
    R       = [2*w*I -A'; I Z];
    [~,D]   = eig(R,S,'vector');
    isunimod   = abs(abs(D)-1) <= (sqrt(eps)*normA);
    Dunimod = D(isunimod);
    thetaprime = angle(Dunimod);
    theta = [];
    for i = 1:length(thetaprime)
        if abs(maxFOV(A,thetaprime(i))-w)<=sqrt(eps)*w
            theta = [theta; thetaprime(i)];
        end
    end
    theta = unique(theta);
    phi = [];
    for i=1:length(theta)
        lb = theta(i);
        if i<length(theta)
            ub = theta(i+1);
            mid = (lb+ub)/2;
        else
            ub = theta(1);
            mid = mod((lb+ub+2*pi)/2,2*pi);
        end
        if maxFOV(A,mid)>w
            phi = [phi; mid];
        end
    end
    it = it+1;
    if it>=nitmax
        disp(['Mengi & Overton algorithm did not converge in ' num2str(it) ' iterations!']);
        break
    end
end
B = A*exp(1i*phi_max);
H = (B+B')/2;
[V,D] = eig(H,'vector');
[~,idx] = max(abs(D));
z = V(:,idx);

% reconstruct complex w
w = z'*A*z;
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function lmax = maxFOV(A,theta)
% MAXFOV maximum field of value of matrix A at angle theta
ntheta = length(theta);
lmax = zeros(ntheta,1);
for i = 1:ntheta
    A_rot = A*exp(1i*theta(i));
    H = 0.5*(A_rot+A_rot');
    lmax(i) = max(abs(eig(H)));
end
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [f,nFreq,idx,f_idx,f1_idx,f2_idx,f3_idx] = faxes(nDFT,dt,opts)
    % FAXES obtain frequency axes and indices
    f_idx = (0:nDFT-1);
    if mod(nDFT,2)==0
        f_idx(nDFT/2+1:end)     = f_idx(nDFT/2+1:end)-nDFT;
    else
        f_idx((nDFT+1)/2+1:end) = f_idx((nDFT+1)/2+1:end)-nDFT;
    end
    f_idx   = fftshift(f_idx);
    f       = f_idx/dt/nDFT;
    
    
    
    if isfield(opts,'nfreq')
        fNyq_idx= -f_idx(1);
        f_idx_max   = f_idx(find(abs(f-opts.nfreq) == min(abs(f-opts.nfreq))));
    else
        fNyq_idx= -f_idx(1);
        f_idx_max   = fNyq_idx;
    end
    
    nFreq   = numel(f_idx);
    
    region  = nan(nFreq,nFreq);
    idx     = nan(nFreq^2,1);
    f1_idx  = idx;
    f2_idx  = idx;
    f3_idx  = idx;
    count   = 0;
    for i=1:nFreq
        for j=1:nFreq
            f1plus2  = f_idx(i)+f_idx(j);
            if abs(f1plus2)<fNyq_idx && abs(f_idx(i))<=f_idx_max && abs(f_idx(j))<=f_idx_max
                if sum(opts.regions==1)>0 && f_idx(i)>=0 && f_idx(j)>=0 && f_idx(i)>=f_idx(j)            % region #1
                    region(i,j)     = 1;
                end
                if sum(opts.regions==2)>0 && f_idx(i)>=0 && f_idx(j)<=0 && f_idx(i)>=abs(f_idx(j))       % region #2
                    region(i,j)     = 2;
                end
                if sum(opts.regions==3)>0 && f_idx(i)>=0 && f_idx(j)<=0 && f_idx(i)<=abs(f_idx(j))       % region #3
                    region(i,j)     = 3;
                end
                if sum(opts.regions==4)>0 && f_idx(i)<=0 && f_idx(j)<=0 && f_idx(i)>=(f_idx(j))          % region #4
                    region(i,j)     = 4;
                end
                if sum(opts.regions==5)>0 && f_idx(i)<=0 && f_idx(j)<=0 && f_idx(i)<=f_idx(j)            % region #5
                    region(i,j)     = 5;
                end
                if sum(opts.regions==6)>0 && f_idx(i)<=0 && f_idx(j)>=0 && abs(f_idx(i))>=f_idx(j)       % region #6
                    region(i,j)     = 6;
                end
                if sum(opts.regions==7)>0 && f_idx(i)<=0 && f_idx(j)>=0 && abs(f_idx(i))<=f_idx(j)       % region #7
                    region(i,j)     = 7;
                end
                if sum(opts.regions==8)>0 && f_idx(i)>=0 && f_idx(j)>=0 && f_idx(i)<=f_idx(j)            % region #8
                    region(i,j)     = 8;
                end
            end
            
            if ~isnan(region(i,j))
                count           = count + 1;
                idx(count)      = sub2ind([nFreq nFreq],i,j);
                f1_idx(count)   = i;
                f2_idx(count)   = j;
                f3_idx(count)   = find(f_idx==f1plus2);
            end
        end
    end

    f1_idx  = f1_idx(1:count);
    f2_idx  = f2_idx(1:count);
    f3_idx  = f3_idx(1:count);
    idx     = idx(1:count);

    if isfield(opts,'specfreq')
        fNyq_idx= -f_idx(1);
        for ii = 1:length(opts.specfreq)
            f_idx_max(ii) = f_idx(find(abs(f-opts.specfreq(ii)) == min(abs(f-opts.specfreq(ii)))));
        end
        nFreq   = numel(f_idx);
        
        region  = nan(nFreq,nFreq);
        idx     = nan(nFreq^2,1);
        f1_idx  = idx;
        f2_idx  = idx;
        f3_idx  = idx;
        count   = 0;
        for i=1:nFreq
            for j=1:nFreq
                f1plus2  = f_idx(i)+f_idx(j);
                if abs(f1plus2)<fNyq_idx && ismember(abs(f_idx(i)),f_idx_max) && ismember(abs(f_idx(j)),f_idx_max)
                    if sum(opts.regions==1)>0 && f_idx(i)>=0 && f_idx(j)>=0 && f_idx(i)>=f_idx(j)            % region #1
                        region(i,j)     = 1;
                    end
                    if sum(opts.regions==2)>0 && f_idx(i)>=0 && f_idx(j)<=0 && f_idx(i)>=abs(f_idx(j))       % region #2
                        region(i,j)     = 2;
                    end
                    if sum(opts.regions==3)>0 && f_idx(i)>=0 && f_idx(j)<=0 && f_idx(i)<=abs(f_idx(j))       % region #3
                        region(i,j)     = 3;
                    end
                    if sum(opts.regions==4)>0 && f_idx(i)<=0 && f_idx(j)<=0 && f_idx(i)>=(f_idx(j))          % region #4
                        region(i,j)     = 4;
                    end
                    if sum(opts.regions==5)>0 && f_idx(i)<=0 && f_idx(j)<=0 && f_idx(i)<=f_idx(j)            % region #5
                        region(i,j)     = 5;
                    end
                    if sum(opts.regions==6)>0 && f_idx(i)<=0 && f_idx(j)>=0 && abs(f_idx(i))>=f_idx(j)       % region #6
                        region(i,j)     = 6;
                    end
                    if sum(opts.regions==7)>0 && f_idx(i)<=0 && f_idx(j)>=0 && abs(f_idx(i))<=f_idx(j)       % region #7
                        region(i,j)     = 7;
                    end
                    if sum(opts.regions==8)>0 && f_idx(i)>=0 && f_idx(j)>=0 && f_idx(i)<=f_idx(j)            % region #8
                        region(i,j)     = 8;
                    end
                end
                
                if ~isnan(region(i,j))
                    count           = count + 1;
                    idx(count)      = sub2ind([nFreq nFreq],i,j);
                    f1_idx(count)   = i;
                    f2_idx(count)   = j;
                    f3_idx(count)   = find(f_idx==f1plus2);
                end
            end
        end
        f1_idx  = f1_idx(1:count);
        f2_idx  = f2_idx(1:count);
        f3_idx  = f3_idx(1:count);
        idx     = idx(1:count);
    end

end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function b = addnan(a,b)
%ADDNAN consolidates non-NaN elements in arrays a and b into b

b(~isnan(a)) = a(~isnan(a));

end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function b = addcell(a,b)
%ADDCELL consolidates non-empty cells in cell arrays a and b into b

b(~cellfun(@isempty,a)) = a(~cellfun(@isempty,a));

end
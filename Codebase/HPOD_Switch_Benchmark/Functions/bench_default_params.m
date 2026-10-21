function p = bench_default_params(quick)
%%% Default parameters for the synthetic switch benchmark.
%%%
%%% Units: time in samples (fs = 1), frequency in cycles per sample, x in grid
%%% points. Tone A is at f0, tone B at f0*(1 + delta). Both are wavepackets
%%% advecting at the same speed c (non-dispersive), so k = 2*pi*f/c.
%%%
%%% quick (optional, default false): a small grid for a fast check of the
%%% whole chain (one tone spacing, one SNR, one field of view, two bands).

if nargin < 1
    quick = false;
end

%% Signal
p.f0 = 0.1;                     % tone A frequency (10 samples per period)
p.deltas = [0.10 0.005];        % relative tone spacing: A1/A2-like and twin-jet-like
p.ppw = 8;                      % grid points per wavelength of tone A
p.env_sigma_lambda = 4;         % Gaussian envelope std, in wavelengths of tone A
p.env_shift_lambda = 0;         % shift of tone B's envelope (0 = same spatial support)
p.r_coexist = 0.6;              % amplitude of tone B relative to A in coexistence
p.ramp_periods = 2;             % switch ramp duration (Hann ramp), in periods of tone A
p.phase_jitter = 0;             % random-walk phase noise per sample (rad); 0 = pure tones
p.n_repeat = 2;                 % repeats of the schedule (more switches per dwell)

%% Schedule: {state, dwell in beat periods T_b = 1/(delta*f0)}
% States: 'A', 'B', 'AB' (coexistence, B at r_coexist), 'off'. The first and
% last entries are padding that the edge trims eat into.
p.schedule = {'A',4; 'B',6; 'A',6; 'B',3; 'A',3; 'B',1.5; 'A',1.5; ...
    'B',0.75; 'A',0.75; 'B',0.375; 'A',0.375; 'B',3; 'AB',6; 'B',3; ...
    'off',3; 'A',4};

%% Sweeps
p.snr_dB = [20 10 0];           % per-point SNR: tone power / noise power at the envelope centre
p.L_lambda = [4 8 16];          % field-of-view length, in wavelengths of tone A
p.L_point = 8;                  % field of view at which the point methods are scored
p.B_over_df = [0.5 1 2 4 8];    % narrow-banding bandwidth B, as a multiple of delta*f0

%% SPOD and HPOD
p.nfft_factor = 4;              % nfft = 2^nextpow2(nfft_factor/(delta*f0))
p.overlap = 87.5;               % SPOD block overlap (%), as recommended for the pipeline
p.n_modes_keep = 8;             % SPOD modes stored per frequency
p.n_modes_recon = 2;            % SPOD modes used in the reconstruction (group default)
p.n_hpod_modes = 4;             % HPOD modes kept
p.hpod_trim_frac = 0.05;        % record fraction excluded at each end when building HPOD modes

%% Instantaneous frequency
p.if_window_factor = 1;         % phase line-fit window W = if_window_factor/B_band (samples)
p.if_window_min_periods = 2;    % lower limit on W, in periods of tone A
p.morlet_w0 = 6;                % default Morlet (relative bandwidth 1/w0)

%% Scoring
p.res_lo = 0.25;                % "resolved switch": state indicator must pass below res_lo ...
p.res_hi = 0.75;                % ... and above res_hi around the switch
p.coexist_band = [0.08 0.92];   % power fraction counted as "both present"
p.if_min_dwell = 6;             % only segments at least this long (T_b) enter the IF statistics

%% Output
p.seed = 1;
p.save_folder = "Results";
p.do_plots = true;

if quick
    p.deltas = 0.10;
    p.snr_dB = 10;
    p.L_lambda = 8;
    p.B_over_df = [1 4];
    p.n_repeat = 1;
end
end

function cfg = hpodinv_config(root)
%%% Paths and parameters for the A1/A2 isolation study (HPOD_Investigation).
%%% root (optional): override of the study folder (local tests).

if nargin < 1 || isempty(root)
    root = "/fs04/scratch2/ty79/JWeightman/Schlieren/HPOD_Investigation";
end
cfg.root = string(root);
cfg.data_file = "/fs04/scratch2/ty79/JWeightman/Schlieren/Large_Test/Data/Axisymmetric_16mm_Medium_Lip_NPR_2199_Fields.mat";
cfg.spod_file = "/fs04/scratch2/ty79/JWeightman/Schlieren/Large_Test/SPOD_Results/Data/Axisymmetric_16mm_Medium_Lip_NPR_2199_Nt_400k_Nfft_4096_ovlp_50.0.mat";
cfg.data_dir = fullfile(cfg.root, "Data");
cfg.fig_dir = fullfile(cfg.root, "Figures");
cfg.proj_file = fullfile(cfg.data_dir, "projections.mat");

%% Stage 1: SPOD bins and modes the data are projected onto
cfg.St_bands = [0    0.03;    % short-time mean (St ~ 0)
                0.03 0.16;    % difference interaction A2 - A1 (St ~ 0.09)
                0.50 0.80;    % the two tones A1, A2 and their neighbours
                1.15 1.45];   % harmonics 2A1, 2A2 and the sum A1 + A2
cfg.n_modes = 4;              % SPOD modes per bin
cfg.chunk = 2000;             % frames read at a time
cfg.probe_xD = [1 2 3 4 5 6 8];   % lipline probes at these x/D ...
cfg.probe_yD = 0.5;               % ... and y/D = -/+ this

%% Tones
cfg.St_tone_guess = [0.606 0.695];   % A1, A2 (Mazharmanesh et al. 2026, NPR 2.20)
cfg.tone_search = 0.01;              % refine to the mode-1 SPOD peak within +/- this St

%% Isolation tests (stage 2)
cfg.B_rel = [0.25 0.5 1];      % band width as a fraction of df = f2 - f1
cfg.B_ref = 0.5;               % reference band for the cross-method comparisons
cfg.modes_per_bin = [1 2 4];   % SPOD modes per bin in the band reconstruction
cfg.modes_ref = 2;
cfg.if_min_periods = 2;        % IF line-fit window lower limit (periods of the tone)
cfg.rho_lo = 0.2;              % state A1 when rho = a2^2/(a1^2 + a2^2) < rho_lo,
cfg.rho_hi = 0.8;              % state A2 when rho > rho_hi (hysteresis between)
cfg.off_level = 0.25;          % "off": both normalised amplitudes below this
cfg.long_dwell_Tb = 20;        % dwells at least this long (beat periods) for IF statistics

%% Positive controls (stage 3)
cfg.ctrl_schedule = {'B',6; 'A',6; 'B',3; 'A',3; 'B',1.5; 'A',1.5; 'B',0.75; 'A',0.75; ...
    'B',0.375; 'A',0.375; 'B',6; 'AB',6; 'B',6; 'A',6};   % dwells in beat periods
cfg.ctrl_repeats = 25;
cfg.ctrl_r = 0.6;              % weaker-tone amplitude in coexistence segments
cfg.ctrl_ramp_periods = 2;     % cross-fade length (periods of A1)
cfg.ctrl_pool_rho = 0.1;       % pool segments: rho below this (A1) or above 1 - this (A2) throughout

%% Interactions (stage 4)
cfg.BD_rel = [0.25 0.5];       % difference-band widths (fraction of df)
cfg.n_surrogates = 200;
cfg.seed = 1;

%% Targeted BMD (stage 7)
cfg.bmd_fast_maps = strcmp(getenv('BMD_FAST'), '1');   % maps by Watson's iteration (about 15x faster)
end

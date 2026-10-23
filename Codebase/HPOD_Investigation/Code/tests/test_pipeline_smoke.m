%%% Runs stages 2-5 on the synthetic record written by test_projection_routes
%%% (run that first), with small settings, to check the whole chain.

clear; close all
here = fileparts(mfilename('fullpath'));
addpath(fullfile(here, '..', 'Functions')); addpath(fullfile(here, '..'));
root = fullfile(tempdir, 'hpodinv_test');
cfg = hpodinv_config(root);
cfg.data_file = fullfile(root, 'Synthetic_Fields.mat');
cfg.spod_file = fullfile(root, 'Synthetic_SPOD.mat');
cfg.ctrl_repeats = 4;
cfg.n_surrogates = 20;
cfg.long_dwell_Tb = 5;
stage2_isolation(cfg);
stage3_controls(cfg);
stage4_interactions(cfg);
stage5_figures(cfg);
disp(dir(cfg.fig_dir));

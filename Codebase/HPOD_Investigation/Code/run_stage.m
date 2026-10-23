function run_stage(stages, root)
%%% Runs the study's stages in order: 1 projection pass, 2 isolation on the
%%% real record, 3 positive controls, 4 interactions, 5 figures, 6 follow-up checks, 7 targeted BMD.
%%% root (optional): study folder (default in hpodinv_config).

here = fileparts(mfilename('fullpath'));
addpath(here, fullfile(here, 'Functions'));
if nargin < 2, root = []; end
cfg = hpodinv_config(root);
fns = {@stage1_project, @stage2_isolation, @stage3_controls, @stage4_interactions, @stage5_figures, @stage6_checks, @stage7_bmd};
for s = stages
    fprintf("=== stage %d start %s\n", s, string(datetime("now")));
    fns{s}(cfg);
    fprintf("=== stage %d done %s\n", s, string(datetime("now")));
end
end

%%% Full benchmark sweeps with each band reconstruction, written to
%%% Results_invspod/ and Results_conv/ (so quick runs, which write to
%%% Results/, cannot overwrite them). Compare them with compare_runs.m.
%%% Set recons before running to do just one, e.g. recons = "conv".

if ~exist("recons", "var")
    recons = ["invspod" "conv"];
end
for rc = recons
    clearvars -except recons rc
    overrides.recon = rc;
    overrides.save_folder = "Results_" + rc;
    run_switch_benchmark
end

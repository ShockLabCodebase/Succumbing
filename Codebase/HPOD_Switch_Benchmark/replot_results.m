%%% Redraws the figures from a saved run (Results/switch_benchmark_results.mat)
%%% without rerunning the benchmark.

clear; close all
addpath(genpath("Functions"));
load(fullfile("Results", "switch_benchmark_results.mat"), "T_sum", "T_sw", "p", "ex");
plot_example_traces(ex, p);
plot_sweep_results(T_sum, T_sw, p);

%% Half_Slices_Hilbert_POD_Analysis.m
% Compares the Hilbert POD of the two halves of a twin jet (or any field split
% about its axis): instantaneous amplitude, frequency/St, the relative phase
% psi_{1,2} = phase_1 - phase_2 and the amplitude imbalance
% beta_{1,2} = (A_1 - A_2)/(A_1 + A_2).
%
% WORKFLOW:
%   1. Functions/Misc/Generate_Twin_Half_Slices_POD_HPOD_Fields.m:
%      <case>_Fields.mat -> <case>_Half_1_Fields.mat, <case>_Half_2_Fields.mat
%   2. Hilbert_POD_Analysis.m with use_reconstructed_data = false (or on
%      reconstructed halves) -> POD_Results/Hilbert/Data/<case>_Half_1/2_Hilbert_POD_Modes.mat
%   3. This script -> POD_Results/Hilbert/Figures/Comparison_Frequency_Analysis/
%                     POD_Results/Hilbert/Comparison/Data/<case>_Half_Comparison.mat
%
% The mode of half 2 is rotated to best match half 1 (correct_phase_between_halves)
% before psi is taken, so psi = 0 means the two halves oscillate with the same
% spatial pattern at the same time, psi = pi in antiphase.
%
% PATCH 2026-10-23 (Codebase_Patches), rewritten from the repo version:
%   - Finds files with the usual Top_folders / parent / main folder search
%     (pod_folder was a hard-coded M:\ path).
%   - St uses D_j and u_j from get_ideal_jet_velocity_diameter (was D/u_j);
%     Mach cases work (NPR was parsed from the name only, assuming NPR < 10).
%   - The time vector fallback used an undefined mode_inst_phase.
%   - wrapToPi (Mapping Toolbox) replaced by angle(exp(1i*x)).
%   - psi, beta, f, A and theta_shift are saved, not only plotted.
%   - correct_phase_between_halves is patched: its phase shift had the wrong
%     sign for the corrected Hilbert POD modes (psi was offset by 2*theta),
%     and its direction checks could conjugate modes at random.
%   - The exploratory code after 'return' (hard-coded paths, ImageJ) is not
%     carried over; it is still in the repo version.

clear all
close all

addpath(genpath("Functions"))

sCMRmap = CMRmap;
cmap = pogmap;

using_MASSIVE = 1-ispc;
using_Market = false;

Top_folders = "/home/jweightman/qk75_scratch2/JWeightman/";   % root containing parent folders
save_folder_outer = "/home/jweightman/qk75_scratch2/JWeightman/";
parent_folder_str = "*Schliere*";
main_folder_str = "*ONR*";

ROI = false;          % true: compare the *_ROI_* HPOD files instead
half_1_m = 1;         % HPOD mode of half 1 to compare
half_2_m = 1;         % HPOD mode of half 2 to compare
do_subsection = false; subsection_t = [0.3, 1.2];  % optional zoomed copies of the time plots [s]

[parent_folders, save_folders] = get_parent_path(Top_folders,parent_folder_str,save_folder_outer,using_MASSIVE,using_Market);

for m = 1:length(parent_folders)
    parent_folder = fullfile(parent_folders(m).folder,parent_folders(m).name);
    save_folder_upper = fullfile(save_folders(m).folder,save_folders(m).name);
    main_folders = match_folders(parent_folder,main_folder_str);

    for k = 1:length(main_folders)
        pod_folder = fullfile(save_folder_upper,main_folders(k).name,'POD_Results','Hilbert','Data');
        save_folder = fullfile(save_folder_upper,main_folders(k).name,'POD_Results','Hilbert','Figures','Comparison_Frequency_Analysis');
        data_folder = fullfile(save_folder_upper,main_folders(k).name,'POD_Results','Hilbert','Comparison','Data');

        filenames = dir(fullfile(pod_folder,'*_Half_1_*Hilbert_POD_Modes.mat'));
        filenames = filenames(contains({filenames.name},'_ROI_') == ROI);
        if isempty(filenames)
            warning("No *_Half_1_*Hilbert_POD_Modes.mat files in %s (run Generate_Twin_Half_Slices_POD_HPOD_Fields, then Hilbert_POD_Analysis)", pod_folder);
            continue
        end
        mkdir(save_folder); mkdir(data_folder);

        for i = 1:length(filenames)

            filename = filenames(i).name;
            disp(filename)
            case_condition = extractBefore(filename,'Hilbert_POD_Modes');   % "<case>_Half_1_"
            condition = extractBefore(filename,'_Half_1_');
            load_file1 = fullfile(pod_folder,filename);
            load_file2 = fullfile(pod_folder,strrep(filename,'_Half_1_','_Half_2_'));
            if ~isfile(load_file2)
                warning("No half 2 file for %s; skipping", filename);
                continue
            end

            %% Flow condition and St scaling
            using_npr = contains(condition,'_NPR_');
            [~, param, param_factor] = get_filename_params(using_npr, {condition});
            file1 = matfile(load_file1);
            file2 = matfile(load_file2);
            D = file1.D;
            [u_j, D_j] = get_ideal_jet_velocity_diameter(using_npr, param, param_factor, D);
            St_factor = (D_j*1e-3)/u_j;

            %% Mode and coefficients of each half
            mode_inst_phase_half_1 = file1.mode_inst_phase(:,half_1_m);
            mode_inst_amp_half_1 = file1.mode_inst_amp(:,half_1_m);
            mode_inst_freq_half_1 = file1.mode_inst_freq(:,half_1_m);
            a_n_complex_half_1 = file1.a_n_complex(:,half_1_m);
            POD_mode_half_1 = file1.POD_modes(:,:,half_1_m);

            mode_inst_phase_half_2 = file2.mode_inst_phase(:,half_2_m);
            mode_inst_amp_half_2 = file2.mode_inst_amp(:,half_2_m);
            mode_inst_freq_half_2 = file2.mode_inst_freq(:,half_2_m);
            a_n_complex_half_2 = file2.a_n_complex(:,half_2_m);
            POD_mode_half_2 = file2.POD_modes(:,:,half_2_m);

            if ~isequal(size(POD_mode_half_1),size(POD_mode_half_2))
                warning("The halves of %s have different sizes (%s vs %s); regenerate them with the patched Generate_Twin_Half_Slices_POD_HPOD_Fields. Skipping.", ...
                    condition, mat2str(size(POD_mode_half_1)), mat2str(size(POD_mode_half_2)));
                continue
            end

            half_plane = true;
            [mode_inst_phase_half_1,mode_inst_phase_half_2,POD_mode_half_1,POD_mode_half_2,a_n_complex_half_1,a_n_complex_half_2,theta_shift] = ...
                correct_phase_between_halves(POD_mode_half_1,POD_mode_half_2,a_n_complex_half_1,a_n_complex_half_2,mode_inst_phase_half_1,mode_inst_phase_half_2,half_plane);

            fps = file1.fps;
            dt = file1.dt;
            if ismember('t', who(file1))
                t = file1.t;
            else
                t = ((1:size(mode_inst_phase_half_1,1))-1).*dt;
            end
            t = t(:);

            amp_half_1 = mode_inst_amp_half_1;
            amp_half_2 = mode_inst_amp_half_2;
            freq_half_1 = abs(mode_inst_freq_half_1(:,1));
            freq_half_2 = abs(mode_inst_freq_half_2(:,1));

            %% Relative phase and amplitude imbalance
            psi = angle(exp(1i*(mode_inst_phase_half_1(:,1) - mode_inst_phase_half_2(:,1))));  % wrapped to (-pi, pi]
            beta = (amp_half_1-amp_half_2)./(amp_half_1+amp_half_2);
            freq_difference = freq_half_1 - freq_half_2;
            psi_mean = angle(mean(exp(1i*psi)));             % circular mean
            psi_R = abs(mean(exp(1i*psi)));                  % phase locking: 1 = constant psi, 0 = uniform

            save(fullfile(data_folder,[condition,'_Half_Comparison.mat']), 't','psi','beta','freq_half_1','freq_half_2', ...
                'amp_half_1','amp_half_2','freq_difference','psi_mean','psi_R','theta_shift','St_factor','fps','D','D_j','u_j', ...
                'half_1_m','half_2_m','-v7.3');
            fprintf('%s: mean psi = %.2f rad, locking R = %.2f, mean beta = %.3f, mean df = %.1f Hz\n', condition, psi_mean, psi_R, mean(beta), mean(freq_difference));

            %% Figures
            edge = min(500, floor(numel(freq_half_1)/10));
            f_all = [freq_half_1(edge+1:end-edge); freq_half_2(edge+1:end-edge)];
            f_low = prctile(f_all,0.1)/1.02;
            f_high = prctile(f_all,99.9)*1.025;

            plot_pair(t, amp_half_1, amp_half_2, [], '$A$', fullfile(save_folder,[case_condition,'Hilbert_POD_Amplitude_Half_1_2']), do_subsection, subsection_t);
            plot_pair(t, freq_half_1, freq_half_2, [f_low f_high], '$f$ (Hz)', fullfile(save_folder,[case_condition,'Hilbert_POD_Frequency_Half_1_2']), do_subsection, subsection_t);
            plot_pair(t, freq_half_1*St_factor, freq_half_2*St_factor, [f_low f_high]*St_factor, '$St$', fullfile(save_folder,[case_condition,'Hilbert_POD_St_Half_1_2']), do_subsection, subsection_t);

            plot_scatter(t, freq_half_1*St_factor, amp_half_1, [f_low f_high]*St_factor, [], '$St$', '$A_1$', sCMRmap(1:end-50,:), fullfile(save_folder,[case_condition,'Hilbert_POD_St_Half_1_Amplitude']), do_subsection, subsection_t);
            plot_scatter(t, freq_half_2*St_factor, amp_half_2, [f_low f_high]*St_factor, [], '$St$', '$A_2$', sCMRmap(1:end-50,:), fullfile(save_folder,[case_condition,'Hilbert_POD_St_Half_2_Amplitude']), do_subsection, subsection_t);
            c_beta = max(abs(beta));
            plot_scatter(t, psi, beta, [-pi pi], [-c_beta c_beta], '$\psi_{1,2}$', '$\beta_{1,2}$', sCMRmap(1:end-40,:), fullfile(save_folder,[case_condition,'Hilbert_POD_Relative_Phase_Amplitude_Half_1_2']), do_subsection, subsection_t);
            plot_scatter(t, beta, psi, [], [-pi pi], '$\beta_{1,2}$', '$\psi_{1,2}$', sCMRmap(1:end-40,:), fullfile(save_folder,[case_condition,'Hilbert_POD_Relative_Amplitude_Phase_Half_1_2']), do_subsection, subsection_t);

            close all
        end
    end
end


function plot_pair(t, v1, v2, y_lims, y_label, f_out, do_subsection, subsection_t)
figure
set(gcf,'Color',[1 1 1],'Position',[0 200 1435 300]);
plot(t,v1,'k','LineWidth',1.5)
hold on
plot(t,v2,'r','LineWidth',1.0)
xlim([0.0,max(t)])
if ~isempty(y_lims), ylim(y_lims), end
legend({'Half 1','Half 2'})
ylabel(y_label,'FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX');
xlabel('$t$ (s)','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX');
save_both(f_out, do_subsection, subsection_t);
end


function plot_scatter(t, v, c, y_lims, c_lims, y_label, c_label, cmap, f_out, do_subsection, subsection_t)
figure
set(gcf,'Color',[1 1 1],'Position',[0 200 1435 300]);
scatter(t,v,5,c,'filled')
box on
xlim([0.0,max(t)])
if ~isempty(y_lims), ylim(y_lims), end
colormap(cmap)
if ~isempty(c_lims) && all(isfinite(c_lims)) && diff(c_lims) > 0, clim(c_lims), end
ylabel(y_label,'FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX');
xlabel('$t$ (s)','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX');
hcb = colorbar;
ylabel(hcb,{c_label},'FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX');
set(get(hcb,'ylabel'),'units','Normalized','Position',[3.0,0.55,0]);
save_both(f_out, do_subsection, subsection_t);
end


function save_both(f_out, do_subsection, subsection_t)
f_out = char(f_out);   % save_folder may be a string, and [string, char] is a 1x2 string array
export_fig([f_out,'.png'],'-m5');
savefig([f_out,'.fig']);
if do_subsection
    xlim(subsection_t)
    export_fig([f_out,'_Section.png'],'-m5');
    savefig([f_out,'_Section.fig']);
end
close(gcf)   % PATCH 2026-10-23: close each figure once saved (they piled up)
end

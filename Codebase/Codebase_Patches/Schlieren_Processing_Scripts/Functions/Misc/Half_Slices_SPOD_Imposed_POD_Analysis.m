clear all
close all
%%%%%%%%%%%%%%% This file is deprecated. SPOD Imposed POD is now just SPOD Instantaneous Time Frequency Analysis


addpath export_fig ..\export_fig

sCMRmap = CMRmap;
cmap = pogmap;

pod_folder = '/home/jweightman/qk75_scratch/JWeightman/Schlieren/ONR_Twininess_Testing/Single_Case/POD_Modes/SPOD_Imposed/Data/';
suffix = '*Half_1_SPOD_Imposed_POD_Modes*';

filenames = dir(fullfile(pod_folder,suffix));

for i = 1:length(filenames)

    filename = filenames(i).name;
    disp(filename)
    case_condition = extractBefore(filename,suffix(2:end-1));
    load_file1 = fullfile(pod_folder,strcat(case_condition,'Half_1_SPOD_Imposed_POD_Modes.mat'));
    load_file2 = fullfile(pod_folder,strcat(case_condition,'Half_2_SPOD_Imposed_POD_Modes.mat'));

    save_folder = fullfile(pod_folder,'..','Figures','Frequency_Analysis');
    mkdir(save_folder);
    
    NPR = str2num(cell2mat(extractBetween(case_condition,'NPR_','_')));
    NPR = NPR/10^(floor(log10(NPR)));
    
    T0 = 293; %K
    gamma = 1.4;
    R = 287; % Gas Constant
    M_j = (2/(gamma-1)*((NPR)^((gamma-1)/gamma)-1))^(1/2); % Ideally expanded jet mach
    
    T = (1+(gamma-1)/2*M_j^2)^-1*T0; % Temperature at exit
    a = (gamma*R*T)^(1/2); % Speed of sound
    u_j = M_j*a; % Ideally expanded jet velocity
    
    half_1_m = 1;
    half_2_m = 1;
    
    file1 = matfile(load_file1);
    mode_inst_phase_half_1 = file1.mode_inst_phase(:,half_1_m);
    mode_inst_freq_half_1 = file1.mode_inst_freq(:,half_1_m);
    a_n_complex_half_1 = file1.a_n_complex(:,half_1_m);
    a_n_all_half_1 = file1.a_n_complex(:,:);
    POD_mode_half_1 = file1.POD_modes(:,:,half_1_m);
    D = file1.D;
    
    file2 = matfile(load_file2);
    mode_inst_phase_half_2 = file2.mode_inst_phase(:,half_2_m);
    mode_inst_freq_half_2 = file2.mode_inst_freq(:,half_2_m);
    a_n_complex_half_2 = file2.a_n_complex(:,half_2_m);
    a_n_all_half_2 = file2.a_n_complex(:,:);
    POD_mode_half_2 = file2.POD_modes(:,:,half_2_m);

    half_plane = true;
    % PATCH 2026-10-23: current correct_phase_between_halves signature (7 in, 7 out); the
    % 6-input call errored
    [mode_inst_phase_half_1,mode_inst_phase_half_2,POD_mode_half_1,POD_mode_half_2,a_n_complex_half_1,a_n_complex_half_2,theta_shift] = correct_phase_between_halves(POD_mode_half_1,POD_mode_half_2,a_n_complex_half_1,a_n_complex_half_2,mode_inst_phase_half_1,mode_inst_phase_half_2,half_plane);
    
    St_factor = (D*1e-3)/u_j; 
    fps = file1.fps;
    dt = file1.dt;
    t = ([1:size(mode_inst_phase_half_1,1)]-1).*dt + 101*dt; %%% Should probably not be hardcoded. But offsets the time for the Hilbert edge data lost
    
    smooth_factor = 300;
    
    do_subsection = false;
    subsection_t_1 = 0.3;
    subsection_t_2 = 1.2;
    
    %% Frequency and Amplitude, smoothed
    %%% Use original freq estimate (gradient func on phase) to get mean freq.
    %%% Then apply SavGol filtering to get derivative of phase. Seems better.
    var_info = who('-file',file1);
    if ismember('mode_inst_amp',var_info)
        amp_half_1 = file1.mode_inst_amp(:,half_1_m);
        amp_half_2 = file2.mode_inst_amp(:,half_2_m);
    else
        amp_half_1 = smooth(abs(a_n_complex_half_1(:,1)),smooth_factor);
        amp_half_2 = smooth(abs(a_n_complex_half_2(:,1)),smooth_factor);
    end
    
    freq_half_1_smoothed = abs(mode_inst_freq_half_1(:,1));
    freq_half_2_smoothed = abs(mode_inst_freq_half_2(:,1));
    
    %%%
    f_low = prctile([freq_half_1_smoothed(500:end-500);freq_half_2_smoothed(500:end-500)],0.1)/1.02;
    f_high = prctile([freq_half_1_smoothed(500:end-500);freq_half_2_smoothed(500:end-500)],99.9)*1.025;
    
    figure
    set(gcf,'Color',[1 1 1]);
    set(gcf,'Position',[1500         200        1435         300])
    plot(t,amp_half_1,'k','LineWidth',1.5)
    hold on
    plot(t,amp_half_2,'r','LineWidth',1.0)
    xlim([0.0,max(t)])
    % ylim([-23000,-15000])
    legend({'Half 1','Half 2'})
    ylabel('$A$','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX');
    xlabel('$t$ (s)','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX');
    f_outmode1 = fullfile(save_folder,strcat(case_condition,'SPOD_Imposed_POD_Amplitude_Half_1_2.png'));
    if do_subsection
        xlim([subsection_t_1,subsection_t_2])
        f_outmode1 = fullfile(save_folder,strcat(case_condition,'SPOD_Imposed_POD_Amplitude_Half_1_2_Section.png'));
    end
    export_fig(f_outmode1,'-m5')
    savefig(strcat(extractBefore(f_outmode1,'png'),'fig'))
    close(gcf)   % PATCH 2026-10-23: close each figure once saved (they piled up)
    
    figure
    set(gcf,'Color',[1 1 1]);
    set(gcf,'Position',[000         200        1435         300])
    plot(t,freq_half_1_smoothed,'k','LineWidth',1.5)
    hold on
    plot(t,freq_half_2_smoothed,'r','LineWidth',1.0)
    xlim([0.0,max(t)])
    ylim([f_low,f_high])
    legend({'Half 1','Half 2'})
    ylabel('$f$ (Hz)','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX');
    xlabel('$t$ (s)','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX');
    f_outmode1 = fullfile(save_folder,strcat(case_condition,'SPOD_Imposed_POD_Frequency_Half_1_2.png'));
    if do_subsection
        xlim([subsection_t_1,subsection_t_2])
        f_outmode1 = fullfile(save_folder,strcat(case_condition,'SPOD_Imposed_POD_Frequency_Half_1_2_Section.png'));
    end
    export_fig(f_outmode1,'-m5')
    savefig(strcat(extractBefore(f_outmode1,'png'),'fig'))
    close(gcf)   % PATCH 2026-10-23: close each figure once saved (they piled up)
    
    figure
    set(gcf,'Color',[1 1 1]);
    set(gcf,'Position',[000         200        1435         300])
    plot(t,freq_half_1_smoothed.*St_factor,'k','LineWidth',1.5)
    hold on
    plot(t,freq_half_2_smoothed.*St_factor,'r','LineWidth',1.0)
    xlim([0.0,max(t)])
    ylim([f_low*St_factor,f_high*St_factor])
    legend({'Half 1','Half 2'})
    ylabel('$St$','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX');
    xlabel('$t$ (s)','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX');
    f_outmode1 = fullfile(save_folder,strcat(case_condition,'SPOD_Imposed_POD_St_Half_1_2.png'));
    if do_subsection
        xlim([subsection_t_1,subsection_t_2])
        f_outmode1 = fullfile(save_folder,strcat(case_condition,'SPOD_Imposed_POD_St_Half_1_2_Section.png'));
    end
    export_fig(f_outmode1,'-m5')
    savefig(strcat(extractBefore(f_outmode1,'png'),'fig'))
    close(gcf)   % PATCH 2026-10-23: close each figure once saved (they piled up)
    
    figure
    set(gcf,'Color',[1 1 1]);
    set(gcf,'Position',[000         200        1435         300])
    scatter(t,freq_half_1_smoothed*St_factor,5,amp_half_1,'filled')
    box on 
    xlim([0.0,max(t)])
    ylim([f_low*St_factor,f_high*St_factor])
    ylabel('$St$','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX');
    xlabel('$t$ (s)','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX');
    colormap(sCMRmap(1:end-50,:))
    hcb = colorbar;
    ylabel(hcb,{'$A_1$'},'FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX');
    chandle = get(hcb,'ylabel');
    set(chandle,'units','Normalized','Position',[3.0,0.55,0]);
    f_outmode1 = fullfile(save_folder,strcat(case_condition,'SPOD_Imposed_POD_St_Half_1_Amplitude.png'));
    if do_subsection
        xlim([subsection_t_1,subsection_t_2])
        f_outmode1 = fullfile(save_folder,strcat(case_condition,'SPOD_Imposed_POD_St_Half_1_Amplitude_Section.png'));
    end
    export_fig(f_outmode1,'-m5')
    savefig(strcat(extractBefore(f_outmode1,'png'),'fig'))
    close(gcf)   % PATCH 2026-10-23: close each figure once saved (they piled up)
    
    figure
    set(gcf,'Color',[1 1 1]);
    set(gcf,'Position',[000         200        1435         300])
    scatter(t,freq_half_2_smoothed*St_factor,5,amp_half_2,'filled')
    box on
    xlim([0.0,max(t)])
    ylim([f_low*St_factor,f_high*St_factor])
    ylabel('$St$','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX');
    xlabel('$t$ (s)','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX');
    colormap(sCMRmap(1:end-50,:))
    hcb = colorbar;
    ylabel(hcb,{'$A_2$'},'FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX');
    chandle = get(hcb,'ylabel');
    set(chandle,'units','Normalized','Position',[3.0,0.55,0]);
    f_outmode1 = fullfile(save_folder,strcat(case_condition,'SPOD_Imposed_POD_St_Half_2_Amplitude.png'));
    if do_subsection
        xlim([subsection_t_1,subsection_t_2])
        f_outmode1 = fullfile(save_folder,strcat(case_condition,'SPOD_Imposed_POD_St_Half_2_Amplitude_Section.png'));
    end
    export_fig(f_outmode1,'-m5')
    savefig(strcat(extractBefore(f_outmode1,'png'),'fig'))
    close(gcf)   % PATCH 2026-10-23: close each figure once saved (they piled up)
    
    %% Spectrograms
    numTimeBins = round(length(t)/200);
    numFreqBins = 500;
    
    min_freq = f_low;
    max_freq = f_high;
    [tEdges, fEdges, S1] = histweighted(t,freq_half_1_smoothed,amp_half_1,numTimeBins,numFreqBins,min_freq,max_freq);
    
    figure
    set(gcf,'Color',[1 1 1]);
    set(gcf,'Position',[000         200        1435         300])
    imagesc(tEdges, fEdges*St_factor, S1./max(S1,[],"all"));
    axis xy; % put low freq at bottom
    colormap(sCMRmap)
    caxis([0.5,1.0])
    colorbar
    ylabel('$St$','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX');
    xlabel('$t$ (s)','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX');
    f_outmode1 = fullfile(save_folder,strcat(case_condition,'SPOD_Imposed_POD_Spectrogram_St_Amplitude_Half_1.png'));
    if do_subsection
        xlim([subsection_t_1,subsection_t_2])
        f_outmode1 = fullfile(save_folder,strcat(case_condition,'SPOD_Imposed_POD_Spectrogram_St_Amplitude_Half_1_Section.png'));
    end
    export_fig(f_outmode1,'-m5')
    savefig(strcat(extractBefore(f_outmode1,'png'),'fig'))
    close(gcf)   % PATCH 2026-10-23: close each figure once saved (they piled up)
    
    [tEdges, fEdges, S2] = histweighted(t,freq_half_2_smoothed,amp_half_2,numTimeBins,numFreqBins,min_freq,max_freq);
    
    figure
    set(gcf,'Color',[1 1 1]);
    set(gcf,'Position',[000         200        1435         300])
    imagesc(tEdges, fEdges*St_factor, S2./max(S1,[],"all"));
    axis xy; % put low freq at bottom
    colormap(sCMRmap)
    caxis([0.5,1.0])
    colorbar
    ylabel('$St$','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX');
    xlabel('$t$ (s)','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX');
    f_outmode1 = fullfile(save_folder,strcat(case_condition,'SPOD_Imposed_POD_Spectrogram_St_Amplitude_Half_2.png'));
    if do_subsection
        xlim([subsection_t_1,subsection_t_2])
        f_outmode1 = fullfile(save_folder,strcat(case_condition,'SPOD_Imposed_POD_Spectrogram_St_Amplitude_Half_2_Section.png'));
    end
    export_fig(f_outmode1,'-m5')
    savefig(strcat(extractBefore(f_outmode1,'png'),'fig'))
    close(gcf)   % PATCH 2026-10-23: close each figure once saved (they piled up)
    
    
    
    %% beta vs psi
    freq_difference = freq_half_1_smoothed-freq_half_2_smoothed;
    psi = wrapToPi(mode_inst_phase_half_1(:,1) - mode_inst_phase_half_2(:,1));
    beta = (amp_half_1-amp_half_2)./(amp_half_1+amp_half_2);
    
    mean_df = mean(freq_difference);
    std_df = sqrt(var(freq_difference));
    
    figure
    set(gcf,'Color',[1 1 1]);
    set(gcf,'Position',[000         200        1435         300])
    scatter(t,psi,5,beta,"filled")
    colormap(sCMRmap(1:end-40,:))
    caxis([-max(abs(caxis)),max(abs(caxis))])
    xlim([0,max(t)])
    ylim([-pi,pi])
    box on
    ylabel('$\psi_{1,2}$','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX');
    xlabel('$t$ (s)','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX');
    hcb = colorbar;
    ylabel(hcb,{'$\beta_{1,2}$'},'FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX');
    chandle = get(hcb,'ylabel');
    set(chandle,'units','Normalized','Position',[3.0,0.55,0]);
    f_outmode1 = fullfile(save_folder,strcat(case_condition,'SPOD_Imposed_POD_Relative_Phase_Amplitude_Half_1_2.png'));
    if do_subsection
        xlim([subsection_t_1,subsection_t_2])
        f_outmode1 = fullfile(save_folder,strcat(case_condition,'SPOD_Imposed_POD_Relative_Phase_Amplitude_Half_1_2_Section.png'));
    end
    export_fig(f_outmode1,'-m5')
    savefig(strcat(extractBefore(f_outmode1,'png'),'fig'))
    close(gcf)   % PATCH 2026-10-23: close each figure once saved (they piled up)
    
    figure
    set(gcf,'Color',[1 1 1]);
    set(gcf,'Position',[000         200        1435         300])
    scatter(t,beta,5,psi,"filled")
    colormap(sCMRmap(1:end-40,:))
    caxis([-pi,pi])
    xlim([0,max(t)])
    % ylim([-pi,pi])
    box on
    ylabel('$\beta_{1,2}$','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX');
    xlabel('$t$ (s)','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX');
    hcb = colorbar;
    ylabel(hcb,{'$\psi_{1,2}$'},'FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX');
    chandle = get(hcb,'ylabel');
    set(chandle,'units','Normalized','Position',[3.0,0.55,0]);
    f_outmode1 = fullfile(save_folder,strcat(case_condition,'SPOD_Imposed_POD_Relative_Amplitude_Phase_Half_1_2.png'));
    if do_subsection
        xlim([subsection_t_1,subsection_t_2])
        f_outmode1 = fullfile(save_folder,strcat(case_condition,'SPOD_Imposed_POD_Relative_Amplitude_Phase_Half_1_2_Section.png'));
    end
    export_fig(f_outmode1,'-m5')
    savefig(strcat(extractBefore(f_outmode1,'png'),'fig'))
    close(gcf)   % PATCH 2026-10-23: close each figure once saved (they piled up)
    
    
    
    figure
    set(gcf,'Color',[1 1 1]);
    set(gcf,'Position',[000         200        1435         300])
    scatter(t,freq_difference,5,beta,"filled")
    colormap(sCMRmap(1:end-40,:))
    caxis([-max(abs(caxis)),max(abs(caxis))])
    xlim([0,max(t)])
    ylim([mean_df - 200,mean_df + 200])
    box on
    ylabel('$\Delta f_{1,2}$','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX');
    xlabel('$t$ (s)','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX');
    hcb = colorbar;
    ylabel(hcb,{'$\beta_{1,2}$'},'FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX');
    chandle = get(hcb,'ylabel');
    set(chandle,'units','Normalized','Position',[3.0,0.55,0]);
    f_outmode1 = fullfile(save_folder,strcat(case_condition,'SPOD_Imposed_POD_Frequency_Diff_Relative_Amplitude_Half_1_2.png'));
    if do_subsection
        xlim([subsection_t_1,subsection_t_2])
        f_outmode1 = fullfile(save_folder,strcat(case_condition,'SPOD_Imposed_POD_Frequency_Diff_Relative_Amplitude_Half_1_2_Section.png'));
    end
    export_fig(f_outmode1,'-m5')
    savefig(strcat(extractBefore(f_outmode1,'png'),'fig'))
    close(gcf)   % PATCH 2026-10-23: close each figure once saved (they piled up)
    
    figure
    set(gcf,'Color',[1 1 1]);
    set(gcf,'Position',[000         200        1435         300])
    scatter(t,freq_difference,5,psi,"filled")
    colormap(sCMRmap(1:end-40,:))
    caxis([-pi,pi])
    xlim([0,max(t)])
    ylim([mean_df - 200,mean_df + 200])
    box on
    ylabel('$\Delta f_{1,2}$','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX');
    xlabel('$t$ (s)','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX');
    hcb = colorbar;
    ylabel(hcb,{'$\psi_{1,2}$'},'FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX');
    chandle = get(hcb,'ylabel');
    set(chandle,'units','Normalized','Position',[3.0,0.55,0]);
    f_outmode1 = fullfile(save_folder,strcat(case_condition,'SPOD_Imposed_POD_Frequency_Diff_Relative_Phase_Half_1_2.png'));
    if do_subsection
        xlim([subsection_t_1,subsection_t_2])
        f_outmode1 = fullfile(save_folder,strcat(case_condition,'SPOD_Imposed_POD_Frequency_Diff_Relative_Phase_Half_1_2_Section.png'));
    end
    export_fig(f_outmode1,'-m5')
    savefig(strcat(extractBefore(f_outmode1,'png'),'fig'))
    close(gcf)   % PATCH 2026-10-23: close each figure once saved (they piled up)
    
    
    
    figure
    set(gcf,'Color',[1 1 1]);
    set(gcf,'Position',[000         200        1435         300])
    scatter(t,freq_difference.*St_factor,5,beta,"filled")
    colormap(sCMRmap(1:end-40,:))
    caxis([-max(abs(caxis)),max(abs(caxis))])
    xlim([0,max(t)])
    ylim([St_factor*(mean_df - 200),St_factor*(mean_df + 200)])
    box on
    ylabel('$\Delta St_{1,2}$','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX');
    xlabel('$t$ (s)','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX');
    hcb = colorbar;
    ylabel(hcb,{'$\beta_{1,2}$'},'FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX');
    chandle = get(hcb,'ylabel');
    set(chandle,'units','Normalized','Position',[3.0,0.55,0]);
    f_outmode1 = fullfile(save_folder,strcat(case_condition,'SPOD_Imposed_POD_St_Diff_Relative_Amplitude_Half_1_2.png'));
    if do_subsection
        xlim([subsection_t_1,subsection_t_2])
        f_outmode1 = fullfile(save_folder,strcat(case_condition,'SPOD_Imposed_POD_St_Diff_Relative_Amplitude_Half_1_2_Section.png'));
    end
    export_fig(f_outmode1,'-m5')
    savefig(strcat(extractBefore(f_outmode1,'png'),'fig'))
    close(gcf)   % PATCH 2026-10-23: close each figure once saved (they piled up)
    
    figure
    set(gcf,'Color',[1 1 1]);
    set(gcf,'Position',[000         200        1435         300])
    scatter(t,freq_difference.*St_factor,5,psi,"filled")
    colormap(sCMRmap(1:end-40,:))
    caxis([-pi,pi])
    xlim([0,max(t)])
    ylim([St_factor*(mean_df - 200),St_factor*(mean_df + 200)])
    box on
    ylabel('$\Delta St_{1,2}$','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX');
    xlabel('$t$ (s)','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX');
    hcb = colorbar;
    ylabel(hcb,{'$\psi_{1,2}$'},'FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX');
    chandle = get(hcb,'ylabel');
    set(chandle,'units','Normalized','Position',[3.0,0.55,0]);
    f_outmode1 = fullfile(save_folder,strcat(case_condition,'SPOD_Imposed_POD_St_Diff_Relative_Phase_Half_1_2.png'));
    if do_subsection
        xlim([subsection_t_1,subsection_t_2])
        f_outmode1 = fullfile(save_folder,strcat(case_condition,'SPOD_Imposed_POD_St_Diff_Relative_Phase_Half_1_2_Section.png'));
    end
    export_fig(f_outmode1,'-m5')
    savefig(strcat(extractBefore(f_outmode1,'png'),'fig'))

    pause(1)
    close all

end

return

    %% Comparison of other modes

    for j = 1:10
        amp_all_half_1(:,j) = smooth(abs(a_n_all_half_1(:,j)),smooth_factor);
        amp_all_half_2(:,j) = smooth(abs(a_n_all_half_2(:,j)),smooth_factor);
    end

    for j = 1:10
        amp_all_correlation_half_1(j) = corr(abs(amp_all_half_1(:,1)),abs(amp_all_half_1(:,j)));
        amp_all_correlation_half_2(j) = corr(abs(amp_all_half_2(:,1)),abs(amp_all_half_2(:,j)));
    end
    Note mode 5 has strong negative corr

    figure
    set(gcf,'Color',[1 1 1]);
    set(gcf,'Position',[1500         200        1435         300])
    plot(amp_all_half_1,'LineWidth',1.5)
    hold on
%     xlim([0.0,max(t)])
    % ylim([-23000,-15000])
%     legend({'Half 1','Half 2'})
    ylabel('$A$','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX');
    xlabel('$t$ (s)','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX');
%     f_outmode1 = fullfile(save_folder,strcat(case_condition,'SPOD_Imposed_POD_Amplitude_Half_1_2.png'));
    if do_subsection
        xlim([subsection_t_1,subsection_t_2])
        f_outmode1 = fullfile(save_folder,strcat(case_condition,'SPOD_Imposed_POD_Amplitude_Half_1_2_Section.png'));
    end
    export_fig(f_outmode1,'-m5')
    savefig(strcat(extractBefore(f_outmode1,'png'),'fig'))
    close(gcf)   % PATCH 2026-10-23: close each figure once saved (they piled up)

    figure
    set(gcf,'Color',[1 1 1]);
    set(gcf,'Position',[1500         200        1435         300])
    plot(t,amp_all_half_2,'LineWidth',1.5)
    hold on
    xlim([0.0,max(t)])
    % ylim([-23000,-15000])
%     legend({'Half 1','Half 2'})
    ylabel('$A$','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX');
    xlabel('$t$ (s)','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX');
%     f_outmode1 = fullfile(save_folder,strcat(case_condition,'SPOD_Imposed_POD_Amplitude_Half_1_2.png'));
    if do_subsection
        xlim([subsection_t_1,subsection_t_2])
        f_outmode1 = fullfile(save_folder,strcat(case_condition,'SPOD_Imposed_POD_Amplitude_Half_1_2_Section.png'));
    end
    export_fig(f_outmode1,'-m5')
    savefig(strcat(extractBefore(f_outmode1,'png'),'fig'))
    close(gcf)   % PATCH 2026-10-23: close each figure once saved (they piled up)

    t1 = 1;
    t2 = length(t);
    
    t1 = 60000;
    t2 = 102000;

    t1 = 116000;
    t2 = 166000;
    
    figure
    set(gcf,'Color',[1 1 1]);
    scatter(amp_all_half_1(t1:t2,1),amp_all_half_1(t1:t2,5),5,'filled')
    box on
    xlabel('$Re(a_1)$','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX');
    ylabel('$Im(a_1)$','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX');
    hcb = colorbar;
    ylabel(hcb,{'$A_5$'},'FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX');
    chandle = get(hcb,'ylabel');
    set(chandle,'units','Normalized','Position',[3.0,0.55,0]);
    axis equal tight
    colormap(sCMRmap(1:end-60,:))

    X = [0:0.005:2];
    Y = [0:0.005:2];

    II = 1;
    JJ = 5;
    
    figure
    h = histogram2(amp_all_half_1(t1:t2,II)./mean(amp_all_half_1(:,II)),amp_all_half_1(t1:t2,JJ)./mean(amp_all_half_1(:,JJ)),X,Y);
    Z = [h.Values]';
    set(gcf,'Color', [1 1 1], 'Visible','On');
    set(gcf,'Position',[360   560   880   410])
    X = [0:2/(size(Z,1)-1):2];
    Y = [0:2/(size(Z,1)-1):2];
    contourf(X,Y,log10(Z+1),100,'Linestyle','None')
    xlim([0.5,1.25])
    ylim([0.75,1.4])
    colormap(sCMRmap)
    set(gca,'layer','top')
    ylabel({strcat(sprintf('$A_%1d',II),'/\langle',sprintf(' r_%1d',II),' \rangle$')},'FontSize',14,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX');
    xlabel({strcat(sprintf('$A_%1d',JJ),'/\langle',sprintf(' r_%1d',JJ),' \rangle$')},'FontSize',14,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX');
    ytic=[0,0.25,0.5,0.75,1,1.25,1.5,1.75,2.0];
    xtic=[0,0.25,0.5,0.75,1,1.25,1.5,1.75,2.0];
    % caxis([0,1])
    set(gca,'YTick',ytic)
    set(gca,'XTick',xtic)
    hcb = colorbar;
    ylabel(hcb,{'$\log_{10} N$'},'FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX');
    chandle = get(hcb,'ylabel');
    set(chandle,'units','Normalized','Position',[3.0,0.55,0]);


    figure
    set(gcf,'Color',[1 1 1]);
    set(gcf,'Position',[1500         200        1435         300])
    scatter(t,amp_all_half_1(t1:t2,1),5,amp_all_half_1(t1:t2,5),'filled')
    hold on
%     xlim([0.0,max(t)])
    % ylim([-23000,-15000])
%     legend({'Half 1','Half 2'})
    ylabel('$A$','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX');
    xlabel('$t$ (s)','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX');
%     f_outmode1 = fullfile(save_folder,strcat(case_condition,'SPOD_Imposed_POD_Amplitude_Half_1_2.png'));
    box on
    colormap(sCMRmap(1:end-60,:))
    caxis([5e3,8e3])

    figure
    set(gcf,'Color',[1 1 1]);
    set(gcf,'Position',[1500         200        1435         300])
    scatter(t,amp_all_half_2(t1:t2,1),5,amp_all_half_2(t1:t2,5),'filled')
    hold on
%     xlim([0.0,max(t)])
    % ylim([-23000,-15000])
%     legend({'Half 1','Half 2'})
    ylabel('$A$','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX');
    xlabel('$t$ (s)','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX');
%     f_outmode1 = fullfile(save_folder,strcat(case_condition,'SPOD_Imposed_POD_Amplitude_Half_1_2.png'));
    box on
    colormap(sCMRmap(1:end-60,:))
    caxis([5e3,8e3])


    amp_all_correlation = corr(abs(amp_all_half_2(:,1)),abs(amp_all_half_1(:,5)))

    sCMRmap = CMRmap;
cmap = pogmap;


II = 15;
figure
set(gcf,'Color',[1 1 1]);
pcolor(x,y,abs(POD_modes(:,:,II) + 1i.*POD_modes(:,:,II+1)))
shading interp
axis equal tight
colormap(cmap)
set(gca,'layer','top')
xlabel('$x/D_e$','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX');
ylabel('$y/D_e$','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX');


figure
set(gcf,'Color',[1 1 1]);
set(gcf,'Position',[1500         200        1435         300])
plot(amp_half_1(t1:t2),'k','LineWidth',1.5)
hold on
plot(amp_half_2(t1:t2),'r','LineWidth',1.0)
% ylim([-23000,-15000])
legend({'Half 1','Half 2'})
ylabel('$A$','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX');
xlabel('$t$ (s)','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX');





t1 = 112250;
t2 = 132250;

%% load data into matlab
file = matfile("M:\ONR_Twininess_Testing\Schlieren\Angled\Data\ONR_Twin_8676_Thick_EF_Angled_sD_225_NPR_29_Fields.mat");
im_data = cast(file.im_data(:,:,t1:t2),'single');

slice = 4;
smoothy = 250;
slice_n = 5000;
im_data_average = movmean(im_data(:,:,(slice-1)*slice_n+1:slice*slice_n),smoothy,3);

t_loc = 5000;
im_data_average_p1 = mean(im_data(:,:,t_loc-smoothy/2:t_loc+smoothy/2),3);
t_loc = 11700;
im_data_average_p2 = mean(im_data(:,:,t_loc-smoothy/2:t_loc+smoothy/2),3);

im_data_average_p1 = im_data_average_p1 - min(min(im_data_average_p2)) + 1;
im_data_average_p2 = im_data_average_p2 - min(min(im_data_average_p2)) + 1;

figure
pcolor(im_data(:,:,t_loc))
shading interp
axis equal tight
colorbar
colormap(gray)

figure
pcolor((im_data_average_p1-im_data_average_p2)./(im_data_average_p1+im_data_average_p2))
shading interp
axis equal tight
colorbar
colormap(cmap)

%% Setup java for ImageJ
javaaddpath 'C:\Program Files\MATLAB\R2021b\java\mij.jar'
javaaddpath 'C:\Program Files\MATLAB\R2021b\java\ij.jar'

% Start ImageJ
MIJ.start

%% Create an image sequence of the data
MIJ.createImage(im_data_average)


clear all
close all

addpath export_fig ..\export_fig

sCMRmap = CMRmap;
cmap = pogmap;

pod_folder = 'M:\Schlieren\ONR_Twininess_Testing\Angled\POD_Modes\Hilbert\Data';
suffix = '*Hilbert_POD_Modes*';

m1 = 2;
m2 = 5;

filenames = dir(fullfile(pod_folder,suffix));

for i = 15%1:length(filenames)

    filename = filenames(i).name;
    disp(filename)
    case_condition = extractBefore(filename,suffix(2:end-1));
    load_file1 = fullfile(pod_folder,strcat(case_condition,'Hilbert_POD_Modes.mat'));
    
    save_folder = fullfile(pod_folder,'..','Figures','Full_Field','Frequency_Analysis');
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
    
    file1 = matfile(load_file1);
    mode_inst_phase_M_1 = file1.mode_inst_phase(:,m1);
    mode_inst_freq_M_1 = file1.mode_inst_freq(:,m1);
    a_n_complex_M_1 = file1.a_n_complex(:,m1);
    POD_mode_M_1 = file1.POD_modes(:,:,m1);
    D = file1.D;

    mode_inst_phase_M_2 = file1.mode_inst_phase(:,m2);
    mode_inst_freq_M_2 = file1.mode_inst_freq(:,m2);
    a_n_complex_M_2 = file1.a_n_complex(:,m2);
    POD_mode_M_2 = file1.POD_modes(:,:,m2);
    
    half_plane = false;
    % PATCH 2026-10-23: current correct_phase_between_halves signature (7 in, 7 out); the
    % 6-input call errored
    [mode_inst_phase_M_1,mode_inst_phase_M_2,POD_mode_M_1,POD_mode_M_2,a_n_complex_M_1,a_n_complex_M_2,theta_shift] = correct_phase_between_halves(POD_mode_M_1,POD_mode_M_2,a_n_complex_M_1,a_n_complex_M_2,mode_inst_phase_M_1,mode_inst_phase_M_2,half_plane);
    
    St_factor = (D*1e-3)/u_j; 
    fps = file1.fps;
    dt = file1.dt;
    t = ([1:size(mode_inst_phase_M_1,1)]-1).*dt + 101*dt; %%% Should probably be offset by 100 time_steps
    
    smooth_factor = 300;
    
    do_subsection = true;
    subsection_t_1 = 0.3;
    subsection_t_2 = 1.2;
    
    %% Frequency and Amplitude, smoothed
    %%% Use original freq estimate (gradient func on phase) to get mean freq.
    %%% Then apply SavGol filtering to get derivative of phase. Seems better.
    amp_M_1 = smooth(abs(a_n_complex_M_1(:,1)),smooth_factor);
    amp_M_2 = smooth(abs(a_n_complex_M_2(:,1)),smooth_factor);
    
    freq_M_1_smoothed = abs(mode_inst_freq_M_1(:,1));
    freq_M_2_smoothed = abs(mode_inst_freq_M_2(:,1));
    
    %%%
    f_low = prctile([freq_M_1_smoothed(500:end-500);freq_M_2_smoothed(500:end-500)],0.1)/1.02;
    f_high = prctile([freq_M_1_smoothed(500:end-500);freq_M_2_smoothed(500:end-500)],99.9)*1.025;
    
    figure
    set(gcf,'Color',[1 1 1]);
    set(gcf,'Position',[1500         200        1435         300])
    plot(t,amp_M_1,'k','LineWidth',1.5)
    hold on
    plot(t,amp_M_2,'r','LineWidth',1.0)
    xlim([0.0,max(t)])
    % ylim([-23000,-15000])
    legend({'M1','M2'})
    ylabel('$A$','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX');
    xlabel('$t$ (s)','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX');
    f_outmode1 = fullfile(save_folder,strcat(case_condition,'Hilbert_POD_Amplitude_M_1_2.png'));
    if do_subsection
        xlim([subsection_t_1,subsection_t_2])
        f_outmode1 = fullfile(save_folder,strcat(case_condition,'Hilbert_POD_Amplitude_M_1_2_Section.png'));
    end
    export_fig(f_outmode1,'-m5')
    savefig(strcat(extractBefore(f_outmode1,'png'),'fig'))
    close(gcf)   % PATCH 2026-10-23: close each figure once saved (they piled up)
    
    figure
    set(gcf,'Color',[1 1 1]);
    set(gcf,'Position',[000         200        1435         300])
    plot(t,freq_M_1_smoothed,'k','LineWidth',1.5)
    hold on
    plot(t,freq_M_2_smoothed,'r','LineWidth',1.0)
    xlim([0.0,max(t)])
    ylim([f_low,f_high])
    legend({'M1','M2'})
    ylabel('$f$ (Hz)','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX');
    xlabel('$t$ (s)','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX');
    f_outmode1 = fullfile(save_folder,strcat(case_condition,'Hilbert_POD_Frequency_M_1_2.png'));
    if do_subsection
        xlim([subsection_t_1,subsection_t_2])
        f_outmode1 = fullfile(save_folder,strcat(case_condition,'Hilbert_POD_Frequency_M_1_2_Section.png'));
    end
    export_fig(f_outmode1,'-m5')
    savefig(strcat(extractBefore(f_outmode1,'png'),'fig'))
    close(gcf)   % PATCH 2026-10-23: close each figure once saved (they piled up)
    
    figure
    set(gcf,'Color',[1 1 1]);
    set(gcf,'Position',[000         200        1435         300])
    plot(t,freq_M_1_smoothed.*St_factor,'k','LineWidth',1.5)
    hold on
    plot(t,freq_M_2_smoothed.*St_factor,'r','LineWidth',1.0)
    xlim([0.0,max(t)])
    ylim([f_low*St_factor,f_high*St_factor])
    legend({'M1','M2'})
    ylabel('$St$','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX');
    xlabel('$t$ (s)','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX');
    f_outmode1 = fullfile(save_folder,strcat(case_condition,'Hilbert_POD_St_M_1_2.png'));
    if do_subsection
        xlim([subsection_t_1,subsection_t_2])
        f_outmode1 = fullfile(save_folder,strcat(case_condition,'Hilbert_POD_St_M_1_2_Section.png'));
    end
    export_fig(f_outmode1,'-m5')
    savefig(strcat(extractBefore(f_outmode1,'png'),'fig'))
    close(gcf)   % PATCH 2026-10-23: close each figure once saved (they piled up)
    
    figure
    set(gcf,'Color',[1 1 1]);
    set(gcf,'Position',[000         200        1435         300])
    scatter(t,freq_M_1_smoothed*St_factor,5,amp_M_1,'filled')
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
    f_outmode1 = fullfile(save_folder,strcat(case_condition,'Hilbert_POD_St_M_1_Amplitude.png'));
    if do_subsection
        xlim([subsection_t_1,subsection_t_2])
        f_outmode1 = fullfile(save_folder,strcat(case_condition,'Hilbert_POD_St_M_1_Amplitude_Section.png'));
    end
    export_fig(f_outmode1,'-m5')
    savefig(strcat(extractBefore(f_outmode1,'png'),'fig'))
    close(gcf)   % PATCH 2026-10-23: close each figure once saved (they piled up)
    
    figure
    set(gcf,'Color',[1 1 1]);
    set(gcf,'Position',[000         200        1435         300])
    scatter(t,freq_M_2_smoothed*St_factor,5,amp_M_2,'filled')
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
    f_outmode1 = fullfile(save_folder,strcat(case_condition,'Hilbert_POD_St_M_2_Amplitude.png'));
    if do_subsection
        xlim([subsection_t_1,subsection_t_2])
        f_outmode1 = fullfile(save_folder,strcat(case_condition,'Hilbert_POD_St_M_2_Amplitude_Section.png'));
    end
    export_fig(f_outmode1,'-m5')
    savefig(strcat(extractBefore(f_outmode1,'png'),'fig'))
    close(gcf)   % PATCH 2026-10-23: close each figure once saved (they piled up)
    
    %% Spectrograms
    numTimeBins = round(length(t)/200);
    numFreqBins = 500;
    
    min_freq = f_low;
    max_freq = f_high;
    [tEdges, fEdges, S1] = histweighted(t,freq_M_1_smoothed,amp_M_1,numTimeBins,numFreqBins,min_freq,max_freq);
    
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
    f_outmode1 = fullfile(save_folder,strcat(case_condition,'Hilbert_POD_Spectrogram_St_Amplitude_M_1.png'));
    if do_subsection
        xlim([subsection_t_1,subsection_t_2])
        f_outmode1 = fullfile(save_folder,strcat(case_condition,'Hilbert_POD_Spectrogram_St_Amplitude_M_1_Section.png'));
    end
    export_fig(f_outmode1,'-m5')
    savefig(strcat(extractBefore(f_outmode1,'png'),'fig'))
    close(gcf)   % PATCH 2026-10-23: close each figure once saved (they piled up)
    
    [tEdges, fEdges, S2] = histweighted(t,freq_M_2_smoothed,amp_M_2,numTimeBins,numFreqBins,min_freq,max_freq);
    
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
    f_outmode1 = fullfile(save_folder,strcat(case_condition,'Hilbert_POD_Spectrogram_St_Amplitude_M_2.png'));
    if do_subsection
        xlim([subsection_t_1,subsection_t_2])
        f_outmode1 = fullfile(save_folder,strcat(case_condition,'Hilbert_POD_Spectrogram_St_Amplitude_M_2_Section.png'));
    end
    export_fig(f_outmode1,'-m5')
    savefig(strcat(extractBefore(f_outmode1,'png'),'fig'))
    close(gcf)   % PATCH 2026-10-23: close each figure once saved (they piled up)
    
    
    
    %% beta vs psi
    freq_difference = freq_M_1_smoothed-freq_M_2_smoothed;
    psi = wrapToPi(mode_inst_phase_M_1(:,1) - mode_inst_phase_M_2(:,1));
    beta = (amp_M_1-amp_M_2)./(amp_M_1+amp_M_2);
    
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
    f_outmode1 = fullfile(save_folder,strcat(case_condition,'Hilbert_POD_Relative_Phase_Amplitude_M_1_2.png'));
    if do_subsection
        xlim([subsection_t_1,subsection_t_2])
        f_outmode1 = fullfile(save_folder,strcat(case_condition,'Hilbert_POD_Relative_Phase_Amplitude_M_1_2_Section.png'));
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
    f_outmode1 = fullfile(save_folder,strcat(case_condition,'Hilbert_POD_Relative_Amplitude_Phase_M_1_2.png'));
    if do_subsection
        xlim([subsection_t_1,subsection_t_2])
        f_outmode1 = fullfile(save_folder,strcat(case_condition,'Hilbert_POD_Relative_Amplitude_Phase_M_1_2_Section.png'));
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
    f_outmode1 = fullfile(save_folder,strcat(case_condition,'Hilbert_POD_Frequency_Diff_Relative_Amplitude_M_1_2.png'));
    if do_subsection
        xlim([subsection_t_1,subsection_t_2])
        f_outmode1 = fullfile(save_folder,strcat(case_condition,'Hilbert_POD_Frequency_Diff_Relative_Amplitude_M_1_2_Section.png'));
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
    f_outmode1 = fullfile(save_folder,strcat(case_condition,'Hilbert_POD_Frequency_Diff_Relative_Phase_M_1_2.png'));
    if do_subsection
        xlim([subsection_t_1,subsection_t_2])
        f_outmode1 = fullfile(save_folder,strcat(case_condition,'Hilbert_POD_Frequency_Diff_Relative_Phase_M_1_2_Section.png'));
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
    f_outmode1 = fullfile(save_folder,strcat(case_condition,'Hilbert_POD_St_Diff_Relative_Amplitude_M_1_2.png'));
    if do_subsection
        xlim([subsection_t_1,subsection_t_2])
        f_outmode1 = fullfile(save_folder,strcat(case_condition,'Hilbert_POD_St_Diff_Relative_Amplitude_M_1_2_Section.png'));
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
    f_outmode1 = fullfile(save_folder,strcat(case_condition,'Hilbert_POD_St_Diff_Relative_Phase_M_1_2.png'));
    if do_subsection
        xlim([subsection_t_1,subsection_t_2])
        f_outmode1 = fullfile(save_folder,strcat(case_condition,'Hilbert_POD_St_Diff_Relative_Phase_M_1_2_Section.png'));
    end
    export_fig(f_outmode1,'-m5')
    savefig(strcat(extractBefore(f_outmode1,'png'),'fig'))

    pause(1)
    close all
end








%================================================================================
% PURPOSE:
%   Visualize Hilbert-POD results by plotting spatial mode shapes, phase
%   portraits, energy distributions, and instantaneous frequency evolution.
%
% HIGH-LEVEL WORKFLOW:
%   1. Load pre-computed Hilbert-POD modes and complex modal coefficients
%   2. Extract and visualize real/imaginary/magnitude spatial mode structures
%   3. Generate phase portraits from modal coefficient trajectories
%   4. Plot cumulative mode energy vs. mode index
%   5. Optional: compute and display instantaneous frequency maps and spectrograms
%   6. Save all figures as publication-ready PNG + editable FIG
%
% OUTPUT:
%   - Mode shapes: real/imag/magnitude contours saved to Mode_Shapes/
%   - Phase portraits: 2D density plots of modal state space (Mode_Portraits/)
%   - Energy plot: mode energy % and cumulative energy (Mode_Energy/)
%   - Optional frequency analysis: amplitude/frequency time series and spectrograms (Frequency_Analysis/)
%
%================================================================================

clear; close;

%% ======================== SETUP: UTILITY PATHS AND COLORMAPS ========================
% Add utility paths for required functions, exporting, SPOD/BMD, and miscellaneous functions
addpath(genpath("Functions"))

% Define custom colormaps for publication-quality visualizations
sCMRmap = CMRmap;  % sCMRmap: [m, 3] sequential colormap (for magnitudes)
cmap = pogmap;     % cmap: [m, 3] diverging colormap (for signed real/imag parts)


%% ======================== ENVIRONMENT CONFIGURATION ========================
% Detect runtime environment to adjust file path conventions
% using_MASSIVE=1 for HPC Linux cluster, 0 for local Windows/Mac
using_MASSIVE = 1-ispc; % using_MASSIVE: boolean, true if running on Linux (MASSIVE HPC)
using_Market = false;   % using_Market: boolean, true if snapshot files on shared network drive

%% ======================== DIRECTORY CONFIGURATION ========================
% Specify folder hierarchy and wildcard patterns for case selection
% Hierarchy: Top_folder / parent_folder / main_folder / POD_Results / Hilbert

Top_folders = "/home/jweightman/qk75_scratch2/JWeightman/"; % Root directory for raw image data access. Path after R-ENG-MAE-LTRAC-Jet-Noise (including /) for Market
                                                                      % Can be multiple paths; adjusted for MASSIVE/Windows
save_folder_outer = "/home/jweightman/qk75_scratch2/JWeightman/"; % Output root for MAT file storage (Local folder)

% Wildcard patterns for automatic folder discovery (regex matching)
parent_folder_str = ["*Schlier*"];      % parent_folder_str: regex pattern (select by jet type/axis)
main_folder_str = ["*ROI*"];         % main_folder_str: regex pattern (select by nozzle config)

% Retrieve matching directory paths using utility function
[parent_folders, save_folders] = get_parent_path(Top_folders,parent_folder_str,save_folder_outer,using_MASSIVE,using_Market);

%% ======================== HILBERT-POD VISUALIZATION PARAMETERS ========================
% Control which analysis and plot types to generate
% Rationale: Some visualizations are computationally expensive; selectively enable as needed

symmetry = false;             % symmetry: boolean, true = load symmetry-imposed POD variant
do_plot_mode_shapes = true;
do_inst_freq_plots = true;   % do_inst_freq_plots: boolean, true = generate frequency evolution maps


ROI = false;   % true = only *ROI* files (with true and no ROI files, nothing was plotted and no message given)
%% ======================== MAIN PROCESSING LOOP ========================
% Iterate over parent folders and their subdirectories to process each case

for m = 1:length(parent_folders)

    parent_folder = fullfile(parent_folders(m).folder,parent_folders(m).name);
    save_folder_upper = fullfile(save_folders(m).folder,save_folders(m).name);

    % Discover all main folders matching regex pattern within this parent
    main_folders = dir(fullfile(parent_folder,main_folder_str));
    sf = [main_folders.isdir];
    main_folders = main_folders(sf); % main_folders: [n_cases] struct array of directory listings
    
    % Loop through each main folder (corresponding to specific operating conditions/nozzle configs)
    for k = 1:length(main_folders)
        main_folder = fullfile(main_folders(k).folder,main_folders(k).name,'POD_Results','Hilbert','Data');
        save_folder = fullfile(save_folder_upper,main_folders(k).name,'POD_Results','Hilbert','Figures');

        mkdir(save_folder) % Create output directory if missing
    
        % Determine flow axis orientation from directory name
        % (affects axis label conventions: Major vs Minor vs Angled jet)
        if contains(main_folder,'Minor')
            flow_axis = 'Minor';
        elseif contains(main_folder,'Major')
            flow_axis = 'Major';
        elseif contains(main_folder,'Angled')
            flow_axis = 'Angled';
        else
            flow_axis = 'Minor';
        end

        % Set filename pattern based on analysis type
        % (symmetry-imposed, ROI-masked, or standard)
        if ~symmetry && ~ROI
            suffix='*Hilbert_POD_Modes.mat';
        elseif symmetry
            suffix='*Symmetry*Hilbert_POD_Modes*.mat';
        elseif ~symmetry && ROI
            suffix='*ROI*Hilbert_POD_Modes.mat';
        end
        
        % Discover all Hilbert-POD result files matching pattern
        direc = dir([main_folder,filesep,suffix]); 
        filenames={};
        [filenames{1:length(direc),1}] = deal(direc.name);
        
        %% Per-Case Analysis Loop
        % Process each discovered POD result file
        for i = 1:length(filenames)
            pause(1)
            close all
            condition = filenames{i}(1:end-4); % condition: string, filename without .mat extension
            
            % Skip ROI files if not requested
            if ~ROI && contains(condition,'ROI')
                continue
            else
                load_file = fullfile(main_folder, [condition,'.mat']);
            end
    
            % Load pre-computed Hilbert-POD results from .mat file
            load(load_file);
        
            % Extract case name and operating condition parameters
            case_condition = extractBefore(condition,'Hilbert_');

            %% Detect operating condition parameterization
            % RATIONALE: NPR (Nozzle Pressure Ratio) for heated jets, Mach (Mj) for ideally-expanded jets
            % (using_npr, case_list and ii were never defined here: parse this file's name)
            using_npr = contains(condition,'_NPR_');
            case_list = {condition};
            ii = 1;
            if using_npr
                [nozzle_list, NPR_list, NPR_factor] = get_filename_params(using_npr, case_list);
                % nozzle_list: cell array of strings, nozzle identifiers
                % NPR: [1, n_cases] double, nozzle pressure ratios
                % NPR_factor: scalar int, decimal precision factor (e.g., 10 → NPR stored as integers ×10)
            else
                [nozzle_list, M_list, M_factor] = get_filename_params(using_npr, case_list);
                % M: [1, n_cases] double, Mach numbers
                % M_factor: scalar int, decimal precision factor
            end
    
            %% Compute Reference Velocity for Strouhal Normalization
            % Use ideal isentropic flow relations to estimate jet velocity U_j
            % This enables dimensionless frequency (Strouhal St = f*D/U_j) comparison
            if using_npr
                NPR = NPR_list(ii)/(10^(NPR_factor-1));
                [u_j,D_j] = get_ideal_jet_velocity_diameter(using_npr, NPR, 1, D);
            else
                M = M_list(ii)/(10^(M_factor-1));
                [u_j,D_j] = get_ideal_jet_velocity_diameter(using_npr, M, 1, D);
            end

            St_factor = (D_j*1e-3)/u_j; % St_factor: scalar, [D_j/m] * [m/U_j] = [D_j/U_j] for St computation 
        
            %% ======================== SECTION 1: SPATIAL MODE SHAPE PLOTS ========================
            % Generate contour plots of spatial POD modes showing real, imaginary, and
            % magnitude components separately. Rationale: Decomposing complex modes into
            % real/imag reveals phase structure; magnitude shows envelope amplitude.
            if do_plot_mode_shapes
                save_file = fullfile(save_folder,'Mode_Shapes');
                mkdir(save_file);
    
                % Extract flow variable labels from filename (e.g., 'Vars_uv' → {u,v})
                variables = extractAfter(condition,'_Vars_');
                flow_variables = {};
                for j = 1:length(variables)
                    flow_variables{j} = variables(j);
                end
                if length(flow_variables) == 0
                    flow_variables{1} = 'I'; % Default: use intensity if no variables specified
                end
    
                % Plot Real, Imaginary, and Magnitude Parts of Spatial Modes
                % Generate 3 figures per mode (k=1:6), one per flow variable
                for k = 1:6 % k: loop over first 6 modes (highest energy)
                    for j = 1:length(flow_variables) % j: loop over flow components
                        %% Figure 1: Real Part
                        % Real part of complex mode φ = φ_R + i*φ_I represents phase quadrature
                        File = sprintf('POD_Mode_%1d_real.png',k);
                        f_outmode = fullfile(save_file,[case_condition,File]);
                        figure(1)
                        set(gcf,'Color', [1 1 1], 'Visible','On');
                        pcolor(x,y,real(POD_modes(:,:,k,j)))
                        shading interp % Smooth color interpolation for publication
                        axis equal tight
                        colormap(cmap) % Diverging colormap for signed values
                        set(gca,'layer','top')
                        set(gcf,'Position',[200,300,600,400])
                        title({sprintf('$\\phi^{%1d}_%s$',k,"R")},'FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX');
                        xlabel('$x/D_e$','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX'); 
                        if strcmp(flow_axis,'Major')
                            ylabel({'$y/D_e$'},'FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX');
                        elseif strcmp(flow_axis,'Angled')
                            ylabel({'$z^*/D_e$'},'FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX');
                        else
                            ylabel({'$z/D_e$'},'FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX');
                        end
                        export_fig(f_outmode,'-m5'); % PNG at 5x resolution
                        savefig(strrep(f_outmode,'png','fig')) % Editable MATLAB format

                        %% Figure 2: Imaginary Part
                        % Imaginary part φ_I represents 90° phase shift (quadrature component)
                        File = sprintf('POD_Mode_%1d_imag.png',k);
                        f_outmode = fullfile(save_file,[case_condition,File]);
                        figure(1)
                        set(gcf,'Color', [1 1 1], 'Visible','On');
                        pcolor(x,y,imag(POD_modes(:,:,k,j)))
                        shading interp
                        axis equal tight
                        colormap(cmap) % Diverging colormap
                        set(gca,'layer','top')
                        set(gcf,'Position',[200,300,600,400])
                        title({sprintf('$\\phi^{%1d}_%s$',k,"I")},'FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX');
                        xlabel('$x/D_e$','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX'); 
                        if strcmp(flow_axis,'Major')
                            ylabel({'$y/D_e$'},'FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX');
                        elseif strcmp(flow_axis,'Angled')
                            ylabel({'$z^*/D_e$'},'FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX');
                        else
                            ylabel({'$z/D_e$'},'FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX');
                        end
                        export_fig(f_outmode,'-m5');
                        savefig(strrep(f_outmode,'png','fig'))

                        %% Figure 3: Magnitude (Absolute Value)
                        % Magnitude |φ| = √(φ_R² + φ_I²) represents envelope amplitude,
                        % independent of phase; shows where mode has strongest spatial impact
                        File = sprintf('POD_Mode_%1d_abs.png',k);
                        f_outmode = fullfile(save_file,[case_condition,File]);
                        figure(1)
                        set(gcf,'Color', [1 1 1], 'Visible','On');
                        pcolor(x,y,abs(POD_modes(:,:,k,j)))
                        shading interp
                        axis equal tight
                        colormap(sCMRmap) % Sequential colormap for positive values
                        set(gca,'layer','top')
                        set(gcf,'Position',[200,300,600,400])
                        title({sprintf('$\\phi^{%1d}_%s$',k,"{Abs}")},'FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX');
                        xlabel('$x/D_e$','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX'); 
                        if strcmp(flow_axis,'Major')
                            ylabel({'$y/D_e$'},'FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX');
                        elseif strcmp(flow_axis,'Angled')
                            ylabel({'$z^*/D_e$'},'FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX');
                        else
                            ylabel({'$z/D_e$'},'FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX');
                        end
                        export_fig(f_outmode,'-m5');
                        savefig(strrep(f_outmode,'png','fig'))
                    end
                end

                %% ======================== SECTION 2: PHASE PORTRAIT PLOTS ========================
                % Visualize modal dynamics in phase space: complex modal coefficient a_n(t)
                % plotted as 2D histogram in Re(a_n) vs. Im(a_n) plane. Rationale: Phase
                % portraits reveal attractor structure, limit cycles, and coherence patterns.
                % Normalization by mean radius centers analysis on typical modal amplitude.
                save_file = fullfile(save_folder,'Phase_Portraits');
                mkdir(save_file);

                for II = 1:4 % II: loop over first 4 modes (highest energy for clear phase structure)
                    File = sprintf('POD_Phase_Portrait_a%1d_Real_Imag.png',II);
                    f_outmode = fullfile(save_file,[case_condition,File]);
                    X = [-2:0.20:2]; % Real axis binning: 21 bins from -2 to +2 σ
                    Y = [-2:0.20:2]; % Imag axis binning: 21 bins from -2 to +2 σ

                    % Compute mean radius in complex plane for normalization
                    % Prevents origin crowding for weak modes, shows typical amplitude scale
                    r = mean(sqrt(real(a_n_complex(:,II)).^2 + imag(a_n_complex(:,II)).^2));

                    % Generate 2D histogram: counts snapshots at each (Re,Im) location
                    % Creates occupation density in phase space (joint probability)
                    figure(1)
                    h = histogram2(real(a_n_complex(:,II))/r, imag(a_n_complex(:,II))/r, X, Y);
                    Z = [h.Values]'; % Extract count matrix, transpose for contourf
                    set(gcf,'Color', [1 1 1], 'Visible','On');

                    % Recompute axis vectors for smooth contourf display
                    X = [-2:4/(size(Z,1)-1):2];
                    Y = [-2:4/(size(Z,1)-1):2];

                    % Plot 2D histogram as smooth contours (100 levels = smooth appearance)
                    % Linestyle='None' removes contour line grid, emphasizes color gradations
                    contourf(X, Y, Z, 100, 'Linestyle', 'None')
                    colormap(sCMRmap) % Sequential colormap for histogram counts
                    set(gca,'layer','top')

                    % Labels: modal index, normalized amplitude scale
                    ylabel({strcat(sprintf('$\\mathrm{Re}(a_%1d)', II), '/\langle r_m \rangle$')}, ...
                        'FontSize', 14, 'FontName', 'Times New Roman', 'FontAngle', 'italic', 'rot', 90, 'interpreter', 'LaTeX');
                    xlabel({strcat(sprintf('$\\mathrm{Im}(a_%1d)', II), '/\langle r_m \rangle$')}, ...
                        'FontSize', 14, 'FontName', 'Times New Roman', 'FontAngle', 'italic', 'rot', 0, 'interpreter', 'LaTeX');

                    % Set symmetric axis limits for fair phase space representation
                    ytic = [-1 0 1]; % Tick labels at ±1σ
                    xtic = [-1 0 1];
                    axis equal % Equal aspect ratio: circular in (Re,Im) plane
                    set(gca, 'YTick', ytic)
                    set(gca, 'XTick', xtic)
                    c = colorbar; % Show histogram counts scale

                    % Save in both raster (publication) and editable formats
                    export_fig(f_outmode, '-m5'); % PNG at 5x resolution
                    savefig(strrep(f_outmode, 'png', 'fig')) % MATLAB .fig for editing

                end
            
                %% ======================== SECTION 3: MODAL ENERGY DISTRIBUTION ========================
                % Visualize energy content of POD modes to assess relative importance.
                % Rationale: Energy spectrum shows mode decay; steep decay → few modes
                % capture most energy (low-rank structure); shallow decay → many modes
                % needed (high-dimensional dynamics). Cumulative energy shows how many
                % modes required to capture (e.g., 90%, 95%) of total system energy.
                save_file = fullfile(save_folder,'Mode_Energy');
                mkdir(save_file);
        
                % Compute cumulative energy by summing energy from mode 1 to i
                % Cum_Energy(i) = sum(Energy(1:i)) → cumulative percentage
                clearvars Cum_Energy
                for i = 1:length(Energy)
                    Cum_Energy(i) = sum(Energy(1:i)); % Cumulative sum of modal percentages
                end
            
                figure
                set(gcf,'Color', [1 1 1], 'Visible','On');
                xlim([0,21]) % Show first 20 modes on x-axis
                hold on

                % Dual y-axis plot: left = specific energy (scatter), right = cumulative (line)
                % Rationale: Emphasize individual mode strengths (scatter) vs. cumulative
                % importance (line). Different y-scales optimized for each metric.
                [hAx,hLine1,hLine2] = plotyy(Mode(1:20), Energy(1:20), [1:20], Cum_Energy(1:20), ...
                    'scatter', 'plot');
                
                % Customize scatter markers for specific energy (left axis)
                % Diamond markers (d) with purple color for visual distinction
                hLine1.Marker = 'd'; % Diamond marker
                hLine1.MarkerFaceColor = [0.3 0.15 0.65]; % Deep purple
                hLine1.MarkerEdgeColor = [0.3 0.15 0.65];
                
                % Customize line for cumulative energy (right axis)
                hLine2.LineWidth = 2; % Thick line for emphasis
                set(gcf,'Position',[200,300,600,400])
                % Y-axis labels for dual axes (left = specific, right = cumulative)
                ylabel(hAx(1), '$\mathrm{Specific~Energy~\%}$', 'FontSize', 14, 'FontName', 'Times New Roman', ...
                    'FontAngle', 'italic', 'rot', 90, 'interpreter', 'LaTeX') % Left y-axis
                ylabel(hAx(2), '$\mathrm{Cumulative~Specific~Energy~\%}$', 'FontSize', 14, 'FontName', 'Times New Roman', ...
                    'FontAngle', 'italic', 'rot', 90, 'interpreter', 'LaTeX') % Right y-axis
                
                % Set axis colors to black for both sides
                set(hAx,{'ycolor'},{'k';'k'})
                
                % X-axis label (mode index)
                xlabel('$\mathrm{Mode}$', 'FontSize', 14, 'FontName', 'Times New Roman', ...
                    'FontAngle', 'italic', 'rot', 0, 'interpreter', 'LaTeX')
                box on
                % title(sprintf('Total Energy: %3.1e',(energy_total)));
                f_outmode = fullfile(save_file,[case_condition,'_POD_Mode_Energy.png']);
                export_fig(f_outmode,'-m5');
                savefig(strrep(f_outmode,'png','fig'))
        
            end
        
            if do_inst_freq_plots 
                %% ======================== SECTION 4: INSTANTANEOUS FREQUENCY ANALYSIS ========================
                % Extract instantaneous amplitude, frequency, and Strouhal number evolution
                % from Hilbert-transformed modal coefficients. Rationale: Time-varying
                % frequency reveals frequency modulation, lock-in, frequency jumps. Can
                % indicate multiple competing oscillation modes or nonlinear interactions
                % (e.g., bispectral coupling). Amplitude modulation shows energy exchange.
                %
                % Computation: mode_inst_amp(t,n) = |a_n(t)| (magnitude of time series)
                %              mode_inst_phase(t,n) = phase(a_n(t)) from Hilbert transform
                %              mode_inst_freq(t,n) = d(phase)/dt (phase rate of change)
                %              St = f * (D/U_j) [dimensionless frequency]
                save_file = fullfile(save_folder,'Frequency_Analysis');
                mkdir(save_file);
                
                % Time vector for x-axis: [0, dt, 2dt, ..., (N-1)*dt]
                if exist('t') ~= 1
                    t = ([1:size(mode_inst_phase,1)]-1) .* dt;
                end
                smooth_factor = 200; % Smoothing window for amplitude/frequency (reduce noise)
                
                % Optional: analyze only a subsection of the time series
                % (useful for zoomed views of specific events)
                do_subsection = false;
                subsection_t_1 = 0.3; % Start time (seconds)
                subsection_t_2 = 1.2; % End time (seconds)
        
                % Analyze mode 1 (highest energy, clearest oscillations)
                mode_n = 1;
    
                % Amplitude extraction: use precomputed instantaneous amplitude if available
                % Otherwise, compute as |a_n| with smoothing to reduce noise
                if exist('mode_inst_amp')
                    amp = mode_inst_amp(:,mode_n); % Envelope of analytic signal
                else
                    amp = smooth(abs(a_n_complex(:,mode_n)), smooth_factor); % Smooth magnitude
                end
                
                % Instantaneous frequency extraction and normalization
                freq_smoothed = abs(mode_inst_freq(:,mode_n)); % Phase time derivative
                St_smoothed = St_factor .* freq_smoothed; % Convert Hz to Strouhal number
        
                % Determine frequency range for visualization (ignore outliers)
                % Use 0.1% and 99.9% percentiles to remove noise/spikes
                f_low = prctile([freq_smoothed(500:end-500)], 0.1) / 1.02;  % 2% safety margin
                f_high = prctile([freq_smoothed(500:end-500)], 99.9) * 1.025; % 2.5% safety margin
                
                %% SUBSECTION 4a: Amplitude Time Series
                % Shows energy modulation of the dominant POD mode vs. time
                figure
                set(gcf,'Color',[1 1 1]);
                set(gcf,'Position',[1500 200 1435 300])
                plot(t, amp, 'k', 'LineWidth', 1.5)
                xlim([0.0, max(t)])
                ylabel('$A$', 'FontSize', 16, 'FontName', 'Times New Roman', 'FontAngle', 'italic', 'rot', 90, 'interpreter', 'LaTeX');
                xlabel('$t$ (s)', 'FontSize', 16, 'FontName', 'Times New Roman', 'FontAngle', 'italic', 'rot', 0, 'interpreter', 'LaTeX');
                f_outmode1 = fullfile(save_file, strcat(case_condition, 'Hilbert_POD_Amplitude.png'));
                if do_subsection
                    xlim([subsection_t_1, subsection_t_2])
                    f_outmode1 = fullfile(save_file, strcat(case_condition, 'Hilbert_POD_Amplitude_Section.png'));
                end
                export_fig(f_outmode1, '-m5');
                savefig(strcat(extractBefore(f_outmode1, 'png'), 'fig'))
                    
                %% SUBSECTION 4b: Instantaneous Frequency Time Series
                % Shows frequency modulation of the dominant POD mode vs. time
                % Time-varying frequency can reveal: beat frequencies, lock-in/unlock events,
                % frequency jumps between competing modes
                figure
                set(gcf,'Color',[1 1 1]);
                set(gcf,'Position',[000 200 1435 300])
                plot(t, freq_smoothed, 'k', 'LineWidth', 1.5)
                xlim([0.0, max(t)])
                ylim([f_low, f_high]) % Use percentile-based range to focus on main signal
                ylabel('$f$ (Hz)', 'FontSize', 16, 'FontName', 'Times New Roman', 'FontAngle', 'italic', 'rot', 90, 'interpreter', 'LaTeX');
                xlabel('$t$ (s)', 'FontSize', 16, 'FontName', 'Times New Roman', 'FontAngle', 'italic', 'rot', 0, 'interpreter', 'LaTeX');
                f_outmode1 = fullfile(save_file, strcat(case_condition, 'Hilbert_POD_Frequency.png'));
                if do_subsection
                    xlim([subsection_t_1, subsection_t_2])
                    f_outmode1 = fullfile(save_file, strcat(case_condition, 'Hilbert_POD_Frequency_Section.png'));
                end
                export_fig(f_outmode1, '-m5');
                savefig(strcat(extractBefore(f_outmode1, 'png'), 'fig'))
                
                %% SUBSECTION 4c: Strouhal Number Time Series
                % Dimensionless frequency: St = f * (D/U_j)
                % Enables comparison across different operating conditions and jet diameters
                figure
                set(gcf,'Color',[1 1 1]);
                set(gcf,'Position',[000 200 1435 300])
                plot(t, St_smoothed, 'k', 'LineWidth', 1.5)
                xlim([0.0, max(t)])
                ylim([f_low*St_factor, f_high*St_factor]) % Same range, but in St units
                ylabel('$St$', 'FontSize', 16, 'FontName', 'Times New Roman', 'FontAngle', 'italic', 'rot', 90, 'interpreter', 'LaTeX');
                xlabel('$t$ (s)', 'FontSize', 16, 'FontName', 'Times New Roman', 'FontAngle', 'italic', 'rot', 0, 'interpreter', 'LaTeX');
                f_outmode1 = fullfile(save_file, strcat(case_condition, 'Hilbert_POD_St.png'));
                if do_subsection
                    xlim([subsection_t_1, subsection_t_2])
                    f_outmode1 = fullfile(save_file, strcat(case_condition, 'Hilbert_POD_St_Section.png'));
                end
                export_fig(f_outmode1, '-m5');
                savefig(strcat(extractBefore(f_outmode1, 'png'), 'fig'))
                
                %% SUBSECTION 4d: Strouhal vs. Time with Amplitude Colormap
                % 2D scatter plot: (time, St) with color = amplitude
                % Reveals correlated frequency-amplitude variations (modulation patterns)
                % and can highlight lock-in events (sudden color/density changes)
                figure
                set(gcf,'Color',[1 1 1]);
                set(gcf,'Position',[000 200 1435 300])
                scatter(t, freq_smoothed*St_factor, 5, amp, 'filled')
                % Scatter parameters: 5pt markers, colored by amplitude, filled solid
                box on 
                xlim([0.0, max(t)])
                ylim([f_low*St_factor, f_high*St_factor])
                ylabel('$St$', 'FontSize', 16, 'FontName', 'Times New Roman', 'FontAngle', 'italic', 'rot', 90, 'interpreter', 'LaTeX');
                xlabel('$t$ (s)', 'FontSize', 16, 'FontName', 'Times New Roman', 'FontAngle', 'italic', 'rot', 0, 'interpreter', 'LaTeX');
                
                % Colormap: sequential (light→dark) for amplitude magnitude
                colormap(sCMRmap(1:end-50,:)) % Remove top 50 colors (too light)
                hcb = colorbar; % Show amplitude scale
                ylabel(hcb, {'$A_1$'}, 'FontSize', 16, 'FontName', 'Times New Roman', 'FontAngle', 'italic', 'rot', 0, 'interpreter', 'LaTeX');
                chandle = get(hcb, 'ylabel');
                set(chandle, 'units', 'Normalized', 'Position', [3.0, 0.55, 0]);
                
                f_outmode1 = fullfile(save_file, strcat(case_condition, 'Hilbert_POD_St_Amplitude.png'));
                if do_subsection
                    xlim([subsection_t_1, subsection_t_2])
                    f_outmode1 = fullfile(save_file, strcat(case_condition, 'Hilbert_POD_St_Amplitude_Section.png'));
                end
                export_fig(f_outmode1, '-m5');
                savefig(strcat(extractBefore(f_outmode1, 'png'), 'fig'))
        
                %% SUBSECTION 4e: 2D Spectrogram (Time-Frequency-Amplitude)
                % Visualize energy distribution across time and frequency simultaneously
                % Uses histweighted 2D binning: counts weighted by amplitude
                % Reveals frequency concentrations, bursts, and intermittency patterns
                numTimeBins = round(length(t) / 200); % ~200 snapshots per bin
                numFreqBins = 500; % Fine frequency resolution
                
                min_freq = f_low;
                max_freq = f_high;
                [tEdges, fEdges, S1] = histweighted(t, freq_smoothed, amp, numTimeBins, numFreqBins, min_freq, max_freq);
                % S1: 2D array [numFreqBins × numTimeBins], each entry = total amplitude
                % in that (time, freq) bin
                
                figure
                set(gcf,'Color',[1 1 1]);
                set(gcf,'Position',[000 200 1435 300])
                
                % Normalize by peak amplitude for consistent color scale across modes/cases
                % S1 [freq, time]: imagesc displays freq on y-axis, time on x-axis
                imagesc(tEdges, fEdges*St_factor, S1./max(S1,[],"all"));
                
                % axis xy: conventional orientation (low freq at bottom, time left→right)
                axis xy;
                
                % Use sequential colormap (light→dark) for non-negative amplitude values
                colormap(sCMRmap)
                
                % Contrast enhancement: clip colorbar to [0.5,1.0] to emphasize variations
                % (suppresses low-amplitude background, highlights high-energy regions)
                clim([0.5, 1.0])
                colorbar % Show normalized amplitude scale [0,1]
                
                % Labels: Strouhal on y, time on x
                ylabel('$St$', 'FontSize', 16, 'FontName', 'Times New Roman', 'FontAngle', 'italic', 'rot', 90, 'interpreter', 'LaTeX');
                xlabel('$t$ (s)', 'FontSize', 16, 'FontName', 'Times New Roman', 'FontAngle', 'italic', 'rot', 0, 'interpreter', 'LaTeX');
                
                f_outmode1 = fullfile(save_file, strcat(case_condition, 'Hilbert_POD_Spectrogram_St_Amplitude.png'));
                if do_subsection
                    xlim([subsection_t_1, subsection_t_2])
                    f_outmode1 = fullfile(save_file, strcat(case_condition, 'Hilbert_POD_Spectrogram_St_Amplitude_Section.png'));
                end
                export_fig(f_outmode1, '-m5'); % 5x resolution for publication quality
                savefig(strcat(extractBefore(f_outmode1, 'png'), 'fig'))
            end
        end
        
    end
end

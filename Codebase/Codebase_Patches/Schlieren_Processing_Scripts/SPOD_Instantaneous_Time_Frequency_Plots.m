%================================================================================
% PURPOSE:
%   Visualize instantaneous time-frequency analysis results computed by
%   SPOD_Instantaneous_Time_Frequency_Analysis.m. Generates spatial maps
%   of modal structures, phase portraits, temporal frequency evolution,
%   and time-frequency spectrograms.
%
% HIGH-LEVEL WORKFLOW:
%   1. Discover instantaneous frequency analysis MAT files in Time_Frequency/Data/
%   2. Load mode structures (POD_modes), temporal coefficients (a_n_complex),
%      and instantaneous frequency/amplitude (mode_inst_freq, mode_inst_amp)
%   3. Extract nozzle operating condition (NPR or Mach) from filename
%   4. Calculate ideal jet velocity and Strouhal conversion factor
%   5. If plot_mode_figures=true:
%      a) Render top 6 modal spatial structures (real, imaginary, absolute)
%      b) Generate phase portraits (histogram2 of complex amplitude in R-I plane)
%      c) Plot mode energy ranking and cumulative energy
%   6. If do_inst_freq_plots=true:
%      a) Temporal amplitude evolution a(t)
%      b) Instantaneous frequency evolution f_inst(t) [Hz]
%      c) Instantaneous Strouhal evolution St(t) = f_inst·D/u_j
%      d) Colored scatter: time vs. Strouhal, colored by amplitude
%      e) Time-frequency spectrogram: 2D histogram of f_inst vs. time, weighted by amplitude
%   7. Export PNG figures and MATLAB .fig files for each plot
%
% OUTPUT FILES:
%   - Mode_Shapes/
%     {case}_POD_Mode_{1-6}_{real|imag|abs}.png
%     Spatial modal structures (3 representations × 6 modes)
%   - Phase_Portraits/
%     {case}_POD_Phase_Portrait_a{1-4}_Real_Imag.png
%     Joint probability density in complex plane (Re vs. Im)
%   - Mode_Energy/
%     {case}_POD_Mode_Energy.png
%     Scatter + line plot: energy and cumulative energy per mode
%   - Frequency_Analysis/ (if do_inst_freq_plots=true)
%     {case}_SPOD_Inst_Time_Freq_Amplitude.png
%     {case}_SPOD_Inst_Time_Freq_Frequency.png
%     {case}_SPOD_Inst_Time_Freq_St.png
%     {case}_SPOD_Inst_Time_Freq_St_Amplitude.png (amplitude-colored scatter)
%     {case}_SPOD_Inst_Time_Freq_Spectrogram_St_Amplitude.png (2D histogram)
%   All in: {main_folder}/SPOD_Results/Time_Frequency/Figures/
%
% PATCH 2026-10-23 (Codebase_Patches):
%   - Reads SPOD_Results/Time_Frequency/Instantaneous/Data, where the analysis
%     script writes (it read Time_Frequency/Data).
%   - ROI is now a parameter (was undefined); the per-case index is i (was
%     undefined ii).
%   - NPR/Mach detection works on the file list (contains() on a cell array
%     inside if was only true when every file matched); _Mj_/_M_/_Ma_.
%   - Mode-shape, phase-portrait and energy plots use at most the number of
%     modes in the file (fewer than 6/4/10 peaks errored).
%   - Phase-portrait axis labels swapped back (x is Re, y is Im).
%   - Inner loops no longer reuse the outer loop variables k and i.
%   - 'Angles' typo for the Angled view.
%================================================================================

close all
clear all

% Add utility paths for required functions, exporting, SPOD/BMD, and miscellaneous functions
addpath(genpath("Functions"))

%% ======================== COLORMAP SELECTION ========================
% Load custom colormaps for spatial/frequency visualizations
sCMRmap = CMRmap;   % sCMRmap: [n_colors,3] sequential colormap (energy, frequency)
cmap = pogmap;      % cmap: [n_colors,3] alternative colormap (modal components)

%% ======================== ENVIRONMENT CONFIGURATION ========================
% Detect execution environment and data storage location
% Adjust file I/O paths accordingly

using_MASSIVE = 1-ispc;       % using_MASSIVE: boolean, true if Linux HPC, false if Windows PC
using_Market = false;         % using_Market: boolean, true if data on network shared drive

%% ======================== DIRECTORY CONFIGURATION ========================
% Specify folder hierarchy for instantaneous frequency result discovery
% Hierarchy: Top_folder / parent_folder / main_folder / SPOD_Results / Time_Frequency / Data / *.mat
%   Each main_folder contains: SPOD_Results/Time_Frequency/Data/ (instantaneous analysis results)
%                             SPOD_Results/Time_Frequency/Figures/ (output figures)
% Expected structure: parent folders by jet type (Axisymmetric, etc.)
%                    main folders by nozzle config (e.g., *sD_225* for spacing)

% Top-level data location (change to point to your instantaneous analysis root)
% For MASSIVE: path relative to LTRAC-Jet-Noise/ root
Top_folders = "/Soudeh/Misc/"  % Top_folders: string, instantaneous analysis root directory

% Output staging location for figures
save_folder_outer = "/home/jweightman/qk75_scratch2/JWeightman/Schlieren"
% save_folder_outer: string, root output directory for figure storage

% Wildcard patterns to select specific dataset subsets
parent_folder_str = "*Axisymmetric*"; % parent_folder_str: regex, selects by jet type
main_folder_str = "*sD_225*";         % main_folder_str: regex, selects by nozzle config

% Discover all parent folder and corresponding save folder paths matching criteria
[parent_folders, save_folders] = get_parent_path(Top_folders,parent_folder_str,...
    save_folder_outer,using_MASSIVE,using_Market);
% get_parent_path handles path resolution on MASSIVE/Windows and checks availability

%% ======================== INSTANTANEOUS FREQUENCY VISUALIZATION PARAMETERS ========================
% Control which plots and analyses to generate
% RATIONALE: allow user to selectively generate expensive plots

ROI = false;       % ROI: boolean, true = also plot ROI result files
symmetry = false;  % symmetry: boolean, true = load symmetry-imposed variant MAT files
                   % (files named *Symmetry*SPOD_Instantaneous*.mat instead of *SPOD_Instantaneous*.mat)
plot_mode_figures = true;  % plot_mode_figures: boolean, true = generate spatial mode shapes + phase portraits + energy
                           % Rationale: understand modal structure for physical interpretation
do_inst_freq_plots = false;  % do_inst_freq_plots: boolean, true = generate frequency evolution and spectrograms
                             % Rationale: visualize temporal frequency modulation and limit-cycle behavior

%% ======================== MAIN PROCESSING LOOP ========================
% Iterate over parent folders (jet types) → main folders (nozzle configs)
% For each: locate instantaneous frequency results, then generate visualizations

for m = 1:length(parent_folders)

    parent_folder = fullfile(parent_folders(m).folder,parent_folders(m).name);
    save_folder_upper = fullfile(save_folders(m).folder,save_folders(m).name);

    % Discover main folders (nozzle configurations) matching pattern
    main_folders = match_folders(parent_folder,main_folder_str);  % PATCH 2026-10-23: exact names no longer list the folder contents
    sf = [main_folders.isdir];  % Keep directory entries only
    main_folders = main_folders(sf);
    
    %% ===================== PER-MAIN-FOLDER LOOP =====================
    % Process each main folder (nozzle config): discover and visualize all cases

    for k = 1:length(main_folders)
        main_folder = fullfile(parent_folder,main_folders(k).name,'SPOD_Results','Time_Frequency','Instantaneous');
        figure_folder = fullfile(save_folder_upper,main_folders(k).name,'SPOD_Results','Time_Frequency','Figures');
        directory_data = fullfile(main_folder,'Data');  % directory_data: string, path to instantaneous MAT files
        mkdir(figure_folder);

        %% Determine viewing angle from folder path
        % Different camera orientations (Major/Minor/Angled) have different axis labels
        if contains(directory_data,'Minor')
            flow_axis = 'Minor';  % flow_axis: string descriptor for axis labeling
        elseif contains(directory_data,'Major')
            flow_axis = 'Major';
        elseif contains(directory_data,'Angled')
            flow_axis = 'Angled';
        else
            flow_axis = 'Minor';  % Default
        end
    
        %% Locate instantaneous frequency result files
        % Select pattern based on whether loading standard or symmetry-imposed variants
        if ~symmetry
            suffix='*SPOD_Instantaneous*.mat';  % Standard SPOD variants
        elseif symmetry
            suffix='*Symmetry*SPOD_Instantaneous*.mat';  % Symmetry-imposed variants
        end
        
        direc = dir([directory_data,filesep,suffix]);  % direc: struct array of file matches
        filenames={};
        [filenames{1:length(direc),1}] = deal(direc.name);  % filenames: cell array of filenames

        %% ===================== PER-CASE PROCESSING LOOP =====================
        % For each operating condition: load instantaneous analysis and generate figures

        if isempty(filenames)
            warning("No %s files in %s", suffix, directory_data);
            continue
        end
        if any(contains(filenames,'_NPR_'))
            using_npr = true;   % Dataset indexed by pressure ratio
        elseif any(~cellfun(@isempty,regexp(filenames,'_(Mj|M|Ma)_\d','once')))
            using_npr = false;  % Dataset indexed by Mach number
        else
            error("Can't tell NPR from Mach in %s", filenames{1});
        end

        %% ===================== COMPUTE JET VELOCITY & STROUHAL FACTOR =====================
        % Calculate ideal jet velocity u_j from operating condition
        % Used to convert frequency to non-dimensional Strouhal number

        if using_npr
            [nozzle_list, NPR_list, NPR_factor] = get_filename_params(using_npr, filenames);
        else
            [nozzle_list, M_list, M_factor] = get_filename_params(using_npr, filenames);
        end
    
        for i = 1:length(filenames)
            condition = filenames{i}(1:end-4);  % condition: string, filename without .mat extension
            
            % Skip files based on filtering options (ROI, symmetry mismatch)
            if ~ROI && contains(condition,'ROI')
                continue  % Skip ROI-specific files if ROI flag is false
            elseif ~symmetry && contains(condition,'Symmetry')
                continue  % Skip symmetry files if symmetry flag is false
            else
                load_file = fullfile(directory_data, [condition,'.mat']);
            end
    
            % Load instantaneous frequency analysis results
            % Expected variables: POD_modes, a_n_complex, mode_inst_freq, mode_inst_amp, 
            %                     Energy, Mode, x, y, fps, dt, D
            load(load_file);
    
            % Handle alternative POD output format (velocity components)
            if exist('POD_u') == 1
                POD_modes = cat(3,POD_u,POD_v);  % Concatenate velocity components
            end

            % Extract case condition label for output filenames
            case_condition = extractBefore(condition,'SPOD_Inst');

            if using_npr
                NPR = NPR_list(i)/(10^(NPR_factor-1));
                [u_j,D_j] = get_ideal_jet_velocity_diameter(using_npr, NPR, 1, D);
            else
                M = M_list(i)/(10^(M_factor-1));
                [u_j,D_j] = get_ideal_jet_velocity_diameter(using_npr, M, 1, D);
            end

            % Strouhal conversion factor: St = f·D·1e-3 / u_j
            % D: [mm] → convert to [m]; u_j: [m/s]; f: [Hz]
            St_factor = (D_j*1e-3)/u_j;  % St_factor: scalar [s], St = freq·St_factor 
            
            %% ===================== SPATIAL MODE VISUALIZATION (plot_mode_figures) =====================
            % Visualize spatial structure of the 6 dominant modes
            % Three representations per mode: real part, imaginary part, absolute value
            % Plus phase portraits (complex plane) and energy ranking
            % RATIONALE: understand modal structure, phase relationships, and relative contributions
            
            if plot_mode_figures
                %% --- MODE SHAPES SETUP ---
                % Create subdirectory for mode visualizations
                save_file = fullfile(figure_folder,'Mode_Shapes');
                mkdir(save_file);
    
                % Extract flow variable names from filename (e.g., _Vars_xy → ['x','y'])
                % RATIONALE: distinguish between velocity components (u,v), density/Schlieren (I), etc.
                variables = extractAfter(condition,'_Vars_');
                flow_variables = {};
                for j = 1:length(variables)
                    flow_variables{j} = variables(j);  % flow_variables: cell array of chars
                end
                if length(flow_variables) == 0
                    flow_variables{1} = 'I';  % Default to intensity (Schlieren) if not specified
                end
    
                %% --- PLOT REAL, IMAGINARY, AND ABSOLUTE VALUE FOR 6 MODES ---
                % For each of 6 modes and each flow variable: generate 3 representations
                n_modes_file = size(POD_modes,3);
                for kk = 1:min(6,n_modes_file)  % kk: mode index [1,6]
                    for j = 1:length(flow_variables)
                        %% --- REAL PART OF MODE ---
                        % Plot real part of modal structure (in-phase spatial component)
                        % RATIONALE: real part determines symmetric response to driving
                        File = sprintf('POD_Mode_%1d_real.png',kk);
                        f_outmode = fullfile(save_file,[condition,'_',File]);
                        figure(1)
                        set(gcf,'Color', [1 1 1], 'Visible','On');
                        pcolor(x,y,real(POD_modes(:,:,kk,j)))  % pcolor: pseudocolor plot of real component
                        shading interp  % Smooth color interpolation
                        axis equal tight
                        colormap(cmap)
                        set(gca,'layer','top')  % Place labels above pcolor
                        title({sprintf('$\\phi^{%1d}_%s$',kk,"R")},'FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX');
                        xlabel('$x/D_e$','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX'); 
                        if strcmp(flow_axis,'Major')
                        ylabel({'$y/D_e$'},'FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX');
                        else
                        ylabel({'$z/D_e$'},'FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX');
                        end
                        export_fig(f_outmode,'-m5');  % Export at 5x resolution
                        savefig(strrep(f_outmode,'png','fig'))  % Also save as MATLAB .fig
        
                        %% --- IMAGINARY PART OF MODE ---
                        % Plot imaginary part (quadrature spatial component)
                        % RATIONALE: imaginary part encodes 90-degree phase shift; identifies waves
                        File = sprintf('POD_Mode_%1d_imag.png',kk);
                        f_outmode = fullfile(save_file,[condition,'_',File]);
                        figure(1)
                        set(gcf,'Color', [1 1 1], 'Visible','On');
                        pcolor(x,y,imag(POD_modes(:,:,kk,j)))  % pcolor: pseudocolor plot of imag component
                        shading interp
                        axis equal tight
                        colormap(cmap)
                        set(gca,'layer','top')
                        title({sprintf('$\\phi^{%1d}_%s$',kk,"I")},'FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX');
                        xlabel('$x/D_e$','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX'); 
                        if strcmp(flow_axis,'Major')
                        ylabel({'$y/D_e$'},'FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX');
                        else
                        ylabel({'$z/D_e$'},'FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX');
                        end
                        export_fig(f_outmode,'-m5');
                        savefig(strrep(f_outmode,'png','fig'))
        
                        %% --- ABSOLUTE VALUE (MAGNITUDE) OF MODE ---
                        % Plot |POD_modes| = sqrt(real^2 + imag^2)
                        % RATIONALE: magnitude shows spatial extent independent of phase
                        File = sprintf('POD_Mode_%1d_abs.png',kk);
                        f_outmode = fullfile(save_file,[condition,'_',File]);
                        figure(1)
                        set(gcf,'Color', [1 1 1], 'Visible','On');
                        pcolor(x,y,abs(POD_modes(:,:,kk,j)))  % pcolor: magnitude (always non-negative)
                        shading interp
                        axis equal tight
                        colormap(sCMRmap)  % Use sequential colormap for magnitude
                        set(gca,'layer','top')
                        title({sprintf('$\\phi^{%1d}_%s$',kk,"{Abs}")},'FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX');
                        xlabel('$x/D_e$','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX'); 
                        if strcmp(flow_axis,'Major')
                        ylabel({'$y/D_e$'},'FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX');
                        else
                        ylabel({'$z/D_e$'},'FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX');
                        end
                        export_fig(f_outmode,'-m5');
                        savefig(strrep(f_outmode,'png','fig'))
                    end
                end
                
                %% --- PHASE PORTRAIT VISUALIZATION (Complex Plane) ---
                % Visualize relationship between real and imaginary temporal coefficients
                % 2D histogram of (Re(a_n), Im(a_n)) in complex plane for first 4 modes
                % RATIONALE: phase portrait reveals limit-cycle oscillations in modal amplitude
                %            identifies whether oscillations follow circular (Hopf) or complex patterns
                
                save_file = fullfile(figure_folder,'Phase_Portraits');
                mkdir(save_file);
                
                for II = 1:min(4,n_modes_file)  % II: temporal mode index [1,4] (limit to 4 most energetic modes)
                    File = sprintf('POD_Phase_Portrait_a%1d_Real_Imag.png',II);
                    f_outmode = fullfile(save_file,[condition,'_',File]);
                    
                    % Generate 2D histogram bins
                    X = [-2:0.20:2];  % X: histogram bins for real axis [-2, 2]
                    Y = [-2:0.20:2];  % Y: histogram bins for imaginary axis [-2, 2]
                    
                    % Generate 2D histogram bins
                    X = [-2:0.20:2];  % X: histogram bins for real axis [-2, 2]
                    Y = [-2:0.20:2];  % Y: histogram bins for imaginary axis [-2, 2]
                    
                    % Normalize temporal coefficients by mean radius
                    r=mean(sqrt(real(a_n_complex(:,II)).^2+imag(a_n_complex(:,II)).^2));  % r: mean amplitude envelope
                    
                    % Compute 2D histogram of normalized temporal coefficients
                    figure(1)
                    h = histogram2(real(a_n_complex(:,II))/r,imag(a_n_complex(:,II))/r,X,Y);  % histogram2: 2D histogram [counts]
                    Z = [h.Values]';  % Z: histogram counts [n_bins, n_bins]
                    
                    % Regenerate bins for contourf plot (match histogram resolution)
                    set(gcf,'Color', [1 1 1], 'Visible','On');
                    X = [-2:4/(size(Z,1)-1):2];  % Recompute X bins to match Z dimensions
                    Y = [-2:4/(size(Z,1)-1):2];  % Recompute Y bins to match Z dimensions
                    
                    % Plot 2D histogram as contourf (filled contours with 100 levels)
                    contourf(X,Y,Z,100,'Linestyle','None')  % contourf: filled contour plot
                    colormap(sCMRmap)
                    set(gca,'layer','top')
                    
                    % Label axes with mathematical notation
                    xlabel({strcat(sprintf('$Re(a_%1d)',II),'/\langle r_m \rangle$')},'FontSize',14,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX');
                    ylabel({strcat(sprintf('$Im(a_%1d)',II),'/\langle r_m \rangle$')},'FontSize',14,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX');
                    
                    % Set tick marks and axes
                    ytic=[-1 0 1];  % Y-axis ticks for readability
                    xtic=[-1 0 1];  % X-axis ticks for readability
                    axis equal
                    set(gca,'YTick',ytic)
                    set(gca,'XTick',xtic)
                    c = colorbar;  % Add colorbar showing histogram count scale
                    
                    % Save phase portrait
                    export_fig(f_outmode,'-m5');
                    savefig(strrep(f_outmode,'png','fig'))
            
                end  % End phase portrait loop
        
                %% --- ENERGY RANKING VISUALIZATION ---
                % Dual-axis plot: scatter of energy values + cumulative energy curve
                % RATIONALE: identify which modes dominate the signal energy
                %            cumulative plot shows convergence (diminishing returns from additional modes)
                
                save_file = fullfile(figure_folder,'Mode_Energy');
                mkdir(save_file);
        
                % Compute cumulative energy across modes
                clearvars Cum_Energy
                Cum_Energy = cumsum(Energy);  % Cum_Energy: cumulative sum of Energy [%]
                n_e = min(10,length(Energy));
            
                figure
                set(gcf,'Color', [1 1 1], 'Visible','On');
                xlim([0,21])  % X-axis limit: [0, 21] modes
                hold on
                
                % Create dual-axis plot: specific energy (left) and cumulative (right)
                [hAx,hLine1,hLine2] = plotyy(Mode(1,1:n_e),Energy(1,1:n_e),[1:n_e],Cum_Energy(1,1:n_e),'scatter','plot');
                % plotyy: two-axis plot function with scatter on left, line on right
                
                % Format scatter plot (left axis)
                hLine1.Marker = 'd';  % Diamond markers for mode energies
                hLine1.MarkerFaceColor = [0.3 0.15 0.65];  % Purple fill
                hLine1.MarkerEdgeColor = [0.3 0.15 0.65];
                
                % Format line plot (right axis)
                hLine2.LineWidth = 2;  % Thicker line for cumulative energy
                
                % Axis labels with LaTeX formatting
                ylabel(hAx(1),'$Specific~Energy~\%$','FontSize',14,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX') % left y-axis
                ylabel(hAx(2),'$Cumulative~Specific~Energy~\%$','FontSize',14,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX') % right y-axis
                set(hAx,{'ycolor'},{'k';'k'})  % Set both axis colors to black
                xlabel('$Mode$','FontSize',14,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX')
                box on  % Add box around plot
                % title(sprintf('Total Energy: %3.1e',(energy_total)));
                
                % Save energy plot
                f_outmode = fullfile(save_file,[condition,'_POD_Mode_Energy.png']);
                export_fig(f_outmode,'-m5');
                savefig(strrep(f_outmode,'png','fig'))
                close(gcf)   % PATCH 2026-10-23: close each figure once saved (they piled up)
            end  % End plot_mode_figures conditional block
    
            %% ===================== INSTANTANEOUS FREQUENCY VISUALIZATION (do_inst_freq_plots) =====================
            % Visualize temporal evolution of modal frequency, amplitude, and time-frequency spectrogram
            % RATIONALE: understand frequency modulation mechanism and energy distribution across frequency/time
            %            identifies non-stationary or limit-cycle dynamics
            
            if do_inst_freq_plots 
                %% Setup instantaneous frequency analysis
                save_file = fullfile(figure_folder,'Frequency_Analysis');
                mkdir(save_file);
                
                % Create time vector from frame count and temporal spacing
                t = ([1:size(mode_inst_phase,1)]-1).*dt;  % t: time vector [n_time, 1] in [s]
                smooth_factor = 300;  % smooth_factor: scalar, smoothing window length for temporal filtering
                
                % Optional subsection analysis flag (zoom to specific time range)
                do_subsection = false;  % do_subsection: boolean, true = plot only subsection_t_1:subsection_t_2
                subsection_t_1 = 0.3;  % subsection_t_1: start time [s] for subsection analysis
                subsection_t_2 = 1.2;  % subsection_t_2: end time [s] for subsection analysis
    
                % Focus analysis on first (dominant) mode
                mode_n = 1;  % mode_n: scalar, mode index for detailed frequency analysis
        
                %% --- TEMPORAL AMPLITUDE EVOLUTION ---
                % Plot amplitude envelope of first mode over time
                % RATIONALE: shows energy modulation (beating, growth, decay)
                
                if exist('mode_inst_amp')
                    amp = mode_inst_amp(:,1);  % amp: [n_time, 1], instantaneous amplitude from Hilbert transform
                else
                    % Fallback: compute amplitude from temporal coefficients
                    amp = smooth(abs(a_n_complex(:,mode_n)),smooth_factor);  % amp: smoothed magnitude envelope [m/s]
                end
    
                % Plot amplitude vs. time
                figure
                set(gcf,'Color',[1 1 1]);
                set(gcf,'Position',[1500 200 1435 300])  % [left, bottom, width, height] in pixels
                plot(t,amp,'k','LineWidth',1.5)  % Black line, width 1.5 pt
                xlim([0.0,max(t)])  % X-limit: full time range
                % ylim([-23000,-15000])  % Commented: user can adjust Y-limits as needed
                ylabel('$A$','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX');
                xlabel('$t$ (s)','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX');
                f_outmode1 = fullfile(save_file,strcat(case_condition,'SPOD_Inst_Time_Freq_Amplitude.png'));
                if do_subsection
                    xlim([subsection_t_1,subsection_t_2])  % Zoom to subsection if enabled
                    f_outmode1 = fullfile(save_file,strcat(case_condition,'SPOD_Inst_Time_Freq_Amplitude_Section.png'));
                end
                export_fig(f_outmode1,'-m5');  % Export at 5x resolution
                savefig(strcat(extractBefore(f_outmode1,'png'),'fig'))  % Also save MATLAB .fig
                close(gcf)   % PATCH 2026-10-23: close each figure once saved (they piled up)
                    
                %% --- INSTANTANEOUS FREQUENCY EVOLUTION ---
                % Plot frequency modulation of dominant mode over time
                % RATIONALE: detect frequency locking, bifurcations, or chaotic dynamics
                
                % Extract and normalize frequency data
                freq_smoothed = abs(mode_inst_freq(:,mode_n));  % freq_smoothed: [n_time, 1] instantaneous frequency [Hz]
                St_smoothed = St_factor.*freq_smoothed;        % St_smoothed: [n_time, 1] Strouhal number (non-dimensional)
        
                % Compute frequency axis limits from middle 99.8% percentile (robust to outliers)
                f_low = prctile([freq_smoothed(500:end-500)],0.1)/1.02;   % f_low: lower frequency bound [Hz]
                f_high = prctile([freq_smoothed(500:end-500)],99.9)*1.025; % f_high: upper frequency bound [Hz]
            
                % Create frequency evolution figure
                figure
                set(gcf,'Color',[1 1 1]);
                set(gcf,'Position',[000 200 1435 300])
                plot(t,freq_smoothed,'k','LineWidth',1.5)  % Black curve
                xlim([0.0,max(t)])  % Full time range
                ylim([f_low,f_high])  % Frequency bounds from percentiles
                ylabel('$f$ (Hz)','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX');
                xlabel('$t$ (s)','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX');
                f_outmode1 = fullfile(save_file,strcat(case_condition,'SPOD_Inst_Time_Freq_Frequency.png'));
                if do_subsection
                    xlim([subsection_t_1,subsection_t_2])  % Zoom to subsection if enabled
                    f_outmode1 = fullfile(save_file,strcat(case_condition,'SPOD_Inst_Time_Freq_Frequency_Section.png'));
                end
                export_fig(f_outmode1,'-m5');
                savefig(strcat(extractBefore(f_outmode1,'png'),'fig'))
                close(gcf)   % PATCH 2026-10-23: close each figure once saved (they piled up)
                
                %% --- STROUHAL NUMBER EVOLUTION ---
                % Plot non-dimensional frequency Strouhal St = f·D/u_j
                % RATIONALE: normalize frequency by jet velocity and diameter for comparison across conditions
                %            St identifies universal frequency signatures (e.g., St ≈ 0.3 for shear layer)
                
                figure
                set(gcf,'Color',[1 1 1]);
                set(gcf,'Position',[000 200 1435 300])
                plot(t,St_smoothed,'k','LineWidth',1.5)  % St_smoothed: Strouhal number [dimensionless]
                xlim([0.0,max(t)])
                ylim([f_low*St_factor,f_high*St_factor])  % Convert frequency bounds to Strouhal
                ylabel('$St$','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX');
                xlabel('$t$ (s)','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX');
                f_outmode1 = fullfile(save_file,strcat(case_condition,'SPOD_Inst_Time_Freq_St.png'));
                if do_subsection
                    xlim([subsection_t_1,subsection_t_2])
                    f_outmode1 = fullfile(save_file,strcat(case_condition,'SPOD_Inst_Time_Freq_St_Section.png'));
                end
                export_fig(f_outmode1,'-m5');
                savefig(strcat(extractBefore(f_outmode1,'png'),'fig'))
                close(gcf)   % PATCH 2026-10-23: close each figure once saved (they piled up)
                
                %% --- SCATTER PLOT: STROUHAL vs. TIME COLORED BY AMPLITUDE ---
                % Plot frequency vs. time with point colors indicating amplitude
                % RATIONALE: reveals frequency modulation with energy weighting
                %            identify non-stationary regimes and amplitude-frequency correlations
                
                figure
                set(gcf,'Color',[1 1 1]);
                set(gcf,'Position',[000 200 1435 300])
                scatter(t,freq_smoothed*St_factor,5,amp,'filled')  % scatter: [n_time, 1] points colored by amplitude
                box on 
                xlim([0.0,max(t)])
                ylim([f_low*St_factor,f_high*St_factor])
                ylabel('$St$','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX');
                xlabel('$t$ (s)','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX');
                colormap(sCMRmap(1:end-50,:))  % Use sCMRmap but truncate to improve color distribution
                hcb = colorbar;
                ylabel(hcb,{'$A_1$'},'FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX');  % Colorbar label
                chandle = get(hcb,'ylabel');
                set(chandle,'units','Normalized','Position',[3.0,0.55,0]);  % Position colorbar label
                f_outmode1 = fullfile(save_file,strcat(case_condition,'SPOD_Inst_Time_Freq_St_Amplitude.png'));
                if do_subsection
                    xlim([subsection_t_1,subsection_t_2])
                    f_outmode1 = fullfile(save_file,strcat(case_condition,'SPOD_Inst_Time_Freq_St_Amplitude_Section.png'));
                end
                export_fig(f_outmode1,'-m5');
                savefig(strcat(extractBefore(f_outmode1,'png'),'fig'))
                close(gcf)   % PATCH 2026-10-23: close each figure once saved (they piled up)
        
                %% --- TIME-FREQUENCY SPECTROGRAM (2D Histogram) ---
                % Compute and visualize weighted 2D histogram of frequency vs. time
                % RATIONALE: energy landscape reveals dominant frequencies and their temporal evolution
                %            identifies transient frequency components and quasi-periodic oscillations
                
                % Setup spectrogram bins
                numTimeBins = round(length(t)/200);     % numTimeBins: scalar, # time bins in spectrogram (adaptive)
                numFreqBins = 500;                      % numFreqBins: scalar, # frequency bins (high resolution)
                
                % Frequency range limits
                min_freq = f_low;   % min_freq: lower frequency bound [Hz]
                max_freq = f_high;  % max_freq: upper frequency bound [Hz]
                
                % Compute weighted 2D histogram with amplitude as weights
                [tEdges, fEdges, S1] = histweighted(t,freq_smoothed,amp,numTimeBins,numFreqBins,min_freq,max_freq);
                % tEdges: [numTimeBins+1, 1] time bin edges
                % fEdges: [numFreqBins+1, 1] frequency bin edges
                % S1: [numFreqBins, numTimeBins] weighted histogram (energy per bin)
                
                % Create spectrogram figure
                figure
                set(gcf,'Color',[1 1 1]);
                set(gcf,'Position',[000 200 1435 300])
                imagesc(tEdges, fEdges*St_factor, S1./max(S1,[],"all"));  % imagesc: normalized to [0,1]
                axis xy; % put low freq at bottom (standard time-frequency layout)
                colormap(sCMRmap)
                clim([0.5,1.0])  % Color limits emphasize high-energy regions
                colorbar
                ylabel('$St$','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX');
                xlabel('$t$ (s)','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX');
                f_outmode1 = fullfile(save_file,strcat(case_condition,'SPOD_Inst_Time_Freq_Spectrogram_St_Amplitude.png'));
                if do_subsection
                    xlim([subsection_t_1,subsection_t_2])  % Optional zoom to subsection
                    f_outmode1 = fullfile(save_file,strcat(case_condition,'SPOD_Inst_Time_Freq_Spectrogram_St_Amplitude_Section.png'));
                end
                export_fig(f_outmode1,'-m5');  % Export at 5x resolution
                savefig(strcat(extractBefore(f_outmode1,'png'),'fig'))  % Save MATLAB .fig
                close(gcf)   % PATCH 2026-10-23: close each figure once saved (they piled up)
                
            end  % End do_inst_freq_plots conditional block
        end  % End per-case processing loop (for i = 1:length(filenames))
    end  % End per-main-folder loop (for k = 1:length(main_folders))
end  % End per-parent-folder loop (for m = 1:length(parent_folders))

%% ======================== SCRIPT COMPLETION ========================
% All cases processed; all figures exported to figure_folder subdirectories

% SPOD_Plots.m
% =====================================================================
% PURPOSE:
%   Visualize SPOD results from pre-computed MAT files. Generates publication-quality
%   figures including waterfall plots (NPR/Mach vs. frequency), overall acoustic energy
%   (OAE) comparisons, spatial mode shapes, eigenvalue spectra, and modal videos.
%
% WORKFLOW:
%   1. Discover SPOD result files (*Nfft*.mat) in parent_folder/Data/ subdirectories
%   2. Load eigenvalues L, Strouhal numbers St, and modes P from MAT files
%   3. Detect operating condition parameterization (NPR or Mach) from filenames
%   4. Generate selected figure types based on plot flags:
%      - Waterfall: NPR/Mach vs. St heatmap of log(eigenvalues)
%      - OAE: integrate eigenvalues over St ∈ [0.01, 1.0], plot vs. NPR/Mach
%      - Mode shapes: real and absolute value of modes at top n_peaks frequencies
%      - Spectra: eigenvalue vs. St for all modes (loglog plot)
%      - Specific frequency: mode shapes at user-selected frequencies
%      - Peak videos: phase-animated mode shapes (rotating complex phase)
%   5. Export figures to parent_folder/Figures/ subdirectories (.png and .fig)
%
% OUTPUT FILES:
%   All saved to parent_folder/Figures/ with subdirectories:
%   - Waterfall/{nozzle}_NPR_{min}_{max}_SPOD_Spectra_Waterfall.png
%   - Comparisons/{nozzle_type}_NPR_{min}_{max}_SPOD_Spectra_OAE_All_Modes.png
%   - Mode_Shapes/{nozzle}_NPR_{NPR}_SPOD_Mode_{m}_Peak_{k}.png (real and _abs.png)
%   - Spectra/Mode_Energy_Spectra_{nozzle}_NPR_{NPR}_{SPOD_details}.png
%   - Mode_Shapes_Specific/{nozzle}_NPR_{NPR}_SPOD_Mode_{m}_St_{St}.png
%   - Peak_Videos/{nozzle}_Phase_Angle_St_{St}.mp4

clear all; close all;

%% ======================== PATH SETUP ========================
% Add utility paths for required functions, exporting, SPOD/BMD, and miscellaneous functions
addpath(genpath("Functions"))
%% ======================== COLORMAP SELECTION ========================
sCMRmap = CMRmap;  % sCMRmap: [n_colors, 3] double, sequential colormap (blue → red)
cmap = pogmap;     % cmap: [n_colors, 3] double, alternative colormap for mode shapes

% ENVIRONMENT CONFIGURATION
% =====================================================================
% Execution platform detection (determines file path structure)
using_MASSIVE = 1-ispc;  % using_MASSIVE: bool, 1 if HPC (Linux), 0 if Windows PC
using_Market = false;  % using_Market: bool, true = snapshot files on Market shared drive (Monash storage)

%% ======================== PLOTTING CONFIGURATION ========================
% Control which figure types to generate
% RATIONALE: Enable only desired plots to reduce processing time and clutter

symmetry_imposed = false;        % symmetry_imposed: boolean, true = load from Symmetry_Imposed/ subdirectory
                                 % to analyze symmetric/antisymmetric SPOD decompositions separately

% Typical Settings to turn on
plot_all_mode_shapes = true;    % plot_all_mode_shapes: boolean, spatial mode shapes at n_peaks highest-prominence frequencies
plot_spectra = true;             % plot_spectra: boolean, eigenvalue vs. St loglog plot for all modes

% Other options if needed
% PATCH 2026-10-23 (Codebase_Patches):
%   - Waterfall: St_array{a:b}(:) on a cell range errored for > 1 case; the
%     cases of each nozzle are now put on the first case's St axis and
%     sorted by NPR/M. Nozzles are matched exactly (contains() also matched
%     longer names).
%   - OAE: looped over size(St_array,1) = 1 (only the first case), indexed
%     L_array{k} instead of {kk}, and trapz(St, L, 2) integrated across modes
%     with St as the coordinate (error). Now: sum over modes, integrate over
%     St. Legend/file names come from the main folder (were cut at '_Thi').
%   - Peak videos: the PNG clean-up used undefined N and filename; the auto
%     peak branch (use_first_peaks) used an undefined target_freqs; cases
%     beyond target_freqs_list now fall back to the peaks.
%   - Mode shapes: fewer peaks than n_peaks no longer errors (index 0).
%   - Mach files: _Mj_/_M_/_Ma_ via get_filename_params; Mach titles show
%     M_j (they printed the integer code) and the NPR title format is built
%     from num2str(NPR_factor-1) (it subtracted 1 from a character).
%   - plot_specific_freq: target indices beyond the spectrum are dropped and a
%     missing condition is skipped with a warning.
plot_waterfall = false;          % plot_waterfall: boolean, NPR/Mach vs. St heatmap of log(eigenvalues)
plot_OAE = false;                % plot_OAE: boolean, overall acoustic energy (integrated eigenvalues St ∈ [0.01,1.0])
plot_specific_freq = false;      % plot_specific_freq: boolean, mode shapes at user-specified target frequencies
produce_peak_video = false;      % produce_peak_video: boolean, phase-animated MP4 videos of modes

%% ======================== SOURCE DATA LOCATIONS ========================
% Root directory containing case subdirectories

Top_folders = "/home/jweightman/qk75_scratch2/JWeightman"; % Root directory for raw image data access. Path after R-ENG-MAE-LTRAC-Jet-Noise (including /) for Market
                                                   % Can be multiple paths; adjusted for MASSIVE/Windows
save_folder_outer = "/home/jweightman/qk75_scratch2/JWeightman"; % Usually set to same as Top_folders. Output root for MAT file storage (Local folder)

% Wildcard patterns for automatic folder discovery (regex matching)
parent_folder_str = ["*Schlier*"];      % parent_folder_str: regex pattern (select by jet type/axis)
main_folder_str = ["*ONR*"];         % main_folder_str: regex pattern (select by nozzle config)

% Retrieve paths matching wildcard criteria via get_parent_path utility
% Returns cell arrays of parent and save folder absolute paths
[parent_folders, save_folders] = get_parent_path(Top_folders,parent_folder_str,save_folder_outer,using_MASSIVE,using_Market);


%% ======================== MAIN PROCESSING LOOP ========================
% Iterate over parent directories → case folders → SPOD files
% For each: load eigenvalues, generate selected plots, export figures

for m = 1:length(parent_folders)

    parent_folder = fullfile(parent_folders(m).folder,parent_folders(m).name);
    save_folder_upper = fullfile(save_folders(m).folder,save_folders(m).name);

    % Find all subfolders matching main_folder_str pattern
    main_folders = match_folders(parent_folder,main_folder_str);  % PATCH 2026-10-23: exact names no longer list the folder contents
    sf = [main_folders.isdir];
    main_folders = main_folders(sf);
    
    % Loop through each main_folder variant
    for k = 1:length(main_folders)
        %% ===================== PER-CASE LOOP =====================

        %% Determine SPOD data source path (standard or symmetry-imposed)
        if ~symmetry_imposed
            main_folder = fullfile(parent_folder,main_folders(k).name,'SPOD_Results');  % parent_folders: standard SPOD results path
            save_folder = fullfile(save_folder_upper,main_folders(k).name,'SPOD_Results');
        else
            main_folder = fullfile(parent_folder,main_folders(k).name,'SPOD_Results','Symmetry_Imposed');  % Symmetry-decomposed results
            save_folder = fullfile(save_folder_upper,main_folders(k).name,'SPOD_Results','Symmetry_Imposed');
        end

        SPOD_dir = fullfile(main_folder,'Data');  % SPOD_dir: string, path to SPOD MAT files
    
        % Skip if Data subdirectory does not exist
        if exist(SPOD_dir) ~= 7
            continue
        end

        %% Discover SPOD result files
        suffix = strcat('*Nfft*.mat');  % Pattern to match SPOD filenames
        case_list = dir(fullfile(SPOD_dir,suffix));
        case_list = {case_list.name};  % case_list: cell array of SPOD MAT filenames
        if isempty(case_list)
            warning("No %s files in %s", suffix, SPOD_dir);
            continue
        end

        %% Detect operating condition parameterization
        % RATIONALE: NPR (Nozzle Pressure Ratio) for heated jets, Mach (Mj) for ideally-expanded jets
        if contains(case_list{1},'_NPR_')
            using_npr = true;   % using_npr: boolean, true = NPR parameterization
        elseif ~isempty(regexp(case_list{1},'_(Mj|M|Ma)_\d','once'))
            using_npr = false;  % using_npr: false = Mach number parameterization
        else
            error("Can't tell NPR from Mach in %s", case_list{1});
        end
        
        %% Determine viewing angle from filename for axis labels
        % RATIONALE: Different camera orientations require different axis label conventions
        if contains(case_list{1},'Major')
            xlabel_string = '$x/D_e$';    % xlabel_string: LaTeX string, horizontal axis (flow direction)
            ylabel_string = '$y/D_e$';    % ylabel_string: LaTeX string, Major axis (vertical)
        elseif contains(case_list{1},'Minor')
            xlabel_string = '$x/D_e$';
            ylabel_string = '$z/D_e$';    % Minor axis (horizontal spanwise)
        elseif contains(case_list{1},'Angled')
            xlabel_string = '$x/D_e$';
            ylabel_string = '$z^*/D_e$';  % Angled axis (rotated coordinate)
        else
            xlabel_string = '$x/D$';      % Default labels if no match
            ylabel_string = '$y/D$';
        end

        %% Extract operating condition parameters from filenames
        % Parse nozzle names and NPR/Mach values from all files
        clearvars nozzle_list NPR M SPOD_details
        if using_npr
            %% NPR parameterization
            [nozzle_list, NPR, NPR_factor] = get_filename_params(using_npr, case_list);
            token = '_NPR_\d+_';
        else
            %% Mach parameterization
            [nozzle_list, M, M_factor] = get_filename_params(using_npr, case_list);
            token = '_(Mj|M|Ma)_\d+_';
        end
        for kk = 1:length(case_list)
            [~, token_end] = regexp(case_list{kk}, token, 'once');
            SPOD_details{kk} = case_list{kk}(token_end+1:end-4);  % SPOD_details: SPOD settings string
        end
        
        %% Load all SPOD eigenvalues and Strouhal numbers into array
        % RATIONALE: Consolidate data from multiple files for co-plotting across NPR/Mach conditions
        clearvars L_array St_array
        L_array = {};
        St_array = {};
        for i = 1:length(case_list)  
    
            load_file = fullfile(SPOD_dir,case_list{i});  % load_file: string, path to SPOD MAT file
            file=matfile(load_file);  % file: matfile object, lazy loading for large files
        
            L_array{i} = file.L(:,:);  % L_array: [n_cases, n_freq, n_modes] double, eigenvalues (modal energy)
            St_array{i} = file.St;       % St_array: [n_cases, n_freq] double, Strouhal numbers
        
        end
        
        %% Normalize operating condition values for plotting
        if using_npr
            x_string = 'NPR';                       % x_string: string, x-axis label for waterfall
            X_list = NPR./10^(NPR_factor-1);       % X_list: [1, n_cases] double, normalized NPR values
                                                    % RATIONALE: convert scaled integers to decimals (e.g., 250 → 2.50)
        else
            x_string = '$M$';                       % Mach number label
            X_list = M./(10^(M_factor-1));         % X_list: normalized Mach numbers
        end

    
        %% ===================== MODE SHAPE VISUALIZATION (AUTO PEAK DETECTION) =====================
        % Plot spatial structure of modes at n_peaks highest-prominence frequencies
        % RATIONALE: identify dominant coherent structures from eigenvalue spectrum peaks
        
        if plot_all_mode_shapes
            save_file = fullfile(save_folder,'Figures','Mode_Shapes');
            mkdir(save_file)
        
            % Select n_peaks highest-prominence eigenvalue peaks for mode 1 and 2
            % Real component visualizes phase structure; absolute value shows energy envelope
            n_peaks = 2;  % n_peaks: int, number of highest-prominence peaks to visualize
            
            for i = 1:length(case_list)
            
                load_file = fullfile(SPOD_dir,case_list{i});
                file = matfile(load_file);  % Lazy-load from MAT file
                x = file.x;  % x: [1, n_x] double, streamwise grid [D_e]
                y = file.y;  % y: [1, n_y] double, radial/spanwise grid [D_e]
                f = file.f;  % f: [1, n_freq] double, frequencies [Hz]
        
                for mode_n = 1:2%1:1  % Loop over mode numbers (currently mode 1 only)
                    % PEAK DETECTION: findpeaks identifies local maxima in eigenvalue spectrum
                    % prominence: measure of peak distinctness from surrounding valleys (higher = more distinct)
                    [mode_peaks,mode_peak_index,~,mode_peak_prominence] = findpeaks(L_array{i}(:,mode_n));
                    % Sort peaks by prominence (descending) to prioritize most distinct peaks
                    [mode_peak_prominence,sort_inds] = sort(mode_peak_prominence,'descend');
                    mode_peaks = mode_peaks(sort_inds);
                    mode_peak_index = mode_peak_index(sort_inds);
        
                    % LOW-FREQUENCY FILTERING: remove peaks at index < 3
                    % RATIONALE: first few frequency bins contaminated by mean flow/drift artifacts
                    mode_peak_prominence(mode_peak_index < 3) = [];
                    mode_peaks(mode_peak_index < 3) = [];
                    mode_peak_index(mode_peak_index < 3) = [];
        
                    if mode_n == 1
                        mode_1_peak = mode_peak_index(1);  % mode_1_peak: int, index of fundamental frequency (highest prominence)
                    end
                    n_peaks_found = min(n_peaks, numel(mode_peak_index));
                    mode_peak_index = mode_peak_index(1:n_peaks_found);


                    % OPTIONAL HARMONIC FILTERING (currently disabled):
                    % Remove peaks above 1.5× fundamental frequency to isolate subharmonics
                    % mode_peak_index(mode_peak_index > 1.5*mode_peak_index(1)) = [];

                    % Add zeroth frequency peak (index=1) as final reference for comparison
                    mode_peak_index(n_peaks_found+1) = 1;

                    % DUAL VISUALIZATION LOOP: plot real(P) and abs(P) for each peak
                    for k = 1:n_peaks_found + 1
                        P = file.P(mode_peak_index(k),:,:,mode_n);  % P: [1, n_y, n_x] complex, mode shape at peak frequency
        
                        % REAL COMPONENT: visualizes oscillatory phase structure (positive/negative regions)
                        figure(2)
                        set(gcf,'Color',[1 1 1])
                        set(gcf,'Position',[300,200,600,360])
                        pcolor(x,y,squeeze(real(P)))  % real(P): double, density/velocity perturbation field
                        shading interp
                        colormap(cmap)
                        set(gca,'Layer','top')
                        % Title includes normalized amplitude: L(peak)/L(fundamental) for relative energy scaling
                        if using_npr
                            [t,s] = title(sprintf('NPR = %1.2f SPOD m = %1d Peak = %1d St = %1.3f Amp = %1.3f',round(NPR(i)/10^(NPR_factor-1),2), ...
                            mode_n,k,St_array{i}(mode_peak_index(k)), L_array{i}(mode_peak_index(k),mode_n)/L_array{i}(mode_1_peak,1)),'Interpreter', 'none');
                            f_outmode1 = fullfile(save_file,strcat(nozzle_list{i},'_NPR_',num2str(NPR(i)),'_',SPOD_details{i},'_SPOD_Mode_',num2str(mode_n),'_Peak_',num2str(k),'.png'));
                        else
                            [t,s] = title(sprintf('Mj = %1.3f SPOD m = %1d Peak = %1d St = %1.3f Amp = %1.3f',round(M(i)/10^(M_factor-1),3), ...
                            mode_n,k,St_array{i}(mode_peak_index(k)), L_array{i}(mode_peak_index(k),mode_n)/L_array{i}(mode_1_peak,1)),'Interpreter', 'none');                
                            f_outmode1 = fullfile(save_file,strcat(nozzle_list{i},'_M_',num2str(M(i)),'_',SPOD_details{i},'_SPOD_Mode_',num2str(mode_n),'_Peak_',num2str(k),'.png'));
                        end
                        xlabel(xlabel_string,'FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX');
                        ylabel(ylabel_string,'FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX');
                        box on
                        axis equal 
                        axis tight
                        xlim([x(1,1),x(1,end)])  % Limit to physical domain (exclude padding)
                        export_fig(f_outmode1,'-m3');  % Export at 3× resolution for publication quality
                        savefig(strcat(extractBefore(f_outmode1,'png'),'fig'));  % Save MATLAB .fig for re-editing
        
                        % ABSOLUTE VALUE: visualizes energy envelope (magnitude of complex mode)
                        % RATIONALE: abs(P) shows where turbulent structures are strongest (independent of phase)
                        figure(3)
                        set(gcf,'Color',[1 1 1])
                        set(gcf,'Position',[300,200,600,360])
                        pcolor(x,y,squeeze(abs(P)))  % abs(P): double, amplitude envelope
                        shading interp
                        colormap(sCMRmap)  % sCMRmap: sequential colormap (optimized for absolute values)
                        set(gca,'Layer','top')
                        if using_npr
                            [t,s] = title(sprintf('NPR = %1.2f SPOD m = %1d Peak = %1d St = %1.3f Amp = %1.3f',round(NPR(i)/10^(NPR_factor-1),2), ...
                            mode_n,k,St_array{i}(mode_peak_index(k)), L_array{i}(mode_peak_index(k),mode_n)/L_array{i}(mode_1_peak,1)),'Interpreter', 'none');
                            f_outmode1 = fullfile(save_file,strcat(nozzle_list{i},'_NPR_',num2str(NPR(i)),'_',SPOD_details{i},'_SPOD_Mode_',num2str(mode_n),'_Peak_',num2str(k),'_abs.png'));
                        else
                            [t,s] = title(sprintf('Mj = %1.3f SPOD m = %1d Peak = %1d St = %1.3f Amp = %1.3f',round(M(i)/10^(M_factor-1),3), ...
                            mode_n,k,St_array{i}(mode_peak_index(k)), L_array{i}(mode_peak_index(k),mode_n)/L_array{i}(mode_1_peak,1)),'Interpreter', 'none');                
                            f_outmode1 = fullfile(save_file,strcat(nozzle_list{i},'_M_',num2str(M(i)),'_',SPOD_details{i},'_SPOD_Mode_',num2str(mode_n),'_Peak_',num2str(k),'_abs.png'));
                        end
                        xlabel(xlabel_string,'FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX');
                        ylabel(ylabel_string,'FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX');
                        box on
                        axis equal 
                        axis tight
                        xlim([x(1,1),x(1,end)])
                        export_fig(f_outmode1,'-m3');
                        savefig(strcat(extractBefore(f_outmode1,'png'),'fig'));
                    end
                end
            end
        
        end
    
        %% ===================== EIGENVALUE SPECTRA (LOGLOG PLOTS) =====================
        % Plot modal energy L(St) for all modes on loglog axes
        % RATIONALE: visualize broadband energy distribution and modal hierarchy across frequencies
        
        if plot_spectra
            
            for i = 1:length(case_list)  
            
                load_file = fullfile(SPOD_dir,case_list{i});
                file = matfile(load_file);
        
                L = file.L;   % L: [n_freq, n_modes] double, eigenvalues (modal energy)
                St = file.St; % St: [1, n_freq] double, Strouhal numbers
                f = file.f;   % f: [1, n_freq] double, frequencies [Hz]
                
                save_file = fullfile(save_folder,'Figures','Spectra');
                mkdir(save_file)
               
                % Generate filename with operating condition (NPR or Mach)
                if using_npr
                    condition = strcat('Mode_Energy_Spectra_',nozzle_list{i},'_NPR_',num2str(NPR(i),strcat('%.',num2str(NPR_factor),'i_')),SPOD_details{i});
                else
                    condition = strcat('Mode_Energy_Spectra_',nozzle_list{i},'_Mj_',num2str(M(i),strcat('%.',num2str(M_factor),'i_')),SPOD_details{i});
                end
        
                f_outmode1 = fullfile(save_file,strcat(condition,'.png'));
            

                line_colours = cmap;  % line_colours: [n_colors, 3] double, RGB triplets for modal lines
                y_factor = 0.75;  % y_factor: double, multiplier for lower y-limit (0.75×mean of endpoint eigenvalues)
                
                modal_energies = figure(4);
                set(gcf,'Color',[1 1 1],'Position',[200,200,680,420]);
                % LOGLOG LOOP: plot L(St) for each mode on same axes
                % RATIONALE: logarithmic scales reveal spectral decay and modal hierarchy
                for iii = 1:min([100,size(L,2)])  % Loop over all modes (1 to n_modes)
                    loglog(St, L(:,iii),'LineWidth',1.2)  % loglog: logarithmic x and y axes
                    hold on
                    y_lims = ylim;
                end
                % COLORORDER STRATEGY: assign colors from reversed gradient (mode 1 = black, higher modes = cmap colors)
                % line_steps: indices into cmap with spacing from midpoint to end (reversed for descending intensity)
                line_steps = round(linspace(1,size(line_colours,1)/2,iii));
                % Y-LIMITS: from 0.75×mean(tail eigenvalues) to 2×max(mode 1 eigenvalues)
                % Skip first 10 frequencies (low-freq artifacts), use last mode for lower limit
                ylim([y_factor*mean(L(10:end,end)),2*max(L(10:end,1))])
                xlim([0.005*max(St),max(St(1:end-5))])  % X-limits: 0.005×St_max to St_max (excluding tail)
                xlabel('$St$','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX');
                ylabel('Modal Energy $\lambda$','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX');
                ax = gca;
                ax.FontSize = 16;
                ax.FontName = 'Times New Roman';
                xticks([0.0001,0.001,0.01,0.1,1.0,10])  % Logarithmic tick spacing
                
                if using_npr
                    title([num2str(NPR(i)/(10^(NPR_factor-1)),strcat('NPR=%.',num2str(NPR_factor-1),'f'))])
                else
                    title([num2str(M(i)/(10^(M_factor-1)),strcat('Mj=%.',num2str(M_factor-1),'f'))])
                end
                % colororder: assign [black; cmap_colors] to lines (mode 1 black, others colored)
                colororder([[0,0,0];line_colours(line_steps(1:end-1),:)])
                set(gca,'layer','top')
                ylim(y_lims);
                
                export_fig(f_outmode1,'-m5');  % Export at 5× resolution for high-detail spectra
                savefig(strcat(extractBefore(f_outmode1,'png'),'fig'))
            
                clf(4)  % Clear figure for next iteration
            end
        end

        %% ===================== WATERFALL PLOT: NPR/MACH vs. STROUHAL =====================
        % Generate 2D heatmap of log(eigenvalues) vs. operating condition and frequency
        % RATIONALE: visualize how modal energy distribution shifts with NPR/Mach
        
        if plot_waterfall

            save_file = fullfile(save_folder,'Figures','Waterfall');
            mkdir(save_file)  % save_file: string, output directory for waterfall figures

            %% Generate waterfall for each unique nozzle
            nozzle_options = unique(nozzle_list);  % nozzle_options: cell array, unique nozzle identifiers
            for nozzle_ind = 1:length(nozzle_options)
                % Find indices of cases matching current nozzle, in order of NPR/M
                nums = find(strcmp(nozzle_list,nozzle_options{nozzle_ind}));
                [~, order] = sort(X_list(nums));
                nums = nums(order);
                num = [nums(1),nums(end)];  % num: [1, 2] int, lowest and highest NPR/M case for this nozzle
                if numel(nums) < 2
                    fprintf('Waterfall needs at least 2 cases of %s; skipping\n', nozzle_options{nozzle_ind});
                    continue
                end
                % log(L) of mode 1 for each case, on the first case's St axis
                St_common = St_array{nums(1)}(:);
                Z = zeros(numel(St_common), numel(nums));
                for jj = 1:numel(nums)
                    Z(:,jj) = interp1(St_array{nums(jj)}(:), log(double(L_array{nums(jj)}(:,1))), St_common, 'linear', NaN);
                end

                figure
                set(gcf,'Color',[1 1 1])
                % Create 2D pseudocolor plot: X=NPR/Mach, Y=St, Z=log(eigenvalue mode 1)
                pcolor(X_list(nums), St_common, Z)
                % repmat: repeat X_list column to match St_array dimensions
                % log: logarithmic scaling emphasizes low-energy features
                shading flat  % Flat shading for clear cell boundaries
                colormap(sCMRmap)
                set(gca,'layer','top')  % Place axis on top of pcolor
                xlabel(x_string,'FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX');
                ylabel('${St}$','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX');
                box on
                ylim([0,1.2])  % Strouhal limit: focus on typical jet frequency range
                clim([min(clim)*1.1,max(clim)*0.9])  % Slightly tighten color limits for contrast
                
                % Construct filename with NPR/Mach range
                if using_npr
                    f_outmode1 = strcat(save_file,filesep,nozzle_options{nozzle_ind},'_NPR_',num2str(NPR(num(1))),'_',num2str(NPR(num(2))),'_SPOD_Spectra_Waterfall.png');
                else
                    f_outmode1 = strcat(save_file,filesep,nozzle_options{nozzle_ind},'_Mj_',num2str(M(num(1))),'_',num2str(M(num(2))),'_SPOD_Spectra_Waterfall.png');
                end
                export_fig(f_outmode1,'-m5');  % Export at 5× resolution
                savefig(strcat(extractBefore(f_outmode1,'png'),'fig'))  % Save MATLAB .fig
                close(gcf)   % PATCH 2026-10-23: close each figure once saved (they piled up)
            end
        end

        %% ===================== OVERALL ACOUSTIC ENERGY (OAE) CALCULATION =====================\
        % Integrate eigenvalues over Strouhal range to quantify total modal energy
        % RATIONALE: OAE provides single metric for comparing acoustic intensity across conditions
        
        if plot_OAE

            modes_of_interest = length(parent_folders);  % modes_of_interest: int, number of cases to compare
            C_line = sCMRmap(round(linspace(1,301,max(2,modes_of_interest))),:)';  % C_line: [3, n_cases] colormap for line colors (PATCH 2026-10-23: 1:300/0:301 errored for one parent folder)


            save_file = fullfile(save_folder,'Figures','Comparisons');
            mkdir(save_file)  % save_file: comparison figure directory (shared across nozzles)

            nozzle_options = unique(nozzle_list);
            [~, num] = min(X_list); [~, num(2)] = max(X_list);  % num: [1, 2] int, lowest and highest NPR/M case
            nozzle_ind = 1;
            clearvars OAE OAE_smooth
            
            %% Define Strouhal integration limits
            % RATIONALE: St \u2208 [0.01, 1.0] captures dominant jet noise frequencies
            St_limits = [0.01,1.0];  % St_limits: [1, 2] double, [St_low, St_high]

            %% Compute OAE for each case
            for kk = 1:numel(St_array)
                % Find frequency indices corresponding to St_limits
                St_low = find(abs(St_array{kk}(:)-St_limits(1)) == min(abs(St_array{kk}(:)-St_limits(1))),1);   % St_low: int, index of lower St bound
                St_high = find(abs(St_array{kk}(:)-St_limits(2)) == min(abs(St_array{kk}(:)-St_limits(2))),1);  % St_high: int, index of upper St bound
                St_kk = St_array{kk}(:);

                % Integrate eigenvalues (sum over all modes) using trapz
                OAE(kk) = trapz(St_kk(St_low:St_high),sum(double(L_array{kk}(St_low:St_high,:)),2));
                % OAE: [1, n_cases] double, integrated energy [arbitrary units]
                % trapz: trapezoidal integration over St
                % sum(...,2): sum across modes

                % Smoothed OAE with median filter
                OAE_smooth(kk) = trapz(St_kk(St_low:St_high),movmedian(sum(double(L_array{kk}(St_low:St_high,:)),2),100));
                % OAE_smooth: [1, n_cases] double, smoothed OAE (movmedian window=100)
                % RATIONALE: reduce spurious peaks from individual frequency bins
            end

            %% Extract nozzle name and type for legend
            nozzle_type = main_folders(k).name;                       % one line per main folder
            L_name{m} = strrep(nozzle_type,'_','~');  % Replace underscores for LaTeX compatibility
            [X_sorted, order] = sort(X_list);


            figure(1023)
            hold on
            set(gcf,'Color',[1 1 1])
            plot(X_sorted,OAE(order),'-.','Color',C_line(:,m),'LineWidth',1.5)
            xlabel(x_string,'FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX');
            ylabel('OAE','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX');
            box on
            legend(L_name,'Location','best','Interpreter','latex')
            if m == length(parent_folders)

                

                if using_npr
                    f_outmode1 = strcat(save_file,filesep,nozzle_type,'_NPR_',num2str(NPR(num(1))),'_',num2str(NPR(num(2))),'_SPOD_Spectra_OAE_All_Modes.png');
                else
                    f_outmode1 = strcat(save_file,filesep,nozzle_type,'_Mj_',num2str(M(num(1))),'_',num2str(M(num(2))),'_SPOD_Spectra_OAE_All_Modes.png');
                end
                    
                export_fig(f_outmode1,'-m5');
                savefig(strcat(extractBefore(f_outmode1,'png'),'fig'))
            end

            figure(1024)
            hold on
            set(gcf,'Color',[1 1 1])
            plot(X_sorted,OAE_smooth(order),'-.','Color',C_line(:,m),'LineWidth',1.5)
            xlabel(x_string,'FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX');
            ylabel('OAE','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX');
            box on
            legend(L_name,'Location','best','Interpreter','latex')
            if m == length(parent_folders)

                

                if using_npr
                    f_outmode1 = strcat(save_file,filesep,nozzle_type,'_NPR_',num2str(NPR(num(1))),'_',num2str(NPR(num(2))),'_SPOD_Spectra_OAE_MedSmooth_All_Modes.png');
                else
                    f_outmode1 = strcat(save_file,filesep,nozzle_type,'_Mj_',num2str(M(num(1))),'_',num2str(M(num(2))),'_SPOD_Spectra_OAE_MedSmooth_All_Modes.png');
                end
                    
                export_fig(f_outmode1,'-m5');
                savefig(strcat(extractBefore(f_outmode1,'png'),'fig'))
            end
        end
    
        if plot_specific_freq
    
            save_file = fullfile(save_folder,'Figures','Mode_Shapes_Specific');
            mkdir(save_file)
        
            cond = 29; %%% Mach number or NPR
        
            if using_npr
                i = find(NPR==cond,1);
            else
                i = find(M==cond,1);
            end
            if isempty(i)
                warning('plot_specific_freq: no case with NPR/M code %g; skipping', cond);
            end
    
            if false
                i = [7];  %%% just set a specific case number rather than NPR or M
            end

            mode_list = 1;                % mode numbers to plot (currently mode 1 only)
            if isempty(i)
                mode_list = [];           % condition not found: plot nothing
            end
            for mode_n = mode_list
                load_file = fullfile(SPOD_dir,case_list{i});
                file = matfile(load_file);
                x = file.x;  % x: [1, n_x] double, streamwise grid [D_e]
                y = file.y;  % y: [1, n_y] double, radial/spanwise grid [D_e]
                St = file.St;  % St: [1, n_freq] double, Strouhal numbers
                target_freq_inds = [397:422];  % target_freq_inds: int array, frequency indices to plot
                target_freq_inds = target_freq_inds(target_freq_inds <= numel(St));
                target_freqs = St(target_freq_inds);%[0.23,0.2926,0.337];  % target_freqs: [1, n_targets] double, user-specified Strouhal numbers
                n_peaks = length(target_freqs);
                
                mode_1_peak_val = max(L_array{i}(:,1));  % mode_1_peak_val: double, max eigenvalue of mode 1 (normalization reference)
                    
                % FREQUENCY MATCHING LOOP: find nearest frequency bin for each target
                for k = 1:n_peaks
                    % Find index where |St - target| is minimized
                    mode_peak_index(k) = find(abs(St_array{i}(:)-target_freqs(k)) == min(abs(St_array{i}(:)-target_freqs(k))));
                    P = file.P(mode_peak_index(k),:,:,mode_n);  % P: [1, n_y, n_x] complex, mode shape at peak frequency
        
                    % REAL COMPONENT: visualizes oscillatory phase structure (positive/negative regions)
                    figure(2)
                    set(gcf,'Color',[1 1 1])
                    set(gcf,'Position',[300,200,600,360])
                    pcolor(x,y,squeeze(real(P)))  % real(P): double, density/velocity perturbation field
                    shading interp
                    colormap(cmap)
                    set(gca,'Layer','top')
                    % Title includes normalized amplitude: L(peak)/L(fundamental) for relative energy scaling
                    if using_npr
                        [t,s] = title(sprintf('NPR = %1.2f SPOD mode = %1d St = %1.3f Amp = %1.3f',round(NPR(i)/10^(NPR_factor-1),2), ...
                        mode_n,St_array{i}(mode_peak_index(k)), L_array{i}(mode_peak_index(k),mode_n)/mode_1_peak_val),'Interpreter', 'none');
                        f_outmode1 = fullfile(save_file,strcat(nozzle_list{i},'_NPR_',num2str(NPR(i)),'_SPOD_Mode_',num2str(mode_n),'_Peak_',sprintf('%02d',k),'.png'));
                    else
                        [t,s] = title(sprintf('Mj = %1.3f SPOD mode = %1d St = %1.3f Amp = %1.3f',round(M(i)/10^(M_factor-1),3), ...
                        mode_n,St_array{i}(mode_peak_index(k)), L_array{i}(mode_peak_index(k),mode_n)/mode_1_peak_val),'Interpreter', 'none');                
                        f_outmode1 = fullfile(save_file,strcat(nozzle_list{i},'_M_',num2str(M(i)),'_SPOD_Mode_',num2str(mode_n),'_Peak_',sprintf('%02d',k),'.png'));
                    end
                    xlabel(xlabel_string,'FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX');
                    ylabel(ylabel_string,'FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX');
                    box on
                    axis equal 
                    axis tight
                    xlim([x(1,1),x(1,end)])  % Limit to physical domain (exclude padding)
                    export_fig(f_outmode1,'-m3');  % Export at 3× resolution for publication quality
                    savefig(strcat(extractBefore(f_outmode1,'png'),'fig'));  % Save MATLAB .fig for re-editing
    
                    % ABSOLUTE VALUE: visualizes energy envelope (magnitude of complex mode)
                    % RATIONALE: abs(P) shows where turbulent structures are strongest (independent of phase)
                    figure(3)
                    set(gcf,'Color',[1 1 1])
                    set(gcf,'Position',[300,200,600,360])
                    pcolor(x,y,squeeze(abs(P)))  % abs(P): double, amplitude envelope
                    shading interp
                    colormap(sCMRmap)  % sCMRmap: sequential colormap (optimized for absolute values)
                    set(gca,'Layer','top')
                    if using_npr
                        [t,s] = title(sprintf('NPR = %1.2f SPOD mode = %1d St = %1.3f Amp = %1.3f',round(NPR(i)/10^(NPR_factor-1),2), ...
                        mode_n,St_array{i}(mode_peak_index(k)), L_array{i}(mode_peak_index(k),mode_n)/mode_1_peak_val),'Interpreter', 'none');
                        f_outmode1 = fullfile(save_file,strcat(nozzle_list{i},'_NPR_',num2str(NPR(i)),'_SPOD_Mode_',num2str(mode_n),'_Peak_',sprintf('%02d',k),'_abs.png'));
                    else
                        [t,s] = title(sprintf('Mj = %1.3f SPOD mode = %1d St = %1.3f Amp = %1.3f',round(M(i)/10^(M_factor-1),3), ...
                        mode_n,St_array{i}(mode_peak_index(k)), L_array{i}(mode_peak_index(k),mode_n)/mode_1_peak_val),'Interpreter', 'none');                
                        f_outmode1 = fullfile(save_file,strcat(nozzle_list{i},'_M_',num2str(M(i)),'_SPOD_Mode_',num2str(mode_n),'_Peak_',sprintf('%02d',k),'_abs.png'));
                    end
                    xlabel(xlabel_string,'FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX');
                    ylabel(ylabel_string,'FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX');
                    box on
                    axis equal 
                    axis tight
                    xlim([x(1,1),x(1,end)])
                    export_fig(f_outmode1,'-m3');
                    savefig(strcat(extractBefore(f_outmode1,'png'),'fig'));
        
                end
            end
        end

        %% ===================== PEAK FREQUENCY PHASE ANIMATION =====================
        % Generate MP4 videos of phase-evolving modes at peak frequencies
        % RATIONALE: visualize temporal dynamics by animating P*exp(i*θ) for θ = 0° to 360°
        
        if produce_peak_video

            save_file = fullfile(save_folder,'Figures','Peak_Videos');
            mkdir(save_file)
        
            % VIDEO CONFIGURATION
            n_peaks = 1;  % n_peaks: int, number of peaks to animate per case
            fps = 15;  % fps: int, video frame rate [Hz] (user-adjustable)
            deg_steps = 2.5;  % deg_steps: double, phase increment [degrees] (2.5° → 144 frames/cycle)
            use_first_peaks = false;  % use_first_peaks: bool, toggle between auto-detected peaks vs. manual target_freqs

            % target_freqs_list: {n_cases} cell array of [1, n_targets] double, manual frequencies [St] per case
            target_freqs_list = {[0.1],[0.5153,0.4173,0.0981],[0.511,0.4155,0.0956],[0.501,0.414,0.0866],[0.494,0.412,0.820],[0.492,0.412,0.0799],[0.413,0.206,0.0570]};

            for i = 1:length(case_list)
            
                load_file = fullfile(SPOD_dir,case_list{i});
                file = matfile(load_file);
                x = file.x;  % x: [1, n_x] double, streamwise grid [D_e]
                y = file.y;  % y: [1, n_y] double, radial/spanwise grid [D_e]
        
                for mode_n = 1  % Loop over mode numbers (currently mode 1 only)
                    
                    % FREQUENCY SELECTION: toggle between auto-detected peaks vs. manual target list
                    if use_first_peaks
                        % AUTO PEAK DETECTION: findpeaks with prominence sorting (same as mode_shapes section)
                        [mode_peaks,mode_peak_index,~,mode_peak_prominence] = findpeaks(L_array{i}(:,mode_n));
                        [mode_peak_prominence,sort_inds] = sort(mode_peak_prominence,'descend');
                        mode_peaks = mode_peaks(sort_inds);
                        mode_peak_index = mode_peak_index(sort_inds);
            
                        % Remove low-frequency artifacts (index < 3)
                        mode_peak_prominence(mode_peak_index < 3) = [];
                        mode_peaks(mode_peak_index < 3) = [];
                        mode_peak_index(mode_peak_index < 3) = [];
            
                        if mode_n == 1
                            mode_1_peak = mode_peak_index(1);
                        end
                        n_peaks = min(1, numel(mode_peak_index));
                        target_freqs = St_array{i}(mode_peak_index(1:n_peaks));
                    elseif i > numel(target_freqs_list)
                        % no manual list for this case: use the most prominent peak
                        [~,mode_peak_index,~,mode_peak_prominence] = findpeaks(L_array{i}(:,mode_n));
                        [~,sort_inds] = sort(mode_peak_prominence,'descend');
                        mode_peak_index = mode_peak_index(sort_inds);
                        mode_peak_index(mode_peak_index < 3) = [];
                        n_peaks = min(1, numel(mode_peak_index));
                        target_freqs = St_array{i}(mode_peak_index(1:n_peaks));
                    else
                        % MANUAL FREQUENCY SELECTION: use pre-defined target_freqs from target_freqs_list
%                         target_freq_inds = [233,237];
%                         target_freqs = St(target_freq_inds);
                        target_freqs = target_freqs_list{i};  % target_freqs: [1, n_targets] double, Strouhal numbers
                        
                        n_peaks = length(target_freqs);
                    end
                        
                    % PEAK LOOP: generate phase-animated video for each target frequency
                    for k = 1:n_peaks
                        % Find nearest frequency bin matching target
                        mode_peak_index(k) = find(abs(St_array{i}(:)-target_freqs(k)) == min(abs(St_array{i}(:)-target_freqs(k))));

                        vid_file = fullfile(save_file,[case_list{i}(1:end-4),sprintf('_Phase_Angle_St_%3.4f',target_freqs(k)),'.mp4']);
                        P = squeeze(file.P(mode_peak_index(k),:,:,mode_n));  % P: [n_y, n_x] complex, mode shape
    
                        % PHASE ANIMATION: generate phase-evolved frames P*exp(i*θ) for θ = 0 to 360°
                        count = 1;
                        clearvars im_phase
                        for deg = 0:deg_steps:360-deg_steps  % deg: double, phase angle [degrees]

                            im_phase(:,:,count) = P*exp(1i*deg*pi/180);  % im_phase: [n_y, n_x, n_frames] complex, phase-rotated modes
                            count = count + 1;

                        end

                        % QUANTILE-BASED COLOR LIMITS: robust clim using 0.1% and 99.9% quantiles
                        % RATIONALE: avoids outlier contamination in color scaling
                        low = quantile(real(im_phase),0.001,"all");
                        high = quantile(real(im_phase),0.999,"all");

                        % FRAME EXPORT LOOP: save each phase-rotated frame as PNG
                        for j = 1:count-1
                
                            im = real(im_phase(:,:,j));  % im: [n_y, n_x] double, real component of phase-rotated mode
                
                            figure(1)
                            set(gcf,'Color',[1,1,1])
                            pcolor(x,y,im);
                            shading interp;
                            axis equal tight
                            colormap(cmap)
                            set(gca,'Layer','top')
                            clim([low,high])  % Fixed color limits across all frames (prevents flickering)
                            xlabel('$x/D$','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX'); 
                            ylabel('$y/D$','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX'); 

                            temp_png = strcat(save_file,sprintf('_test%02d.png',j));
                            export_fig(temp_png,'-m4')  % Export frame at 4× resolution
                
                        end
                
                        %% ===================== VIDEO ENCODING VIA FFMPEG =====================
                        % Encode PNG sequence to H.264 MP4 via ffmpeg system call
                        % Platform-specific: Windows uses default ffmpeg in PATH; Linux loads via module
                        % NOTE: ffmpeg must be installed/available in PATH
                        % Windows setup: in Powershell with admin, run "winget install ffmpeg", add bin/ to PATH
                        % Linux (MASSIVE): in terminal run "module load ffmpeg/4.3.1 if it isn't automatically loaded
                        % Start or restart MATLAB after the above installation

                        if ispc
                            % Windows: ffmpeg in standard PATH; no module loading needed
                            % H.264 codec settings: high profile, level 4.0 (HD-capable)
                            % Bitrate: 16 Mbps (high quality), yuv420p for compatibility
                            command = strcat("ffmpeg -y -framerate ", num2str(fps)," -i ",...
                                fullfile(strcat(save_file,'_test%02d.png')), ... 
                                ' -vf "pad=ceil(iw/2)*2:ceil(ih/2)*2" -c:v libx264 -profile:v high -level:v 4 -pix_fmt yuv420p -b:v 16000k -codec:a'," aac ", vid_file);
                        else
                            % Linux (MASSIVE): module load ffmpeg, then same ffmpeg command
                            % Module load ensures ffmpeg is in PATH before invocation
                            command = strcat("module load ffmpeg/4.3.1; ffmpeg -y -framerate ", num2str(fps),...
                                " -i ",strcat(save_file,'_test%02d.png'), ... 
                                ' -vf "pad=ceil(iw/2)*2:ceil(ih/2)*2" -c:v libx264 -profile:v high -level:v 4 -pix_fmt yuv420p -b:v 16000k -codec:a'," aac ", vid_file);
                        end

                        system(command);

                        %% Clean up temporary PNG files to save disk space
                        % PNG sequence is no longer needed after encoding; remove to avoid clutter
                        for j = 1:count-1
                            temp_png = strcat(save_file,sprintf('_test%02d.png',j));
                            delete(temp_png)  % Delete individual PNG frame after encoding
                        end

                    end
                end
            end



        end

    end
end

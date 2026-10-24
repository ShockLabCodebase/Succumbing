%================================================================================
% PURPOSE:
%   Generate publication-quality visualizations of Bispectral Mode Decomposition
%   (BMD) analysis results with symmetry-imposed classification for jet flow data.
%
% HIGH-LEVEL WORKFLOW:
%   1. Load pre-computed BMD results (bispectrum, modes, interaction maps)
%   2. Parse metadata from filenames to identify flow conditions (NPR or Mach)
%   3. Extract spatial modes, frequencies (St_1, St_2, St_3) from analysis
%   4. Identify peak bispectral amplitudes across symmetry regions (AA, AS, SA, SS)
%   5. Generate four visualization types via control flags
%   6. Save figures as .fig (editable) and .png (publication-ready)
%
% OUTPUT:
%   - Saved figures in subdirectories under parent_folder/Symmetry_Imposed/Figures/:
%     * Bispectrum/ : 2D scatter (Specfreqs) or pcolor (grid-based) bispectral plots
%     * Peak_Mode_Shapes/ : Real/abs mode shapes + interaction maps for top-6 peaks
%     * All_Mode_Shapes/ : Mode shapes + interaction maps for all symmetry regions
%     * Frequency_Comparison/ : Condensed scatter plot with symmetry-colored markers
%   - Files saved as: {case_name}_{plot_type}_{peak_num}_{symmetry}_{flow_var}.{fig,png}
%
%================================================================================

% close all
close all

% Add utility paths for required functions, exporting, SPOD/BMD, and miscellaneous functions
addpath(genpath("Functions"))

%% ======================== VISUALIZATION SETUP ========================
% Load specialized colormaps optimized for schlieren/BMD data visualization
sCMRmap = CMRmap;   % sCMRmap: [m, 3] RGB colormap for log-amplitude (cool-to-warm)
cmap = pogmap;      % cmap: [m, 3] RGB colormap for real/imag mode shapes (diverging)

%% ======================== PLOT CONTROL FLAGS ========================
% Set any flag to true to generate corresponding visualization suite.
% Note: Each flag creates multiple figures (1-4 per peak/symmetry); disable unused
% visualizations to reduce computation time and file I/O.
plot_bispectrum = false;              % Bispectral magnitude plots: scatter (Specfreqs) or pcolor (grid)
plot_BMD_modes = false;               % Mode shapes + interaction maps for top-6 peaks (across all symmetries)
plot_all_syms_BMD_modes = false;      % Mode shapes + interaction maps for top-6 peaks IN EACH symmetry region
plot_symmetry_freq_comparison = false; % Condensed frequency triplet scatter with symmetry-colored markers

% PATCH 2026-10-23 (Codebase_Patches), matching the patched BMD_Plots:
%   - Fewer triads than n_peaks no longer errors (loops run to the number found).
%   - Grid (non-Specfreqs) branch of the peak mode shapes: peak_locs_r/_c were
%     never set (error); findpeaks on log10|B| per symmetry now gives them.
%   - Interaction maps use real(conj(P1).*P2): P1.*P2 carries twice the
%     arbitrary phase of the BMD eigenvector, so its real part had no
%     meaningful sign. abs() maps are unchanged.
%   - Empty folders give a warning; Mach files (_Mj_/_M_/_Ma_) detected.
%% ======================== CASE CONFIGURATION ========================
% User specifies root folders containing BMD analysis results.
% Script will search: {parent_folder}/Symmetry_Imposed/Data/ for *Nfft*.mat files
% parent_folders: [n_cases, 1] string array of absolute paths
parent_folders = ["Q:\High_Speed_Schlieren\ONR_Twin_7592mm\Single_Twin_Canted_Full_10_23\Angled\Thick_Nozzle\Single_Jet_Thick_Angled\BMD_Results";
    "Q:\High_Speed_Schlieren\ONR_Twin_7592mm\Single_Twin_Canted_Full_10_23\Angled\Thick_Nozzle\Canted_4_Deg_sD_250_Thick_Angled\BMD_Results";
    "Q:\High_Speed_Schlieren\ONR_Twin_7592mm\Single_Twin_Canted_Full_10_23\Angled\Thick_Nozzle\Twin_Jet_sD_225_Thick_Angled\BMD_Results"];

%% ======================== MAIN PROCESSING LOOP ========================
% Iterate over each case folder, discovering all BMD results within it.
for m = 1:length(parent_folders)

    parent_folder = parent_folders(m);
    % BMD_dir: Full path to directory containing computed BMD .mat files
    BMD_dir = fullfile(parent_folder,'Symmetry_Imposed','Data');

    % Discover all BMD result files by globbing *Nfft*.mat pattern
    % (ensures results include NFFT parameter in filename)
    suffix = strcat('*Nfft*.mat');
    case_list = dir(fullfile(BMD_dir,suffix));
    case_list = {case_list.name}; % case_list: [n_cases, 1] cell array of filenames
    if isempty(case_list)
        warning("No %s files in %s", suffix, BMD_dir);
        continue
    end

    % Detect flow parametrization type from first filename: NPR (pressure ratio)
    % or Mj (Mach number). Affects subsequent parameter extraction.
    if contains(case_list{1},'_NPR_')
        using_npr = true;
    elseif ~isempty(regexp(case_list{1},'_(Mj|M|Ma)_\d','once'))
        using_npr = false;
    else
        error("Can't tell NPR from Mach in %s", case_list{1});
    end
    
    %% Filename Parameter Extraction
    % Parse nozzle config, flow condition (NPR or Mach), and NFFT from filenames.
    % Assumption: consistent naming convention across all cases.
    if using_npr
        [nozzle_list, NPR_list, NPR_factor] = get_filename_params(using_npr, case_list);
    else
        [nozzle_list, M_list, M_factor] = get_filename_params(using_npr, case_list);
    end
    
    %% Per-Case BMD Result Processing
    % For each discovered .mat file, load BMD outputs and generate requested plots.
    % Use matfile() for lazy loading to minimize memory footprint on large files.
    clearvars B_array St_array % Clean workspace for fresh case
    for i = 1:length(case_list)  
        % PATCH 2026-10-23: figure names drop the "Symmetry_Imposed_" prefix (the
        % folder already says it); the full names passed the 260-character
        % Windows path limit for the bispectrum figures.
        fig_base = erase(case_list{i}(1:end-4), "Symmetry_Imposed_");

        load_file = fullfile(BMD_dir,case_list{i});
        file=matfile(load_file); % file: matfile object (lazy-load, RAM-efficient)

        % Load spatial grid and bispectral data from .mat file
        x = file.x;                                    % x: [1, n_x] nondim spatial coords (De units)
        y = file.y;                                    % y: [n_y, 1] nondim spatial coords (De units)
        B = file.B;                                    % B: [n_St1, n_St2, n_sym] complex bispectrum
        St = file.B;                                   % St: alias for B (likely legacy variable)
        St1 = file.St1;                                % St1: [n_St1, 1] Strouhal axis for f1
        St2 = file.St2;                                % St2: [1, n_St2] Strouhal axis for f2
        triadics_St = file.triadics_St;                % triadics_St: [n_freq, 4, n_sym] = [f1, f2, f3, ampl]
        symmetry_regions = file.symmetry_regions;      % symmetry_regions: scalar, 2 or 4 (decomposition scheme)
        symmetry_combination_result = file.symmetry_combination_result; % string labels [e.g., 'S_f1__S_f2__S_f3', ...]
        flow_variables = file.flow_variables;          % flow_variables: [n_vars] string array (e.g., ['light', 'temp'])
        if isempty(flow_variables)
            flow_variables = "light"; % Default for schlieren (light-based, no physical flow var)
        end

        % Parse symmetry labels: extract f1, f2, f3 symmetry chars from result string
        f3_symmetry_list = extractAfter(symmetry_combination_result,'__');
        f3_symmetry_list = extractBefore(f3_symmetry_list,'f3');
        
        % Extract and log-scale bispectral amplitudes for visualization
        triadic_vals = squeeze(log10(abs(triadics_St(:,4,:)))); % triadic_vals: [n_freq, n_sym] log10 magnitudes
        B(isnan(real(B))) = 0; % Replace NaN values with zero (handles edge cases in FFT)
        
        % Define symmetry region type labels based on decomposition scheme
        if symmetry_regions == 4
            % 2D decomposition: both f1 and f2 are (symmetric or antisymmetric)
            sym_types = ["AA_","AS_","SA_","SS_"]; % AA: both symm, AS: 1st antisym, etc.
        else
            % 1D decomposition: treat as two regions
            sym_types = ["antisymmetric_","symmetric_"];
        end

        %% ======================== SECTION 1: BISPECTRUM PLOTS ========================
        % If plot_bispectrum is true, generate 2D bispectral magnitude visualizations.
        % Two variants: scatter for sparse Specfreqs data, pcolor for gridded data.
        % Rationale: Direct visualization of (f1, f2) frequency interaction space,
        % colored by |bispectral amplitude|, reveals dominant triadic interactions.
        if plot_bispectrum
            savefile = fullfile(parent_folder,'Symmetry_Imposed','Figures','Bispectrum');
            mkdir(savefile) % Create output directory if missing
            % Loop over all symmetry regions (2 or 4)
            for sym = 1:symmetry_regions^2
                % Choose visualization type based on data structure: Specfreqs (sparse) vs grid (dense)
                if contains(case_list{i},'Specfreqs')
                    % SPECFREQS MODE: Sparse frequency triplet data; use scatter plot
                    figure
                    set(gcf,'Color',[1,1,1]) % White background for publication
                    scatter(triadics_St(:,1,sym),triadics_St(:,2,sym),8,triadic_vals(:,sym),'filled')
                    set(gca,'Color',[0,0,0]) % Black axis background for contrast
                    colormap(gca,sCMRmap(100:end,:)) % Use upper half of colormap (warm colors)
                    hcb = colorbar; % Add colorbar for amplitude reference
                    box on
                    ylim([-1.1,1.1]) % Normalized Strouhal range
                    xlim([0,1.1])
                    xlabel('$St_1$','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX');
                    ylabel('$St_2$','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX');
                    ylabel(hcb,{'$|\lambda_1|$'},'FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX');
                    chandle = get(hcb,'ylabel');
                    set(chandle,'units','Normalized','Position',[2.8,0.50,0]);
                    % Save figure in two formats: .fig (editable in MATLAB) and .png (publication)
                    fileout = fullfile(savefile,strcat(fig_base,'_Bispectrum_',symmetry_combination_result(sym),'_Vars_',join(flow_variables,"")));
                    savefig(strcat(fileout,'.fig')) % Native MATLAB format
                    export_fig(strcat(fileout,'.png'),'-m5'); % PNG at 5x screen resolution (-m5 flag)
                    close(gcf)   % PATCH 2026-10-23: figures were never closed; hundreds piled up
                else
                    % GRID MODE: Dense Strouhal grid; use pcolor for smooth surface
                    figure
                    set(gcf,'Color',[1,1,1])
                    % pcolor plots gridded log10(|bispectrum|) on (St1, St2) plane
                    pcolor(St1,St2,log(abs(B(:,:,sym))))
                    shading interp % Interpolated shading for smooth appearance
                    axis equal tight % Maintain 1:1 aspect ratio
                    colormap(sCMRmap) % Cool-to-warm colormap
                    hcb = colorbar;
                    % Limit display to frequency range covered by analysis
                    xlim([min(triadics_St(:,1,sym)),max(triadics_St(:,1,sym))])
                    ylim([min(triadics_St(:,2,sym)),max(triadics_St(:,2,sym))])
                    box on
                    set(gca,'Layer','Top')
                    xlabel('$St_1$','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX');
                    ylabel('$St_2$','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX');
                    ylabel(hcb,{'$|\lambda_1|$'},'FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX');
                    chandle = get(hcb,'ylabel');
                    set(chandle,'units','Normalized','Position',[2.8,0.50,0]);
                    % Save figure in two formats: .fig (editable in MATLAB) and .png (publication)
                    fileout = fullfile(savefile,strcat(fig_base,'_Bispectrum_',symmetry_combination_result(sym),'_Vars_',join(flow_variables,"")));
                    savefig(strcat(fileout,'.fig')) % Native MATLAB format
                    export_fig(strcat(fileout,'.png'),'-m5'); % PNG at 5x screen resolution (-m5 flag)
                    close(gcf)   % PATCH 2026-10-23: figures were never closed; hundreds piled up
                end
            end
        end % End plot_bispectrum section


        %% ======================== SECTION 2: PEAK MODE SHAPES ========================
        % If plot_BMD_modes is true, generate spatial mode shapes + interaction maps
        % for the top-n_peaks bispectral amplitudes (ranked globally across all symmetries).
        % Rationale: Identifies dominant physical mechanisms via modal structure
        % and nonlinear interaction localization in physical (x,y) space.
        if plot_BMD_modes
            savefile = fullfile(parent_folder,'Symmetry_Imposed','Figures','Peak_Mode_Shapes');
            mkdir(savefile)

            n_peaks = 6; % Config param: number of highest-amplitude peaks to visualize

            %% Peak Detection in Bispectrum
            % Two strategies based on data type: global maxima for Specfreqs,
            % prominence-based for grid-sampled data.
            if contains(case_list{i},'Specfreqs')
                % SPECFREQS: Use maxk() to find largest n_peaks amplitude values globally
                [vals,peak_locs] = maxk(triadic_vals(:),n_peaks,'ComparisonMethod','real');
                peak_locs = peak_locs(isfinite(vals));
                % Convert linear indices to (row, col) = (frequency_index, symmetry_index)
                [peak_locs_r,peak_locs_c] = ind2sub(size(triadic_vals),peak_locs);
            else
                % GRID: findpeaks() with prominence threshold, per symmetry column
                % (a peak search on triadic_vals(:) ran across the column joins)
                peak_locs_r = []; peak_locs_c = []; prom_all = [];
                for sym_c = 1:size(triadic_vals,2)
                    [~,locs_c,~,prom_c] = findpeaks(triadic_vals(:,sym_c),'MinPeakProminence',2);
                    % TODO: Prominence threshold (=2) is heuristic; consider data-driven selection
                    peak_locs_r = [peak_locs_r; locs_c(:)];
                    peak_locs_c = [peak_locs_c; sym_c*ones(numel(locs_c),1)];
                    prom_all = [prom_all; prom_c(:)];
                end
                [~,ind_sort] = sort(prom_all,'descend'); % Sort by prominence (interaction strength)
                peak_locs_r = peak_locs_r(ind_sort);
                peak_locs_c = peak_locs_c(ind_sort);
            end

            % For each peak, extract spatial mode shapes and generate 4 figures per flow variable
            for ii = 1:min(n_peaks,numel(peak_locs_r))

                % Indexing: sym = symmetry region, ind = frequency triplet index within that region
                sym = peak_locs_c(ii);
                ind = peak_locs_r(ii);
                
                % Extract f1, f2, f3 symmetry characters from label string
                f1_sym = extractBefore(symmetry_combination_result(sym),'_f1');
                f2_sym = char(extractBetween(symmetry_combination_result(sym),'_f1_','_f2'));   % PATCH 2026-10-23: char, not cell2mat (labels may be strings)
                f3_sym = f3_symmetry_list(sym);

                % Frequency triplet (f3 = f1 + f2 by bispectral definition)
                l = triadics_St(ind,1,sym); % l: Strouhal of f1 [unitless]
                k = triadics_St(ind,2,sym); % k: Strouhal of f2 [unitless]
                amp = triadic_vals(ind,sym); % amp: log10(|bispectral amplitude|) [log scale]

                % Extract modal data: P = [cross_spec_index, mode_index, n_y, n_x, flow_var]
                % Use dynamic indexing to access correct symmetry/frequency slice
                dims_P = ndims(file.P);
                data_inds = repmat({':'},dims_P,1); % Initialize all-colon indexing
                data_inds{end} = sym; % Last dim = symmetry region
                data_inds{2} = ind;   % 2nd dim = frequency triplet index

                P = file.P(data_inds{:}); % P: [n_cross_spec, n_y, n_x, n_flow_var]
                % For each flow variable (e.g., light, temperature), create 4 subplot figures:
                % (1) Real mode shape, (2) Magnitude mode shape, (3) Interaction map (real),
                % (4) Interaction map (magnitude)
                for vari = 1:length(flow_variables)
                    %% Figure 1: Real part of primary mode shape
                    figure(1)
                    set(gcf,'Color',[1,1,1])
                    % P(1,1,:,:,vari) = real/imag parts of cross-spectrum at peak frequency triplet
                    pcolor(x,y,squeeze(real(P(1,1,:,:,vari))))
                    shading interp % Smooth color interpolation for publication quality
                    axis equal tight
                    colormap(cmap) % Diverging colormap for signed (real) values
                    set(gca,'layer','top')
                    xlabel('$x/D_e$','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX');
                    ylabel('$y/D_e$','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX');
                    title([strcat("BiSpec ",f1_sym," St_1 = ",sprintf('%1.3f',l),", ",f2_sym," St_2 = ",sprintf('%1.3f',k)),strcat(f3_sym,"  St_3 = ",sprintf('%1.3f',l+k), ", A = ", sprintf('%1.3f',amp))]);
                    fileout = fullfile(savefile,strcat(fig_base,'_BMD_Peak_',num2str(ii),'_',symmetry_combination_result(sym),'_Var_',flow_variables(vari)));
                    savefig(strcat(fileout,'.fig'))
                    export_fig(strcat(fileout,'.png'),'-m5');
                    close(gcf)   % PATCH 2026-10-23: figures were never closed; hundreds piled up
    
                    %% Figure 2: Magnitude (absolute value) of mode shape
                    figure(2)
                    set(gcf,'Color',[1,1,1])
                    pcolor(x,y,squeeze(abs(P(1,1,:,:,vari))))
                    shading interp
                    axis equal tight
                    colormap(sCMRmap) % Sequential colormap for positive (magnitude) values
                    set(gca,'layer','top')
                    xlabel('$x/D_e$','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX');
                    ylabel('$y/D_e$','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX');
                    title([strcat("BiSpec ",f1_sym," St_1 = ",sprintf('%1.3f',l),", ",f2_sym," St_2 = ",sprintf('%1.3f',k)),strcat(f3_sym,"  St_3 = ",sprintf('%1.3f',l+k), ", A = ", sprintf('%1.3f',amp))]);
                    fileout = fullfile(savefile,strcat(fig_base,'_BMD_Peak_',num2str(ii),'_',symmetry_combination_result(sym),'_Var_',flow_variables(vari),'_abs'));
                    savefig(strcat(fileout,'.fig'))
                    export_fig(strcat(fileout,'.png'),'-m5');
                    close(gcf)   % PATCH 2026-10-23: figures were never closed; hundreds piled up
    
                    %% Figure 3: Interaction map (real part) = P_f1 * P_f2 (product = energy flux)
                    % The real part of modal product represents nonlinear interaction strength;
                    % positive values = energy transfer from f1+f2 to f3, sign indicates direction
                    figure(3)
                    set(gcf,'Color',[1,1,1])
                    pcolor(x,y,real(squeeze(conj(P(1,1,:,:,vari)).*P(2,1,:,:,vari))))
                    shading interp
                    axis equal tight
                    colormap(cmap) % Diverging colormap for signed energy flux
                    set(gca,'layer','top')
                    xlabel('$x/D_e$','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX');
                    ylabel('$y/D_e$','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX');
                    title([strcat("IntMap ",f1_sym," St_1 = ",sprintf('%1.3f',l),", ",f2_sym," St_2 = ",sprintf('%1.3f',k)),strcat(f3_sym,"  St_3 = ",sprintf('%1.3f',l+k), ", A = ", sprintf('%1.3f',amp))]);
                    fileout = fullfile(savefile,strcat(fig_base,'_IntMap_Peak_',num2str(ii),'_',symmetry_combination_result(sym),'_Var_',flow_variables(vari)));
                    savefig(strcat(fileout,'.fig'))
                    export_fig(strcat(fileout,'.png'),'-m5');
                    close(gcf)   % PATCH 2026-10-23: figures were never closed; hundreds piled up
    
                    %% Figure 4: Interaction map (magnitude) = |P_f1 * P_f2|
                    % Magnitude of modal product shows spatial localization of interaction
                    % strength, independent of phase/sign; highlights where f1 and f2
                    % modes overlap to drive f3 component.
                    figure(4)
                    set(gcf,'Color',[1,1,1])
                    pcolor(x,y,abs(squeeze(P(1,1,:,:,vari).*P(2,1,:,:,vari))))
                    shading interp
                    axis equal tight
                    colormap(sCMRmap) % Sequential colormap for positive (magnitude) values
                    set(gca,'layer','top')
                    xlabel('$x/D_e$','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX');
                    ylabel('$y/D_e$','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX');
                    title([strcat("IntMap ",f1_sym," St_1 = ",sprintf('%1.3f',l),", ",f2_sym," St_2 = ",sprintf('%1.3f',k)),strcat(f3_sym,"  St_3 = ",sprintf('%1.3f',l+k), ", A = ", sprintf('%1.3f',amp))]);
                    fileout = fullfile(savefile,strcat(fig_base,'_IntMap_Peak_',num2str(ii),symmetry_combination_result(sym),'_Var_',flow_variables(vari),'_abs'));
                    savefig(strcat(fileout,'.fig'))
                    export_fig(strcat(fileout,'.png'),'-m5');
                    close(gcf)   % PATCH 2026-10-23: figures were never closed; hundreds piled up
                end % End flow_variables loop
            end % End n_peaks loop
            
        end % End plot_BMD_modes section


        %% ======================== SECTION 3: ALL SYMMETRY MODE SHAPES ========================
        % If plot_all_syms_BMD_modes is true, repeat mode shape visualizations
        % separately for each symmetry region (AA, AS, SA, SS), identifying top-n_peaks
        % within each region independently. Rationale: Reveals symmetry-specific interactions
        % that may be masked in global peak detection (e.g., weak but important S-S coupling).
        if plot_all_syms_BMD_modes
            savefile = fullfile(parent_folder,'Symmetry_Imposed','Figures','All_Mode_Shapes');
            mkdir(savefile)

            n_peaks = 6; % Config param: peaks per symmetry region (independent detection)

            % Process peaks separately for each symmetry combination
            for sym = 1:symmetry_regions^2
                % Peak detection within this specific symmetry region only
                if contains(case_list{i},'Specfreqs')
                    % SPECFREQS: Find top-n_peaks in current symmetry region
                    [~,peak_locs] = maxk(triadic_vals(:,sym),n_peaks,'ComparisonMethod','real');
                    peak_locs = peak_locs(isfinite(triadic_vals(peak_locs,sym)));
                else
                    % GRID: Find peaks with prominence in current region
                    [peaks,peak_locs,~,prom] = findpeaks(triadic_vals(:,sym),'MinPeakProminence',2);
                    [~,ind_sort] = sort(prom,'descend');
                    peaks = peaks(ind_sort);
                    peak_locs = peak_locs(ind_sort);
                end

                % Extract symmetry label information for this region
                f1_sym = extractBefore(symmetry_combination_result(sym),'_f1');
                f2_sym = char(extractBetween(symmetry_combination_result(sym),'_f1_','_f2'));   % PATCH 2026-10-23: char, not cell2mat (labels may be strings)
                f3_sym = f3_symmetry_list(sym);
    
                % For each peak in current symmetry region, generate 4 figures
                for ii = 1:min(n_peaks,numel(peak_locs))

                    % Frequency triplet index within this symmetry region
                    ind = peak_locs(ii);
    
                    l = triadics_St(ind,1,sym);
                    k = triadics_St(ind,2,sym);
                    amp = triadic_vals(ind,sym);
    
                    % Extract modal data for current symmetry/frequency pair
                    dims_P = ndims(file.P);
                    data_inds = repmat({':'},dims_P,1);
                    data_inds{end} = sym;
                    data_inds{2} = ind;
    
                    P = file.P(data_inds{:});
                    % Generate 4 figures per flow variable (same as plot_BMD_modes)
                    for vari = 1:length(flow_variables)
                        %% Figure 1: Real mode shape
                        figure(1)
                        set(gcf,'Color',[1,1,1])
                        pcolor(x,y,squeeze(real(P(1,1,:,:,vari))))
                        shading interp
                        axis equal tight
                        colormap(cmap)
                        set(gca,'layer','top')
                        xlabel('$x/D_e$','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX');
                        ylabel('$y/D_e$','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX');
                        title([strcat("BiSpec ",f1_sym," St_1 = ",sprintf('%1.3f',l),", ",f2_sym," St_2 = ",sprintf('%1.3f',k)),strcat(f3_sym,"  St_3 = ",sprintf('%1.3f',l+k), ", A = ", sprintf('%1.3f',amp))]);
                        fileout = fullfile(savefile,strcat(fig_base,'_',symmetry_combination_result(sym),'_BMD_Peak_',num2str(ii),'_Var_',flow_variables(vari)));
                        savefig(strcat(fileout,'.fig'))
                        export_fig(strcat(fileout,'.png'),'-m5');
                        close(gcf)   % PATCH 2026-10-23: figures were never closed; hundreds piled up
        
                        %% Figure 2: Magnitude mode shape
                        figure(2)
                        set(gcf,'Color',[1,1,1])
                        pcolor(x,y,squeeze(abs(P(1,1,:,:,vari))))
                        shading interp
                        axis equal tight
                        colormap(sCMRmap)
                        set(gca,'layer','top')
                        xlabel('$x/D_e$','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX');
                        ylabel('$y/D_e$','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX');
                        title([strcat("BiSpec ",f1_sym," St_1 = ",sprintf('%1.3f',l),", ",f2_sym," St_2 = ",sprintf('%1.3f',k)),strcat(f3_sym,"  St_3 = ",sprintf('%1.3f',l+k), ", A = ", sprintf('%1.3f',amp))]);
                        fileout = fullfile(savefile,strcat(fig_base,'_',symmetry_combination_result(sym),'_BMD_Peak_',num2str(ii),'_Var_',flow_variables(vari),'_abs'));
                        savefig(strcat(fileout,'.fig'))
                        export_fig(strcat(fileout,'.png'),'-m5');
                        close(gcf)   % PATCH 2026-10-23: figures were never closed; hundreds piled up
        
                        %% Figure 3: Interaction map (real part)
                        figure(3)
                        set(gcf,'Color',[1,1,1])
                        pcolor(x,y,real(squeeze(conj(P(1,1,:,:,vari)).*P(2,1,:,:,vari))))
                        shading interp
                        axis equal tight
                        colormap(cmap)
                        set(gca,'layer','top')
                        xlabel('$x/D_e$','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX');
                        ylabel('$y/D_e$','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX');
                        title([strcat("IntMap ",f1_sym," St_1 = ",sprintf('%1.3f',l),", ",f2_sym," St_2 = ",sprintf('%1.3f',k)),strcat(f3_sym,"  St_3 = ",sprintf('%1.3f',l+k), ", A = ", sprintf('%1.3f',amp))]);
                        fileout = fullfile(savefile,strcat(fig_base,'_',symmetry_combination_result(sym),'_IntMap_Peak_',num2str(ii),'_Var_',flow_variables(vari)));
                        savefig(strcat(fileout,'.fig'))
                        export_fig(strcat(fileout,'.png'),'-m5');
                        close(gcf)   % PATCH 2026-10-23: figures were never closed; hundreds piled up
        
                        %% Figure 4: Interaction map (magnitude)
                        figure(4)
                        set(gcf,'Color',[1,1,1])
                        pcolor(x,y,abs(squeeze(P(1,1,:,:,vari).*P(2,1,:,:,vari))))
                        shading interp
                        axis equal tight
                        colormap(sCMRmap)
                        set(gca,'layer','top')
                        xlabel('$x/D_e$','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX');
                        ylabel('$y/D_e$','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX');
                        title([strcat("IntMap ",f1_sym," St_1 = ",sprintf('%1.3f',l),", ",f2_sym," St_2 = ",sprintf('%1.3f',k)),strcat(f3_sym,"  St_3 = ",sprintf('%1.3f',l+k), ", A = ", sprintf('%1.3f',amp))]);
                        fileout = fullfile(savefile,strcat(fig_base,'_',symmetry_combination_result(sym),'_IntMap_Peak_',num2str(ii),'_Var_',flow_variables(vari),'_abs'));
                        savefig(strcat(fileout,'.fig'))
                        export_fig(strcat(fileout,'.png'),'-m5');
                        close(gcf)   % PATCH 2026-10-23: figures were never closed; hundreds piled up
                    end % End flow_variables loop
                end % End n_peaks loop
            end % End symmetry_regions loop
        end % End plot_all_syms_BMD_modes section


        %% ======================== SECTION 4: SYMMETRY-BASED FREQUENCY COMPARISON ========================
        % If plot_symmetry_freq_comparison is true, generate a condensed scatter plot showing
        % ALL frequency triplets (not just peaks), with symbols/vertical offsets distinguishing
        % symmetry combinations. Rationale: Provides comprehensive overview of interaction landscape,
        % colored by amplitude, with symmetry-specific markers for easy visual grouping.
        if plot_symmetry_freq_comparison
            savefile = fullfile(parent_folder,'Symmetry_Imposed','Figures','Frequency_Comparison');
            mkdir(savefile)

            n_peaks = size(triadics_St,1); % Use all frequency triplets (not just peaks)
            triadic_vals_sorted = triadic_vals;

            %% Frequency Triplet Sorting & Base Frequency Identification
            % Extract and sort (f1, f2, f3) triplets to isolate "base" frequencies
            % (those where f3 ≈ 0, representing fundamental modes, not interactions).
            % Rationale: Use base freqs as axis reference to compress (f1, f2) to integer indices.
            
            % Get frequency triplets from first symmetry region (representative)
            resultant_freqs = squeeze(triadics_St(:,1:3,1)); % resultant_freqs: [n_freq, 3] = [f1, f2, f3]
            
            % Sort by f1, then f2, then f3 to organize triplets
            [~,sorted_inds] = sort(squeeze(triadics_St(:,1,1))); % Sort by f1
            resultant_freqs = resultant_freqs(sorted_inds,:);
            triadic_vals_sorted = triadic_vals_sorted(sorted_inds,:);

            % Sort by f3 to group base frequencies (f3~0) at top
            [~,sorted_inds] = sort(resultant_freqs(:,3));
            triads_oi = resultant_freqs(sorted_inds,1:3); % triads_oi: [n_freq, 3] sorted triplets
            
            % Identify base frequencies: those with f3 = 0 (no interaction, fundamental modes)
            base_list_inds = find(triads_oi(:,3) == 0);
            base_list = triads_oi(base_list_inds,1); % base_list: [n_base] unique fundamental frequencies
            triadic_vals_sorted = triadic_vals_sorted(sorted_inds,:);

            % Count unique f2 values for aspect ratio adjustment
            vert_points = length(unique(triads_oi(:,2)));
            
            %% Index Conversion: Frequency → Integer Grid Coordinates
            % Map each (f1, f2) pair to integer indices referencing base_list.
            % Purpose: Compress continuous Strouhal space to discrete grid for cleaner visualization.
            triads_oi_index = [];
            for ind = 1:size(triads_oi,1)
                for triad = 1:2 % Map f1 and f2 to indices
                    % Find index of this frequency in base_list (abs value)
                    triads_oi_index(ind,triad) = find(base_list == abs(triads_oi(ind,triad)))-1; % -1 for 0-indexing
                end
            end
            % Restore sign (find() only matches positive values)
            triads_oi_index = triads_oi_index.*sign(triads_oi(:,1:2)); % triads_oi_index: [n_freq, 2] integer coords

            %% Colormap Setup: Discrete Color Levels
            % Create discrete colormap with steps matching amplitude range.
            % Rationale: Matches colorbar to integer amplitude bins (publication-quality).
            cmin = ceil(min(min(triadic_vals_sorted(:,:))))-0.5;
            cmax = ceil(max(max(triadic_vals_sorted(:,:))))-0.5;
            colorsteps = cmax - cmin;
            cstepssize = floor((size(sCMRmap,1)-1)/(colorsteps-1)); % Step size for discrete colormapping
            discrete_colormap = sCMRmap(1:cstepssize:end,:); % discrete_colormap: [n_steps, 3] subsampled

            % Simplified symmetry labels for legend (AA, AS, SA, SS)
            symmetry_combination_result_simp = ["A+A=S","A+S=A","S+A=A","S+S=S"];
            % Note: Currently hardcoded for 4 symmetry regions; update if using 2-region decomposition

            %% Vertical Offset for Symmetry Markers
            % Each symmetry region gets a vertical offset to separate scatter plots visually.
            % Offsets calculated symmetrically around y=0.
            max_point = min([0.33,0.035*vert_points]); % Scale offset based on # of f2 values
            min_point = -max_point;
            marker_list = ["v","o","s","^"]; % Markers: inverted tri, circle, square, triangle
            sz = [25,25,30,25]; % Marker sizes (square slightly larger for visibility)

            %% Generate Frequency Comparison Figure
            figure(1)
            hold on
            set(gcf,'Color',[1 1 1])
            box on
            grid on
            
            % First loop: create legend entries (scatter off-plot to avoid clutter)
            for sym = 1:symmetry_regions^2
                marker = marker_list(sym);
                vert_shift = max_point - (max_point - min_point)/(symmetry_regions^2-1)*(sym-1);
                % Plot invisible point for legend (off-plot at 1000, 1000)
                scatter(1000,1000 + vert_shift,sz(sym),min(min(triadic_vals_sorted(:,:)))-100,'filled','Marker',marker,'MarkerEdgeColor','k')
            end
            
            % Second loop: plot actual frequency triplets with symmetry-specific markers
            for sym = 1:symmetry_regions^2
                marker = marker_list(sym);
                vert_shift = max_point - (max_point - min_point)/(symmetry_regions^2-1)*(sym-1);
                % Scatter plot: x=f1 index, y=f2 index + vertical offset, color=log(amplitude)
                scatter(triads_oi_index(:,1),triads_oi_index(:,2) + vert_shift,sz(sym),triadic_vals_sorted(:,sym),'filled','Marker',marker,'MarkerEdgeColor','k')
            end
            
            colormap(discrete_colormap)
            hcb = colorbar; % Colorbar shows log10(|bispectral amplitude|)
            
            % Axis limits: tight around data range
            xlim([min(triads_oi_index(:,1))-0.5,max(triads_oi_index(:,1))+0.5])
            ylim([min(triads_oi_index(:,2))-0.5,max(triads_oi_index(:,2))+0.5])
            
            % Labels and formatting
            xlabel('$St_1$','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX');
            ylabel('$St_2$','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX');
            ylabel(hcb,{'$|\lambda_1|$'},'FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX');
            chandle = get(hcb,'ylabel');
            set(chandle,'units','Normalized','Position',[3.3,0.54,0]); % Adjust colorbar label position
            pbaspect([1,2,1]) % 2:1 aspect ratio for tall display

            % Legend showing symmetry combinations with marker symbols
            legend(symmetry_combination_result_simp,'Location','southwest')
            
            % Custom tick labels: map integer indices back to actual Strouhal values
            xticks([0:(length(base_list)-1)])
            yticks([-(length(base_list)-1):(length(base_list)-1)])
            xticklabels(round(base_list,3)) % Display actual St1 values
            yticklabels(round([-flip(base_list(2:end));base_list],3)) % Display actual St2 values
            xtickangle(45) % Rotate x-labels for readability

            clim([cmin,cmax]) % Set colorbar limits
            
            % Save figure
            fileout = fullfile(savefile,strcat(fig_base,'_Combined_BiSpectrum_Vars_',join(flow_variables,"")));
            savefig(strcat(fileout,'.fig'))
            export_fig(strcat(fileout,'.png'),'-m5');

            close(1) % Close figure to free memory
            
        end % End plot_symmetry_freq_comparison section


    end % End per-case loop (i = 1:length(case_list))
end % End parent folder loop (m = 1:length(parent_folders))

%================================================================================
% PURPOSE:
%   Compute 2D wavenumber-frequency spectra from SPOD mode spatial structures
%   via 2D Fourier transform to identify coherent structures' wavelengths,
%   wavenumber content, and propagation characteristics.
%
% HIGH-LEVEL WORKFLOW:
%   1. Locate and load SPOD results (*_Nt_*Nfft*.mat files) from SPOD_Results/Data/
%   2. For each dominant frequency (identified by mode eigenvalue peaks),
%      extract the corresponding spatial SPOD mode shape P(:,:)
%   3. Apply 2D spatial FFT to map mode shape into (k_x, k_y) wavenumber space
%   4. Compute 2D wavenumber spectrum energy E(k_x, y) = |FFT(P)|^2
%   5. Extract mean field mean intensity profile for reference comparisons
%   6. Identify dominant wavenumbers and acoustic wave signatures (k_a)
%   7. Generate diagnostic figures: log and normalized wavenumber spectra
%      with reference lines (mean field wavenumbers k_s1/k_2/s3, acoustic k_a)
%   8. Save wavenumber spectrum data (k_spectrum_complex, k_x, y_D, etc.)
%
% OUTPUT FILES:
%   - {nozzle}_{NPR}_{field_plane}_Nfft_{nfft}_Log_k_Spectrum_Abs_Mode_1_Peak_{peak_oi}.png
%   - {nozzle}_{NPR}_{field_plane}_Nfft_{nfft}_Log_k_Spectrum_Mode_1_Peak_{peak_oi}.png
%     Figures in: {parent_folder}/Wavenumber_Spectrum/Figures/
%   - {nozzle}_{NPR}_{field_plane}_Nfft_{nfft}_Wavenumber_Spectrum.mat
%     Data in: {parent_folder}/Wavenumber_Spectrum/Data/
%     Variables: k_spectrum_complex [y,k_x], k_x, y_D, k_kh, k_a, k_s1/s2/s3,
%                peak_oi, St_peak, M_j, D, spod_mode, data_mean
%
% KEY PHYSICAL QUANTITIES:
%   - k_x: axial (streamwise) wavenumber [rad/mm or rad/D_e]
%   - k_y: transverse wavenumber (extracted but not plotted in 2D slices)
%   - k_kh: Kelvin-Helmholtz (shear layer) wavenumber = ω/u_c (typical)
%   - k_s1, k_s2, k_s3: mean field spectral peaks (wavepacket scales)
%   - k_a: acoustic wavenumber = 2πSt·M_j (free-stream pressure wave)
%   - St_peak: Strouhal number of dominant SPOD mode [f·D_e/u_exit]
%
% DIAGNOSTIC FEATURES:
%   - Cyan (--): k_kh_s1 reference line (shear-layer scale minus mean wavenumber)
%   - Magenta (--): k_kh_s2 (second mean field mode)
%   - White (--): ±k_a acoustic propagation envelope
%   - Orange/Gold (:): ±y_D extraction locations (analysis plane slices)
%
%================================================================================

clear all; close all;

%% ======================== COLORMAP SELECTION AND PATH SETUP ========================
% Load custom colormaps for spectral visualizations and utility functions
% CMRmap: sequential colormap for log-scale spectral energy
% pogmap: alternative diverging colormap for wavenumber bipolar plots

% Add utility paths for required functions, exporting, SPOD/BMD, and miscellaneous functions
addpath(genpath("Functions"))

sCMRmap = CMRmap;   % sCMRmap: [n_colors,3] sequential colormap
cmap = pogmap;      % cmap: [n_colors,3] alternative colormap

% Detect execution environment: 1 if HPC (Linux), 0 if Windows PC
using_MASSIVE = 1-ispc;
using_Market = false;  % Whether to use Market (shared network drive) for data storage

% =====================================================================
% DIRECTORY CONFIGURATION
% =====================================================================
% Same hierarchy as BMD/POD scripts
% Top_folder / parent_folder / main_folder / Data -> *Fields.mat

Top_folders = "\\ad.monash.edu\home\User088\joellukw\Documents\Monash_Research_Fellow\Experiments\"; % Root directory for raw image data access. Path after R-ENG-MAE-LTRAC-Jet-Noise (including /) for Market
                                                   % Can be multiple paths; adjusted for MASSIVE/Windows
save_folder_outer = "\\ad.monash.edu\home\User088\joellukw\Documents\Monash_Research_Fellow\Experiments\"; % Usually set to same as Top_folders. Output root for MAT file storage (Local folder)

% Wildcard patterns for automatic folder discovery (regex matching)
parent_folder_str = ["*Misc*"];      % parent_folder_str: regex pattern (select by jet type/axis)
main_folder_str = ["*SPOD_Nfft*"];         % main_folder_str: regex pattern (select by nozzle config)

% Retrieve paths matching above criteria
[parent_folders, save_folders] = get_parent_path(Top_folders,parent_folder_str,save_folder_outer,using_MASSIVE,using_Market);


%% ======================== WAVENUMBER SPECTRUM ANALYSIS PARAMETERS ========================
% Control 2D FFT resolution, spectral smoothing, and peak detection threshold
% RATIONALE:
%   - nfft = 2^floor(log2(n_snapshots/20)): ensures FFT length ~20× smaller than snapshot count
%     to balance spectral resolution (smaller FFT → coarser k resolution) against efficiency
%   - y_D: radial location for axial wavenumber extraction (typical: 0.5–1.0 D_e)
%   - band_range: frequency smoothing width mitigates noise from narrow-band SPOD peaks
%   - n_peaks: limit loop to top N dominant frequencies (avoid low-energy spurious modes)
% MEMORY NOTE:
%   - 2D FFT: O(n_y × n_x × log(n_x)) per mode; typically <1 sec per mode on modern hardware

n_snapshots = 50000;  % n_snapshots: scalar, expected snapshot count per condition
                      % (used only for FFT size heuristic; may not match actual data)

% Radial analysis plane (y/D_e coordinate where wavenumber spectrum is extracted)
set_own_y_D = 0.5;   % set_own_y_D: scalar, y-location override [D_e units]
                     % If set_own_y_D ~= 0, use this value instead of auto-detected location
                     % Typical values: 0.5 (jet center), 1.0 (jet radius), 0.25 (inner shear)

% Frequency band smoothing: average spectrum over neighboring frequencies
use_mean_band = true;  % use_mean_band: boolean, apply frequency-domain smoothing
band_range = 13;       % band_range: scalar int, width of averaging window [frequency bins]
                       % Rationale: Reduces variance from narrow-band SPOD peaks;
                       %   tradeoff: loses fine frequency resolution

n_peaks = 4;           % n_peaks: scalar int, number of dominant frequency peaks to process
                       % Rationale: Avoid low-energy spurious modes; process only top 4

%% ======================== VARIANT SELECTION ========================
% Choose between standard SPOD and symmetry-decomposed variants
% Symmetry-imposed: analyzes symmetric/antisymmetric components separately
%   (useful for separating coherent structures from their interactions)

symmetry_imposed = false;  % symmetry_imposed: boolean, true = load symmetry-decomposed SPOD results
                           % File pattern adjusts accordingly (e.g., *symmetric*_Nt_*.mat)

%% ======================== DIRECTORY CONFIGURATION ========================
% Specify SPOD results directory hierarchy and file discovery patterns
% Hierarchy: parent_folder / [Symmetry_Imposed/] / Data / *_Nt_*Nfft*.mat
% Expected SPOD output format: MAT files containing L (eigenvalues), St (Strouhal),
%   P (mode tensor), x, y, fps, D, and optionally sym_type

for m = 1:length(parent_folders)

    parent_folder = fullfile(parent_folders(m).folder,parent_folders(m).name);
    save_folder_upper = fullfile(save_folders(m).folder,save_folders(m).name);

    % Find all subfolders matching main_folder_str pattern
    main_folders = dir(fullfile(parent_folder,main_folder_str));
    sf = [main_folders.isdir];
    main_folders = main_folders(sf);
    
    % Loop through each main_folder variant
    for k = 1:length(main_folders)
        main_folder = fullfile(parent_folder,main_folders(k).name,'SPOD_Results');
        save_folder = fullfile(save_folder_upper,main_folders(k).name,'SPOD_Results');

        mkdir(save_folder);
        

        %% Locate SPOD MAT files: adjust pattern based on variant
        % Standard SPOD: *_Nt_*Nfft*.mat
        % Symmetry-imposed: *symmetric*_Nt_*Nfft*.mat
        
        if symmetry_imposed
            % Symmetry-decomposed results stored in subfolder
            main_folder = fullfile(main_folder,"Symmetry_Imposed");
            SPOD_dir = fullfile(main_folder,'Data');
            suffix = strcat('*symmetric*_Nt_*Nfft*.mat');  % File pattern: symmetry-imposed variants
        else
            % Standard SPOD results
            SPOD_dir = fullfile(main_folder,'Data');
            suffix = strcat('*_Nt_*Nfft*.mat');  % File pattern: standard SPOD files
        end
        
        % Retrieve all SPOD result files matching pattern
        case_list = dir(fullfile(SPOD_dir,suffix));
        case_list = extractfield(case_list, 'name');  % case_list: string array of filenames
    
    
        %% Detect operating-parameter convention (NPR vs Mach number)
        % Heuristic: examine first case filename for '_NPR_' or '_M_' delimiter
        if contains(case_list{1},'_NPR_')
            using_npr = true;   % Dataset indexed by pressure ratio (NPR)
        else
            using_npr = false;  % Dataset indexed by Mach number (_M_, _Mj_ or _Ma_)
        end
    
        %% Parse operating-point parameters and nozzle identifiers from filenames
        % Extracts: nozzle_list (type), NPR (or M), NPR_factor (digit count for formatting)
        % Used later for figure titles and output filenames
        
        if using_npr
            for k = 1:length(case_list)   
                nozzle_list{k} = extractBefore(case_list{k},'_NPR');
                NPR_temp = extractBetween(case_list{k},'_NPR_','_');
                NPR_factor = length(num2str(str2num(NPR_temp{1})));
                NPR(k) = str2double(NPR_temp{1});
            end
        else        
            [nozzle_list, M, M_factor] = get_filename_params(using_npr, case_list);   % handles _M_, _Mj_, _Ma_
        end
    
        %% Set extraction plane location (y/D coordinate)
        % y_D: radial location where 1D axial wavenumber spectrum is extracted
        % This is typically chosen at jet centerline (0.5 D_e) or shear layer edge
        % For non-axisymmetric nozzles (Twin, ONR, Elliptical, Rectangular):
        %   adjust location based on geometric symmetry; also account for Major vs Minor views
        % NOTE: Manual inspection recommended; user prompted if Twin nozzle detected
        
        if contains(case_list{1},'Twin')
            fprintf('Check y_D value is set correctly');
            pause(1)
            
            % For twin nozzles: AR2 rectangular, minor view
            y_D = 1/(4)*sqrt(pi/2);   % y_D: scalar, extraction location [D_e units]
            % Adjust for Major view (top-down) vs Minor view (side-on)
            if contains(case_list{1},'Major')
                y_D = y_D*2;  % Double for Major view (aperture-averaged location)
            end
        elseif contains(case_list{1},'ONR') || contains(case_list{1},'Rect')
            % Chevron or rectangular nozzles: AR2 aspect ratio, minor view
            y_D = 1/(4)*sqrt(pi/2);
            if contains(case_list{1},'Major')
                y_D = y_D*2;
            end
        elseif contains(case_list{1},'Ellip')
            % Elliptical nozzles: AR2 aspect ratio, minor view
            y_D = 1/(2*sqrt(2));
            if contains(case_list{1},'Major')
                y_D = y_D*2;
            end
        else
            % Axisymmetric (default): extract at jet centerline
            y_D = 0.5;
        end
    
        % Override with user-specified value if set_own_y_D is non-zero
        if set_own_y_D ~= 0
            y_D = set_own_y_D;
        end
        
        
        %% ===================== PER-CASE PROCESSING LOOP =====================
        % Iterate over all operating conditions and process wavenumber spectra
        
        for i = 1:length(case_list)  
    
            %% Parse operating condition from filename
            if using_npr
                current_val = NPR(i);      % current_val: scalar, pressure ratio
                factor = NPR_factor;       % factor: int, number of digits for formatting
            else
                current_val = M(i);        % current_val: scalar, Mach number
                factor = M_factor;         % factor: int, number of digits for formatting
            end
    
            %% Load SPOD result file using matfile (efficient partial read)
            % SPOD format: L (eigenvalues, shape [n_freq,n_modes])
            %              St (Strouhal numbers, shape [n_freq])
            %              P (mode tensor, shape [n_freq,n_modes,n_y,n_x])
            %              x, y (spatial grids [n_y,n_x])
            %              fps (frame rate [Hz]), D (nozzle diameter [mm])
            
            load_file = fullfile(SPOD_dir,case_list{i});
            file = matfile(load_file);
    
            L = file.L;      % L: [n_freq,n_modes] eigenvalues (energy per mode)
            St = file.St;    % St: [n_freq] Strouhal numbers = f·D/u_exit
            x = file.x;      % x: [n_y,n_x] axial coordinate grid [mm]
            y = file.y;      % y: [n_y,n_x] transverse coordinate grid [mm]
            fps = file.fps;  % fps: scalar, acquisition frame rate [Hz]
            D = file.D;      % D: scalar, nozzle diameter [mm]
            nfft = file.nfft;% nfft: scalar, size of Welch window used in SPOD processing 
    
            if symmetry_imposed
                sym_type = file.sym_type;  % sym_type: string, symmetry descriptor (e.g., 'S0', 'A0')
            else
                sym_type = "";
            end
       
            %% Identify dominant SPOD frequencies via eigenvalue peaks
            % findpeaks: locates local maxima in L(:,1) (most-energetic mode per frequency)
            % Sort by prominence (eigenvalue magnitude) to focus on energetically significant modes
            % Filter out spurious peaks at low frequency indices (typically noise floor)
            
            [mode_peaks,mode_peak_index,~,mode_peak_prominence] = findpeaks(L(:,1),'SortStr','descend');
            % mode_peaks: vector of eigenvalues at peaks
            % mode_peak_index: indices into L(:,1) for each peak
            
            [mode_peak_prominence,sort_inds] = sort(mode_peak_prominence,'descend');
            mode_peaks = mode_peaks(sort_inds);
            mode_peak_index = mode_peak_index(sort_inds);
    
            % Remove spurious low-frequency peaks (index < 50, typically low-frequency noise)
            mode_peak_prominence(mode_peak_index < 50) = [];
            mode_peaks(mode_peak_index < 50) = [];
            mode_peak_index(mode_peak_index < 50) = [];
    
            %% ===================== PER-FREQUENCY PEAK LOOP =====================
            % Process the top n_peaks most energetic frequencies
            
            for peak_oi = 1:min(n_peaks,numel(mode_peak_index))   % fewer peaks than n_peaks crashed
    
                % Retrieve Strouhal number and frequency index for this peak
                St_peak = St(mode_peak_index(peak_oi));  % St_peak: scalar, Strouhal at peak
                disp(peak_oi)
                disp(St_peak)
        
                %% Load SPOD mode shape at this frequency (mode 1 = most energetic)
                % P: [n_freq, n_modes, n_y, n_x] tensor
                % Extract P[peak_index, mode_1, :, :] → spod_mode [n_y,n_x]
                % Rationale: Most energetic mode typically contains dominant coherent structure
                
                "Loading SPOD Mode"
                spod_mode = squeeze(file.P(mode_peak_index(peak_oi),:,:,1));  % [n_y,n_x] single or double
                
                %% Load mean field snapshot for wavenumber reference comparisons
                % load_mean_field_wavenumber: retrieves ensemble-mean schlieren intensity
                % and computes associated wavenumber spectrum for comparison to fluctuation spectrum
                % Also returns convection Mach number M_j for acoustic wavenumber calculation
                % NOTE: Could substitute with BMD (Bi-spectral Mode Decomposition) interaction map
                % instead of just mean field for phase-aligned wavenumber analysis
                
                [x,y,data_mean,spod_mode,M_j] = load_mean_field_wavenumber(case_list{i},SPOD_dir,...
                    sym_type,spod_mode,using_npr,current_val,factor);
            
                %% Compute acoustic wavenumber signature
                % k_a = 2π·St·M_j: wavenumber of free-stream acoustic wave
                % At supersonic exit (M_j > 1): shock-associated acoustic radiation
                % At subsonic exit (M_j < 1): subsonic conveyed disturbances
                
                % k_a*D = omega*D/c_inf = 2*pi*St*(u_j/c_inf)*(D/D_j) with St = f*D_j/u_j. The old
                % 2*pi*M_j*St assumed a_j = c_inf and D_j = D (lines ~20% too far out at NPR 2.9).
                [u_j_ka,D_j_ka] = get_ideal_jet_velocity_diameter(using_npr,current_val,factor,D);
                c_inf = sqrt(1.4*287*293);   % ambient sound speed at T0 = 293 K, as in get_ideal_jet_velocity_diameter
                k_a = 2*pi*St_peak*(u_j_ka/c_inf)*(D/D_j_ka);  % k_a: scalar, acoustic wavenumber [rad/D]
            
                %% Compute 2D wavenumber spectrum via spatial FFT
                % get_wavenumber: applies 2D FFT to mode shape and extracts 1D axial wavenumber
                % y_width: height of analysis window [D_e]; y_width=3 for focused extraction
                % Returns: k_kh (Kelvin-Helmholtz wavenumber), k_up_1/k_up_2 (upstream peaks),
                %          k_x (axial wavenumber grid), k_spectrum_complex [n_y,n_kx]
                
                y_width = 3;  % y_width: scalar, spatial window height [D_e units]
                [k_kh,k_up_1,k_up_2,k_x,k_spectrum_complex] = get_wavenumber(x,y,y_D,y_width,...
                    spod_mode,true);
                % k_kh: scalar, Kelvin-Helmholtz wavenumber [rad/D_e]
                % k_up_1, k_up_2: upstream phase speeds (typically ~0.3–0.4 c_ambient)
                % k_x: [n_kx] axial wavenumber vector [rad/D_e]
                % k_spectrum_complex: [n_y,n_kx] complex FFT amplitude
    
                %% Compute mean field wavenumber spectrum for reference
                % Apply same extraction to background intensity field
                % If use_mean_band: use band_range frequency bins instead of y_width=3
                
                if use_mean_band
                    y_width = band_range;  % Smooth over band_range frequencies
                end
                [k_s1,k_s2,k_s3,~,~] = get_wavenumber(x,y,0.0,y_width,data_mean,false);
                % k_s1, k_s2, k_s3: dominant wavenumbers from mean field spectrum
            
            
                %% ===================== FIGURE 1: LOG-SCALED WAVENUMBER SPECTRUM =====================
                % Generate diagnostic figure showing spectral energy on log scale with reference lines
                % Log scale emphasizes weak features (e.g., upstream modes, acoustic waves)
                % Reference lines aid identification: Kelvin-Helmholtz wavenumber (cyan),
                % mean field wavenumbers (magenta), acoustic propagation envelope (white)
                
                "Plotting Wavenumber Spectra"
                save_folder_figs = fullfile(save_folder,'Wavenumber_Spectrum','Figures');
                mkdir(save_folder_figs)
    
                % Parse field plane descriptor from filename (e.g., 'Major', 'Minor')
                field_plane = cell2mat(extractBetween(case_list{i},num2str(current_val),'_Nt_'));   % NPR(i) is undefined for Mach cases
                vars_used = cell2mat(extractBetween(case_list{i},'_Vars_','.mat'));
    
                % Create 2D mesh for pcolor plot: k_xD (scaled wavenumber), y (spatial)
                [k_xD, y]=meshgrid(k_x,y(:,1));
         
                % Compute reference wavenumber differences (for overlay lines)
                % Rationale: k_kh is modal prediction; k_s1/s2/s3 are spectral peaks
                % Differences highlight agreement/disagreement between theory and data
                k_kh_s1 = k_kh-k_s1;   % k_kh_s1: Kelvin-Helmholtz minus mean mode 1
                k_kh_s2 = k_kh-k_s2;   % k_kh_s2: Kelvin-Helmholtz minus mean mode 2
                k_kh_s3 = k_kh-k_s3;   % k_kh_s3: Kelvin-Helmholtz minus mean mode 3
        
                % Extraction plane markers: highlight y locations of analysis
                y_lines = [-y_D, 0, y_D];  % y_lines: [3] extraction window boundaries
        
                figure 
                set(gcf,'Color',[1,1,1])
                pcolor(k_xD,y,log(abs(k_spectrum_complex)))  % Log scale for contrast
                shading interp   % Smooth color interpolation
                clim([-5 1])     % Color limits: log scale emphasizes weak features
                colormap(sCMRmap)  % Sequential colormap for log energy
                hold on
        
                % Overlay reference lines for mode identification
                % Cyan (--): Kelvin-Helmholtz minus mean shear-layer wavenumber
                % Magenta (--): alternative mean field mode
                % White (--): acoustic wave envelope (±k_a)
                % Orange/Gold (:): extraction plane locations
                xline(k_kh_s1,'linestyle','--','Color','cyan','linewidth',1.5)
                xline(k_kh_s2,'linestyle','--','Color','magenta','linewidth',1.5)
                xline(k_a,'linestyle','--','Color','white','linewidth',1.0)      % +k_a (downstream)
                xline(-k_a,'linestyle','--','Color','white','linewidth',1.0)     % -k_a (upstream)
                yline(y_lines(1),'linestyle',':','Color','[0.93 0.69 0.13]','linewidth',1.0)  % -y_D
                yline(y_lines(2),'linestyle',':','Color','[0.93 0.69 0.13]','linewidth',1.0)  % 0
                yline(y_lines(3),'linestyle',':','Color','[0.93 0.69 0.13]','linewidth',1.0)  % +y_D
                title(strcat("Peak ",num2str(peak_oi),", St = ", num2str(St_peak)));
            
                xlim([-20 20])  % Wavenumber range [rad/D_e]
                ylim([min(y(:,1)),max(y(:,1))])  % Spatial extent
            
                xlabel('$k_xD_e$','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX');
                ylabel('$y/D_e$','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX');
                box on 
                set(gca,'XColor','black', 'YColor','black','fontname','times','fontsize',16)
                set(gca,'layer','top')
        
                % Generate output filename based on nozzle type and case parameters

                condition = extractBefore(case_list{i},'.mat');   % was case_list{ii} (undefined)
                condition_extra = strcat('Log_k_Spectrum_',condition,'_Mode_1_Peak_',num2str(peak_oi));   % log-scale figure (names were swapped)
    
                file_out = fullfile(save_folder_figs,[strcat(condition_extra)]);
                export_fig(strcat(file_out,'.png'),'-m5');  % -m5: 5× magnification for crisp text
                savefig(strcat(file_out,'.fig'))  % Also save MATLAB figure file for editing
        
                %% ===================== FIGURE 2: NORMALIZED WAVENUMBER SPECTRUM =====================
                % Generate second diagnostic figure with normalized (0–1) amplitude scale
                % Emphasizes structure shape without log scale distortion
                % Useful for visually identifying peak wavenumbers and spatial extent
                
                figure 
                set(gcf,'Color',[1,1,1])
                pcolor(k_xD,y,abs(k_spectrum_complex)/max(abs(k_spectrum_complex),[],"all"));  % Normalize to [0,1]
                shading interp
                clim([0 1])
                colormap(sCMRmap)
                hold on
        
                % Overlay same reference lines as Figure 1
                xline(k_kh_s1,'linestyle','--','Color','cyan','linewidth',1.5)
                xline(k_kh_s2,'linestyle','--','Color','magenta','linewidth',1.5)  % was k_kh_s1 again
                xline(k_a,'linestyle','--','Color','white','linewidth',1.0)
                xline(-k_a,'linestyle','--','Color','white','linewidth',1.0)
                yline(y_lines(1),'linestyle',':','Color','[0.93 0.69 0.13]','linewidth',1.0)
                yline(y_lines(2),'linestyle',':','Color','[0.93 0.69 0.13]','linewidth',1.0)
                yline(y_lines(3),'linestyle',':','Color','[0.93 0.69 0.13]','linewidth',1.0)
            
                title(strcat("Peak ",num2str(peak_oi),", St = ", num2str(St_peak), " Normalized Scale"));
                xlim([-20 20])
                ylim([min(y(:,1)),max(y(:,1))])
            
                xlabel('$k_xD_e$','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX');
                ylabel('$y/D_e$','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX');
                box on 
                set(gca,'XColor','black', 'YColor','black','fontname','times','fontsize',16)
                set(gca,'layer','top')
        

                condition_extra = strcat('Abs_k_Spectrum_',condition,'_Mode_1_Peak_',num2str(peak_oi));   % normalised linear figure
    
                file_out = fullfile(save_folder_figs,[strcat(condition_extra)]);
                export_fig(strcat(file_out,'.png'),'-m5');
                savefig(strcat(file_out,'.fig'))
    
                %% ===================== SAVE WAVENUMBER SPECTRUM DATA =====================
                % Persist wavenumber analysis results for post-processing, comparison plots,
                % and modal dispersion analysis (k_x vs. frequency relationships)
                % Data stored in standardized MAT format for easy loading in subsequent analyses

                
                % Construct output filename encoding case parameters
                mat_file = strcat(condition,'_Wavenumber_Spectrum.mat');
                save_folder_data = fullfile(save_folder,'Wavenumber_Spectrum','Data');
                mkdir(save_folder_data);
                save_file = fullfile(save_folder_data,mat_file);
        

                % Save spectral data and metadata for later retrieval
                % Variables: k_spectrum_complex [n_y,n_kx] complex FFT amplitude
                %            k_x [n_kx] axial wavenumber grid [rad/D_e]
                %            y_D [scalar] extraction plane location [D_e]
                %            k_kh [scalar] Kelvin-Helmholtz wavenumber
                %            k_s1/s2/s3 [scalar] mean field spectral peaks
                %            peak_oi [scalar int] peak index (1 to n_peaks)
                %            St_peak [scalar] Strouhal number of this peak
                %            M_j [scalar] convection Mach number (for k_a calculation)
                save(save_file,'k_up_1','k_up_2','k_s1','k_s2','k_kh_s1','k_kh_s2',...
                                'k_spectrum_complex',...
                                'k_kh','k_xD','y_D','peak_oi','data_mean','spod_mode', ...
                                'St_peak','M_j','D','x','y', ...
                                '-v7.3');  % -v7.3: HDF5 format for large arrays and compatibility
    
                close all
                    
            end
        end
    end
end

% BMD_Plots.m
% =====================================================================
% Visualization and export of Bi-spectral Mode Decomposition (BMD) results.
% Generates publication-quality figures from pre-computed BMD MAT files:
%   - Bispectrum scatter plots (Specfreqs mode) or contours (full spectrum)
%   - Bispectral mode spatial shapes (real and magnitude)
%   - Nonlinear interaction maps (cross-product of f1 and f2 mode shapes)
%
% INPUT: Requires *Nfft*.mat files in parent_folder/Data/ (from BMD_for_mat_files.m)
% OUTPUT: Saved figures in parent_folder/Figures/Bispectrum/ and Mode_Shapes/
%         .fig (MATLAB) and .png (raster) formats for both
%
% CONFIGURATION:
%   - parent_folders: cell array of paths to BMD_Results directories
%   - plot_bispectrum: true = generate bispectrum magnitude plots
%   - plot_BMD_modes: true = generate spatial mode shapes and interaction maps

clear all
close all

% Add utility paths for required functions, exporting, SPOD/BMD, and miscellaneous functions
addpath(genpath("Functions"))

% =====================================================================
% COLORMAP SELECTION
% =====================================================================
% Define custom colormaps for perceptually uniform visualization
% CMRmap: sequential colormap; pogmap: rainbow-like alternative
sCMRmap = CMRmap;  % Sequential colormap for magnitude plots
cmap = pogmap;     % Alternative blue-red colormap

% =====================================================================
% PLOTTING CONFIGURATION
% =====================================================================
% Control which figure types to generate (disable for faster processing)
plot_bispectrum = true;    % Generate bispectrum magnitude contour/scatter plots
plot_BMD_modes = false;    % Generate mode shapes and interaction maps (compute-intensive)

% =====================================================================
% SOURCE DATA LOCATIONS
% =====================================================================
% Specify directory paths containing BMD results MAT files from
% BMD_for_mat_files.m. Each parent_folder should have a 'Data' subdirectory
% with *Nfft*.mat files and will create 'Figures' subdirectories for output.

parent_folders = ["/home/jweightman/qk75_scratch2/JWeightman/Schlieren/Staging_Case/Axisymmetric_Staging/BMD_Results"];

% =====================================================================
% MAIN PROCESSING LOOP
% =====================================================================

for m = 1:length(parent_folders)
    % Load all BMD result files from this parent folder
    parent_folder = parent_folders(m);
    BMD_dir = fullfile(parent_folder,'Data');

    % Locate all BMD files (containing 'Nfft' parameter in filename)
    suffix = strcat('*Nfft*.mat');
    case_list = dir(fullfile(BMD_dir,suffix));
    case_list = {case_list.name};  % Extract filenames only
    if isempty(case_list)
        % PATCH 2026-10-23: BMD_Analysis skips cases with no SPOD peaks, so a
        % folder can be empty
        warning("No %s files in %s", suffix, BMD_dir);
        continue
    end

    % =====================================================================
    % DETERMINE OPERATING CONDITION TYPE
    % =====================================================================
    % Extract operating condition (NPR or Mach) from first filename to
    % parse all subsequent files correctly
    
    if contains(case_list{1},'_NPR_')
        using_npr = true;
    elseif contains(case_list{1},'_Mj_')
        using_npr = false;
    else
        using_npr = false;
    end
    
    % =====================================================================
    % EXTRACT PARAMETERS FROM FILENAMES
    % =====================================================================
    % Parse nozzle type and operating condition values from filenames
    % for plot titles and legend labels
    
    if using_npr
        for k = 1:length(case_list)
            % Extract nozzle type: text before '_NPR'
            nozzle_list{k} = extractBefore(case_list{k},'_NPR');
            % Extract NPR value and its format/precision
            NPR_temp = extractBetween(case_list{k},'_NPR_','_');
            NPR_factor = length(num2str(str2num(NPR_temp{1})));
            NPR(k) = str2num(NPR_temp{1});
            BMD_details = extractBetween(case_list{k},strcat(NPR_temp{1},'_'),'.mat');
        end
    else
        for k = 1:length(case_list)
            % Extract nozzle type: text before '_Mj'
            nozzle_list{k} = extractBefore(case_list{k},'_Mj');
            % Extract Mach value and its format/precision
            M_temp = extractBetween(case_list{k},'_Mj_','_');
            M_factor = length(M_temp{1});
            M(k) = str2num(M_temp{1});
            BMD_details = extractBetween(case_list{k},strcat(M_temp{1},'_'),'.mat');
        end
    end
    
    % =====================================================================
    % CASE LOOP: GENERATE PLOTS FOR EACH BMD FILE
    % =====================================================================
    % Initialize arrays to accumulate results across all cases for co-plotting
    clearvars B_array St_array
    for i = 1:length(case_list)  
        % =====================================================================
        % LOAD BMD RESULTS FROM MAT FILE
        % =====================================================================
        % Load bispectrum magnitude B, mode spatial shapes P, and frequency
        % information (St, St1, St2, triadics_St) from MAT file
        
        load_file = fullfile(BMD_dir,case_list{i});
        file = matfile(load_file);  % Use matfile for memory-efficient access

        % Load spatial coordinates and BMD outputs
        x = file.x;
        y = file.y;
        B = file.B;
        St = file.B;  % NOTE: looks like this should be file.St (possible typo in original)
        St1 = file.St1;
        St2 = file.St2;
        triadics_St = file.triadics_St;  % Triadic frequencies with bispectrum magnitude
    
        % =====================================================================
        % PREPARE BISPECTRUM MAGNITUDE FOR VISUALIZATION
        % =====================================================================
        % Extract triadic bispectrum amplitudes (column 4 of triadics_St).
        % Apply log10 scaling if amplitudes exceed 1, otherwise use linear.
        % This improves visibility of small-amplitude modes.
        
        if max(abs(triadics_St(:,4)),[],'all') > 1
            % Apply log scale to enhance dynamic range visualization
            triadic_vals  = log10(abs(triadics_St(:,4)));
        else
            % Use linear scale for low-amplitude modes
            triadic_vals = (abs(triadics_St(:,4)));
        end

        % Replace NaN values in bispectrum with zero (prevents plotting errors)
        B(isnan(real(B))) = 0;

        % =====================================================================
        % PLOT 1: BISPECTRUM MAGNITUDE CONTOURS OR SCATTER
        % =====================================================================
        % Two display modes depending on analysis type:
        %   - Specfreqs mode: scatter plot of peaks (sparse but clear)
        %   - Full spectrum: contour plot of entire bispectrum (continuous)
        
        if plot_bispectrum
            % Create output directory for bispectrum figures
            savefile = fullfile(parent_folder,'Figures','Bispectrum');
            mkdir(savefile)
            
            if contains(case_list{i},'Specfreqs')
                % =========================================================
                % SCATTER PLOT: Sparse triadic points from SPOD-restricted BMD
                % =========================================================
                % Each point represents a (St_f1, St_f2) pair with color
                % indicating bispectrum magnitude. Black background helps
                % visibility of individual peaks.
                
                figure
                set(gcf,'Color',[1,1,1])  % White background
                scatter(triadics_St(:,1),triadics_St(:,2),8,triadic_vals,'filled')
                set(gca,'Color',[0,0,0])  % Black axes/grid
                colormap(gca,sCMRmap(100:end,:))  % Sequential colormap
                hcb = colorbar;  % Show magnitude scale
                box on
                ylim([-1.1,1.1])  % St_f2 typically range 0-1 plus margins
                xlim([0,1.1])     % St_f1 typically range 0-1 plus margins
                xlabel('$St_1$','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX');
                ylabel('$St_2$','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX');
                ylabel(hcb,{'$|\lambda_1|$'},'FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX');
                chandle = get(hcb,'ylabel');
                set(chandle,'units','Normalized','Position',[2.8,0.50,0]);
                
                % Save as both .fig (editable) and .png (shareable)
                fileout = fullfile(savefile,[case_list{i}(1:end-4),'_Bispectrum']);
                savefig(strcat(fileout,'.fig'))
                export_fig(strcat(fileout,'.png'),'-m5');  % 5x upsampling for high DPI
                close(gcf)   % PATCH 2026-10-23: figures were never closed; hundreds piled up
            else
                % =========================================================
                % CONTOUR PLOT: Full bispectrum from unrestricted BMD
                % =========================================================
                % pcolor shows magnitude at each (St_f1, St_f2) grid point.
                % Shading interp smooths cell boundaries; tight axis removes padding.
                
                figure
                set(gcf,'Color',[1,1,1])
                pcolor(St1,St2,abs(B))  % Magnitude of bispectrum
                shading interp           % Smooth interpolation between cells
                axis equal tight         % Preserve aspect ratio; no padding
                colormap(sCMRmap)        % Sequential colormap
                hcb = colorbar;
                % Limit axes to non-zero bispectrum region to improve focus
                xlim([min(St1(B ~= 0)),max(St1(B ~= 0))])
                ylim([min(St2(B ~= 0)),max(St2(B ~= 0))])
                box on
                set(gca,'Layer','Top')
                xlabel('$St_1$','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX');
                ylabel('$St_2$','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX');
                ylabel(hcb,{'$|\beta|$'},'FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX');
                chandle = get(hcb,'ylabel');
                set(chandle,'units','Normalized','Position',[2.8,0.50,0]);
                
                % Save as both .fig (editable) and .png (shareable)
                fileout = fullfile(savefile,[case_list{i}(1:end-4),'_Bispectrum']);
                savefig(strcat(fileout,'.fig'))
                export_fig(strcat(fileout,'.png'),'-m5');
                close(gcf)   % PATCH 2026-10-23: figures were never closed; hundreds piled up
            end
        end

        % =====================================================================
        % PLOT 2: BISPECTRAL MODE SPATIAL SHAPES & INTERACTION MAPS
        % =====================================================================
        % For each triadic peak, visualize:
        %   - Real part of bispectral mode P(1,...)
        %   - Magnitude of bispectral mode
        %   - Interaction map: product P(1,...) × P(2,...) showing
        %     the spatial regions where both f1 and f2 modes are strong
        %     (indicates strong nonlinear coupling locale)
        
        if plot_BMD_modes
            % Create output directory for mode shape figures
            savefile = fullfile(parent_folder,'Figures','Mode_Shapes');
            mkdir(savefile)

            n_peaks = 10;  % Visualize top 10 peaks
            
            % =========================================================
            % IDENTIFY PEAK TRIADS
            % =========================================================
            % Find the n_peaks highest-amplitude triads in the bispectrum
            
            if contains(case_list{i},'Specfreqs')
                % For sparse Specfreqs case: maxk returns indices of top amplitudes
                [~,peak_locs] = maxk(triadic_vals,n_peaks,'ComparisonMethod','abs');
            else
                % For full spectrum: the saved triads are already sorted by |lambda|
                % (bmd_modified keeps the top ones with maxk), so findpeaks on them
                % found no peaks; take the largest directly.
                [~,peak_locs] = maxk(triadic_vals,n_peaks);
            end

            % =========================================================
            % PLOT LOOP: Generate figures for each peak
            % =========================================================
            for ii = 1:min(n_peaks,numel(peak_locs))   % fewer triads than n_peaks crashed

                ind = peak_locs(ii);  % Linear index into triadic arrays

                % Extract triadic frequencies for title
                l = triadics_St(ind,1);      % St_f1
                k = triadics_St(ind,2);      % St_f2
                amp = triadic_vals(ind);     % Bispectrum amplitude
                
                % Load mode shapes for this triad
                P = file.P(:,ind,:,:);  % P(mode_type, spatial_y, spatial_x)

                % =========================================================
                % SUBPLOT 1: REAL PART OF BISPECTRAL MODE (f1, f2 -> f3)
                % =========================================================
                % P(1,:,:) contains the phase-coherent bispectral mode.
                % Real part shows in-phase (positive) and out-of-phase (negative)
                % regions of coupling.
                
                figure
                set(gcf,'Color',[1,1,1])
                pcolor(x,y,squeeze(real(P(1,1,:,:))))
                shading interp
                axis equal tight
                colormap(sCMRmap)
                set(gca,'Layer','Top')
                xlabel('$x/D$','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX');
                ylabel('$y/D$','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX');
                title(strcat("BiSpec St_1 = ",sprintf('%1.3f',l),", St_2 = ",sprintf('%1.3f',k),", St_f = ",sprintf('%1.3f',l+k), ", A = ", sprintf('%1.3f',amp)));
                fileout = fullfile(savefile,[case_list{i}(1:end-4),'_Bispectral_Mode_Peak_',num2str(ii)]);
                savefig(strcat(fileout,'.fig'))
                export_fig(strcat(fileout,'.png'),'-m5');
                close(gcf)   % PATCH 2026-10-23: figures were never closed; hundreds piled up

                % =========================================================
                % SUBPLOT 2: MAGNITUDE OF BISPECTRAL MODE
                % =========================================================
                % Absolute value shows spatial extent regardless of phase.
                
                figure
                set(gcf,'Color',[1,1,1])
                pcolor(x,y,squeeze(abs(P(1,1,:,:))))
                shading interp
                axis equal tight
                colormap(sCMRmap)
                set(gca,'Layer','Top')
                xlabel('$x/D$','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX');
                ylabel('$y/D$','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX');
                title(strcat("BiSpec St_1 = ",sprintf('%1.3f',l),", St_2 = ",sprintf('%1.3f',k),", St_f = ",sprintf('%1.3f',l+k), ", A = ", sprintf('%1.3f',amp)));
                fileout = fullfile(savefile,[case_list{i}(1:end-4),'_Bispectral_Mode_Peak_',num2str(ii),'_abs']);
                savefig(strcat(fileout,'.fig'))
                export_fig(strcat(fileout,'.png'),'-m5');
                close(gcf)   % PATCH 2026-10-23: figures were never closed; hundreds piled up
                % =========================================================
                % SUBPLOT 3: INTERACTION MAP (Real part)
                % =========================================================
                % Product of modes P(1,...) × P(2,...)
                % Shows spatial regions where both f1 and f2 are strongly
                % coupled (nonlinear interaction hotspots). Real part reveals
                % in-phase vs. anti-phase coupling regions.

                figure
                set(gcf,'Color',[1,1,1])
                pcolor(x,y,real(squeeze(conj(P(1,1,:,:)).*P(2,1,:,:))))  % conj: P1.*P2 carries twice the arbitrary eigenvector phase
                shading interp
                axis equal tight
                colormap(sCMRmap)
                set(gca,'Layer','Top')
                xlabel('$x/D$','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX');
                ylabel('$y/D$','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX');
                title(strcat("IntMap St_1 = ",sprintf('%1.3f',l),", St_2 = ",sprintf('%1.3f',k),", St_f = ",sprintf('%1.3f',l+k), ", A = ", sprintf('%1.3f',amp)));
                fileout = fullfile(savefile,[case_list{i}(1:end-4),'_Interaction_Map_Peak_',num2str(ii)]);
                savefig(strcat(fileout,'.fig'))
                export_fig(strcat(fileout,'.png'),'-m5');
                close(gcf)   % PATCH 2026-10-23: figures were never closed; hundreds piled up

                % =========================================================
                % SUBPLOT 4: INTERACTION MAP (Magnitude)
                % =========================================================
                % Absolute value of product, showing strength of coupling
                % regardless of phase relationship.

                figure
                set(gcf,'Color',[1,1,1])
                pcolor(x,y,abs(squeeze(P(1,1,:,:).*P(2,1,:,:))))
                shading interp
                axis equal tight
                colormap(sCMRmap)
                set(gca,'Layer','Top')
                xlabel('$x/D$','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',0,'interpreter','LaTeX');
                ylabel('$y/D$','FontSize',16,'FontName','Times New Roman','FontAngle','italic','rot',90,'interpreter','LaTeX');
                title(strcat("IntMap St_1 = ",sprintf('%1.3f',l),", St_2 = ",sprintf('%1.3f',k),", St_f = ",sprintf('%1.3f',l+k), ", A = ", sprintf('%1.3f',amp)));
                fileout = fullfile(savefile,[case_list{i}(1:end-4),'_Interaction_Map_Peak_',num2str(ii),'_abs']);
                savefig(strcat(fileout,'.fig'))
                export_fig(strcat(fileout,'.png'),'-m5');
                close(gcf)   % PATCH 2026-10-23: figures were never closed; hundreds piled up
            end
        end
    end
end

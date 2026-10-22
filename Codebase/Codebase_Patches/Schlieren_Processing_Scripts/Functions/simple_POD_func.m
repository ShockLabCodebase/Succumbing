%%% simple POD
function [POD_modes, a_n, Energy, phi, Mode, x, y] = simple_POD_func(im_data, ROI, x_roi, y_roi, x, y) 

im_data = cast(im_data,'single');
%%Set number of spatial modes to generate
num_modes = 100;
extra_modes = 500;

im_data_mean = mean(im_data,3);
im_data_fluc = bsxfun(@minus,im_data,im_data_mean);

if ROI == 0
    S1 = size(im_data_fluc,1);
    S2 = size(im_data_fluc,2);
    S3 = size(im_data_fluc,3);
    im_data_fluc = reshape(im_data_fluc,S1*S2,S3);
else

    if ROI == 1
        S1_full = size(im_data_fluc,1);
        S2_full = size(im_data_fluc,2);
        S3_full = size(im_data_fluc,3);
        im_data_fluc_full = reshape(im_data_fluc,S1_full*S2_full,S3_full);
    end

    if sum(x_roi ~= 0) > 0
        ind_x1 = find(abs(x(1,:)-x_roi(1)) == min(abs(x(1,:)-x_roi(1))));
        ind_x2 = find(abs(x(1,:)-x_roi(2)) == min(abs(x(1,:)-x_roi(2))));
    else
        ind_x1 = 1;
        ind_x2 = size(x,2);
    end
    if sum(y_roi ~= 0) > 0
        ind_y1 = find(abs(y(:,1)-y_roi(1)) == min(abs(y(:,1)-y_roi(1))));
        ind_y2 = find(abs(y(:,1)-y_roi(2)) == min(abs(y(:,1)-y_roi(2))));
    else
        ind_y1 = 1;
        ind_y2 = size(y,1);
    end

    im_data_fluc = im_data_fluc(ind_y1:ind_y2,ind_x1:ind_x2,:);
    S1 = size(im_data_fluc,1);
    S2 = size(im_data_fluc,2);
    S3 = size(im_data_fluc,3);
    im_data_fluc = reshape(im_data_fluc,S1*S2,S3);

    if ROI == 2
        x = x(ind_y1:ind_y2,ind_x1:ind_x2);
        y = y(ind_y1:ind_y2,ind_x1:ind_x2);
    end
end
  
%Create matrix will all fluctuating velocity components in a column for each snapshot
%Change if using both vel components, or just one, or vorticity
variable_string = "";           
Uall = [];
Uall=cat(1,Uall,im_data_fluc);
% clearvars im_data im_data_fluc eVec eValue tmp phi menergy

%%Clear variables for memory
fprintf('Uall Created\n');

% Do POD analysis

if (size(Uall,1) >= size(Uall,2))
    R=double(Uall'*Uall); % Autocovariance matrix

    fprintf('R created\n');

    [eV,D] = eigs(R,extra_modes); % solve: eV is eigenvectors, D is eigenvalues in diagonal matrix
    [eValue,I] = sort(diag(D),'descend'); % sort eigenvalues in ascending order - I is sorted index vector
    
    eVec = eV(:,I); % Eigenvectors sorted in the same order
    
    eValue(length(eValue))=0; % last eigenvalue should be zero
    menergy(1,:) = eValue/trace(R); % share of the total variance (was eValue/sum(eValue): only the retained eigenvalues, ~1.5x too high on test data) % relative energy associated with mode m
    
    %%% Reconstruct the POD modes using different variables than the POD
    %%% analysis. ie. construct the axial vel modes, when only the
    %%% transverse was used as a basis.

    if ROI == 1
        Uall = [];
        Uall=cat(1,Uall,im_data_fluc_full);

        S1 = S1_full;
        S2 = S2_full;
        S3 = S3_full;
    end
    
    % calculate the first N modes
    clearvars tmp
    for i=1:num_modes
        tmp(:,i) = Uall*eVec(:,i); % find mode
        phi(:,i) = tmp(:,i)/norm(tmp(:,i));%*sqrt(eValue(i));% normalize mode
    end
    
    clearvars Uall a_n
    
    for i=1:num_modes%length(eValue)
        a_n(:,i) = eVec(:,i)*norm(tmp(:,i));%/sqrt(eValue(i));
    end
    
    fprintf('Coefficients Found\n');

    %%Calculate mode energy
    Energy = menergy(1,1:end).*100;
    Mode = [1:extra_modes];
    
    %%Construct spatial modes for the first N modes (N selected above)
    POD_modes = reshape(phi,S1,S2,num_modes);
    fprintf('Resized\n');
elseif ROI == 0
    %Classical POD
    R = double(Uall*Uall');

    fprintf('R created\n');

    [eV,D] = eigs(R,extra_modes); % solve: eV is eigenvectors, D is eigenvalues in diagonal matrix
    [eValue,I] = sort(diag(D),'descend'); % sort eigenvalues in ascending order - I is sorted index vector

    eVec = eV(:,I); % Eigenvectors sorted in the same order

    eValue(length(eValue)) = 0; % last eigenvalue should be zero
    menergy(1,:) = eValue/trace(R); % share of the total variance (was eValue/sum(eValue): only the retained eigenvalues, ~1.5x too high on test data) % relative energy associated with mode m

    % calculate the first N modes
    for i=1:num_modes
        phi(:,i) = eVec(:,i)/norm(eVec(:,i));%*sqrt(eValue(i));% normalize mode
    end

    for i=1:num_modes%length(eValue)
        a_n(:,i) = eVec(:,i)'*Uall*norm(eVec(:,i));%/sqrt(eValue(i));
    end

    clearvars Uall

    fprintf('Coefficients Found\n');

    Energy = menergy(1,1:end).*100;
    Mode = [1:extra_modes];

    POD_modes = reshape(phi,S1,S2,num_modes);
    fprintf('Resized\n');
else
    
    total_energy = norm(double(Uall),'fro')^2;   % total variance, for Energy (%)
    [~, Sigma, a_n] = svds(double(Uall), extra_modes);

    if ROI == 1
        Uall = [];
        Uall=cat(1,Uall,im_data_fluc_full);

        S1 = S1_full;
        S2 = S2_full;
        S3 = S3_full;
    
    end

    phi = Uall * a_n(:,1:num_modes);
    a_n = a_n(:,1:num_modes);

    Energy = diag(Sigma.^2)./total_energy.*100;   % was normalised by the retained modes only
    Mode = [1:extra_modes];

    POD_modes = reshape(phi,S1,S2,num_modes);
    fprintf('Resized\n');
    
    
end
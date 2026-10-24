%%% CCA between two fields, after POD-filtering each one
function [POD_modes, a_n, Energy, Mode, t, x, y] = CCA_POD_func(im_data, ROI, x_roi, y_roi, x, y, do_hilbert, t)

%im_data is a cell array, with each element being a field to correlate.
% All fields have the same time length (last dimension), but can have non-equal other dimensions.
%
% Steps: POD of each field (basis from the ROI if ROI > 0), keep the first
% modes that hold energy_thresh % of the energy (at most 100), optionally
% take the analytic signal in time, then regularised CCA between the two
% filtered fields:
%   R = (C11 + lam1 I)^(-1/2) C12 (C22 + lam2 I)^(-1/2),  lam = reg_factor*max(eig(C))
%   R = U rho V^H,  phi_1 = (C11 + lam1 I)^(-1/2) U,  phi_2 = (C22 + lam2 I)^(-1/2) V
%   a_n_i = X_i^T conj(phi_i)   (so a_n turns as e^{+i w t} for analytic data)
% "Energy" is rho^2/sum(rho^2) (%). With reg_factor = 1 the regularisation is
% strong, so the result is closer to maximum covariance (PLS) than to pure
% CCA; reduce reg_factor for a result closer to CCA.
%
% PATCH 2026-10-23 (Codebase_Patches):
% - Same CCA as before, but done exactly in the space of the kept POD
%   modes: each filtered field is X = Q B^T (Q orthonormal, from a QR of the
%   POD modes over the analysis region), so C11 = Q G1 Q^T etc., and R, U, V,
%   phi and a_n follow from N1 x N2 matrices. Nothing of size n_pix^2 is
%   formed (C11, C22 and C12 were dense n_pix x n_pix: ~18 GB each for half
%   of a 94k-pixel frame), so full fields can be used, not only small ROIs.
%   tests/test_cca_pod.m checks it against the dense version on a small ROI.
% - The analytic signal was conjugated (hilbert(X')' conjugates, because '
%   is the conjugate transpose); it is now hilbert along time of the POD
%   coefficients (the same thing, since the transform is linear in time).
% - a_n = X^T conj(phi) (was X^H phi). With the corrected analytic signal
%   this keeps a_n turning forwards and gives unconjugated modes.
% - ROI = 1 (canonical weights from the ROI, shown on the full field) failed
%   with a size mismatch. The full-field modes are now the canonical
%   patterns (regression of the full field on each a_n), since the weights
%   only exist inside the ROI. ROI = 0 and 2 return the weights phi, as before.
% - One regularisation (reg_factor) everywhere (the ROI = 1 path used 1e-2,
%   the other 1).
% - The energy threshold comment said 90 %; it is energy_thresh = 50 %.

%%Set number of spatial modes to generate
num_modes = 20;
extra_modes = 100;
energy_thresh = 50; % % of the POD energy kept in each field before CCA
reg_factor = 1;     % lam = reg_factor*max(eig(C)) added to C11 and C22

%%% due to the symmetry plane, flip and negative the y_roi values for the
%%% second dataset
y_roi(2,:) = -flip(y_roi(1,:));

fprintf('Starting POD Reconstruction\n')

B = cell(1,2); Phi = cell(1,2); Q = cell(1,2); Rq = cell(1,2); idx = cell(1,2);
for i = 1:2
    [~, a_n_temp, Energy_i, phi, ~, ~, ~] = simple_POD_func(im_data{i}, min([ROI,1]), x_roi, y_roi(i,:), x{i}, y{i});

    %%% Get the number of modes to capture energy_thresh % of the energy
    cum_energy = cumsum(Energy_i);
    N = min([100,find(cum_energy >= energy_thresh,1,'first')]);
    if isempty(N)
        N = 100;
    end
    fprintf('Using first %d modes for POD Recon for %2.3f %% of the Energy.\n',N,cum_energy(N));
    fprintf('Last mode contains %f %% Energy\n',Energy_i(N))

    Phi{i} = double(phi(:,1:N));        % [n_pix_full, N] spatial modes (full grid)
    B{i} = double(a_n_temp(:,1:N));     % [n_t, N] coefficients: filtered field = Phi*B.'

    %%% analysis region (pixels of the full grid)
    [n_y, n_x] = size(x{i});
    if ROI > 0
        [ind_y, ind_x] = roi_inds(x{i}, y{i}, x_roi, y_roi(i,:));
        [II, JJ] = ndgrid(ind_y, ind_x);
        idx{i} = sub2ind([n_y, n_x], II(:), JJ(:));
        if ROI == 2
            x{i} = x{i}(ind_y,ind_x);
            y{i} = y{i}(ind_y,ind_x);
        end
    else
        idx{i} = (1:n_y*n_x).';
    end
end

if do_hilbert
    fprintf('Starting Hilbert Transform\n')
    cutoff_points = 100;
    for i = 1:2
        %%Analytic signal in time (columns), then remove the start and end points
        B{i} = hilbert(B{i});
        B{i}([1:cutoff_points, end-cutoff_points+1:end],:) = [];
    end
    t(1:cutoff_points) = [];
    t(end-cutoff_points+1:end) = [];
end

%% Fluctuations, and an orthonormal basis of each field over its region
fprintf('Reducing to the POD subspaces\n')
n_t = size(B{1},1);
for i = 1:2
    B{i} = B{i} - mean(B{i},1);
    [Q{i}, Rq{i}] = qr(Phi{i}(idx{i},:), 0); % region field = Q*(B*Rq.').'
    B{i} = B{i}*Rq{i}.';
end

fprintf('Constructing Correlation Matrices\n')
G1 = B{1}.'*conj(B{1})/(n_t-1);   % C11 = Q1*G1*Q1.'
G2 = B{2}.'*conj(B{2})/(n_t-1);   % C22 = Q2*G2*Q2.'
K12 = B{1}.'*conj(B{2})/(n_t-1);  % C12 = Q1*K12*Q2.'
G1 = (G1+G1')/2; G2 = (G2+G2')/2;

fprintf('Inverting C11 and C22\n')
S1_inv_sqrt = inv_sqrt_reg(G1, reg_factor);
S2_inv_sqrt = inv_sqrt_reg(G2, reg_factor);

fprintf('Constructing R\n')
M = S1_inv_sqrt*K12*S2_inv_sqrt;  % R = Q1*M*Q2.'

fprintf('Performing SVD on R\n')
[U, rho, V] = svd(M, 'econ');
rho = diag(rho);
n_cca = min([extra_modes, numel(rho)]);
U = U(:,1:n_cca); V = V(:,1:n_cca); rho = rho(1:n_cca);

W1 = S1_inv_sqrt*U;  % phi_1 = Q1*W1
W2 = S2_inv_sqrt*V;  % phi_2 = Q2*W2

Energy = rho.^2./sum(rho.^2).*100;
Mode = [1:n_cca];

n_out = min(num_modes, n_cca);
fprintf('Creating Modes and Coefficients\n')
a_n = {};
a_n{1} = B{1}*conj(W1(:,1:n_out));  % = X1.'*conj(phi_1)
a_n{2} = B{2}*conj(W2(:,1:n_out));

POD_modes = {};
W = {W1, W2};
for i = 1:2
    if ROI == 1
        %%% canonical patterns on the full field: least-squares fit of the
        %%% full filtered field to each a_n (X_full = Phi*B_raw.')
        B_full = B{i}/Rq{i}.';            % back to the raw POD coefficients
        a = a_n{i};
        pattern = Phi{i}*(B_full.'*conj(a))./sum(abs(a).^2,1);
        POD_modes{i} = reshape(pattern, size(x{i},1), size(x{i},2), n_out);
    else
        phi_i = Q{i}*W{i}(:,1:n_out);
        POD_modes{i} = reshape(phi_i, size(x{i},1), size(x{i},2), n_out);
    end
end

fprintf('Done CCA HPOD\n')

end


function S = inv_sqrt_reg(G, reg_factor)
%%% (G + reg_factor*max(eig(G))*I)^(-1/2) for Hermitian G
[E, d] = eig(G, 'vector');
d = real(d);
lam = reg_factor*max(d);
S = E*diag(1./sqrt(max(d,0) + lam))*E';
end


function [ind_y, ind_x] = roi_inds(x, y, x_roi, y_roi)
%%% Row and column ranges of the ROI (0 = no limit), as in simple_POD_func
if sum(x_roi ~= 0) > 0
    ind_x1 = find(abs(x(1,:)-x_roi(1)) == min(abs(x(1,:)-x_roi(1))),1);
    ind_x2 = find(abs(x(1,:)-x_roi(2)) == min(abs(x(1,:)-x_roi(2))),1);
else
    ind_x1 = 1;
    ind_x2 = size(x,2);
end
if sum(y_roi ~= 0) > 0
    ind_y1 = find(abs(y(:,1)-y_roi(1)) == min(abs(y(:,1)-y_roi(1))),1);
    ind_y2 = find(abs(y(:,1)-y_roi(2)) == min(abs(y(:,1)-y_roi(2))),1);
else
    ind_y1 = 1;
    ind_y2 = size(y,1);
end
ind_y = min(ind_y1,ind_y2):max(ind_y1,ind_y2);
ind_x = min(ind_x1,ind_x2):max(ind_x1,ind_x2);
end

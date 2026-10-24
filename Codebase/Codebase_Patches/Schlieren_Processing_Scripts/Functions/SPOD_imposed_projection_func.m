%%% simple POD
%%% Projects the snapshots onto given (SPOD) modes: a_n(t,i) = P_i^H q(t),
%%% with q the mean-subtracted snapshots.
%%%
%%% PATCH 2026-10-23:
%%% - Uses conj(P) (a = P^H q). It was P^T q, the complex conjugate, so the
%%%   phase of a_n turned backwards (negative instantaneous frequency).
%%% - Works in blocks of pixels, so the mean-subtracted copy of the whole
%%%   data set is never built (peak memory ~ the single-precision data).
%%% - Outputs, sizes and Energy are unchanged.
function [POD_modes,a_n,Energy, Mode] = SPOD_imposed_projection_func(im_data,P)
    
    S1 = size(im_data,1);
    S2 = size(im_data,2);
    S3 = size(im_data,3);
    
    P = reshape(P,size(P,1),size(P,2)*size(P,3));
    P = permute(P,[2,1]);
    
    %%Set number of spatial modes to generate
    num_modes = size(P,2);
    
    im_data = reshape(im_data,S1*S2,S3);
    a_n = zeros(S3,num_modes,'like',single(1i));
    block = 4096; % pixels per block
    for p1 = 1:block:S1*S2
        rows = p1:min(S1*S2,p1+block-1);
        U = single(im_data(rows,:));
        U = U - mean(U,2);
        a_n = a_n + U.'*conj(single(P(rows,:)));
    end
    
    fprintf('Coefficients Found\n');
    
    %%Calculate mode energy
    Energy = (rms(a_n).^2.*100)./(sum(rms(a_n).^2));
    Mode = linspace(1,size(Energy,2),size(Energy,2));
    
    %%Construct spatial modes for the first N modes (N selected above)
    POD_modes = reshape(P,S1,S2,num_modes);
    fprintf('Resized\n');
end

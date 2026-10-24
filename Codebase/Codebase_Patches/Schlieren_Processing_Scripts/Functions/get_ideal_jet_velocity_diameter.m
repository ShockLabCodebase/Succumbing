%%% Get the ideal jet velocity for the given Mach number or NPR
%%%
%%% PATCH 2026-10-23: optional inputs M_d (nozzle design Mach number,
%%% default 1 = convergent nozzle) and T0 (stagnation temperature, default
%%% 293 K). D_j was always the fully expanded diameter of a sonic nozzle,
%%% which is wrong for C-D nozzles. It is now D*sqrt(A/A*(M_j) / A/A*(M_d)),
%%% which reduces to the old formula for M_d = 1. M_j is returned as a third
%%% output. Existing calls (4 inputs) give the same results as before.
function [u_j, D_j, M_j] = get_ideal_jet_velocity_diameter(using_npr, param, param_factor, D, M_d, T0)
    if nargin < 5 || isempty(M_d)
        M_d = 1;
    end
    if nargin < 6 || isempty(T0)
        T0 = 293; %K
    end

    % Finding the ideally expanded Jet Velocity for Strouhal Calcs.
    gamma = 1.4;
    R = 287; % Gas Constant

    if using_npr
        M_j = (2/(gamma-1)*((param/(10^(param_factor-1)))^((gamma-1)/gamma)-1))^(1/2); % Ideally expanded jet mach
    else
        M_j = param/(10^(param_factor-1));% Ideally expanded jet mach
    end

    T = (1+(gamma-1)/2*M_j^2)^-1*T0; % Temperature at exit
    a = (gamma*R*T)^(1/2); % Speed of sound

    u_j = M_j*a; % Ideally expanded jet velocity

    % Isentropic area ratio A/A*
    area_ratio = @(M) ((gamma+1)/2)^(-(gamma+1)/(2*(gamma-1))) ...
        .* (1+(gamma-1)/2*M.^2).^((gamma+1)/(2*(gamma-1)))./M;

    if M_j > 1
        D_j = D*sqrt(area_ratio(M_j)/area_ratio(M_d));
    else
        D_j = D;
    end

end

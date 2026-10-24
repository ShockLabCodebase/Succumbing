function dy = savgol_diff(y, window_length, polyorder, deriv, delta)
% SAVGOL_DIFF Savitzky-Golay filter for differentiation
%
% Syntax:
%   dy = savgol_diff(y, window_length, polyorder)
%   dy = savgol_diff(y, window_length, polyorder, deriv)
%   dy = savgol_diff(y, window_length, polyorder, deriv, delta)
%
% Inputs:
%   y             - Input data vector
%   window_length - Length of the filter window (must be odd and >= polyorder+1)
%   polyorder     - Order of polynomial used to fit the samples (must be < window_length)
%   deriv         - Order of derivative to compute (default: 1)
%   delta         - Spacing of samples (default: 1)
%
% Output:
%   dy            - Differentiated data using Savitzky-Golay filter
%
% Example:
%   x = linspace(0, 2*pi, 100);
%   y = sin(x) + 0.1*randn(size(x));  % noisy sine wave
%   dy_analytical = cos(x);           % analytical derivative
%   dy_savgol = savgol_diff(y, 11, 3); % Savitzky-Golay derivative
%
% Author: GitHub Copilot
% Date: August 2025
%
% PATCH 2026-10-23: the ends are extended by point reflection about the end
% samples (2*y(1) - y(k)) instead of repeating the end values. Repeating them
% flattens the signal there, so a first derivative fell towards 0 over the
% last half-window (e.g. the instantaneous frequency at the record ends).
% The filter is applied with conv instead of a loop (same result).

    % Input validation and default values
    if nargin < 3
        error('At least 3 arguments required: y, window_length, polyorder');
    end
    
    if nargin < 4 || isempty(deriv)
        deriv = 1;
    end
    
    if nargin < 5 || isempty(delta)
        delta = 1;
    end
    
    % Validate inputs
    if mod(window_length, 2) == 0
        error('window_length must be odd');
    end
    
    if window_length <= polyorder
        error('window_length must be greater than polyorder');
    end
    
    if deriv < 0
        error('deriv must be non-negative');
    end
    
    % Convert to column vector if needed
    y = y(:);
    n = length(y);
    
    % Half window size
    halfwin = (window_length - 1) / 2;
    
    % Create the design matrix A for polynomial fitting
    % Each row corresponds to a point in the window, columns are powers of position
    pos = (-halfwin:halfwin)';
    A = zeros(window_length, polyorder + 1);
    for j = 0:polyorder
        A(:, j+1) = pos.^j;
    end
    
    % Compute Savitzky-Golay coefficients for differentiation
    if deriv <= polyorder
        % We want to find coefficients such that when applied to data,
        % they give the derivative at the center point
        
        % The key insight: we want the derivative of the fitted polynomial
        % evaluated at the center point (pos = 0)
        
        % For polynomial p(x) = sum(c_j * x^j), the k-th derivative at x=0 is:
        % p^(k)(0) = k! * c_k
        
        % We solve: A * c = y for coefficients c, then take c_k * k!
        % But we want a direct linear combination: coeffs * y = derivative
        
        % The solution is: coeffs = row_k of inv(A) * k! / delta^k
        % where row_k corresponds to the coefficient of x^k term
        
        A_inv = pinv(A);  % Pseudo-inverse handles rectangular case
        
        % Extract the row corresponding to the derivative order
        % and scale by factorial and delta
        coeffs = A_inv(deriv + 1, :) * factorial(deriv) / (delta^deriv);
        
    else
        % Derivative order higher than polynomial order results in zero
        coeffs = zeros(1, window_length);
    end
    
    % Apply the filter
    dy = zeros(size(y));
    
    % Handle boundaries by extending the data (point reflection keeps the
    % local slope; needs n > halfwin)
    if n > halfwin
        y_extended = [2*y(1) - y(halfwin+1:-1:2); y; 2*y(end) - y(end-1:-1:end-halfwin)];
    else
        y_extended = [repmat(y(1), halfwin, 1); y; repmat(y(end), halfwin, 1)];
    end
    
    % Apply the filter: dy(i) = sum(coeffs .* y_extended(i:i+window_length-1))
    dy = conv(y_extended, flip(coeffs(:)), 'valid');
end

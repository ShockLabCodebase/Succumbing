function out = gram_pod(M, C, n_out, valid)
%%% Exact POD of a field Z = Psi*C without forming it: Psi [n_pix, Kc] has
%%% Gram matrix M = Psi^H Psi, C [Kc, nt] the coefficients. With
%%% M^(1/2) C = U S V^H, the POD modes are phi_m = Psi M^(-1/2) U_m and the
%%% coefficients a_m(t) = phi_m^H z(t) = U_m^H M^(1/2) C(:,t) (positive
%%% frequencies give a positive instantaneous frequency). The covariance is
%%% built over the samples in valid only (edges excluded).
%%%
%%% Output: a [n_out, nt] coefficients, energy [n_out,1] (fraction of the
%%% band-field energy), W [Kc, n_out] with phi = Psi*W.

M = (M + M')/2;
[E, d] = eig(M, 'vector');
d = real(d);
good = d > 1e-10*max(d);
E = E(:, good); d = d(good);
Mh = E*diag(sqrt(d))*E';
Y = Mh*C;
Yv = Y(:, valid);
R = (Yv*Yv')/numel(valid);
R = (R + R')/2;
[U, s2] = eig(R, 'vector');
[s2, o] = sort(real(s2), 'descend');
U = U(:, o);
n_out = min(n_out, size(U, 2));
out.a = U(:, 1:n_out)'*Y;
out.energy = s2(1:n_out)/sum(s2);
out.W = E*diag(1./sqrt(d))*E'*U(:, 1:n_out);
end

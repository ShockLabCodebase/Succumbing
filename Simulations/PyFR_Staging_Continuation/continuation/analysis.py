"""Mode amplitudes and switching metrics from PyFR sampler output.

Each mode (A1, A2) is isolated by a band-pass filter in Strouhal number and
its instantaneous amplitude taken from the analytic signal. The switching
state is tracked through r(t) = ln(A_in / A_out), where "out" is the mode the
run started in and "in" is the mode it may switch to.
"""

import numpy as np
import h5py


def isentropic_jet(npr, gamma=1.4, T0_over_Tamb=1.0, c_amb=1.0):
    """Fully expanded Mach number and velocity for a given NPR.

    Velocity is in the units of c_amb (1 if the solver is scaled with c_inf).
    """
    g = gamma
    Mj = np.sqrt(2/(g - 1)*(npr**((g - 1)/g) - 1))
    Tj_over_T0 = 1/(1 + 0.5*(g - 1)*Mj**2)
    cj = c_amb*np.sqrt(T0_over_Tamb*Tj_over_T0)
    return Mj, Mj*cj


def velocity_ref(cfg, npr):
    ph = cfg['physics']
    if ph['velocity_ref'] == 'isentropic':
        return isentropic_jet(npr, ph['gamma'], ph['T0_over_Tamb'],
                              ph['c_amb'])[1]
    return float(ph['velocity_ref'])


def read_sampler(paths, field='p', dataset=None):
    """Read and join PyFR sampler HDF5 series.

    PyFR stores one compound record per sample, with fields 't' and
    'samples' (npts, nvars), and the variable names in the 'fields'
    attribute.

    Returns t (n,), y (n, npts) and the sample points (or None).
    """
    ts, ys, pts = [], [], None
    for path in paths:
        with h5py.File(path, 'r') as f:
            if dataset is not None:
                dset = f[dataset]
            else:
                names = [k for k in f if isinstance(f[k], h5py.Dataset)]
                if len(names) != 1:
                    raise ValueError(f'{path}: give the dataset name, found '
                                     f'{names}')
                dset = f[names[0]]

            fields = dset.attrs['fields']
            if isinstance(fields, bytes):
                fields = fields.decode()
            fields = [s.strip() for s in str(fields).split(',')]
            if field not in fields:
                raise KeyError(f'{path}: field {field!r} not in {fields}')

            rec = dset[...]
            ts.append(np.asarray(rec['t'], dtype=float))
            ys.append(np.asarray(rec['samples'][:, :, fields.index(field)],
                                 dtype=float))
            if 'pts' in dset.attrs:
                pts = np.asarray(dset.attrs['pts'])

    t, y = np.concatenate(ts), np.concatenate(ys)

    # Sort, and drop samples repeated where one segment restarts the next
    order = np.argsort(t, kind='stable')
    t, y = t[order], y[order]
    keep = np.concatenate([[True], np.diff(t) > 0])
    return t[keep], y[keep], pts


def uniform(t, y):
    """Resample onto a uniform grid if the spacing varies.

    Returns t, y and whether resampling was needed. Spectral analysis needs
    a fixed time step, so a resampled record usually means the integrator
    controller was left on.
    """
    dt = np.diff(t)
    if np.ptp(dt) <= 1e-6*np.mean(dt):
        return t, y, False

    tu = np.linspace(t[0], t[-1], len(t))
    yu = np.column_stack([np.interp(tu, t, y[:, j])
                          for j in range(y.shape[1])])
    return tu, yu, True


def _band_window(f, f1, f2, taper):
    w = np.zeros_like(f)
    e = taper*(f2 - f1)
    if e <= 0:
        w[(f >= f1) & (f <= f2)] = 1
        return w

    w[(f >= f1 + e) & (f <= f2 - e)] = 1
    lo = (f > f1) & (f < f1 + e)
    w[lo] = 0.5*(1 - np.cos(np.pi*(f[lo] - f1)/e))
    hi = (f > f2 - e) & (f < f2)
    w[hi] = 0.5*(1 + np.cos(np.pi*(f[hi] - f2 + e)/e))
    return w


def band_envelope(y, fs, band, taper=0.15):
    """Instantaneous amplitude of y within band = (f1, f2).

    The band-pass and Hilbert transform are done together: keep positive
    frequencies in the band (doubled), zero the rest, inverse FFT. The record
    is mirror-padded to reduce end effects.
    """
    n = len(y)
    pad = min(n - 1, max(1, n//4))
    yp = np.pad(y - y.mean(), pad, mode='reflect')

    f = np.fft.fftfreq(len(yp), 1/fs)
    h = np.where(f > 0, 2*_band_window(f, band[0], band[1], taper), 0)
    z = np.fft.ifft(np.fft.fft(yp)*h)[pad:pad + n]
    return np.abs(z)


def _moving_mean(x, m):
    if m <= 1:
        return x.copy()
    k = np.ones(m)/m
    xp = np.pad(x, (m//2, m - 1 - m//2), mode='edge')
    return np.convolve(xp, k, mode='valid')


def _slope(x, y):
    if len(x) < 3:
        return np.nan
    return np.polyfit(x, y, 1)[0]


def mode_amplitudes(cfg, t, y, npr):
    """Amplitude of each mode, averaged over the probe groups.

    Probes in a group are averaged first, so for an azimuthal ring this
    keeps the m = 0 component, which is the one A1 and A2 live in.
    """
    t, y, resampled = uniform(t, y)
    D, U = cfg['physics']['length_ref'], velocity_ref(cfg, npr)
    fs = 1/(t[1] - t[0])
    taper = cfg['modes']['band_taper']

    amps = {}
    for m in ('A1', 'A2'):
        band = [st*U/D for st in cfg['modes'][m]]
        if band[1] >= fs/2:
            raise ValueError(f'{m} band reaches the Nyquist frequency; '
                             'sample more often')
        env = [band_envelope(y[:, g].mean(axis=1), fs, band, taper)
               for g in map(list, cfg['modes']['probe_groups'])]
        amps[m] = np.mean(env, axis=0)

    return t, amps, resampled


def analyse(cfg, t, y, npr, outgoing, t_change):
    """Classify a record that starts in mode `outgoing` at time t_change.

    Times in the result are convective (D/U_j) and measured from t_change,
    the moment the NPR was changed. The last 1/bandwidth of the record
    (about 15 D/U_j for the default bands) is too close to the end to be
    classified, so r_end describes the state that long before the end.
    """
    co = cfg['continuation']
    incoming = 'A2' if outgoing == 'A1' else 'A1'
    D, U = cfg['physics']['length_ref'], velocity_ref(cfg, npr)

    t, amps, resampled = mode_amplitudes(cfg, t, y, npr)
    tc = (t - t_change)*U/D
    dtc = tc[1] - tc[0]

    # Smoothing window: window_cycles periods of the outgoing tone
    st_out = 0.5*sum(cfg['modes'][outgoing])
    win = co['window_cycles']/st_out
    m = max(1, int(round(win/dtc)))

    eps = 1e-30
    r = np.log((amps[incoming] + eps)/(amps[outgoing] + eps))
    rs = _moving_mean(r, m)

    # The band-pass rings for about 1/bandwidth at each end of the record
    # (mirror padding puts a kink in the tones there), so ignore that much
    edge = max(1/(hi - lo) for lo, hi in (cfg['modes'][incoming],
                                          cfg['modes'][outgoing]))
    keep = ((tc >= max(co['transient'], tc[0] + edge))
            & (tc <= tc[-1] - edge))
    res = {
        'npr': float(npr),
        'outgoing': outgoing,
        'incoming': incoming,
        'resampled': bool(resampled),
        'record': float(tc[-1]),
        'warnings': [],
    }

    if keep.sum() < 3*m:
        res.update(status='too-short', r_start=None, r_end=None,
                   trend=None, max_slope=None, t_switch=None)
        res['warnings'].append('record shorter than 3 smoothing windows '
                               'after the transient')
        return res, (tc, amps, rs)

    tk, rk = tc[keep], rs[keep]
    r_start = float(rk[:m].mean())
    r_end = float(rk[-m:].mean())

    half = tk >= tk[0] + 0.5*(tk[-1] - tk[0])
    trend = float(_slope(tk[half], rk[half]))

    # Steepest rise of r over a sliding window of 2m samples
    w2 = min(2*m, len(tk))
    step = max(1, m//4)
    slopes = [_slope(tk[i:i + w2], rk[i:i + w2])
              for i in range(0, len(tk) - w2 + 1, step)]
    max_slope = float(np.nanmax(slopes)) if slopes else None

    # First upward zero crossing of the smoothed ratio, from t_change
    up = np.nonzero((rk[:-1] < 0) & (rk[1:] >= 0))[0]
    if len(up):
        i = up[0]
        frac = -rk[i]/(rk[i + 1] - rk[i])
        t_switch = float(tk[i] + frac*(tk[i + 1] - tk[i]))
    else:
        t_switch = None

    if r_start > 0:
        res['warnings'].append(f'record starts with {incoming} dominant; '
                               f'was the starting state really {outgoing}?')

    # Trending needs a rising slope and a real rise of the incoming mode
    # against the outgoing one; the slope alone is fooled by the slow wander
    # of a band-passed noise envelope.
    rising = r_end - r_start > np.log(co['rise_ratio'])

    if r_end > np.log(co['switch_ratio']):
        status = 'switched'
    elif trend > co['trend_threshold'] and rising:
        status = 'trending'
    else:
        status = 'persisted'

    res.update(status=status, r_start=r_start, r_end=r_end, trend=trend,
               max_slope=max_slope, t_switch=t_switch)
    return res, (tc, amps, rs)


def estimate_limit(points, model='saddle-node'):
    """NPR at which the outgoing mode stops existing.

    points: (npr, t_switch) pairs from runs that switched, with t_switch in
    convective units from the NPR change. The switching rate 1/t_switch is
    fitted against NPR and extrapolated to zero.

    'saddle-node' assumes the passage time through the bottleneck scales as
    (NPR - NPR_c)^(-1/2), so (1/t_switch)^2 is linear in NPR. 'linear' fits
    1/t_switch itself. The fixed delay from the NPR-step transient is not
    removed, which biases both towards rates that are too low far from the
    limit.
    """
    pts = [(n, ts) for n, ts in points if ts and ts > 0]
    if len({n for n, _ in pts}) < 2:
        return None

    x = np.array([n for n, _ in pts])
    rate = 1/np.array([ts for _, ts in pts])
    yv = rate**2 if model == 'saddle-node' else rate

    a, b = np.polyfit(x, yv, 1)
    if a == 0:
        return None

    fit = a*x + b
    return {
        'npr_limit': float(-b/a),
        'slope': float(a),
        'model': model,
        'n_points': len(pts),
        'rms_residual': float(np.sqrt(np.mean((yv - fit)**2))),
    }

"""compare_ab.py ARM [ARM ...]: compare the pilot numerics arms.

Each arm folder holds two tavg-<t>.pyfrs (two equal windows), the probe
files, run.ini and soln-<t>.pyfrs. The difference between an arm's two
windows is its sampling noise; a change matters only if it moves a metric by
more than that. Arms run on the pilot mesh unless their folder has a
mesh.txt naming another (written by job_arm_mesh.sh).

Writes figs_ab/*.png and prints a table.
"""
import glob, os, sys, h5py, numpy as np
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt
from scipy.signal import welch
from pyfr.inifile import Inifile
from pyfr.shapes import HexShape

g, NPR = 1.4, 2.1
pinf = 1/g
Mj = np.sqrt(((NPR)**((g - 1)/g) - 1)*2/(g - 1))
Uj = Mj*np.sqrt(1/(1 + 0.5*(g - 1)*Mj**2))
st_a1 = (0.55, 0.85)

arms = sys.argv[1:]
os.makedirs('figs_ab', exist_ok=True)

_meshes = {}


def mesh_of(arm):
    f = f'{arm}/mesh.txt'
    path = open(f).read().strip() if os.path.exists(f) else '../mesh/pilot.pyfrm'
    if path not in _meshes:
        m = h5py.File(path, 'r')
        _meshes[path] = (m['nodes']['location'][...], m['eles/hex']['nodes'][...])
    return _meshes[path]


cfg0 = Inifile(h5py.File('../pilot_run/soln/pilot-0000.000.pyfrs', 'r')['config'][()].decode())
shp = HexShape(27, cfg0)
op = np.asarray(shp.sbasis.nodal_basis_at(shp.upts), float)


def tavg_fields(fn, nodes_all, eh):
    f = h5py.File(fn, 'r')
    stats = Inifile(f['stats'][()].decode())
    names = stats.get('data', 'fields').split(',')
    d = f['tavg/p3-hex'][...].astype(float)              # (n, nf, 64)
    idx = f['tavg/p3-hex-idxs'][...] if 'tavg/p3-hex-idxs' in f else np.arange(len(eh))
    pl = np.einsum('ij,ejk->eik', op, nodes_all[eh[idx]])
    return {k.removeprefix('avg-'): d[:, i, :].ravel() for i, k in enumerate(names)
            if k.startswith('avg-')}, pl[..., 0].ravel(), np.hypot(pl[..., 1], pl[..., 2]).ravel()


def profiles(fn, mesh):
    a, x, r = tavg_fields(fn, *mesh)
    out = {}
    # Centreline mean pressure, x = 0..8
    xs = np.arange(0.0, 8.0, 0.025)
    s = r < 0.04
    out['xc'] = xs
    out['pc'] = np.array([a['p'][s & (np.abs(x - xc) < 0.0125)].mean()
                          if np.any(s & (np.abs(x - xc) < 0.0125)) else np.nan
                          for xc in xs])/pinf
    # Lip-line u_rms, x = 0..8
    s = np.abs(r - 0.5) < 0.02
    urms = np.sqrt(np.maximum(a['uu'] - a['u']**2, 0))
    out['ul'] = np.array([urms[s & (np.abs(x - xc) < 0.0125)].mean()
                          if np.any(s & (np.abs(x - xc) < 0.0125)) else np.nan
                          for xc in xs])/Uj
    # Momentum thickness from azimuthally averaged mean u
    th = []
    for xc in (1, 2, 3, 4, 6, 8):
        s = np.abs(x - xc) < 0.05
        rb = np.arange(0, 3, 0.02)
        u = np.array([a['u'][s & (r >= q) & (r < q + 0.02)].mean() for q in rb])
        uc = np.nanmax(u[:10])
        w = (u/uc)*(1 - u/uc)
        th.append(np.nansum(w[rb > 0.2])*0.02)
    out['theta'] = np.array(th)
    return out


def probes(fn, ds, t0):
    f = h5py.File(fn, 'r')
    t, s = f[f'{ds}_t'][...], f[ds][...]                   # s: (nt, npts, 5)
    k = t >= t0
    return t[k], s[k]


def ring_rms(t, s, n):
    p = s[:, :, 4]/pinf
    p = p - p.mean(0)
    return np.sqrt((p**2).mean(0)).reshape(-1, n).mean(1)


def spectrum(t, s, n=8, m=0):
    p = s[:, :n, 4]/pinf
    p = p - p.mean(0)
    th = 2*np.pi*np.arange(n)/n
    a = (p*np.exp(-1j*m*th)).mean(1)
    dt = np.median(np.diff(t))
    f, P = welch(a, fs=1/dt, nperseg=min(len(a)//2, 1000), return_onesided=False)
    o = f > 0
    return f[o]/Uj, P[o]


rows, res = [], {}
for arm in arms:
    r = {}
    run = Inifile(open(f'{arm}/run.ini').read())
    t0 = run.getfloat('soln-plugin-tavg', 'tstart')
    tavgs = sorted(glob.glob(f'{arm}/tavg-*.pyfrs'),
                   key=lambda f: float(f.split('tavg-')[1][:-6]))
    mesh = mesh_of(arm)
    w1, w2 = profiles(tavgs[0], mesh), profiles(tavgs[1], mesh)
    r['w1'], r['w2'] = w1, w2
    r['mean'] = {k: 0.5*(w1[k] + w2[k]) for k in w1}
    t, s = probes(f'{arm}/samples.h5', 'probes', t0)
    r['lip'] = spectrum(t, s)
    stl, P = r['lip']
    b = (stl > st_a1[0]) & (stl < st_a1[1])
    r['a1_st'] = stl[b][np.argmax(P[b])]
    r['a1_pow'] = P[b].sum()*(stl[1] - stl[0])
    t, s = probes(f'{arm}/samples_shear.h5', 'shear', t0); r['shear_prms'] = ring_rms(t, s, 16)
    t, s = probes(f'{arm}/samples_farfield.h5', 'farfield', t0); r['far_prms'] = ring_rms(t, s, 8)
    r['far_spec'] = spectrum(t, s[:, 32:40], 8, 0)            # 90 degree ring
    solns = sorted(glob.glob(f'{arm}/soln-*.pyfrs'),
                   key=lambda f: float(f.split('soln-')[1][:-6]))
    st = Inifile(h5py.File(solns[-1], 'r')['stats'][()].decode())
    tl = float(solns[-1].split('soln-')[1][:-6])
    r['wall_per_unit'] = st.getfloat('solver-time-integrator', 'wall-time')/(tl - 60.0)/60
    res[arm] = r

ref = arms[0]
def rmsd(a, b):
    k = np.isfinite(a) & np.isfinite(b); return np.sqrt(np.mean((a[k] - b[k])**2))

print(f"{'arm':10} {'min/unit':>8} {'A1 St':>6} {'A1 pow':>9} {'theta x=2,4,8':>20} "
      f"{'pc rmsd':>8} {'ul rmsd':>8} {'far prms 30/90/115':>22}")
for arm in arms:
    r = res[arm]
    th = r['mean']['theta']
    print(f"{arm:10} {r['wall_per_unit']:8.1f} {r['a1_st']:6.3f} {r['a1_pow']:9.2e} "
          f"{th[1]:6.4f} {th[3]:6.4f} {th[5]:6.4f} "
          f"{rmsd(r['mean']['pc'], res[ref]['mean']['pc']):8.4f} "
          f"{rmsd(r['mean']['ul'], res[ref]['mean']['ul']):8.4f} "
          f"{r['far_prms'][0]:7.4f} {r['far_prms'][4]:7.4f} {r['far_prms'][6]:7.4f}")
print('within-arm noise (window 1 vs 2):')
for arm in arms:
    r = res[arm]
    print(f"{arm:10} pc {rmsd(r['w1']['pc'], r['w2']['pc']):.4f}  ul {rmsd(r['w1']['ul'], r['w2']['ul']):.4f}  "
          f"theta {np.abs(r['w1']['theta'] - r['w2']['theta']).max():.4f}")
print('shear-ring p_rms (x = 1, 2, 3, 4, 5, 6, 8):')
for arm in arms:
    print(f"{arm:10} " + ' '.join(f'{v:.4f}' for v in res[arm]['shear_prms']))

fig, axs = plt.subplots(4, 1, figsize=(9, 12))
for arm in arms:
    r = res[arm]
    axs[0].plot(r['mean']['xc'], r['mean']['pc'], label=arm)
    axs[1].plot(r['mean']['xc'], r['mean']['ul'], label=arm)
    axs[2].semilogy(*r['lip'], label=arm)
    axs[3].semilogy(*r['far_spec'], label=arm)
axs[0].set_ylabel(r'centreline $\bar p/p_\infty$')
axs[1].set_ylabel(r"lip-line $u'_{rms}/U_j$")
axs[1].set_xlabel('x/D')
axs[2].set_ylabel('lip ring m = 0 PSD'); axs[2].set_xlim(0, 3)
axs[3].set_ylabel(r'far field 90$^\circ$ m = 0 PSD'); axs[3].set_xlim(0, 3)
axs[3].set_xlabel(r'St = f D/U$_j$')
for a in axs: a.legend(fontsize=7)
fig.tight_layout(); fig.savefig('figs_ab/compare.png', dpi=130)
print('done')

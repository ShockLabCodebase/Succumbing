"""measure_planes.py MESH: size the tavg plane slabs for a PyFR mesh.

PyFR puts an element in a geometric region if its centroid or any of its
nodes is inside. A slab of half-thickness eps round a plane catches every
element the plane cuts once eps is at least, for each cut element, the
distance from the plane to its nearest node. This finds that eps for each
plane (within the region of interest), counts the elements the slab then
holds, and prints the tavg region expression and its size.
"""
import sys
import h5py
import numpy as np

NFIELDS = 13                       # avg-rho, u, v, w, p, T and 7 moments
NUPTS = {'hex': 64, 'pri': 40, 'tet': 20, 'pyr': 30}   # p = 3
RMAX, XMAX = 10.0, 25.0            # inside the sponge

# (name, axis, value); the slab spans r < RMAX (x planes) or the whole
# domain inside the sponge (z plane)
PLANES = [('xy (z = 0)', 2, 0.0), ('yz x = 0', 0, 0.0), ('yz x = 1', 0, 1.0),
          ('yz x = 2.5', 0, 2.5), ('yz x = 5', 0, 5.0)]

m = h5py.File(sys.argv[1], 'r')
X = m['nodes']['location'][...] if m['nodes'].dtype.names else m['nodes'][...]
X = np.asarray(X, float)
xmin = np.nanmin(X[:, 0])
print(f'mesh x {xmin:.2f} to {np.nanmax(X[:, 0]):.2f}, '
      f'r up to {np.nanmax(np.hypot(X[:, 1], X[:, 2])):.2f}')


def in_extent(c, axis):
    # c: (..., 3) points; region of interest for the plane's other coords
    if axis == 0:
        return np.hypot(c[..., 1], c[..., 2]) <= RMAX
    return (c[..., 0] <= XMAX) & (np.abs(c[..., 1]) <= RMAX)


res = {}
for et in m['eles']:
    nidx = m[f'eles/{et}']['nodes'][...]
    ne = len(nidx)
    res[et] = {'ne': ne}
    for name, ax, v in PLANES:
        req, lo_d = 0.0, []
        # Chunk to bound memory
        dmin = np.empty(ne)
        cut = np.zeros(ne, bool)
        for s in range(0, ne, 200000):
            P = X[nidx[s:s + 200000]]                 # (n, nn, 3)
            q = P[..., ax]
            cen = P.mean(1)
            # Must be caught: cut elements lying wholly within the extent
            ext = in_extent(P, ax).all(1)
            cut[s:s + len(P)] = (q.min(1) <= v) & (q.max(1) >= v) & ext
            d = np.abs(q - v).min(1)
            dmin[s:s + len(P)] = np.minimum(d, np.abs(cen[:, ax] - v))
        res[et][name] = (cut, dmin, nidx)
    del nidx

# Cross-planes are split into radial bands (r0, r1], each with its own
# half-thickness, since the cells grow with r and one thickness for all
# would sweep up many thin layers near the jet
BANDS = [0.0, 0.75, 1.5, 3.0, 6.0, RMAX]


def band_of(r):
    return np.clip(np.searchsorted(BANDS, r, side='left') - 1, 0, len(BANDS) - 2)


def selected(P, ax, v, eps):
    # eps: scalar (z plane) or per-band array (x planes)
    if ax == 0:
        r = np.hypot(P[..., 1], P[..., 2])
        e = eps[band_of(r)]
        return (np.abs(P[..., ax] - v) <= e) & (r <= RMAX) & (r > 0) | \
               ((np.abs(P[..., ax] - v) <= eps[0]) & (r == 0))
    return (np.abs(P[..., ax] - v) <= eps) & in_extent(P, ax)


def fit_eps(name, ax, v):
    if ax != 0:
        req = max(res[et][name][1][res[et][name][0]].max(initial=0) for et in res)
        return round(req*1.05 + 1e-3, 3)
    eps = np.full(len(BANDS) - 1, 1e-3)
    # Node coordinates of the cut elements, one array per element type
    Pcs = [X[res[et][name][2][res[et][name][0]]] for et in res]
    while True:
        missed = []
        for Pc in Pcs:
            ok = (selected(Pc, ax, v, eps).any(1) |
                  selected(Pc.mean(1)[:, None], ax, v, eps)[:, 0])
            missed += list(Pc[~ok])
        if not missed:
            return np.round(eps*1.05 + 5e-4, 3)
        # For each missed element, raise the band of its nearest node
        for P in missed:
            d = np.abs(P[:, ax] - v)
            k = np.argmin(d)
            b = band_of(np.hypot(P[k, 1], P[k, 2]))
            eps[b] = max(eps[b], d[k])


print(f"{'plane':12} {'cut eles':>9} {'slab eles':>9} {'MB':>7}  half-thickness")
exprs, union = [], {et: None for et in res}
for name, ax, v in PLANES:
    eps = fit_eps(name, ax, v)
    ncut = sum(res[et][name][0].sum() for et in res)
    nsl, mb = 0, 0.0
    for et in res:
        cut, dmin, nidx = res[et][name]
        sel = np.zeros(res[et]['ne'], bool)
        for s in range(0, len(nidx), 200000):
            P = X[nidx[s:s + 200000]]
            sel[s:s + len(P)] = (selected(P, ax, v, eps).any(1) |
                                 selected(P.mean(1)[:, None], ax, v, eps)[:, 0])
        assert np.all(sel[cut]), name
        union[et] = sel if union[et] is None else union[et] | sel
        nsl += sel.sum()
        mb += sel.sum()*NUPTS[et]*NFIELDS*4/1e6
    print(f'{name:12} {ncut:9d} {nsl:9d} {mb:7.1f}  {eps}')
    if ax == 0:
        def cyl(e, r):
            return f'cylinder(({v - e:.4f}, 0, 0), ({v + e:.4f}, 0, 0), {r})'
        parts = [cyl(eps[0], BANDS[1])]
        parts += [f'({cyl(e, r1)} - {cyl(e, r0)})'
                  for e, r0, r1 in zip(eps[1:], BANDS[1:-1], BANDS[2:])]
        exprs += parts
    else:
        exprs.append(f'box(({xmin - 0.01:.2f}, {-RMAX}, {-eps}), '
                     f'({XMAX}, {RMAX}, {eps}))')

nu = sum(u.sum() for u in union.values())
mbu = sum(union[et].sum()*NUPTS[et]*NFIELDS*4/1e6 for et in union)
nt = sum(r['ne'] for r in res.values())
print(f'union: {nu} of {nt} elements ({100*nu/nt:.2f}%), {mbu:.1f} MB per average')
print('region = ' + ' + '.join(exprs))

"""Build a PyFR mesh of the converging nozzle and its jet from the STEP file.

The nozzle profile is sliced from the CAD solid through its axis, so the
mesh follows the CAD. Lengths are in nozzle exit diameters D, with the jet
along +x and the exit plane at x = 0.

Topology (all hexahedra, plus a few prisms if the quad mesh leaves triangles):
  - the (x, r) half-plane from r = r_core outwards is meshed with quads and
    revolved through 360 degrees;
  - a butterfly block (square + four O-blocks) fills r < r_core along the
    whole axis, so there are no degenerate elements on the axis.
The parts are generated separately and joined by merging coincident nodes;
the axial spacing on r = r_core is shared by construction.

Round the lip, the section is three structured (transfinite) blocks:
  B1  inside the nozzle, x in [-x_bl, 0], from the wall to r_core, with
      wall-normal cells from bl_first (bl_first_up at x = -x_bl);
  B2  the jet side of the lip line r = 0.5, x in [0, x_block], down to r_core;
  B3  the outer side of the lip line, from the lip face out to r_block_out
      at x_block, with n_lip cells across the lip face.
Streamwise cells grow geometrically from h_x0 at the exit, so the lip face
and the separated corners are resolved and the cells follow the shear layer.
The plenum and everything outside the blocks are unstructured quads, sized by
make_size() and, near the blocks, by the blocks' own edge spacing.

Boundaries (Gmsh physical names, i.e. PyFR [soln-bcs-*] sections):
  inlet     plenum face of the nozzle at the upstream end of the CAD
  wall      every wetted nozzle surface (inner contraction, lip, outer body)
  farfield  r = r_far, and the plane behind the nozzle body at the CAD's
            upstream end
  outlet    x = x_out

Usage (needs the gmsh Python package, `pip install gmsh`):
  python make_mesh.py ../../CAD/16mm_Cutdown_for_Mesh.stp jet.msh
  python make_mesh.py CAD.stp pilot.msh --scale 2      # 2x coarser, quick
  pyfr import jet.msh jet.pyfrm
"""

import argparse
import math

import gmsh
import numpy as np


# All lengths in D. The CAD is in mm with the jet along +z.
P = {
    'D_cad': 16.0,          # exit diameter in CAD units
    'z_exit_cad': 75.0,     # exit plane in CAD z
    'x_out': 40.0,          # outlet plane
    'r_far': 15.0,          # outer cylinder
    'r_core': 0.3,          # radius of the butterfly block on the axis
    'core_square': 0.6,     # diamond corners at this fraction of r_core
    'n_theta': 96,          # azimuthal elements (multiple of 4)
    'n_core_radial': 8,     # elements between the diamond and r_core

    # Target element sizes (before --scale)
    'h_lip': 0.012,         # at the lip
    'h_sl0': 0.015,         # shear layer at the exit...
    'h_sl_slope': 0.0055,   # ...growing by this per D downstream
    'x_sl': 12.0,           # end of the refined shear layer
    'h_core0': 0.03,        # jet column (shock cells) at the exit...
    'h_core_slope': 0.003,  # ...growing by this per D
    'x_core': 10.0,
    'h_exit': 0.03,         # inside the nozzle over the last 1.5 D
    'h_near': 0.2,          # acoustic near field (screech wavelength ~1.4 D)
    'x_near': 20.0,
    'r_near': 7.0,
    'h_far': 1.2,           # sponge and beyond
    'grad': 0.12,           # size growth per unit distance between zones

    # Structured blocks round the lip (see the module docstring)
    'x_bl': 1.0,            # B1 starts this far upstream of the exit
    'x_block': 6.0,         # B2 and B3 end here
    'r_block_out': 1.0,     # outer edge of B3 at x_block
    'bl_first': 0.002,      # first cell off the inner wall
    'h_x0': 0.004,          # first streamwise cell downstream of the lip
    'h_xs_lipline': 0.0125, # cells either side of the lip line at x_block
    'bl_first_up': 0.01,    # first cell off the wall at x = -x_bl
    'n_wall': 16,           # cells from the wall / lip line to r_core
    'n_lip': 10,            # cells across the lip face and B3

    # CAD fillets shorter than this become straight chords (see
    # nozzle_profile)
    'fillet_max': 0.05,
}


# ---------------------------------------------------------------------------
# CAD profile

def nozzle_profile(step_path):
    """Slice the CAD solid through its axis and return the wetted profile.

    Returns a list of curves, each an (n, 2) array of (x, r) in D, chained
    from the outer body's upstream end, along the outer surface, across the
    lip and back up the inner contraction to the inlet. Also returns x_in.
    """
    gmsh.model.add('cad')
    vol = gmsh.model.occ.importShapes(step_path)
    big = 1e3*P['D_cad']
    rect = gmsh.model.occ.addRectangle(0, -big, 0, big, 2*big)
    gmsh.model.occ.rotate([(2, rect)], 0, 0, 0, 1, 0, 0, math.pi/2)
    sec, _ = gmsh.model.occ.intersect([(2, rect)], vol)
    gmsh.model.occ.synchronize()
    if len(sec) != 1:
        raise RuntimeError(f'expected one section face, got {sec}')

    D, z0 = P['D_cad'], P['z_exit_cad']
    curves = []
    for _, tag in gmsh.model.getBoundary(sec, oriented=False):
        lo, hi = gmsh.model.getParametrizationBounds(1, abs(tag))
        straight = gmsh.model.getType(1, abs(tag)) == 'Line'
        u = np.linspace(lo[0], hi[0], 2 if straight else 200)
        xyz = np.array(gmsh.model.getValue(1, abs(tag), u)).reshape(-1, 3)
        curves.append(np.c_[(xyz[:, 2] - z0)/D, xyz[:, 0]/D])
    gmsh.model.remove()

    # The back face (upstream end of the CAD) is the one not wetted
    x_in = min(c[:, 0].min() for c in curves)
    tol = 1e-4          # the CAD has 0.1 um mismatches at corners
    wall = [c for c in curves if not np.all(np.abs(c[:, 0] - x_in) < tol)]

    # Chain the wall curves, starting at the outer body's upstream end
    ends = [(c[0], c[-1]) for c in wall]
    r_back = [e[k][1] for e in ends for k in (0, 1)
              if abs(e[k][0] - x_in) < tol]
    start = np.array([x_in, max(r_back)])
    chain, here, left = [], start, list(range(len(wall)))
    while left:
        for i in left:
            c = wall[i]
            if np.linalg.norm(c[0] - here) < tol:
                break
            if np.linalg.norm(c[-1] - here) < tol:
                c = wall[i] = c[::-1]
                break
        else:
            raise RuntimeError(f'wall profile is not a chain at {here}')
        chain.append(c)
        here = c[-1]
        left.remove(i)

    if abs(here[0] - x_in) > tol:
        raise RuntimeError('wall profile does not end at the inlet plane')

    # Small fillets are far smaller than the cells round them (an earlier
    # CAD had 0.03-0.04 D ones on the outer body; the current one has none).
    # Gmsh puts at least two segments on a curved curve, and a quad that
    # takes two consecutive segments of one smooth arc has a 180-degree
    # corner once its edges are curved, so its Jacobian is zero or negative.
    # A chord leaves a real corner, which a quad can straddle.
    for k, c in enumerate(chain):
        if (len(c) > 2 and
                np.sum(np.hypot(*np.diff(c, axis=0).T)) < P['fillet_max']):
            chain[k] = c[[0, -1]]

    # The inner wall starts at the lip's inner corner: the start point on
    # the exit plane with the smallest radius
    k_inner = min((c[0][1], k) for k, c in enumerate(chain)
                  if abs(c[0][0]) < tol)[1]
    return chain, k_inner, x_in


# ---------------------------------------------------------------------------
# Sizes and spacings

def axis_nodes(size, x0, x1, r):
    """Node positions from x0 to x1 along the line at radius r, spaced by the
    size field so that the unstructured mesh next to it needs no transition."""
    xs = [x0]
    while xs[-1] < x1:
        h = size(xs[-1], r)
        xs.append(xs[-1] + size(xs[-1] + 0.5*h, r))
    xs = np.array(xs)
    return x0 + (xs - x0)*(x1 - x0)/(xs[-1] - x0)


def progression(h0, length, h1):
    """(cells, ratio) of a geometric spacing growing from h0 to about h1."""
    q = (length - h0)/(length - h1)
    n = max(2, round(1 + math.log(h1/h0)/math.log(q)))
    return n, ratio_for(h0, length, n)


def ratio_for(h0, length, n):
    """Ratio q with h0 (q^n - 1)/(q - 1) = length, so the first cell is h0."""
    if abs(n*h0 - length) < 1e-12*length:
        return 1.0
    lo, hi = (1.0 + 1e-12, 10.0) if n*h0 < length else (0.1, 1.0 - 1e-12)
    for _ in range(200):
        q = 0.5*(lo + hi)
        if h0*(q**n - 1)/(q - 1) < length:
            lo = q
        else:
            hi = q
    return 0.5*(lo + hi)


def spaced(n, q):
    """Normalised node positions of Gmsh's 'Progression' law."""
    if q == 1.0:
        return np.linspace(0, 1, n + 1)
    return (q**np.arange(n + 1) - 1)/(q**n - 1)


def make_size(scale, x_in, r_wall, r_lip):
    """Element size h(x, r) for the unstructured regions: the smallest of
    several zones, each growing by `grad` per unit distance outside it."""
    g = P['grad']

    def box(x, r, x0, x1, r0, r1):
        dx = max(x0 - x, 0.0, x - x1)
        dr = max(r0 - r, 0.0, r - r1)
        return math.hypot(dx, dr)

    def size(x, r):
        xs = max(x, 0.0)
        cand = [P['h_far']]

        # Lip face, x = 0, r in [0.5, r_lip]
        d = math.hypot(x, max(0.5 - r, 0.0, r - r_lip))
        cand.append(P['h_lip'] + g*d)

        # Shear layer: a band around r = 0.5 that widens downstream
        if x > -0.2:
            half = 0.08 + 0.09*xs
            d = max(abs(r - 0.5) - half, 0.0) + max(xs - P['x_sl'], 0.0)
            cand.append(P['h_sl0'] + P['h_sl_slope']*min(xs, P['x_sl'])
                        + g*d)

        # Jet column with the shock cells
        d = box(x, r, 0.0, P['x_core'], 0.0, 0.6)
        cand.append(P['h_core0'] + P['h_core_slope']*min(xs, P['x_core'])
                    + g*d)

        # Inside the nozzle near the exit
        d = box(x, r, -1.5, 0.0, 0.0, r_wall(x) if x < 0 else 0.5)
        cand.append(P['h_exit'] + g*d)

        # Acoustic near field, including the whole contraction
        d = box(x, r, x_in, P['x_near'], 0.0, P['r_near'])
        cand.append(P['h_near'] + 2*g*d)

        return scale*min(cand)

    return size


# ---------------------------------------------------------------------------
# Geometry and mesh

def build(step_path, out_path, scale, order):
    gmsh.initialize()
    gmsh.option.setNumber('General.Verbosity', 3)
    chain, k_inner, x_in = nozzle_profile(step_path)
    if abs(chain[k_inner][0][1] - 0.5) > 1e-3:
        raise RuntimeError('exit radius is not 0.5 D; check D_cad')

    # Inner wall radius as a function of x, for the size function
    inner = np.vstack(chain[k_inner:])
    inner = inner[np.argsort(inner[:, 0])]
    def r_wall(x):
        return float(np.interp(x, inner[:, 0], inner[:, 1]))

    gmsh.model.add('jet')
    gmsh.option.setNumber('Geometry.AutoCoherence', 0)
    geo = gmsh.model.geo
    rc, x_out, r_far = P['r_core'], P['x_out'], P['r_far']
    xb, xs = -P['x_bl'], P['x_block']
    nq = P['n_theta']//4
    if 4*nq != P['n_theta']:
        raise ValueError('n_theta must be a multiple of 4')
    nq = max(4, round(nq/scale))
    r_lip = chain[k_inner - 1][:, 1].max()      # lip face's outer radius
    size = make_size(scale, x_in, r_wall, r_lip)

    def cells(n):
        return max(4, round(n/scale))

    # --- spacings of the structured blocks (see the module docstring)
    h0, hw = scale*P['h_x0'], scale*P['bl_first']
    hu = scale*P['bl_first_up']

    # Streamwise, x in [0, xs]: from h_x0 at the exit to the shear-layer size
    n_x, q_x = progression(h0, xs, size(xs, 0.5))
    # Streamwise along the inner wall, x in [xb, 0]: h_x0 at the exit to h_exit
    wall_len = np.sum(np.hypot(*np.diff(chain[k_inner][chain[k_inner][:, 0]
                                                        >= xb], axis=0).T))
    n_b, q_b = progression(h0, wall_len, scale*P['h_exit'])
    # Across the inner block (wall or lip line to r_core), and above the lip
    n_w, n_l = cells(P['n_wall']), cells(P['n_lip'])

    # --- the (x, r) section, in the plane z = 0 with r along +y
    pts = {}
    def pt(x, r):
        """Shared corner point, snapping to any existing one within 1e-4 D
        (the CAD's curve ends disagree by a few micrometres)."""
        for (px, pr), tag in pts.items():
            if math.hypot(x - px, r - pr) < 1e-4:
                return tag
        pts[(x, r)] = geo.addPoint(x, r, 0)
        return pts[(x, r)]

    def tf(curve, n, q, fine_at_start=True):
        geo.mesh.setTransfiniteCurve(curve, n + 1, 'Progression',
                                     q if fine_at_start else 1/q)

    # Axial spacing on r = r_core, shared by the core block, the structured
    # blocks and the unstructured regions. Each stage is (end x, positions).
    xa1 = axis_nodes(size, x_in, xb, rc)
    stages = [(xb, xa1),
              (0.0, xb - xb*(1 - spaced(n_b, q_b))[::-1]),
              (xs, xs*spaced(n_x, q_x)),
              (x_out, axis_nodes(size, xs, x_out, rc))]
    stages = [(x1, list((xn[1:] - xn[0])/(xn[-1] - xn[0])))
              for x1, xn in stages]

    p_core = [pt(x_in, rc)]
    seg, x0 = [], x_in
    for x1, heights in stages:
        ext = geo.extrude([(0, p_core[-1])], x1 - x0, 0, 0,
                          [1]*len(heights), heights)
        p_core.append(ext[0][1])
        pts[(x1, rc)] = ext[0][1]
        seg.append(ext[1][1])
        x0 = x1
    cA, cB, cC = p_core[1], p_core[2], p_core[3]

    # Wall curves; the inner wall is split at x = xb, where block B1 starts
    wall_curves, outer_wall, inner_up = [], [], []
    for k, c in enumerate(chain):
        pieces = [c]
        if k == k_inner:            # inner contraction, exit -> upstream
            i = np.searchsorted(-c[:, 0], -xb)
            cut = np.array([xb, r_wall(xb)])
            pieces = [np.vstack([c[:i], cut]), np.vstack([cut, c[i:]])]
        for j, q in enumerate(pieces):
            tags = [pt(*q[0])] + [geo.addPoint(x, r, 0) for x, r in q[1:-1]] \
                + [pt(*q[-1])]
            ct = (geo.addLine(*tags) if len(tags) == 2
                  else geo.addSpline(tags))
            wall_curves.append(ct)
            if k < k_inner - 1:
                outer_wall.append(ct)
            elif k == k_inner - 1:
                c_lip = ct              # lip face, outer corner -> inner
            elif k == k_inner and j == 0:
                c_w0 = ct               # inner wall, exit -> xb
            else:
                inner_up.append(ct)     # inner wall upstream of xb

    L1 = pt(*chain[k_inner][0])         # lip inner corner (0, 0.5)
    L2 = pt(*chain[k_inner - 1][0])     # lip outer corner (0, r_lip)
    A0 = pt(xb, r_wall(xb))
    Qc = pt(xs, 0.5)
    Qo = pt(xs, P['r_block_out'])
    p_back = pt(*chain[0][0])
    p_inlet = pt(*chain[-1][-1])
    p_out = pt(x_out, r_far)
    p_far_in = pt(x_in, r_far)

    # Block edges
    e_0 = geo.addLine(L1, cB)           # exit plane, lip -> r_core
    e_a = geo.addLine(A0, cA)           # x = xb, wall -> r_core
    e_s = geo.addLine(Qc, cC)           # x = xs, lip line -> r_core
    e_o = geo.addLine(Qc, Qo)           # x = xs, lip line -> outer edge
    c_ll = geo.addLine(L1, Qc)          # lip line r = 0.5
    c_ol = geo.addLine(L2, Qo)          # outer edge of the shear-layer block

    # Spacings: fine at the walls and along the lip line
    tf(c_w0, n_b, q_b)
    tf(c_ll, n_x, q_x)
    tf(c_ol, n_x, q_x)
    tf(e_0, n_w, ratio_for(hw, 0.5 - rc, n_w))
    tf(e_a, n_w, ratio_for(hu, r_wall(xb) - rc, n_w))
    tf(e_s, n_w, ratio_for(scale*P['h_xs_lipline'], 0.5 - rc, n_w))
    tf(c_lip, n_l, ratio_for(1.5*hw, r_lip - 0.5, n_l), fine_at_start=False)
    tf(e_o, n_l, ratio_for(scale*P['h_xs_lipline'],
                           P['r_block_out'] - 0.5, n_l))

    # Nodes on the block edges that face the unstructured regions, with their
    # local spacing, so the unstructured mesh starts at the blocks' spacing
    # and grows away from it (otherwise every 2:1 merge leaves a triangle)
    def edge(p0, p1, t):
        xy = np.outer(1 - t, p0) + np.outer(t, p1)
        h = np.hypot(*np.diff(xy, axis=0).T)
        return np.c_[xy, np.r_[h[0], 0.5*(h[1:] + h[:-1]), h[-1]]]

    ends = np.vstack([
        edge((0.0, r_lip), (xs, P['r_block_out']), spaced(n_x, q_x)),
        edge((xs, 0.5), (xs, rc),
             spaced(n_w, ratio_for(scale*P['h_xs_lipline'], 0.5 - rc, n_w))),
        edge((xs, 0.5), (xs, P['r_block_out']),
             spaced(n_l, ratio_for(scale*P['h_xs_lipline'],
                                   P['r_block_out'] - 0.5, n_l))),
        edge((xb, r_wall(xb)), (xb, rc),
             spaced(n_w, ratio_for(hu, r_wall(xb) - rc, n_w))),
    ])
    g = P['grad']

    def size_u(x, r):
        d = np.hypot(ends[:, 0] - x, ends[:, 1] - r)
        return min(size(x, r), float(np.min(ends[:, 2] + g*d)))

    def block(loop):
        s = geo.addPlaneSurface([geo.addCurveLoop(loop)])
        geo.mesh.setTransfiniteSurface(s)
        geo.mesh.setRecombine(2, s)
        return s

    # B1: inside the nozzle, x in [xb, 0], wall to r_core
    loop_b1 = [c_w0, e_a, seg[1], -e_0]
    # B2: jet core side of the lip line, x in [0, xs]
    loop_b2 = [c_ll, e_s, -seg[2], -e_0]
    # B3: outer side of the lip line, from the lip face, x in [0, xs]
    loop_b3 = [-c_lip, c_ol, -e_o, -c_ll]
    b1, b2, b3 = block(loop_b1), block(loop_b2), block(loop_b3)

    # Unstructured regions: the plenum, and everything outside the blocks
    c_inlet = geo.addLine(p_inlet, pt(x_in, rc))
    c_outlet = geo.addLine(p_core[-1], p_out)
    c_far = geo.addLine(p_out, p_far_in)
    c_up = geo.addLine(p_far_in, p_back)
    loop_u1 = [seg[0], -e_a, *inner_up, c_inlet]
    loop_u2 = [seg[3], c_outlet, c_far, c_up, *outer_wall, c_ol, -e_o, e_s]
    u1 = geo.addPlaneSurface([geo.addCurveLoop(loop_u1)])
    u2 = geo.addPlaneSurface([geo.addCurveLoop(loop_u2)])
    for s in (u1, u2):
        geo.mesh.setRecombine(2, s)

    # Revolve each surface in four quarters; record the boundary surfaces
    side = {c_inlet: 'inlet', c_outlet: 'outlet', c_far: 'farfield',
            c_up: 'farfield'}
    side |= {c: 'wall' for c in wall_curves}
    groups = {k: [] for k in ('inlet', 'outlet', 'farfield', 'wall')}
    vols = []
    for s, loop in ((b1, loop_b1), (b2, loop_b2), (b3, loop_b3),
                    (u1, loop_u1), (u2, loop_u2)):
        src = s
        for _ in range(4):
            out = geo.revolve([(2, src)], 0, 0, 0, 1, 0, 0, math.pi/2, [nq],
                              recombine=True)
            src = out[0][1]
            vols.append(out[1][1])
            for c, (_, lat) in zip(loop, out[2:]):
                if abs(c) in side:
                    groups[side[abs(c)]].append(lat)

    # --- butterfly core at x = x_in, extruded along x in the same stages
    a = P['core_square']*rc
    centre_sq = [geo.addPoint(x_in, a*math.cos(t), a*math.sin(t))
                 for t in np.arange(4)*math.pi/2]
    circ = [geo.addPoint(x_in, rc*math.cos(t), rc*math.sin(t))
            for t in np.arange(4)*math.pi/2]
    centre = geo.addPoint(x_in, 0, 0)
    sq = [geo.addLine(centre_sq[i], centre_sq[(i + 1) % 4]) for i in range(4)]
    arc = [geo.addCircleArc(circ[i], centre, circ[(i + 1) % 4])
           for i in range(4)]
    rad = [geo.addLine(centre_sq[i], circ[i]) for i in range(4)]
    nr = max(2, round(P['n_core_radial']/scale))

    core_faces = [geo.addPlaneSurface([geo.addCurveLoop(sq)])]
    for i in range(4):
        cl = geo.addCurveLoop([sq[i], rad[(i + 1) % 4], -arc[i], -rad[i]])
        core_faces.append(geo.addPlaneSurface([cl]))
    for c in sq + arc:
        geo.mesh.setTransfiniteCurve(c, nq + 1)
    for c in rad:
        geo.mesh.setTransfiniteCurve(c, nr + 1)
    for f in core_faces:
        geo.mesh.setTransfiniteSurface(f)
        geo.mesh.setRecombine(2, f)
    groups['inlet'] += core_faces

    x0 = x_in
    for x1, heights in stages:
        tops = []
        for f in core_faces:
            out = geo.extrude([(2, f)], x1 - x0, 0, 0, [1]*len(heights),
                              heights, recombine=True)
            tops.append(out[0][1])
            vols.append(out[1][1])
        core_faces, x0 = tops, x1
    groups['outlet'] += core_faces

    geo.synchronize()

    # --- sizes for the unstructured regions
    gmsh.option.setNumber('Mesh.MeshSizeFromPoints', 0)
    gmsh.option.setNumber('Mesh.MeshSizeFromCurvature', 0)
    gmsh.option.setNumber('Mesh.MeshSizeExtendFromBoundary', 0)
    gmsh.model.mesh.setSizeCallback(lambda dim, tag, x, y, z, lc:
                                    size_u(x, math.hypot(y, z)))
    gmsh.option.setNumber('Mesh.Algorithm', 8)          # frontal quads
    gmsh.option.setNumber('Mesh.RecombinationAlgorithm', 1)  # blossom

    for name, tags in groups.items():
        gmsh.model.addPhysicalGroup(2, tags, name=name)
    gmsh.model.addPhysicalGroup(3, vols, name='fluid')

    # Blossom recombination needs an even number of triangles; with an odd
    # number Gmsh falls back to a recombination that leaves many. If that
    # happens, add one element on the far-field line (or the plenum inlet)
    # and mesh again. A handful of leftover triangles is normal; they become
    # prisms.
    gmsh.logger.start()
    gmsh.model.mesh.generate(2)
    odd = [m for m in gmsh.logger.get() if 'odd number of triangles' in m]
    if odd:
        fix = {c: len(gmsh.model.mesh.getElements(1, c)[1][0])
               for s, c in ((u2, c_far), (u1, c_inlet))
               if any(m.rstrip().endswith(f'surface {s}') for m in odd)}
        gmsh.model.mesh.clear()
        for c, n in fix.items():
            gmsh.model.mesh.setTransfiniteCurve(c, n + 2)
        gmsh.model.mesh.generate(2)
    gmsh.logger.stop()
    for name, s in (('blocks', [b1, b2, b3]), ('plenum', [u1]),
                    ('outer', [u2])):
        nquad = ntri = 0
        for t in s:
            types, tags, _ = gmsh.model.mesh.getElements(2, t)
            ntri += sum(len(e) for ty, e in zip(types, tags) if ty == 2)
            nquad += sum(len(e) for ty, e in zip(types, tags) if ty == 3)
        print(f'section, {name}: {nquad} quads, {ntri} triangles')
    gmsh.model.mesh.generate(3)

    # Raise the order before joining the parts: Gmsh refuses to curve edges
    # whose nodes are shared between entities. The high-order nodes on each
    # join lie on the same surface from both sides, so they merge too.
    if order > 1:
        gmsh.model.mesh.setOrder(order)
    gmsh.model.mesh.removeDuplicateNodes()

    report()
    check_jacobians()
    gmsh.option.setNumber('Mesh.MshFileVersion', 4.1)
    gmsh.option.setNumber('Mesh.Binary', 0)
    gmsh.write(out_path)
    gmsh.finalize()


def check_jacobians():
    """Fail if any volume element has a zero or negative Jacobian.

    PyFR stops on these ('Negative mesh Jacobians detected'), but only once
    a run starts; pyfr import does not check.
    """
    types, tags, _ = gmsh.model.mesh.getElements(3)
    for t, e in zip(types, tags):
        dj = np.array(gmsh.model.mesh.getElementQualities(e, 'minDetJac'))
        bad = np.asarray(e)[dj <= 0]
        if len(bad):
            _, nodes, _, _ = gmsh.model.mesh.getElement(int(bad[0]))
            x = np.mean([gmsh.model.mesh.getNode(int(n))[0] for n in nodes],
                        axis=0)
            raise RuntimeError(
                f'{len(bad)} elements with Jacobian <= 0, the first near '
                f'x = {x[0]:.3f}, r = {math.hypot(x[1], x[2]):.3f}')
    print('Jacobians: all positive')


def report():
    """Element counts by type, and the size range of the hexes."""
    names = {5: 'hex', 6: 'prism', 12: 'hex', 13: 'prism', 92: 'hex',
             90: 'prism'}
    types, tags, _ = gmsh.model.mesh.getElements(3)
    for t, e in zip(types, tags):
        print(f'{names.get(t, t)}: {len(e)}')
    n = sum(len(e) for e in tags)
    print(f'total volume elements: {n}')
    for p, npts in ((3, 64), (4, 125)):
        print(f'  p = {p}: {n*npts/1e6:.0f} M solution points per variable')


def main():
    ap = argparse.ArgumentParser(description=__doc__.split('\n\n')[0])
    ap.add_argument('step')
    ap.add_argument('out')
    ap.add_argument('--scale', type=float, default=1.0,
                    help='multiply all sizes by this (2 = pilot mesh)')
    ap.add_argument('--order', type=int, default=2,
                    help='geometric order of the elements (2 or 3)')
    args = ap.parse_args()
    build(args.step, args.out, args.scale, args.order)


if __name__ == '__main__':
    main()

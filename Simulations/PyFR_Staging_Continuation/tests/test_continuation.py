"""Tests on synthetic signals, with a fake jet in place of PyFR.

Run from the PyFR_Staging_Continuation folder:
    python -m unittest discover -s tests -v
"""

import os
import shutil
import sys
import tempfile
import textwrap
import unittest

import h5py
import numpy as np

HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, os.path.dirname(HERE))

from continuation import analysis, branch, settings  # noqa: E402


ST1, ST2 = 0.63, 0.70
NPTS = 8
DT = 0.15


def tones(t, a1, a2, rng, noise=0.05):
    """Ring of NPTS probes: the same m = 0 signal plus independent noise."""
    s = (a1*np.sin(2*np.pi*ST1*t) + a2*np.sin(2*np.pi*ST2*t + 0.3))
    return s[:, None] + noise*rng.standard_normal((len(t), NPTS))


def write_sampler(path, t, p):
    """Write a file laid out like PyFR's sampler HDF5 output."""
    nvars = 5
    dtype = np.dtype([('t', 'f8'), ('samples', 'f8', (NPTS, nvars))])
    rec = np.zeros(len(t), dtype=dtype)
    rec['t'] = t
    rec['samples'][:, :, 0] = 1.0
    rec['samples'][:, :, 4] = p
    with h5py.File(path, 'w') as f:
        d = f.create_dataset('probes', data=rec, maxshape=(None,))
        d.attrs['fields'] = 'rho,u,v,w,p'
        d.attrs['pts'] = np.zeros((NPTS, 3))


class FakeJet:
    """Hysteretic switching from A1 to A2 above NPR_c.

    Above NPR_c the A1 state leaves after t0 + pi/sqrt(k (NPR - NPR_c)),
    a saddle-node bottleneck plus a fixed delay t0.
    """

    def __init__(self, npr_c=2.163, k=0.232, t0=2.0, tau=3.0, seed=1):
        self.npr_c, self.k, self.t0, self.tau = npr_c, k, t0, tau
        self.rng = np.random.default_rng(seed)

    def t_switch(self, npr):
        mu = npr - self.npr_c
        return np.inf if mu <= 0 else self.t0 + np.pi/np.sqrt(self.k*mu)

    def signal(self, npr, t_visit, t):
        ts = self.t_switch(npr)
        x = np.clip((t - t_visit - ts)/self.tau, -50, 50)
        a1 = 1/(1 + np.exp(x))
        a2 = 1 - a1 if np.isfinite(ts) else 0*t
        return tones(t, a1, a2, self.rng)


def make_case(tmp, extra=''):
    shutil.copy(os.path.join(os.path.dirname(HERE), 'base.example.ini'),
                os.path.join(tmp, 'base.ini'))
    toml = textwrap.dedent(f"""
        [physics]
        velocity_ref = 1.0
        [modes]
        A1 = [0.60, 0.665]
        A2 = [0.665, 0.73]
        probe_groups = [[0, 1, 2, 3, 4, 5, 6, 7]]
        [continuation]
        step = 0.02
        min_step = 0.005
        transient = 5.0
        segment_cycles = 150
        [slurm]
        submit = false
        {extra}
        """)
    path = os.path.join(tmp, 'continuation.toml')
    with open(path, 'w') as f:
        f.write(toml)
    return settings.load(path)


class TestAnalysis(unittest.TestCase):
    def setUp(self):
        self.tmp = tempfile.mkdtemp()
        self.cfg = make_case(self.tmp)
        self.jet = FakeJet()

    def tearDown(self):
        shutil.rmtree(self.tmp)

    def classify(self, npr, tend=250.0):
        t = np.arange(0, tend, DT)
        path = os.path.join(self.tmp, 'samples.h5')
        write_sampler(path, t, self.jet.signal(npr, 0.0, t))
        tt, y, pts = analysis.read_sampler([path])
        self.assertEqual(y.shape, (len(t), NPTS))
        return analysis.analyse(self.cfg, tt, y, npr, 'A1', 0.0)[0]

    def test_persisted(self):
        res = self.classify(2.15)
        self.assertEqual(res['status'], 'persisted', res)
        self.assertIsNone(res['t_switch'])

    def test_switched_time(self):
        res = self.classify(2.20)
        self.assertEqual(res['status'], 'switched', res)
        self.assertAlmostEqual(res['t_switch'], self.jet.t_switch(2.20),
                               delta=3.0)

    def test_trending_near_limit(self):
        # A slow handover, due to complete just after the end of the record
        self.jet = FakeJet(tau=30.0)
        npr = self.jet.npr_c + (np.pi/(260 - self.jet.t0))**2/self.jet.k
        res = self.classify(npr, tend=230.0)
        self.assertEqual(res['status'], 'trending', res)

    def test_split_files_join(self):
        t = np.arange(0, 250, DT)
        p = self.jet.signal(2.2, 0.0, t)
        a, b = os.path.join(self.tmp, 'a.h5'), os.path.join(self.tmp, 'b.h5')
        write_sampler(a, t[:900], p[:900])
        write_sampler(b, t[899:], p[899:])     # one repeated sample
        tt, y, _ = analysis.read_sampler([b, a])
        np.testing.assert_allclose(tt, t)
        np.testing.assert_allclose(y, p)

    def test_isentropic(self):
        Mj, Uj = analysis.isentropic_jet(2.2)
        self.assertAlmostEqual(Mj, 1.1241, places=3)

    def test_fit_recovers_limit(self):
        jet = FakeJet(t0=0.0)
        pts = [(n, jet.t_switch(n)) for n in (2.17, 2.18, 2.20)]
        est = analysis.estimate_limit(pts, 'saddle-node')
        self.assertAlmostEqual(est['npr_limit'], jet.npr_c, places=6)


class TestBranch(unittest.TestCase):
    def setUp(self):
        self.tmp = tempfile.mkdtemp()
        self.cfg = make_case(self.tmp)
        self.jet = FakeJet()
        self.visit_of = {}

    def tearDown(self):
        shutil.rmtree(self.tmp)

    def launcher(self, cfg, state, visit, seg, script):
        self.assertTrue(os.path.exists(script))
        self.visit_of[seg['id']] = (visit['npr'], visit['from']['t'])
        return f"fake-{seg['id']}"

    def run_segment(self, seg):
        npr, t_visit = self.visit_of[seg['id']]
        d = settings.absp(self.cfg, seg['dir'])
        t = np.arange(seg['t_start'], seg['t_end'] + 1e-9, DT)
        write_sampler(os.path.join(d, 'samples.h5'), t,
                      self.jet.signal(npr, t_visit, t))
        open(os.path.join(d, f"soln-{seg['t_end']:.4f}.pyfrs"), 'w').close()

    def test_up_branch_brackets_limit(self):
        open(os.path.join(self.tmp, 'start.pyfrs'), 'w').close()
        branch.init(self.cfg, 'up', 'A1', 2.10, 'start.pyfrs', 0.0)

        queue = branch.advance(self.cfg, 'up', launcher=self.launcher)
        n = 0
        while queue:
            seg = queue.pop(0)
            self.run_segment(seg)
            queue += branch.advance(self.cfg, 'up', completed=seg['id'],
                                    launcher=self.launcher)
            n += 1
            self.assertLess(n, 40)

        state = branch.load_state(self.cfg, 'up')
        print('\n' + branch.status(self.cfg, 'up'))
        self.assertEqual(state['phase'], 'done')

        lo, hi = state['estimate']['bracket']
        self.assertLessEqual(lo, self.jet.npr_c)
        self.assertGreaterEqual(hi, self.jet.npr_c)
        self.assertLessEqual(hi - lo, 0.005 + 1e-9)

        fit = state['estimate']['fit']
        self.assertIsNotNone(fit)
        self.assertAlmostEqual(fit['npr_limit'], self.jet.npr_c, delta=0.004)

        # Each visit starts from the anchor, so all start in A1
        v = state['visits'][1]
        self.assertEqual(v['from']['solution'],
                         state['visits'][0]['segments'][-1]['soln_out'])
        ini = os.path.join(settings.absp(self.cfg, v['segments'][0]['dir']),
                           'segment.ini')
        with open(ini) as f:
            text = f.read()
        self.assertIn(f"pt = {v['npr']*self.cfg['case']['p_ambient']!r}",
                      text)
        self.assertIn('file-format = hdf5', text)


if __name__ == '__main__':
    unittest.main()

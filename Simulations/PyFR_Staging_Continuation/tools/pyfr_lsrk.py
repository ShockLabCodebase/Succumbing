#!/usr/bin/env python3
"""Run PyFR with extra low-storage Runge-Kutta schemes.

Use it in place of the `pyfr` command, e.g.

    python tools/pyfr_lsrk.py restart -b cuda mesh.pyfrm soln.pyfrs run.ini

with `scheme = lsrk-o3s8-r0p1` in [solver-time-integrator]. The schemes are
2R van der Houwen schemes, the same stepper as PyFR's own rk34 and rk45 but
with different coefficients, so nothing in PyFR needs rebuilding. They are
read from lsrk_coeffs.json next to this file, or from $PYFR_LSRK_COEFFS.

lsrk-o3s8-r0p1 (8 stages, third order) is from M. Wong's PyFR setup for a
supersonic backward-facing step on M3. It was designed for the stability
region of p = 3 flux reconstruction with upwind fluxes and LDG, and there it
allowed 4.87x the dt of tvd-rk3, so 1.8x the simulated time per stage. Check
it on each case: it damped near-wall turbulence by 4-10% in one of theirs.
"""

import json
import os
import sys

# Import PyFR's main first: it sets mpi4py.rc.initialize = False before
# anything imports mpi4py.MPI
from pyfr.__main__ import main
from pyfr.integrators.std.steppers import StdRKVdH2RStepper


# PyFR finds steppers through BaseStdStepper.__subclasses__(), which holds
# weak references, so keep strong ones here
_schemes = []


def register(path):
    with open(path) as f:
        coeffs = json.load(f)

    for name, c in coeffs.items():
        a, b = [float(x) for x in c['a']], [float(x) for x in c['b']]
        if len(b) != len(a) + 1 or abs(sum(b) - 1) > 1e-12:
            raise ValueError(f'{name}: need len(b) = len(a) + 1 and sum(b) = 1')

        cls = 'Std' + name.title().replace('-', '') + 'Stepper'
        _schemes.append(type(cls, (StdRKVdH2RStepper,), {
            'stepper_name': name, 'stepper_order': int(c['order']),
            'a': a, 'b': b, 'bhat': [float(x) for x in c.get('bhat', [])]
        }))

    return list(coeffs)


if __name__ == '__main__':
    path = os.environ.get('PYFR_LSRK_COEFFS',
                          os.path.join(os.path.dirname(__file__),
                                       'lsrk_coeffs.json'))
    print(f"pyfr_lsrk: registered {', '.join(register(path))}", flush=True)
    sys.argv[0] = 'pyfr'
    sys.exit(main())

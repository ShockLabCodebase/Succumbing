"""Command line: python -m continuation --settings FILE <command> ..."""

import argparse
import json
import sys

import numpy as np

from . import analysis, branch, settings


def main(argv=None):
    ap = argparse.ArgumentParser(prog='python -m continuation',
                                 description=__doc__)
    ap.add_argument('--settings', default='continuation.toml')
    sp = ap.add_subparsers(dest='cmd', required=True)

    p = sp.add_parser('init', help='start a branch from a converged state')
    p.add_argument('--branch', required=True)
    p.add_argument('--mode', required=True, choices=['A1', 'A2'],
                   help='mode of the starting solution')
    p.add_argument('--npr', required=True, type=float)
    p.add_argument('--solution', required=True,
                   help='.pyfrs file, relative to the case root')
    p.add_argument('--t0', required=True, type=float,
                   help='solver time of that solution')
    p.add_argument('--direction', choices=['up', 'down'],
                   help='NPR direction (default: up from A1, down from A2)')

    p = sp.add_parser('advance', help='analyse and launch the next step')
    p.add_argument('--branch', required=True)
    p.add_argument('--completed', help='segment id that just finished')
    p.add_argument('--failed', help='segment id whose PyFR run failed')

    p = sp.add_parser('status', help='summarise a branch')
    p.add_argument('--branch', required=True)

    p = sp.add_parser('analyse', help='analyse sampler files directly')
    p.add_argument('files', nargs='+')
    p.add_argument('--npr', required=True, type=float)
    p.add_argument('--mode', required=True, choices=['A1', 'A2'],
                   help='mode the record starts in')
    p.add_argument('--t-change', type=float,
                   help='time of the NPR change (default: first sample)')
    p.add_argument('--csv', help='write t (D/U_j), A1, A2 and smoothed '
                                 'ln(A_in/A_out) here')

    args = ap.parse_args(argv)
    cfg = settings.load(args.settings)

    if args.cmd == 'init':
        direction = {'up': 1, 'down': -1, None: None}[args.direction]
        branch.init(cfg, args.branch, args.mode, args.npr, args.solution,
                    args.t0, direction)
        print(branch.status(cfg, args.branch))
    elif args.cmd == 'advance':
        segs = branch.advance(cfg, args.branch, args.completed, args.failed)
        print(f"launched: {[s['id'] for s in segs]}")
        print(branch.status(cfg, args.branch))
    elif args.cmd == 'status':
        print(branch.status(cfg, args.branch))
    elif args.cmd == 'analyse':
        t, y, _ = analysis.read_sampler(args.files,
                                        cfg['modes']['pressure_field'],
                                        cfg['case']['sampler_dataset'])
        t_change = t[0] if args.t_change is None else args.t_change
        res, (tc, amps, rs) = analysis.analyse(cfg, t, y, args.npr,
                                               args.mode, t_change)
        print(json.dumps(res, indent=1))
        if args.csv:
            np.savetxt(args.csv, np.column_stack([tc, amps['A1'],
                                                  amps['A2'], rs]),
                       delimiter=',', header='t_conv,A1,A2,r_smoothed',
                       comments='')


if __name__ == '__main__':
    sys.exit(main())

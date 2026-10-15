"""Job scripts for one segment, and submission through SLURM.

Each job runs PyFR for one segment, then calls the driver again, which
analyses the segment and submits whatever comes next. The chain therefore
runs without anyone watching it.
"""

import os
import shlex
import subprocess
import sys


def job_script(cfg, branch, seg, ini_rel, soln_rel):
    sl = cfg['slurm']
    pkg_dir = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
    launch = sl['launch'].format(mesh=cfg['case']['mesh'], soln=soln_rel,
                                 ini=ini_rel)
    advance = (f"{sl['python']} -m continuation "
               f"--settings {shlex.quote(cfg['settings_path'])} "
               f"advance --branch {branch}")

    lines = ['#!/bin/bash',
             f"#SBATCH --job-name=stg-{branch}-{seg['id']}",
             f"#SBATCH --output={seg['dir']}/slurm-%j.out"]
    lines += [f'#SBATCH {a}' for a in sl['sbatch_args']]
    lines += ['',
              'set -uo pipefail',
              f"cd {shlex.quote(cfg['root'])}",
              f"export PYTHONPATH={shlex.quote(pkg_dir)}:${{PYTHONPATH:-}}",
              '',
              sl['setup'].strip(),
              '',
              f'if {launch}; then',
              f"    {advance} --completed {seg['id']}",
              'else',
              f"    {advance} --failed {seg['id']}",
              'fi',
              '']
    return '\n'.join(lines)


def submit(cfg, script_path):
    """Submit a job script; return the job id, or None if not submitted."""
    sl = cfg['slurm']
    if not sl['submit']:
        print(f'Not submitted (slurm.submit = false): {script_path}',
              file=sys.stderr)
        return None

    out = subprocess.run([sl['sbatch'], '--parsable', script_path],
                         cwd=cfg['root'], check=True, capture_output=True,
                         text=True)
    return out.stdout.strip().split(';')[0]

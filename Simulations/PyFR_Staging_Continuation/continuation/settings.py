"""Load and validate the driver settings (TOML)."""

import copy
import os
import tomllib


DEFAULTS = {
    'case': {
        'mesh': 'mesh.pyfrm',
        'base_ini': 'base.ini',
        'inlet_bc': 'inlet',
        'p_ambient': 1/1.4,
        'sampler_section': 'soln-plugin-sampler',
        'sampler_dataset': 'probes',
        'writer_section': 'soln-plugin-writer',
        'runs_dir': 'runs',
    },
    'physics': {
        'gamma': 1.4,
        'length_ref': 1.0,
        # 'isentropic' computes U_j from NPR; a number fixes U_ref
        'velocity_ref': 'isentropic',
        'T0_over_Tamb': 1.0,
        'c_amb': 1.0,
    },
    'modes': {
        'A1': [0.58, 0.665],
        'A2': [0.665, 0.75],
        'pressure_field': 'p',
        'probe_groups': [],
        'band_taper': 0.3,
    },
    'continuation': {
        'step': 0.02,
        'min_step': 0.005,
        'npr_bounds': [1.9, 2.6],
        'transient': 20.0,
        'segment_cycles': 150,
        'extend_cycles': 100,
        'max_extensions': 2,
        'max_segments': 30,
        'window_cycles': 10,
        'switch_ratio': 2.0,
        'trend_threshold': 0.01,
        'rise_ratio': 3.0,
        'fit_model': 'saddle-node',
        'fit_points': 3,
        'fit_spacing': 0.01,
    },
    'slurm': {
        'submit': True,
        'sbatch': 'sbatch',
        'sbatch_args': [],
        'setup': '',
        'launch': 'srun pyfr restart -b cuda {mesh} {soln} {ini}',
        'python': 'python',
    },
}


def _merge(base, override):
    out = copy.deepcopy(base)
    for k, v in override.items():
        if isinstance(v, dict) and isinstance(out.get(k), dict):
            out[k] = _merge(out[k], v)
        else:
            out[k] = v
    return out


def load(path):
    path = os.path.abspath(path)
    with open(path, 'rb') as f:
        cfg = _merge(DEFAULTS, tomllib.load(f))

    cfg['root'] = os.path.dirname(path)
    cfg['settings_path'] = path

    for m in ('A1', 'A2'):
        lo, hi = cfg['modes'][m]
        if not 0 < lo < hi:
            raise ValueError(f'modes.{m} must be [St_low, St_high] with '
                             f'0 < St_low < St_high')

    if not cfg['modes']['probe_groups']:
        raise ValueError('modes.probe_groups must list at least one group of '
                         'sampler point indices')

    if cfg['continuation']['fit_model'] not in ('saddle-node', 'linear'):
        raise ValueError("continuation.fit_model must be 'saddle-node' or "
                         "'linear'")

    return cfg


def rel(cfg, path):
    """Path relative to the case root, with forward slashes."""
    return os.path.relpath(path, cfg['root']).replace(os.sep, '/')


def absp(cfg, path):
    return path if os.path.isabs(path) else os.path.join(cfg['root'], path)

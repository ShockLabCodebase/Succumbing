"""Continuation along one branch of the A1/A2 hysteresis loop.

A branch starts from a converged solution in one mode (the "outgoing" mode)
and steps NPR towards the other mode's region:

  march   step NPR by `step` from the last state that kept its mode (the
          anchor) until a run switches;
  bisect  halve the gap between the anchor and the nearest switched NPR
          until it is below `min_step`;
  fit     run extra NPRs beyond the bracket, all at once from the anchor,
          so that the switching rate can be extrapolated to the limit.

Every run (a "visit" to one NPR) starts from the anchor solution, is made of
one or more segments (the first one plus extensions when the outcome is not
yet clear), and is analysed when its last segment finishes.
"""

import contextlib
import glob
import json
import os
import re
import time

from . import analysis, iniedit, slurm
from .settings import absp, rel


def branch_dir(cfg, branch):
    return os.path.join(absp(cfg, cfg['case']['runs_dir']), branch)


def state_path(cfg, branch):
    return os.path.join(branch_dir(cfg, branch), 'state.json')


@contextlib.contextmanager
def locked(cfg, branch, timeout=600):
    """Lock a branch so concurrent jobs don't overwrite each other's state."""
    lock = os.path.join(branch_dir(cfg, branch), '.lock')
    t0 = time.time()
    while True:
        try:
            os.mkdir(lock)
            break
        except FileExistsError:
            if time.time() - t0 > timeout:
                raise RuntimeError(f'could not lock {lock}; remove it if no '
                                   'driver is running')
            time.sleep(2)
    try:
        yield
    finally:
        os.rmdir(lock)


def load_state(cfg, branch):
    with open(state_path(cfg, branch)) as f:
        return json.load(f)


def save_state(cfg, branch, state):
    path = state_path(cfg, branch)
    with open(path + '.tmp', 'w') as f:
        json.dump(state, f, indent=1)
    os.replace(path + '.tmp', path)


def _rnd(x):
    return round(float(x), 6)


def _log(state, msg):
    state['log'].append(f"{time.strftime('%Y-%m-%d %H:%M:%S')}  {msg}")


def _to_time(cfg, npr, tconv):
    """Convective time (D/U_j) to solver time."""
    return tconv*cfg['physics']['length_ref']/analysis.velocity_ref(cfg, npr)


def _cycles_to_time(cfg, npr, mode, n):
    st = 0.5*sum(cfg['modes'][mode])
    return _to_time(cfg, npr, n/st)


def init(cfg, branch, mode, npr, solution, t0, direction=None):
    if os.path.exists(state_path(cfg, branch)):
        raise FileExistsError(f'branch {branch!r} already exists')

    for issue in iniedit.check_base(cfg, absp(cfg, cfg['case']['base_ini'])):
        print(f'warning: base config: {issue}')

    if direction is None:
        direction = 1 if mode == 'A1' else -1

    os.makedirs(branch_dir(cfg, branch), exist_ok=True)
    state = {
        'branch': branch,
        'outgoing': mode,
        'incoming': 'A2' if mode == 'A1' else 'A1',
        'direction': direction,
        'phase': 'march',
        'anchor': {'npr': _rnd(npr), 'solution': solution, 't': float(t0)},
        'switched': None,
        'nseg': 0,
        'visits': [],
        'estimate': None,
        'log': [],
    }
    _log(state, f'init: {mode} at NPR {npr} from {solution} (t = {t0})')
    save_state(cfg, branch, state)
    return state


def _new_segment(cfg, state, visit, t_start, soln, length, avg_from=None):
    state['nseg'] += 1
    sid = f"s{state['nseg']:03d}"
    seg_dir = os.path.join(branch_dir(cfg, state['branch']),
                           f"{sid}_npr{visit['npr']:.4f}")
    seg = {'id': sid, 'dir': rel(cfg, seg_dir), 'soln_in': soln,
           't_start': float(t_start), 't_end': float(t_start + length),
           'avg_from': float(t_start if avg_from is None else avg_from),
           'status': 'pending', 'job': None, 'soln_out': None}
    visit['segments'].append(seg)
    return seg


def _new_visit(cfg, state, npr, purpose):
    co = cfg['continuation']
    frm = dict(state['anchor'])
    v = {'id': f"v{len(state['visits']) + 1:03d}", 'npr': _rnd(npr),
         'purpose': purpose, 'from': frm, 'segments': [],
         'status': 'running', 'result': None, 'used': False}
    state['visits'].append(v)

    transient = _to_time(cfg, npr, co['transient'])
    length = transient + _cycles_to_time(cfg, npr, state['outgoing'],
                                         co['segment_cycles'])
    return _new_segment(cfg, state, v, frm['t'], frm['solution'], length,
                        avg_from=frm['t'] + transient)


def _extend(cfg, state, visit):
    last = visit['segments'][-1]
    length = _cycles_to_time(cfg, visit['npr'], state['outgoing'],
                             cfg['continuation']['extend_cycles'])
    return _new_segment(cfg, state, visit, last['t_end'], last['soln_out'],
                        length)


def _final_solution(cfg, seg):
    files = glob.glob(os.path.join(absp(cfg, seg['dir']), 'soln-*.pyfrs'))

    def time_of(p):
        m = re.search(r'soln-(.+)\.pyfrs$', os.path.basename(p))
        try:
            return float(m.group(1))
        except (AttributeError, ValueError):
            return float('-inf')

    return rel(cfg, max(files, key=time_of)) if files else None


def _analyse_visit(cfg, state, visit):
    files = [absp(cfg, f"{s['dir']}/samples.h5") for s in visit['segments']]
    t, y, _ = analysis.read_sampler(files, cfg['modes']['pressure_field'],
                                    cfg['case']['sampler_dataset'])
    res, _ = analysis.analyse(cfg, t, y, visit['npr'], state['outgoing'],
                              visit['from']['t'])
    return res


def _visit_of(state, seg_id):
    for v in state['visits']:
        for s in v['segments']:
            if s['id'] == seg_id:
                return v, s
    raise KeyError(f'no segment {seg_id!r}')


def _default_launcher(cfg, state, visit, seg, script):
    return slurm.submit(cfg, script)


def _launch(cfg, state, seg, launcher):
    visit, _ = _visit_of(state, seg['id'])
    seg_dir = absp(cfg, seg['dir'])
    os.makedirs(seg_dir, exist_ok=True)

    ini = os.path.join(seg_dir, 'segment.ini')
    iniedit.write_segment_ini(cfg, ini, visit['npr'], seg['t_start'],
                              seg['t_end'], seg['dir'],
                              avg_from=seg.get('avg_from'))

    script = os.path.join(seg_dir, 'job.sh')
    with open(script, 'w', newline='\n') as f:
        f.write(slurm.job_script(cfg, state['branch'], seg, rel(cfg, ini),
                                 seg['soln_in']))

    seg['job'] = (launcher or _default_launcher)(cfg, state, visit, seg,
                                                 script)
    seg['status'] = 'submitted'
    _log(state, f"{seg['id']}: NPR {visit['npr']} ({visit['purpose']}), "
                f"t = {seg['t_start']:.4f} to {seg['t_end']:.4f}, "
                f"job {seg['job']}")


def _finish(cfg, state, reason):
    pts = [(v['npr'], v['result']['t_switch']) for v in state['visits']
           if v['status'] == 'switched']
    fit = analysis.estimate_limit(pts, cfg['continuation']['fit_model'])

    bracket = None
    if state['switched'] is not None:
        bracket = sorted([state['anchor']['npr'], state['switched']])

    state['estimate'] = {'bracket': bracket, 'fit': fit, 'reason': reason}
    state['phase'] = 'done'
    _log(state, f'done ({reason}): bracket {bracket}, fit {fit}')


def _decide(cfg, state):
    """NPRs (and purposes) of the next visits; [] when the branch is done."""
    co = cfg['continuation']
    d = state['direction']
    lo, hi = co['npr_bounds']

    for v in state['visits']:
        if v['status'] == 'running' or v['used']:
            continue
        v['used'] = True
        if v['purpose'] == 'fit':
            continue
        if v['status'] == 'persisted':
            last = v['segments'][-1]
            state['anchor'] = {'npr': v['npr'], 'solution': last['soln_out'],
                               't': last['t_end']}
        elif (state['switched'] is None
              or d*(v['npr'] - state['switched']) < 0):
            state['switched'] = v['npr']

    anchor = state['anchor']['npr']

    if state['phase'] in ('march', 'bisect'):
        if state['switched'] is None:
            npr = _rnd(anchor + d*co['step'])
            if not lo <= npr <= hi:
                _finish(cfg, state, 'no switch within npr_bounds')
                return []
            return [(npr, 'march')]

        gap = abs(state['switched'] - anchor)
        if gap > co['min_step']*(1 + 1e-6):
            state['phase'] = 'bisect'
            return [(_rnd(anchor + d*gap/2), 'bisect')]

        state['phase'] = 'fit'
        nsw = sum(v['status'] == 'switched' for v in state['visits'])
        seen = {v['npr'] for v in state['visits']}
        nprs, k = [], 1
        while len(nprs) < co['fit_points'] - nsw and k <= 50:
            npr = _rnd(state['switched'] + d*k*co['fit_spacing'])
            k += 1
            if npr not in seen and lo <= npr <= hi:
                nprs.append(npr)

        if nprs:
            return [(n, 'fit') for n in nprs]

    _finish(cfg, state, 'bracketed to min_step')
    return []


def advance(cfg, branch, completed=None, failed=None, launcher=None):
    """Record a finished segment, analyse, and launch what comes next.

    Returns the list of segments launched.
    """
    with locked(cfg, branch):
        state = load_state(cfg, branch)
        launched = _advance(cfg, state, completed, failed, launcher)
        save_state(cfg, branch, state)
    return launched


def _advance(cfg, state, completed, failed, launcher):
    co = cfg['continuation']

    if failed:
        _, s = _visit_of(state, failed)
        s['status'] = 'failed'
        state['phase'] = 'stopped'
        _log(state, f'{failed}: PyFR failed, branch stopped; see '
                    f"{s['dir']}/slurm-*.out")
        return []

    if completed:
        v, s = _visit_of(state, completed)
        s['status'] = 'done'
        s['soln_out'] = _final_solution(cfg, s)
        if s['soln_out'] is None:
            state['phase'] = 'stopped'
            _log(state, f"{completed}: no solution file in {s['dir']}; "
                        'branch stopped')
            return []

    if state['phase'] in ('done', 'stopped'):
        return []

    new = []
    for v in state['visits']:
        if v['status'] != 'running':
            continue
        if any(s['status'] != 'done' for s in v['segments']):
            continue

        res = _analyse_visit(cfg, state, v)
        v['result'] = res
        for w in res['warnings']:
            _log(state, f"{v['id']} warning: {w}")

        st = res['status']
        if (st in ('trending', 'too-short')
                and len(v['segments']) <= co['max_extensions']):
            new.append(_extend(cfg, state, v))
            _log(state, f"{v['id']} (NPR {v['npr']}): {st}, extending")
            continue

        if st == 'switched':
            v['status'] = 'switched'
            last = v['segments'][-1]
            _log(state, f"{v['id']} (NPR {v['npr']}): switched to "
                        f"{state['incoming']} at t_switch = "
                        f"{res['t_switch']} D/U_j; {state['incoming']} state "
                        f"in {last['soln_out']}")
        else:
            v['status'] = 'persisted'
            v['unresolved'] = st != 'persisted'
            _log(state, f"{v['id']} (NPR {v['npr']}): stayed "
                        f"{state['outgoing']}"
                        + (f' (still {st} after the last extension)'
                           if v['unresolved'] else ''))

    if not any(v['status'] == 'running' for v in state['visits']):
        if state['nseg'] >= co['max_segments']:
            _finish(cfg, state, 'max_segments reached')
        else:
            for npr, purpose in _decide(cfg, state):
                new.append(_new_visit(cfg, state, npr, purpose))

    for seg in new:
        _launch(cfg, state, seg, launcher)
    return new


def status(cfg, branch):
    state = load_state(cfg, branch)
    a = state['anchor']
    lines = [f"Branch {branch}: {state['outgoing']} -> {state['incoming']}, "
             f"direction {state['direction']:+d}, phase {state['phase']}",
             f"Anchor: NPR {a['npr']}, {a['solution']}, t = {a['t']}",
             f"Nearest switched NPR: {state['switched']}", '',
             f"{'visit':6} {'NPR':>8} {'purpose':8} {'status':10} "
             f"{'segs':>4} {'r_end':>7} {'trend':>8} {'t_switch':>9}"]

    def fmt(x, spec):
        return format(x, spec) if isinstance(x, (int, float)) else '-'

    for v in state['visits']:
        r = v['result'] or {}
        lines.append(f"{v['id']:6} {v['npr']:8.4f} {v['purpose']:8} "
                     f"{v['status']:10} {len(v['segments']):4d} "
                     f"{fmt(r.get('r_end'), '7.2f'):>7} "
                     f"{fmt(r.get('trend'), '8.4f'):>8} "
                     f"{fmt(r.get('t_switch'), '9.1f'):>9}")

    if state['estimate']:
        lines += ['', f"Estimate: {json.dumps(state['estimate'])}"]
    return '\n'.join(lines)

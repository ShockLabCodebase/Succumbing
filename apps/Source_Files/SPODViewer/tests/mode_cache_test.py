"""Test the per-mode frequency-major cache on a small file whose P chunks hold every frequency.

Usage: python tests/mode_cache_test.py <out_dir>

The real case is a multi-GB file; here the size threshold is lowered so a small
synthetic file takes the same path. Checks that only modes 1 and 2 are cached at
first, that choosing a higher mode asks first (cancel / this mode / all modes),
and that the cached values match P.
"""

import os
import sys
import time

os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")
sys.path.insert(0, os.path.join(os.path.dirname(__file__), ".."))
sys.path.insert(0, os.path.dirname(__file__))

import h5py  # noqa: E402
import numpy as np  # noqa: E402
from PySide6 import QtWidgets  # noqa: E402

from make_synthetic import write  # noqa: E402
from spodviewer import data  # noqa: E402


def make(path, nf=65, nm=5, ny=24, nx=40):
    rng = np.random.default_rng(1)
    St = np.linspace(0, 1, nf)
    L = np.sort(rng.random((nf, nm)), axis=1)[:, ::-1] + 0.1
    P = (rng.standard_normal((nf, ny, nx, nm)) + 1j * rng.standard_normal((nf, ny, nx, nm))).astype(np.complex64)
    xv, yv = np.linspace(0, 4, nx), np.linspace(-1, 1, ny)
    x, y = np.meshgrid(xv, yv)
    # chunks span every frequency, as MATLAB writes some large files
    write(path, St, L, P, x, y, np.ones((ny, nx)), {"D": 10.0, "fps": 1e5, "nfft": 128},
          chunks=(nm, nx, 4, nf))
    return P


def h5_mode(path, i, m):
    with h5py.File(path, "r") as f:
        raw = f["P"][m, :, :, i]                   # [x, y]
    return (raw["real"] + 1j * raw["imag"]).T      # [y, x]


def wait(app, cond, timeout=60):
    t0 = time.time()
    while not cond():
        app.processEvents()
        time.sleep(0.01)
        if time.time() - t0 > timeout:
            raise TimeoutError


def main(out):
    os.makedirs(out, exist_ok=True)
    cache = os.path.join(out, "cache")
    os.makedirs(cache, exist_ok=True)
    for n in os.listdir(cache):
        os.remove(os.path.join(cache, n))
    path = os.path.join(out, "Chunked_All_Freq_NPR_30.mat")
    make(path)
    data.TRANSPOSE_ABOVE = 0                       # take the cache path for this small file
    data.set_transpose_cache_dir(cache)

    # ---- data level
    s = data.SPODFile(path)
    assert s.uses_mode_cache and s.cached_modes == [] and s.wanted_modes == {0, 1}
    a = s.mode_at(7, 0)
    assert s.cached_modes == [0, 1], s.cached_modes
    assert np.allclose(a, h5_mode(path, 7, 0)) and np.allclose(s.mode_at(30, 1), h5_mode(path, 30, 1))
    files = sorted(n for n in os.listdir(cache) if n.endswith(".bin"))
    print("first build:", files, f"{s.last_build_s:.2f}s")
    assert len(files) == 2 and files[0].endswith("_m1.bin") and files[1].endswith("_m2.bin")
    assert np.allclose(s.mode_at(12, 3), h5_mode(path, 12, 3))       # builds only mode 4
    assert s.cached_modes == [0, 1, 3]
    s.close()
    s = data.SPODFile(path)                        # reopening finds the existing files
    assert s.cached_modes == [0, 1, 3], s.cached_modes
    s.close()
    for n in os.listdir(cache):
        os.remove(os.path.join(cache, n))

    # ---- viewer: asks before caching mode 3, honours each answer
    from spodviewer.app import MainWindow
    app = QtWidgets.QApplication.instance() or QtWidgets.QApplication(sys.argv)
    w = MainWindow(settings_name="SPODViewer-test")
    data.set_transpose_cache_dir(cache)            # MainWindow restored the saved folder
    w.show()
    w.open_file(path)
    wait(app, lambda: not w._waiting)
    print("opened; cached", w.spod.cached_modes, "labels",
          [w.mode_combo.itemText(i) for i in range(w.mode_combo.count())])
    assert w.spod.cached_modes == [0, 1]
    assert w.mode_combo.itemText(2) == "3 (not cached)"

    asked = []
    answers = iter(["", "one", "all"])

    def answer(m, text, n_rest):
        asked.append((m, n_rest))
        return next(answers)
    w._ask_cache_mode = answer

    w._set_mode(1)                                 # cached: no question
    assert w.mode == 1 and not asked
    w._set_mode(2)                                 # cancel: stays on mode 2
    assert asked == [(2, 3)] and w.mode == 1 and w.mode_combo.currentIndex() == 1
    w._set_mode(2)                                 # cache this mode only
    wait(app, lambda: not w._waiting)
    assert w.spod.cached_modes == [0, 1, 2] and w.mode == 2
    assert np.allclose(w._base, h5_mode(path, w.idx, 2)[::1, ::1])
    w._set_mode(3)                                 # cache all remaining (modes 4 and 5)
    wait(app, lambda: not w._waiting)
    assert w.spod.cached_modes == [0, 1, 2, 3, 4], w.spod.cached_modes
    w._set_mode(4)                                 # already cached by "all": no question
    assert len(asked) == 3 and w.mode == 4
    print("questions:", asked, "labels", [w.mode_combo.itemText(i) for i in range(w.mode_combo.count())])
    w.close()
    print("OK")


if __name__ == "__main__":
    main(sys.argv[1])

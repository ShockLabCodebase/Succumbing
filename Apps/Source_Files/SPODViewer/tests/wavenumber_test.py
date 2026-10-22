"""Checks of the wavenumber filter and of the mode cache size limit (no data or display needed).

Usage: python tests/wavenumber_test.py
"""

import os
import sys
import tempfile

sys.path.insert(0, os.path.join(os.path.dirname(__file__), ".."))

import numpy as np  # noqa: E402

from spodviewer import data  # noqa: E402
from spodviewer.data import (filter_wavenumbers, split_direction, wavenumber_spectrum,  # noqa: E402
                             wavenumber_weights)
from spodviewer.kspectrum import zeroed_intervals  # noqa: E402


def rms(a):
    return float(np.sqrt(np.mean(np.abs(a) ** 2)))


def main():
    # Two waves along x (in D): downstream e^{-i k1 x} and upstream e^{+i k2 x},
    # with a Gaussian envelope so the k peaks are clean. k > 0 must be downstream.
    x = np.linspace(0, 10, 400)
    env = np.exp(-((x - 5) / 2.5) ** 2)
    k1, k2 = 6.0, 2.0
    down = env * np.exp(-1j * k1 * x)
    up = env * np.exp(+1j * k2 * x)
    field = np.tile(down + up, (3, 1)).astype(np.complex64)

    k, F = wavenumber_spectrum(field, x)
    E = (np.abs(F) ** 2).sum(0)
    peaks = sorted(k[np.argsort(E)[-1:]].tolist() + [k[np.argmax(E * (k < 0))]])
    print(f"spectrum peaks at k = {peaks}")
    assert abs(peaks[0] + k2) < 0.1 and abs(peaks[1] - k1) < 0.1, peaks

    d = filter_wavenumbers(field, x, "downstream")
    u = filter_wavenumbers(field, x, "upstream")
    print(f"downstream error {rms(d[0] - down) / rms(down):.2e}, upstream {rms(u[0] - up) / rms(up):.2e}")
    assert rms(d[0] - down) / rms(down) < 0.02 and rms(u[0] - up) / rms(up) < 0.02
    assert np.allclose(d + u, field, atol=1e-5), "parts must add up to the field"
    assert np.allclose(split_direction(field, x, "downstream"), d), "split_direction unchanged"

    # bands: keep only the downstream peak; then several bands covering everything
    b = filter_wavenumbers(field, x, "bands", [(4.0, 8.0)])
    print(f"band 4..8 error {rms(b[0] - down) / rms(down):.2e}")
    assert rms(b[0] - down) / rms(down) < 0.02
    b2 = filter_wavenumbers(field, x, "bands", [(-1e9, 0.5), (0.5, 1e9)])
    assert np.allclose(b2, field, atol=1e-5)
    assert not filter_wavenumbers(field, x, "bands", []).any(), "no ranges keeps nothing"
    # flipped x gives the same physical result
    bf = filter_wavenumbers(field[:, ::-1], x[::-1], "bands", [(4.0, 8.0)])[:, ::-1]
    assert np.allclose(bf, b, atol=1e-5)

    w = wavenumber_weights(k, "bands", [(1.0, 2.0), (1.5, 3.0)])
    assert set(np.unique(w)) <= {0.0, 1.0}
    assert zeroed_intervals("bands", [(1, 2), (1.5, 3), (5, 6)], -10, 10) == [(-10, 1), (3, 5), (6, 10)]
    assert zeroed_intervals("bands", [], -10, 10) == [(-10, 10)]
    assert zeroed_intervals("downstream", [], -10, 10) == [(-10, 0.0)]
    assert zeroed_intervals("all", [(1, 2)], -10, 10) == []

    # cache size limit: clamped to 10..100 GB; lowering it evicts old files
    with tempfile.TemporaryDirectory() as tmp:
        data.set_transpose_cache_dir(tmp)
        data.set_transpose_cache_budget(5)
        assert data.transpose_cache_budget() == 10 * 2**30
        data.set_transpose_cache_budget(500)
        assert data.transpose_cache_budget() == 100 * 2**30
        data.set_transpose_cache_budget(42)
        assert data.transpose_cache_budget() == 42 * 2**30
        old = os.path.join(tmp, "a.bin")
        with open(old, "wb") as fh:
            fh.write(b"0" * 1000)
        data.TRANSPOSE_CACHE_BUDGET = 500           # bytes, to test eviction quickly
        data._evict_transpose_cache(tmp, keep="", need=0)
        assert not os.path.exists(old), "file over the limit should be evicted"
        data.set_transpose_cache_dir(None)
        data.set_transpose_cache_budget(15)
    print("OK")


if __name__ == "__main__":
    main()

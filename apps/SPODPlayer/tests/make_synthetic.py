"""Write small synthetic SPOD files laid out like MATLAB -v7.3 output, for testing sweeps.

Usage: python tests/make_synthetic.py <out_dir>
Creates Synthetic_Jet_NPR_<code>_Nt_20000_Nfft_1024_ovlp_50.mat for NPR 2.0 ... 4.0 with a
screech-like tone whose St falls with NPR, and a mode that is a downstream wave plus a
weaker upstream wave.
"""

import os
import sys

import h5py
import numpy as np


def write(path, St, L, P, x, y, im_mean, scalars):
    cdt = np.dtype([("real", "<f4"), ("imag", "<f4")])
    with h5py.File(path, "w", userblock_size=512) as f:
        def put(name, arr, cls):
            d = f.create_dataset(name, data=arr)
            d.attrs["MATLAB_class"] = np.bytes_(cls)
        put("St", St[:, None].T.T, "double")
        put("L", L.T, "double")                      # MATLAB [freq, mode] -> h5 [mode, freq]
        Pc = np.empty(P.shape[::-1], cdt)            # MATLAB [f, y, x, m] -> h5 [m, x, y, f]
        Pt = P.transpose(3, 2, 1, 0)
        Pc["real"], Pc["imag"] = Pt.real, Pt.imag
        d = f.create_dataset("P", data=Pc, chunks=(P.shape[3], 16, P.shape[1], 1))
        d.attrs["MATLAB_class"] = np.bytes_("single")
        put("x", x.T, "double")
        put("y", y.T, "double")
        put("im_mean", im_mean.T.astype(np.float32), "single")
        for k, v in scalars.items():
            put(k, np.array([[v]], float), "double")


def main(out):
    os.makedirs(out, exist_ok=True)
    nf, nm, ny, nx = 257, 3, 40, 120
    fps, nfft = 100000.0, 512
    f = np.arange(nf) * fps / nfft
    xv = np.linspace(-0.2, 8, nx)
    yv = np.linspace(-1.5, 1.5, ny)
    x, y = np.meshgrid(xv, yv)
    rng = np.random.default_rng(0)
    for code in ("20", "25", "30", "35", "40"):
        npr = int(code) / 10
        St_peak = 0.75 - 0.12 * (npr - 2)
        St = f * 0.01 / 300
        L = np.empty((nf, nm))
        for m in range(nm):
            L[:, m] = 1e5 * (St + 0.05) ** -1.5 / (m + 1) * (1 + 0.1 * rng.random(nf))
        L[:, 0] += 3e7 * np.exp(-0.5 * ((St - St_peak) / 0.006) ** 2)
        L[:, 0] += 3e6 * np.exp(-0.5 * ((St - 2 * St_peak) / 0.006) ** 2)
        P = np.zeros((nf, ny, nx, nm), np.complex64)
        env = np.exp(-(y / 0.6) ** 2) * np.clip(x, 0, None) * np.exp(-x / 4)
        for i in range(nf):
            k = 2 * np.pi * max(St[i], 0.02) / 0.6
            P[i, :, :, 0] = env * (np.exp(-1j * k * x) + 0.3 * np.exp(1j * 1.5 * k * x))
            P[i, :, :, 1] = env * np.exp(-1j * 0.8 * k * x) * y
            P[i, :, :, 2] = rng.standard_normal((ny, nx)) * 0.01
        im_mean = 1000 + 300 * np.cos(2 * np.pi * x / (0.8 * npr)) * np.exp(-(y / 0.5) ** 2)
        name = f"Synthetic_Jet_NPR_{code}_Nt_20000_Nfft_{nfft}_ovlp_50.mat"
        write(os.path.join(out, name), St, L, P, x, y, im_mean,
              {"NPR": int(code), "D": 10.0, "fps": fps, "nfft": nfft, "overlap": 50,
               "n_snapshots": 20000})
        print(name)


if __name__ == "__main__":
    main(sys.argv[1])

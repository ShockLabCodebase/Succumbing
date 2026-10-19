"""Reading SPOD result files written by the Shock Lab MATLAB scripts.

The files come from ``SPOD_Analysis.m`` (and older variants of it). MATLAB
``-v7.3`` files are HDF5 and are read lazily with h5py; older ``-v7`` files are
loaded whole with scipy. In MATLAB the arrays are

    P  [freq, y, x, mode]   complex single   SPOD modes
    L  [freq, mode]         double           SPOD eigenvalues
    St, f  [freq]                            Strouhal number, frequency (Hz)
    x, y   [y, x]                            grids, normalised by the diameter
    im_mean [y, x]                           time-mean image

HDF5 stores MATLAB arrays with their dimensions reversed, so h5py sees P as
[mode, x, y, freq] and the grids as [x, y]. Everything returned from this
module uses MATLAB ordering with y as rows and x as columns.
"""

from __future__ import annotations

import hashlib
import os
import re
import shutil
import tempfile
import threading
from collections import OrderedDict
from dataclasses import dataclass, field

import numpy as np

try:
    import h5py
except ImportError:  # pragma: no cover
    h5py = None

# Names used across the group's scripts for the same quantity. The first one
# found is used for scaling; all found are shown in the info panel.
DIAMETER_NAMES = ["D", "D_e", "De", "D_eff", "Deff", "D_j", "Dj"]
MACH_NAMES = ["M", "M_j", "Mj", "current_M", "current_Mj", "M_a", "Ma", "current_Ma"]
NPR_NAMES = ["NPR", "current_NPR"]
SYMMETRY_NAMES = ["sym_type", "symmetry_type"]

# Filename tokens, e.g. "_NPR_29_" -> NPR 2.9, "_Mj_0835_" -> Mj 0.835.
_TOKEN_RE = re.compile(r"_(NPR|Mj|M_j|Ma|M_a|M)_(\d+)(?=_|\.|$)")
_SD_RE = re.compile(r"_sD_(\d+)(?=_|\.|$)")


def decode_code(text: str) -> float:
    """Decode the group's decimal-free filename code: first digit is units.

    "29" -> 2.9, "0835" -> 0.835, "15" -> 1.5, "3" -> 3.
    """
    text = text.strip()
    if not text.isdigit():
        return float(text)
    return int(text) / 10 ** (len(text) - 1)


def decode_saved_value(value: float, kind: str) -> float:
    """Decode a number saved in a file, which may be the raw integer code.

    Values that are not whole numbers are already physical. For whole numbers
    the leading zero of the code may have been lost (Mj_0835 is saved as 835),
    so the decoded value is checked against a plausible range.
    """
    if value is None or not np.isfinite(value):
        return value
    if abs(value - round(value)) > 1e-9 or value < 10:
        return float(value)
    digits = str(int(round(value)))
    decoded = int(digits) / 10 ** (len(digits) - 1)
    limit = 5.0 if kind == "mach" else 10.0
    if decoded >= limit:
        decoded = int(digits) / 10 ** len(digits)
    return decoded


@dataclass
class FlowParam:
    name: str          # name as found ("Mj", "NPR", "current_M", ...)
    raw: float | str   # raw value/code as saved or as in the filename
    value: float       # decoded physical value
    source: str        # "file" or "filename"

    def label(self) -> str:
        raw = self.raw
        if isinstance(raw, float) and raw.is_integer():
            raw = int(raw)
        if f"{raw}" == f"{self.value:g}":
            return f"{self.name} {self.value:g}"
        return f"{self.name} {raw} ({self.value:g})"


@dataclass
class SPODInfo:
    path: str
    n_freq: int
    n_modes: int          # modes stored in P
    n_modes_L: int        # modes stored in L
    ny: int
    nx: int
    nfft: float | None = None
    overlap: float | None = None
    n_snapshots: float | None = None
    fps: float | None = None
    diameter: tuple[str, float] | None = None       # (name, mm)
    diameters: dict = field(default_factory=dict)  # every diameter found
    flow: list[FlowParam] = field(default_factory=list)
    sym_type: str | None = None
    length_label: str = "D"
    view_label: str = "y"
    lazy: bool = True
    p_layout: str = ""

    @property
    def name(self) -> str:
        return os.path.basename(self.path)

    @property
    def nozzle_code(self) -> FlowParam | None:
        return self.flow[0] if self.flow else None


def _to_str(arr) -> str:
    a = np.asarray(arr)
    if a.dtype.kind in "US":
        return str(a.ravel()[0]) if a.size else ""
    try:
        return "".join(chr(int(c)) for c in a.ravel())
    except Exception:
        return str(a)


def _scalar(v):
    a = np.asarray(v)
    if a.dtype.kind in "fiu" and a.size >= 1:
        return float(a.ravel()[0])
    return None


def parse_filename(name: str) -> list[FlowParam]:
    out = []
    for key, digits in _TOKEN_RE.findall(name):
        kind = "npr" if key == "NPR" else "mach"
        out.append(FlowParam(key, digits, decode_code(digits), "filename"))
        _ = kind
    return out


# Tokens that are counts rather than decimal-free codes.
_INT_TOKENS = {"Nt", "Nfft", "ovlp", "nWin", "file", "Half"}
_SWEEP_RE = re.compile(r"(?:^|_)([A-Za-z][A-Za-z]*)_(\d+)(?=_|\.|$)")
# Preferred order when several tokens vary across a set of files.
SWEEP_PRIORITY = ["NPR", "Mj", "M_j", "M", "Ma", "M_a", "hD", "zD", "sD", "h", "z"]


def sweep_tokens(name: str) -> dict[str, tuple[str, float]]:
    """Numeric filename tokens, e.g. {'NPR': ('29', 2.9), 'zD': ('30', 3.0), 'Nfft': ('4096', 4096)}."""
    stem = os.path.splitext(os.path.basename(name))[0]
    out = {}
    for key, digits in _SWEEP_RE.findall(stem):
        if key in out:
            continue
        val = float(int(digits)) if key in _INT_TOKENS else decode_code(digits)
        out[key] = (digits, val)
    return out


def read_spectrum(path: str) -> dict:
    """Small arrays of a SPOD file (St, f, L, metadata) without touching P."""
    s = SPODFile(path, cache_mb=16)
    try:
        return {"path": path, "St": s.St.copy(), "f": None if s.f is None else s.f.copy(),
                "L": s.L.copy(), "info": s.info}
    finally:
        s.close()


# A chunked P whose chunks hold more than this many bytes of modes across their
# frequencies is rewritten frequency-major into a local cache before viewing.
TRANSPOSE_ABOVE = 512 * 2**20
# Total size kept in the cache folder; the least recently used files go first.
# The viewer also empties the folder when it exits (clear_transpose_cache).
TRANSPOSE_CACHE_BUDGET = 15 * 2**30


_cache_dir: str | None = None     # set by the viewer from its settings
_used_dirs: set[str] = set()       # every folder used this session, emptied on exit


def default_transpose_cache_dir() -> str:
    base = os.environ.get("LOCALAPPDATA") or tempfile.gettempdir()
    return os.path.join(base, "SPODViewer", "cache")


def transpose_cache_dir() -> str:
    return _cache_dir or default_transpose_cache_dir()


def set_transpose_cache_dir(folder: str | None):
    """Use `folder` for new cache files (None: the default under LOCALAPPDATA)."""
    global _cache_dir
    _used_dirs.add(transpose_cache_dir())
    _cache_dir = os.path.normpath(folder) if folder else None


def _transpose_cache_path(path: str, shape) -> str:
    st = os.stat(path)
    key = f"{os.path.normcase(os.path.abspath(path))}|{st.st_size}|{st.st_mtime_ns}|{tuple(shape)}"
    stem = os.path.splitext(os.path.basename(path))[0][:60]
    digest = hashlib.sha1(key.encode()).hexdigest()[:12]
    return os.path.join(transpose_cache_dir(), f"{stem}_{digest}.bin")


def _is_cache_file(name: str) -> bool:
    return name.endswith(".bin") or name.endswith(".part")


def transpose_cache_size() -> int:
    folder = transpose_cache_dir()
    if not os.path.isdir(folder):
        return 0
    return sum(os.path.getsize(os.path.join(folder, n)) for n in os.listdir(folder) if _is_cache_file(n))


def clear_transpose_cache():
    """Delete every cache file not held open (e.g. by another viewer window).

    Covers the current folder and any folder used earlier this session. Only
    files the viewer writes (.bin, .part) are touched, never the folder itself.
    """
    for folder in _used_dirs | {transpose_cache_dir()}:
        if not os.path.isdir(folder):
            continue
        for name in os.listdir(folder):
            if _is_cache_file(name):
                try:
                    os.remove(os.path.join(folder, name))
                except OSError:
                    pass


def _evict_transpose_cache(folder: str, keep: str, need: int):
    """Delete the oldest cache files until `need` more bytes fit in the budget."""
    files = []
    for name in os.listdir(folder):
        p = os.path.join(folder, name)
        if p == keep or not _is_cache_file(name):
            continue
        try:
            st = os.stat(p)
        except OSError:
            continue
        files.append((st.st_atime if name.endswith(".bin") else 0, st.st_size, p))
    total = sum(f[1] for f in files)
    for _, size, p in sorted(files):
        if total + need <= TRANSPOSE_CACHE_BUDGET:
            break
        try:
            os.remove(p)
            total -= size
        except OSError:      # still open in another viewer window
            pass


class _LRU:
    def __init__(self, budget_bytes: int):
        self.budget = budget_bytes
        self.items: OrderedDict[int, np.ndarray] = OrderedDict()
        self.nbytes = 0
        self.lock = threading.Lock()

    def get(self, key):
        with self.lock:
            if key in self.items:
                self.items.move_to_end(key)
                return self.items[key]
        return None

    def __contains__(self, key):
        with self.lock:
            return key in self.items

    def put(self, key, value: np.ndarray):
        with self.lock:
            if key in self.items:
                return
            self.items[key] = value
            self.nbytes += value.nbytes
            while self.nbytes > self.budget and len(self.items) > 1:
                _, old = self.items.popitem(last=False)
                self.nbytes -= old.nbytes

    def clear(self):
        with self.lock:
            self.items.clear()
            self.nbytes = 0


class SPODFile:
    """A SPOD result file. Small arrays are read on open; P is read per frequency."""

    def __init__(self, path: str, cache_mb: int = 1024):
        self.path = path
        self.cache = _LRU(cache_mb * 2**20)
        self._io_lock = threading.Lock()
        self._h5 = None
        self._P_mem = None
        self._mm_path = None     # frequency-major cache file, when P needs one
        self._P_mm = None
        self._cancel = False
        self.progress = None     # optional callable(fraction) while building the cache
        if h5py is not None and h5py.is_hdf5(path):
            self._open_h5(path)
        else:
            self._open_scipy(path)
        self._finish_info()

    # ------------------------------------------------------------------ open
    def _open_h5(self, path):
        f = h5py.File(path, "r")
        self._h5 = f
        if "P" not in f or "L" not in f or "St" not in f:
            missing = [k for k in ("P", "L", "St") if k not in f]
            f.close()
            raise ValueError(f"Not a SPOD result file: missing {', '.join(missing)}")

        def get(name):
            return f[name][()] if name in f else None

        self._scalars = {}
        for k in f.keys():
            ds = f[k]
            if isinstance(ds, h5py.Dataset) and ds.size <= 64:
                cls = ds.attrs.get("MATLAB_class", b"")
                cls = cls.decode() if isinstance(cls, bytes) else str(cls)
                if cls == "char":
                    self._scalars[k] = _to_str(ds[()])
                elif ds.dtype.kind in "fiu" and ds.size == 1:
                    self._scalars[k] = float(ds[()].ravel()[0])

        self.St = np.asarray(get("St"), dtype=float).ravel()
        fr = get("f")
        self.f = np.asarray(fr, dtype=float).ravel() if fr is not None else None
        self.L = np.asarray(get("L"), dtype=float).T          # [freq, mode]
        self.L = self._orient_L(self.L)
        x, y = get("x"), get("y")
        self.x = np.asarray(x, dtype=float).T if x is not None else None
        self.y = np.asarray(y, dtype=float).T if y is not None else None
        m = get("im_mean")
        self.im_mean = np.asarray(m, dtype=np.float32).T if m is not None else None

        P = f["P"]
        self._P = P
        shp = P.shape
        if len(shp) == 4:       # [mode, x, y, freq]
            n_modes, nx, ny, nf = shp
        elif len(shp) == 3:     # single mode saved: [x, y, freq]
            n_modes, (nx, ny, nf) = 1, shp
        else:
            raise ValueError(f"Unexpected P dimensions {shp}")
        self._p_ndim = len(shp)
        self.n_modes, self.nx, self.ny, self.n_freq = n_modes, nx, ny, nf
        self._complex = P.dtype.names is not None and "real" in P.dtype.names
        per_freq = n_modes * nx * ny * 8
        if P.chunks is None:
            self._layout = "contiguous"
            self._block = int(max(1, min(256, (256 * 2**20) // max(per_freq, 1))))
        elif self._p_ndim == 4 and nf > 1 and P.chunks[-1] * per_freq > TRANSPOSE_ABOVE:
            # Each chunk spans many frequencies, so reading one frequency means
            # decompressing the whole of P. Rewrite it once, frequency-major,
            # into a local cache file and read from that instead.
            self._layout = f"chunked {P.chunks}, frequency-major cache"
            self._block = 1
            self._mm_path = _transpose_cache_path(path, shp)
            if os.path.exists(self._mm_path):
                self._open_mm()
        else:
            self._layout = f"chunked {P.chunks}"
            # read as many frequencies as one chunk holds
            self._block = int(P.chunks[-1])

    def _open_scipy(self, path):
        from scipy.io import loadmat

        d = loadmat(path, squeeze_me=False)
        if "P" not in d:
            raise ValueError("Not a SPOD result file: missing P")
        self._scalars = {}
        for k, v in d.items():
            if k.startswith("__"):
                continue
            a = np.asarray(v)
            if a.dtype.kind in "US":
                self._scalars[k] = _to_str(a)
            elif a.dtype.kind in "fiu" and a.size == 1:
                self._scalars[k] = float(a.ravel()[0])
        self.St = np.asarray(d["St"], dtype=float).ravel()
        self.f = np.asarray(d["f"], dtype=float).ravel() if "f" in d else None
        self.L = self._orient_L(np.asarray(d["L"], dtype=float))
        self.x = np.asarray(d["x"], dtype=float) if "x" in d else None
        self.y = np.asarray(d["y"], dtype=float) if "y" in d else None
        self.im_mean = np.asarray(d["im_mean"], dtype=np.float32) if "im_mean" in d else None
        P = np.asarray(d["P"])
        if P.ndim == 3:
            P = P[..., None]
        # MATLAB order [freq, y, x, mode] -> internal [freq, mode, y, x]
        self._P_mem = np.ascontiguousarray(P.transpose(0, 3, 1, 2)).astype(np.complex64)
        self.n_freq, self.n_modes, self.ny, self.nx = self._P_mem.shape
        self._layout = "in memory (v7 file)"
        self._block = 1

    def _orient_L(self, L):
        L = np.atleast_2d(L)
        nf = self.St.size
        if L.shape[0] != nf and L.shape[1] == nf:
            L = L.T
        return L

    def _finish_info(self):
        s = self._scalars
        name = os.path.basename(self.path)

        diameters = {k: s[k] for k in DIAMETER_NAMES if isinstance(s.get(k), float)}
        diameter = None
        for k in DIAMETER_NAMES:
            if k in diameters:
                v = diameters[k]
                diameter = (k, v * 1e3 if v < 1 else v)   # m -> mm
                break

        flow: list[FlowParam] = []
        from_name = parse_filename(name)
        name_kinds = {"npr" if p.name == "NPR" else "mach" for p in from_name}
        flow.extend(from_name)
        for k in NPR_NAMES + MACH_NAMES:
            v = s.get(k)
            if isinstance(v, float):
                kind = "npr" if "NPR" in k else "mach"
                if kind in name_kinds:
                    continue   # the filename keeps leading zeros; trust it
                flow.append(FlowParam(k, v, decode_saved_value(v, kind), "file"))
                name_kinds.add(kind)

        sym = None
        for k in SYMMETRY_NAMES:
            if isinstance(s.get(k), str):
                sym = s[k].strip("_ ")
        if sym is None:
            m = re.match(r"Symmetry_Imposed_(antisymmetric|symmetric|SS|SA|AS|AA)_", name)
            if m:
                sym = m.group(1)

        upper = name.upper()
        length_label = "D_e" if any(t in upper for t in ("ONR", "ELLIP", "RECT")) or (
            diameter and diameter[0] in ("D_e", "De")) else "D"
        view = "y"
        if "_MINOR" in upper:
            view = "z"
        elif "_ANGLED" in upper:
            view = "z*"

        if self.x is None or self.y is None or self.x.shape != (self.ny, self.nx):
            self.x, self.y = np.meshgrid(np.arange(self.nx, dtype=float),
                                         np.arange(self.ny, dtype=float))
            length_label = "px"

        self.info = SPODInfo(
            path=self.path, n_freq=self.n_freq, n_modes=self.n_modes,
            n_modes_L=self.L.shape[1], ny=self.ny, nx=self.nx,
            nfft=s.get("nfft"), overlap=s.get("overlap"),
            n_snapshots=s.get("n_snapshots"), fps=s.get("fps"),
            diameter=diameter, diameters=diameters, flow=flow, sym_type=sym,
            length_label=length_label, view_label=view,
            lazy=self._h5 is not None, p_layout=self._layout,
        )
        if self.f is None and self.info.fps and self.info.nfft:
            self.f = np.arange(self.n_freq) * self.info.fps / self.info.nfft

    # ------------------------------------------------------------------ data
    @property
    def x_vec(self) -> np.ndarray:
        return self.x[0, :]

    @property
    def y_vec(self) -> np.ndarray:
        return self.y[:, 0]

    def is_cached(self, i: int) -> bool:
        return self._P_mem is not None or self._P_mm is not None or i in self.cache

    @property
    def needs_transpose(self) -> bool:
        """True until the frequency-major cache exists, for files that need one."""
        return self._mm_path is not None and self._P_mm is None

    def _open_mm(self):
        shape = (self.n_freq, self.n_modes, self.ny, self.nx)
        self._P_mm = np.memmap(self._mm_path, dtype=np.complex64, mode="r", shape=shape)

    def _build_transposed(self):
        """Rewrite P as [freq, mode, y, x] complex64 in the cache file."""
        shape = (self.n_freq, self.n_modes, self.ny, self.nx)
        need = int(np.prod(shape)) * 8
        # the cache folder may have been changed since the file was opened
        folder = transpose_cache_dir()
        self._mm_path = os.path.join(folder, os.path.basename(self._mm_path))
        _used_dirs.add(folder)
        os.makedirs(folder, exist_ok=True)
        if os.path.exists(self._mm_path):      # e.g. built by another viewer window
            self._open_mm()
            return
        _evict_transpose_cache(folder, keep=self._mm_path, need=need)
        free = shutil.disk_usage(folder).free
        if free < need + 2**30:
            raise OSError(
                f"This file's modes are stored with all frequencies in each chunk, so they "
                f"must be rewritten to a {need / 2**30:.1f} GB cache in {folder}, but only "
                f"{free / 2**30:.1f} GB is free there. Choose another folder under "
                f"Settings → Mode cache.")
        # one .part per process, so two viewer windows never write the same file
        part = f"{self._mm_path}.{os.getpid()}.part"
        mm = np.memmap(part, dtype=np.complex64, mode="w+", shape=shape)
        try:
            # Slabs along y (h5 axis 2), aligned to the chunks, about 32 MB each,
            # so progress is reported often.
            cy = self._P.chunks[2]
            per_row = self.n_modes * self.nx * self.n_freq * 8
            step = max(cy, (32 * 2**20 // max(per_row, 1)) // cy * cy)
            for y0 in range(0, self.ny, step):
                if self._cancel:
                    raise RuntimeError("cancelled")
                y1 = min(y0 + step, self.ny)
                raw = self._P[:, :, y0:y1, :]                 # [mode, x, y, nf]
                if self._complex:
                    arr = raw["real"].astype(np.complex64)
                    arr.imag = raw["imag"]
                else:
                    arr = raw.astype(np.complex64)
                mm[:, :, y0:y1, :] = arr.transpose(3, 0, 2, 1)   # [nf, mode, y, x]
                if self.progress is not None:
                    self.progress(y1 / self.ny)
            mm.flush()
        except BaseException:
            del mm
            try:
                os.remove(part)
            except OSError:
                pass
            raise
        del mm
        try:
            os.replace(part, self._mm_path)
        except OSError:
            if not os.path.exists(self._mm_path):
                raise
            os.remove(part)     # another window finished first and has it open
        self._open_mm()

    def modes_at(self, i: int) -> np.ndarray:
        """All modes at frequency index i, as complex64 [mode, y, x]."""
        if self._P_mem is not None:
            return self._P_mem[i]
        if self._mm_path is not None:
            if self._P_mm is None:
                with self._io_lock:
                    if self._P_mm is None:
                        self._build_transposed()
            # copy, so no view keeps the cache file mapped after close()
            return np.array(self._P_mm[i])
        hit = self.cache.get(i)
        if hit is not None:
            return hit
        with self._io_lock:
            hit = self.cache.get(i)
            if hit is not None:
                return hit
            b = self._block
            i0 = (i // b) * b
            i1 = min(i0 + b, self.n_freq)
            if self._p_ndim == 4:
                raw = self._P[:, :, :, i0:i1]          # [mode, x, y, nf]
            else:
                raw = self._P[:, :, i0:i1][None]
            if self._complex:
                arr = raw["real"].astype(np.complex64)
                arr.imag = raw["imag"]
            else:
                arr = raw.astype(np.complex64)
            arr = np.ascontiguousarray(arr.transpose(3, 0, 2, 1))  # [nf, mode, y, x]
            for j in range(i1 - i0):
                self.cache.put(i0 + j, arr[j].copy())
            return arr[i - i0]

    def peaks(self, mode: int = 0, n: int = 12, min_index: int = 3):
        """Most prominent peaks of log10 L for a mode, as frequency indices."""
        from scipy.signal import find_peaks

        L = self.L[:, mode]
        with np.errstate(divide="ignore", invalid="ignore"):
            logL = np.log10(np.where(L > 0, L, np.nan))
        logL = np.nan_to_num(logL, nan=np.nanmin(logL) if np.isfinite(logL).any() else 0)
        idx, props = find_peaks(logL, prominence=0.05)
        keep = idx >= min_index
        idx, prom = idx[keep], props["prominences"][keep]
        order = np.argsort(prom)[::-1][:n]
        return idx[order], prom[order]

    def cancel(self):
        """Stop a cache rewrite in progress; call before closing."""
        self._cancel = True

    def close(self):
        self._cancel = True
        self.cache.clear()
        with self._io_lock:      # wait for a cache rewrite to stop
            self._P_mm = None
        if self._h5 is not None:
            try:
                self._h5.close()
            except Exception:
                pass
            self._h5 = None


# ---------------------------------------------------------------- wavenumber
def split_direction(field: np.ndarray, x_vec: np.ndarray, direction: str,
                    pad_factor: int = 4) -> np.ndarray:
    """Keep only downstream- or upstream-travelling parts of a complex mode.

    SPOD modes at frequency +f multiply exp(+i 2 pi f t) (MATLAB's FFT sign
    convention), so a wave travelling in +x has the form exp(-i k x) with
    k > 0. Its FFT along x (kernel exp(-i k' x)) peaks at k' = -k, so
    downstream keeps negative FFT wavenumbers and upstream keeps positive ones.
    The k = 0 and Nyquist bins are split equally so the two parts sum to the
    original field.

    field: complex [..., nx] with x along the last axis.
    """
    if direction not in ("downstream", "upstream"):
        return field
    flip = x_vec.size > 1 and x_vec[-1] < x_vec[0]
    if flip:
        field = field[..., ::-1]
    nx = field.shape[-1]
    nfft = pad_factor * int(2 ** np.ceil(np.log2(max(nx, 2))))
    F = np.fft.fft(field, nfft, axis=-1)
    k = np.fft.fftfreq(nfft)
    w = np.where(k < 0, 1.0, 0.0) if direction == "downstream" else np.where(k > 0, 1.0, 0.0)
    w[0] = 0.5
    w[nfft // 2] = 0.5
    out = np.fft.ifft(F * w, axis=-1)[..., :nx].astype(np.complex64)
    if flip:
        out = out[..., ::-1]
    return out

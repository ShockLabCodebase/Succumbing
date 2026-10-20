"""Waterfall of SPOD spectra across a set of cases (NPR, height, ...).

Each case contributes one column: log10 of the chosen mode's eigenvalue against St
(or another frequency axis saved in the files, such as f or St_SRP).
Clicking a point opens that case at that frequency in the main viewer.
"""

from __future__ import annotations

import os
import threading

import numpy as np
import pyqtgraph as pg
import pyqtgraph.exporters  # noqa: F401
from PySide6 import QtCore, QtGui, QtWidgets
from PySide6.QtCore import Qt

from . import colormaps
from .data import SWEEP_PRIORITY, read_spectrum, sweep_tokens

SCALINGS = [
    ("log₁₀ λ", "abs"),
    ("log₁₀ (λ / max λ per case)", "max"),
    ("log₁₀ (λ / Σ λ over St, per case)", "sum"),
    ("λₙ / Σ modes (fraction at each St)", "frac"),
]

# Readable axis labels for common sweep tokens.
TOKEN_LABELS = {
    "NPR": "NPR", "Mj": "<i>M</i><sub>j</sub>", "M_j": "<i>M</i><sub>j</sub>", "M": "<i>M</i>",
    "Ma": "<i>M</i><sub>a</sub>", "M_a": "<i>M</i><sub>a</sub>",
    "hD": "<i>h</i>/<i>D</i>", "zD": "<i>z</i>/<i>D</i>", "sD": "<i>s</i>/<i>D</i>",
}


_PROCESSING_TOKENS = {"Nt", "Nfft", "ovlp", "nWin", "file", "Half"}


class _Loader(QtCore.QObject):
    progress = QtCore.Signal(int, str)
    done = QtCore.Signal(list, list)

    def __init__(self, paths):
        super().__init__()
        self.paths = paths
        self.cancel = False

    def run(self):
        ok, bad = [], []
        for i, p in enumerate(self.paths):
            if self.cancel:
                break
            self.progress.emit(i, os.path.basename(p))
            try:
                ok.append(read_spectrum(p))
            except Exception as exc:
                bad.append((p, str(exc)))
        self.done.emit(ok, bad)


class WaterfallWindow(QtWidgets.QMainWindow):
    def __init__(self, viewer, paths: list[str]):
        super().__init__()
        self.viewer = viewer
        self.cases: list[dict] = []
        self.order = np.array([], int)
        self.xvals = np.array([])
        self.St = np.array([])     # y-axis values of the rows of Z (St unless changed)
        self.Z = None
        self._sel = None           # (column, frequency index in that case) last opened
        self._yscale = 1.0
        self._y_top = 1.0          # largest y value over the cases, for keeping "max" in proportion
        self.setWindowTitle(f"SPOD waterfall — {len(paths)} files")
        if not viewer.windowIcon().isNull():
            self.setWindowIcon(viewer.windowIcon())
        self._build()
        self.resize(1100, 760)
        self._load(paths)

    # ------------------------------------------------------------------ UI
    def _build(self):
        self.plot = pg.PlotWidget()
        self.plot.setLabel("left", "<i>St</i>")
        self.mesh = pg.PColorMeshItem(edgecolors=None, antialiasing=False)
        self.plot.addItem(self.mesh)
        self.cbar = pg.ColorBarItem(interactive=True, width=18, colorMap=colormaps.get("CMRmap"))
        self.cbar.setImageItem(self.mesh, insert_in=self.plot.getPlotItem())
        self.marker = pg.ScatterPlotItem(size=14, symbol="+", pen=pg.mkPen("#e67e22", width=2.5),
                                         brush=None)
        self.marker.setZValue(20)
        self.plot.addItem(self.marker)
        self.case_lines: list[pg.InfiniteLine] = []

        self.param_combo = QtWidgets.QComboBox()
        self.param_combo.setMinimumContentsLength(18)
        self.param_combo.setSizeAdjustPolicy(QtWidgets.QComboBox.AdjustToMinimumContentsLengthWithIcon)
        self.y_combo = QtWidgets.QComboBox()
        self.y_combo.setToolTip("Frequency vectors found in every file, with one value per frequency")
        self.mode_spin = QtWidgets.QSpinBox(minimum=1, maximum=1, value=1)
        self.scale_combo = QtWidgets.QComboBox()
        for label, key in SCALINGS:
            self.scale_combo.addItem(label, key)
        self.cmap_combo = QtWidgets.QComboBox()
        self.cmap_combo.addItems([n for n in colormaps.names() if colormaps.CATALOGUE[n][0] != "cyclic"])
        self.cmap_combo.setCurrentText("CMRmap")
        self.st_max = QtWidgets.QDoubleSpinBox(decimals=2, minimum=0.01, maximum=100, singleStep=0.1,
                                               value=1.5, keyboardTracking=False)
        self.chk_lines = QtWidgets.QCheckBox("Case lines")
        self.chk_lines.setChecked(True)
        self.btn_auto = QtWidgets.QPushButton("Auto contrast")
        self.btn_png = QtWidgets.QPushButton("Save figure…")
        self.btn_csv = QtWidgets.QPushButton("Export CSV…")

        row = QtWidgets.QHBoxLayout()
        self.st_max_label = QtWidgets.QLabel("St max")
        for lab, w in (("x-axis", self.param_combo), ("y-axis", self.y_combo), ("Mode", self.mode_spin),
                       ("Colour", self.scale_combo), ("Map", self.cmap_combo),
                       (self.st_max_label, self.st_max)):
            row.addWidget(lab if isinstance(lab, QtWidgets.QLabel) else QtWidgets.QLabel(lab))
            row.addWidget(w)
            row.addSpacing(6)
        row.addWidget(self.chk_lines)
        row.addStretch(1)
        row.addWidget(self.btn_auto)
        row.addWidget(self.btn_png)
        row.addWidget(self.btn_csv)

        self.case_list = QtWidgets.QListWidget()
        self.case_list.setMaximumWidth(420)
        self.case_list.setToolTip("Cases in x-axis order. Double-click to open at the selected St.")
        self.info = QtWidgets.QLabel("Click the waterfall to open that case and frequency in the viewer.")

        split = QtWidgets.QSplitter(Qt.Horizontal)
        split.addWidget(self.plot)
        split.addWidget(self.case_list)
        split.setStretchFactor(0, 4)
        split.setStretchFactor(1, 1)
        split.setSizes([800, 280])

        central = QtWidgets.QWidget()
        lay = QtWidgets.QVBoxLayout(central)
        lay.addLayout(row)
        lay.addWidget(split, 1)
        lay.addWidget(self.info)
        self.setCentralWidget(central)
        self.hover = QtWidgets.QLabel("")
        self.statusBar().addWidget(self.hover, 1)

        self.param_combo.currentIndexChanged.connect(lambda _: self._arrange())
        self.y_combo.currentIndexChanged.connect(lambda _: self._y_changed())
        self.mode_spin.valueChanged.connect(lambda _: self._compute())
        self.scale_combo.currentIndexChanged.connect(lambda _: self._compute())
        self.cmap_combo.currentTextChanged.connect(lambda n: self.cbar.setColorMap(colormaps.get(n)))
        self.st_max.valueChanged.connect(lambda _: self._set_ranges())
        self.chk_lines.toggled.connect(lambda _: self._draw_case_lines())
        self.btn_auto.clicked.connect(self._auto_levels)
        self.btn_png.clicked.connect(self._save_png)
        self.btn_csv.clicked.connect(self._save_csv)
        self.plot.scene().sigMouseClicked.connect(self._clicked)
        self.plot.scene().sigMouseMoved.connect(self._moved)
        self.case_list.itemDoubleClicked.connect(self._list_open)

    # ------------------------------------------------------------------ loading
    def _load(self, paths):
        self._prog = QtWidgets.QProgressDialog("Reading spectra…", "Cancel", 0, len(paths), self)
        self._prog.setWindowModality(Qt.WindowModal)
        self._prog.setMinimumDuration(300)
        self._loader = _Loader(paths)
        self._loader.progress.connect(lambda i, n: (self._prog.setValue(i), self._prog.setLabelText(f"Reading {n}")))
        self._loader.done.connect(self._loaded)
        self._prog.canceled.connect(lambda: setattr(self._loader, "cancel", True))
        self._thread = threading.Thread(target=self._loader.run, daemon=True)
        self._thread.start()

    def _loaded(self, ok, bad):
        self._prog.close()
        if bad:
            QtWidgets.QMessageBox.warning(
                self, "Some files were skipped",
                "\n\n".join(f"{os.path.basename(p)}:\n{e}" for p, e in bad[:10]))
        if not ok:
            self.info.setText("No SPOD files could be read.")
            return
        self.cases = ok
        for c in ok:
            c["tokens"] = sweep_tokens(c["path"])
            # filename tokens first; fall back to values saved in the file
            for p in c["info"].flow:
                c["tokens"].setdefault(p.name, (str(p.raw), p.value))
        self.mode_spin.setMaximum(min(c["L"].shape[1] for c in ok))
        St_hi = max(c["St"].max() for c in ok)
        self.st_max.setMaximum(St_hi)
        # candidate y-axes: frequency vectors present in every file (St first)
        self.y_combo.blockSignals(True)
        self.y_combo.clear()
        common = [k for k in ok[0]["axes"] if all(k in c["axes"] for c in ok)]
        # (the dicts arrive key-sorted through the Qt signal, so order them here)
        for k in sorted(common, key=lambda k: (k != "St", k != "f", k.lower())):
            self.y_combo.addItem(k, k)
        self.y_combo.blockSignals(False)
        self._y_top = St_hi
        # candidate x-axes: tokens present in every file that vary between files
        common = set.intersection(*(set(c["tokens"]) for c in ok))
        varying = [k for k in common
                   if len({c["tokens"][k][1] for c in ok}) > 1]
        varying.sort(key=lambda k: (SWEEP_PRIORITY.index(k) if k in SWEEP_PRIORITY else 99, k))
        physical = [k for k in varying if k not in _PROCESSING_TOKENS]
        processing = [k for k in varying if k in _PROCESSING_TOKENS]

        def add(k):
            vals = sorted({c["tokens"][k][1] for c in ok})
            self.param_combo.addItem(f"{k}  ({vals[0]:g} … {vals[-1]:g})", k)

        self.param_combo.blockSignals(True)
        self.param_combo.clear()
        for k in physical:
            add(k)
        self.param_combo.addItem("File order (as selected)", "__index__")
        self.param_combo.addItem("File name order", "__name__")
        for k in processing:     # SPOD settings: offered, never the default
            add(k)
        self.param_combo.blockSignals(False)
        self.setWindowTitle(f"SPOD waterfall — {len(ok)} cases")
        self._arrange()

    # ------------------------------------------------------------------ data
    def _param(self) -> str:
        return self.param_combo.currentData() or "__index__"

    def _y_key(self) -> str:
        return self.y_combo.currentData() or "St"

    def _y(self, c) -> np.ndarray:
        """The chosen frequency axis of a case, in display units."""
        return c["axes"].get(self._y_key(), c["St"]) * self._yscale

    def _y_label(self, html=True) -> str:
        key = self._y_key()
        if key.lower().startswith("f"):
            unit = "kHz" if self._yscale == 1e-3 else "Hz"
            name = f"<i>{key}</i>" if html else key
            return f"{name} ({unit})"
        if not html:
            return key
        base, _, sub = key.partition("_")
        return f"<i>{base}</i>" + (f"<sub>{sub}</sub>" if sub else "")

    def _y_changed(self):
        """Switch the y-axis, keeping "max" at the same fraction of the range."""
        if not self.cases:
            return
        frac = self.st_max.value() / self._y_top if self._y_top else 1.0
        key = self._y_key()
        top = max(c["axes"][key].max() for c in self.cases)
        self._yscale = 1e-3 if key.lower().startswith("f") and top > 1e4 else 1.0
        top *= self._yscale
        self._y_top = top
        decimals = int(np.clip(2 - np.floor(np.log10(top)), 0, 4)) if top > 0 else 2
        self.st_max.blockSignals(True)
        self.st_max.setDecimals(decimals)
        self.st_max.setMinimum(10.0 ** -decimals)
        self.st_max.setMaximum(top)
        self.st_max.setSingleStep(10.0 ** (np.floor(np.log10(top)) - 1) if top > 0 else 0.1)
        self.st_max.setValue(min(top, max(frac * top, 10.0 ** -decimals)))
        self.st_max.blockSignals(False)
        self.st_max_label.setText(f"{self._y_label(html=False).split(' (')[0]} max")
        self._compute()

    def _arrange(self):
        if not self.cases:
            return
        key = self._param()
        n = len(self.cases)
        if key == "__index__":
            xv = np.arange(1, n + 1, dtype=float)
        elif key == "__name__":
            names = [os.path.basename(c["path"]) for c in self.cases]
            ranks = np.argsort(np.argsort(names))
            xv = ranks.astype(float) + 1
        else:
            xv = np.array([c["tokens"][key][1] for c in self.cases])
        order = np.argsort(xv, kind="stable")
        self.order, self.xvals = order, xv[order]
        self._duplicate_x = len(np.unique(self.xvals)) < n
        if self._duplicate_x:
            # repeated values: space cases evenly, keep labels on the ticks
            self._xpos = np.arange(n, dtype=float)
        else:
            self._xpos = self.xvals.copy()
        label = {"__index__": "Case (file order)", "__name__": "Case (name order)"}.get(
            key, TOKEN_LABELS.get(key, key))
        self.plot.setLabel("bottom", label)
        ax = self.plot.getAxis("bottom")
        if self._duplicate_x or key in ("__index__", "__name__") or n <= 15:
            ax.setTicks([[(p, f"{v:g}") for p, v in zip(self._xpos, self.xvals)]])
        else:
            ax.setTicks(None)
        self.case_list.clear()
        for j in order:
            c = self.cases[j]
            tag = "" if key.startswith("__") else f"{key} {c['tokens'][key][1]:g}   "
            self.case_list.addItem(f"{tag}{os.path.basename(c['path'])}")
        self._compute()

    def _common_St(self):
        Sts = [self._y(self.cases[j]) for j in self.order]
        same = all(s.shape == Sts[0].shape and np.allclose(s, Sts[0], rtol=1e-6) for s in Sts)
        if same:
            return Sts[0], same
        d = min(np.median(np.diff(s)) for s in Sts)
        top = min(s.max() for s in Sts)
        return np.arange(0, top + d / 2, d), same

    def _compute(self):
        if not self.cases:
            return
        m = self.mode_spin.value() - 1
        how = self.scale_combo.currentData()
        St, same = self._common_St()
        cols = []
        for j in self.order:
            c = self.cases[j]
            L = c["L"]
            if how == "frac":
                v = L[:, m] / np.where(L.sum(1) > 0, L.sum(1), np.nan)
            else:
                v = L[:, m].copy()
                if how == "max":
                    v = v / v[1:].max()
                elif how == "sum":
                    v = v / np.trapezoid(v, self._y(c))
                v = np.log10(np.clip(v, 1e-300, None))
            if not same:
                v = np.interp(St, self._y(c), v, left=np.nan, right=np.nan)
            cols.append(v)
        Z = np.column_stack(cols)          # [St, case]
        if St.size and St[0] == 0:
            Z, St = Z[1:], St[1:]           # DC dominates log plots
        self.St, self.Z = St, Z
        self.plot.setLabel("left", self._y_label())
        label = self.scale_combo.currentText()
        if how != "frac":
            label = label.replace("λ", f"λ<sub>{m + 1}</sub>", 1)
        self.cbar.axis.setLabel(label)
        self._draw()

    # ------------------------------------------------------------------ drawing
    def _edges(self, centres):
        if centres.size == 1:
            return np.array([centres[0] - 0.5, centres[0] + 0.5])
        mid = (centres[1:] + centres[:-1]) / 2
        return np.concatenate([[centres[0] - (mid[0] - centres[0])], mid,
                               [centres[-1] + (centres[-1] - mid[-1])]])

    def _draw(self):
        xe = self._edges(self._xpos)
        ye = self._edges(self.St)
        X, Y = np.meshgrid(xe, ye)
        Z = np.nan_to_num(self.Z, nan=np.nanmin(self.Z))
        self.mesh.setData(X, Y, Z)
        self._auto_levels()
        self._draw_case_lines()
        self._set_ranges()
        self._update_marker()

    def _auto_levels(self):
        if self.Z is None:
            return
        sel = self.St <= self.st_max.value()
        z = self.Z[sel] if sel.any() else self.Z
        z = z[np.isfinite(z)]
        if not z.size:
            return
        if self.scale_combo.currentData() == "frac":
            lo, hi = 0.0, float(np.percentile(z, 99.8))
        else:
            lo, hi = float(np.percentile(z, 5)), float(np.max(z))
        self.cbar.setLevels((lo, hi))

    def _draw_case_lines(self):
        for ln in self.case_lines:
            self.plot.removeItem(ln)
        self.case_lines = []
        if not self.chk_lines.isChecked() or len(self._xpos) < 2:
            return
        for e in self._edges(self._xpos)[1:-1]:
            ln = pg.InfiniteLine(e, angle=90, pen=pg.mkPen((255, 255, 255, 90), width=1))
            self.plot.addItem(ln)
            self.case_lines.append(ln)

    def _set_ranges(self):
        if not self.St.size:
            return
        xe = self._edges(self._xpos)
        self.plot.setXRange(xe[0], xe[-1], padding=0)
        self.plot.setYRange(self.St[0], min(self.st_max.value(), self.St[-1]), padding=0)
        self._auto_levels()

    # ------------------------------------------------------------------ picking
    def _locate(self, scene_pos):
        vb = self.plot.getViewBox()
        if self.Z is None or not vb.sceneBoundingRect().contains(scene_pos):
            return None
        p = vb.mapSceneToView(scene_pos)
        xe = self._edges(self._xpos)
        col = int(np.searchsorted(xe, p.x()) - 1)
        if not 0 <= col < len(self._xpos) or p.y() < 0:
            return None
        row = int(np.argmin(np.abs(self.St - p.y())))
        return col, row, p

    def _moved(self, pos):
        hit = self._locate(pos)
        if hit is None:
            return
        col, row, _ = hit
        c = self.cases[self.order[col]]
        self.hover.setText(f"{self.xvals[col]:g}   {self._y_label(html=False)} {self.St[row]:.4g}   value {self.Z[row, col]:.3g}"
                           f"   {os.path.basename(c['path'])}")

    def _clicked(self, ev):
        if ev.button() != Qt.LeftButton:
            return
        hit = self._locate(ev.scenePos())
        if hit is None:
            return
        col, row, _ = hit
        # snap to the case's own St bins, nearest local maximum within a few bins
        c = self.cases[self.order[col]]
        St_c = self._y(c)
        i = int(np.argmin(np.abs(St_c - self.St[row])))
        if not (ev.modifiers() & Qt.ShiftModifier):
            m = self.mode_spin.value() - 1
            lo, hi = max(i - 3, 1), min(i + 4, St_c.size)
            i = lo + int(np.argmax(c["L"][lo:hi, m]))
        self._open(col, i)

    def _list_open(self, item):
        col = self.case_list.row(item)
        c = self.cases[self.order[col]]
        i = None
        if self._sel is not None and self._sel[1] is not None:
            target = self._y(self.cases[self.order[self._sel[0]]])[self._sel[1]]
            i = int(np.argmin(np.abs(self._y(c) - target)))
        self._open(col, i)

    def _open(self, col, i):
        c = self.cases[self.order[col]]
        self._sel = (col, i)
        self._update_marker()
        self.case_list.setCurrentRow(col)
        self.info.setText(f"Opened {os.path.basename(c['path'])}" + (
            f" at {self._y_label(html=False)} {self._y(c)[i]:.4g}" if i is not None else ""))
        self.viewer.show_case(c["path"], i, self.mode_spin.value() - 1, source=self)

    def _update_marker(self):
        if self._sel is None or self._sel[1] is None:
            self.marker.setData([], [])
            return
        col, i = self._sel
        self.marker.setData([self._xpos[col]], [self._y(self.cases[self.order[col]])[i]])

    def step_case(self, d):
        """Open the neighbouring case at the same frequency (called from the viewer)."""
        if self._sel is None or self._sel[1] is None:
            return
        target = self._y(self.cases[self.order[self._sel[0]]])[self._sel[1]]
        col = int(np.clip(self._sel[0] + d, 0, len(self.order) - 1))
        c = self.cases[self.order[col]]
        i = int(np.argmin(np.abs(self._y(c) - target)))
        self._open(col, i)

    # ------------------------------------------------------------------ export
    def _save_png(self):
        path, _ = QtWidgets.QFileDialog.getSaveFileName(self, "Save waterfall image",
                                                        "waterfall.png", "PNG (*.png)")
        if path:
            exp = pg.exporters.ImageExporter(self.plot.getPlotItem())
            exp.parameters()["width"] = max(1600, 2 * self.plot.width())
            exp.export(path)
            self.info.setText(f"Saved {path}")

    def _save_csv(self):
        path, _ = QtWidgets.QFileDialog.getSaveFileName(self, "Export waterfall", "waterfall.csv", "CSV (*.csv)")
        if not path:
            return
        head = self._y_label(html=False).replace(" ", "_") + "," + ",".join(f"{v:g}" for v in self.xvals)
        np.savetxt(path, np.column_stack([self.St, self.Z]), delimiter=",", header=head,
                   comments="", fmt="%.6g")
        with open(path, "a", encoding="utf-8") as fh:
            fh.write("# columns: " + "; ".join(os.path.basename(self.cases[j]["path"]) for j in self.order) + "\n")
        self.info.setText(f"Saved {path}")

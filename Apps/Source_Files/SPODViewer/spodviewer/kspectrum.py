"""Wavenumber spectrum of the shown mode, and the k ranges the main view keeps.

The mode on screen is Fourier-transformed along x (as for the wave-direction
split). The window shows |P̂(y, k)|² as a map and its sum over y as a line,
with grey over the wavenumbers that are being zeroed. The map's colour and the
line's y-axis can each be log or linear. The line sums over the y range of the
blue band on the map (all of y by default, reset when a new file is opened; the
rows left out are greyed), and the share kept, "Zoom to energy" and new ranges
follow that sum. With "Custom k ranges", each kept range is a pair of orange
edges that can be dragged, or typed in the table. k > 0 is a wave travelling downstream (+x); see data.split_direction.
"""

from __future__ import annotations

import os

import numpy as np
import pyqtgraph as pg
from PySide6 import QtCore, QtWidgets
from PySide6.QtCore import Qt

from . import colormaps
from .data import wavenumber_spectrum, wavenumber_weights

GREY = (110, 110, 110, 120)
EDGE = "#e67e22"
YEDGE = "#2980b9"    # the y band the line sums over
DECADES = 5          # dynamic range of the map and of "Zoom to energy"


def zeroed_intervals(direction: str, ranges, kmin: float, kmax: float) -> list[tuple[float, float]]:
    """Intervals of [kmin, kmax] that the direction or k ranges set to zero."""
    if direction == "downstream":
        return [(kmin, 0.0)]
    if direction == "upstream":
        return [(0.0, kmax)]
    if direction != "bands":
        return []
    kept = sorted((min(a, b), max(a, b)) for a, b in ranges)
    out, lo = [], kmin
    for a, b in kept:
        if a > lo:
            out.append((lo, min(a, kmax)))
        lo = max(lo, b)
        if lo >= kmax:
            break
    if lo < kmax:
        out.append((lo, kmax))
    return [(a, b) for a, b in out if b > a]


class KSpectrumWindow(QtWidgets.QWidget):
    def __init__(self, main):
        super().__init__(main, Qt.Window)
        self.main = main
        self.setWindowTitle("Wavenumber spectrum")
        self._key = None
        self.k = self.E = None             # sorted k and E(k)/max, E summed over the y band
        self._k_fft = self._E_fft = None    # the same in FFT order, for wavenumber_weights
        self._order = None                  # FFT order -> sorted k
        self._P2 = None                     # |P̂(y, k)|² / max, FFT order
        self._yc = None                     # y of each row of _P2
        self._limited = False               # the band leaves out some rows
        self._native_dk = 1.0
        self._klab = "<i>k</i>"
        # working copy while edges are dragged; handed to the main view when a drag ends
        self.ranges = [list(r) for r in main.k_ranges]
        self._edges: list[tuple[pg.LinearRegionItem, pg.LinearRegionItem]] = []   # (map, line)
        self._grey: list[tuple[pg.PlotWidget, pg.LinearRegionItem]] = []

        # ---- plots: map of |P̂(y, k)|² above, its sum over y below, k axes linked
        self.map = pg.PlotWidget()
        self.img = pg.ImageItem()
        self.img.setAutoDownsample(True)
        self.img.setColorMap(colormaps.get("CMRmap"))
        self.map.addItem(self.img)
        self.map.getAxis("left").enableAutoSIPrefix(False)
        self.yband = pg.LinearRegionItem(
            (0, 1), orientation="horizontal", brush=pg.mkBrush(0, 0, 0, 0),
            hoverBrush=pg.mkBrush(41, 128, 185, 30), pen=pg.mkPen(YEDGE, width=2),
            hoverPen=pg.mkPen("#1f618d", width=3))
        self.yband.setZValue(18)
        self.map.addItem(self.yband)
        self._ygrey = []                    # grey over the rows left out of the line, below and above
        for _ in range(2):
            g = pg.LinearRegionItem((0, 1), orientation="horizontal", movable=False,
                                    brush=pg.mkBrush(*GREY), pen=pg.mkPen(None))
            g.setZValue(10)
            g.setVisible(False)
            self.map.addItem(g)
            self._ygrey.append(g)
        self.line = pg.PlotWidget()
        self.line.setXLink(self.map)
        self.line.showGrid(x=True, y=True, alpha=0.2)
        self.line.setLabel("left", "Σ<sub><i>y</i></sub> |<i>P̂</i>|² / max")
        self.line.getAxis("left").enableAutoSIPrefix(False)
        self.curve = self.line.plot(pen=pg.mkPen("#1f3a93", width=1.5))
        for p in (self.map, self.line):
            z = pg.InfiniteLine(0, angle=90, pen=pg.mkPen((0, 0, 0, 140), style=Qt.DashLine))
            z.setZValue(15)
            p.addItem(z)
        self.split = QtWidgets.QSplitter(Qt.Vertical)
        self.split.addWidget(self.map)
        self.split.addWidget(self.line)
        self.split.setSizes([380, 260])

        # ---- controls
        self.dir_group = QtWidgets.QButtonGroup(self)
        dirbox = QtWidgets.QGroupBox("Wavenumbers kept")
        dl = QtWidgets.QVBoxLayout(dirbox)
        for i in range(len(main.dir_group.buttons())):
            rb = QtWidgets.QRadioButton(main.dir_group.button(i).text())
            self.dir_group.addButton(rb, i)
            dl.addWidget(rb)
        self.table = QtWidgets.QTableWidget(0, 2)
        self.table.setHorizontalHeaderLabels(["k min", "k max"])
        self.table.horizontalHeader().setSectionResizeMode(QtWidgets.QHeaderView.Stretch)
        self.table.verticalHeader().setVisible(False)
        self.table.setSelectionBehavior(QtWidgets.QAbstractItemView.SelectRows)
        self.btn_add = QtWidgets.QPushButton("Add")
        self.btn_add.setToolTip("Add a range around the strongest wavenumber not yet kept")
        self.btn_remove = QtWidgets.QPushButton("Remove")
        self.btn_remove.setToolTip("Remove the selected ranges (or the last one)")
        self.btn_clear = QtWidgets.QPushButton("Clear")
        rb_row = QtWidgets.QHBoxLayout()
        for w in (self.btn_add, self.btn_remove, self.btn_clear):
            rb_row.addWidget(w)
        rangebox = QtWidgets.QGroupBox("Custom k ranges")
        rl = QtWidgets.QVBoxLayout(rangebox)
        rl.addWidget(self.table, 1)
        rl.addLayout(rb_row)
        hint = QtWidgets.QLabel(
            "Drag the orange edges (or the band between them), or type the limits. "
            "Everything outside the ranges is zeroed. The ranges apply at every frequency.",
            wordWrap=True)
        hint.setStyleSheet("color: gray")
        rl.addWidget(hint)
        self.kept_label = QtWidgets.QLabel(wordWrap=True)
        self.chk_map_log = QtWidgets.QCheckBox("Log colour (map)")
        self.chk_map_log.setChecked(True)
        self.chk_line_log = QtWidgets.QCheckBox("Log y-axis (line)")
        self.chk_line_log.setChecked(True)
        self.y_lo = QtWidgets.QDoubleSpinBox(decimals=3, keyboardTracking=False)
        self.y_hi = QtWidgets.QDoubleSpinBox(decimals=3, keyboardTracking=False)
        self.btn_full_y = QtWidgets.QPushButton("Full y")
        self.btn_full_y.setToolTip("Sum the line over every row again")
        scalebox = QtWidgets.QGroupBox("Scales")
        sl = QtWidgets.QVBoxLayout(scalebox)
        sl.addWidget(self.chk_map_log)
        sl.addWidget(self.chk_line_log)
        ybox = QtWidgets.QGroupBox("Line sums over y")
        yl = QtWidgets.QVBoxLayout(ybox)
        yrow = QtWidgets.QHBoxLayout()
        yrow.addWidget(self.y_lo, 1)
        yrow.addWidget(QtWidgets.QLabel("to"))
        yrow.addWidget(self.y_hi, 1)
        yl.addLayout(yrow)
        yrow2 = QtWidgets.QHBoxLayout()
        yhint = QtWidgets.QLabel("Or drag the blue band on the map.", wordWrap=True)
        yhint.setStyleSheet("color: gray")
        yrow2.addWidget(yhint, 1)
        yrow2.addWidget(self.btn_full_y)
        yl.addLayout(yrow2)
        self.btn_zoom = QtWidgets.QPushButton("Zoom to energy")
        self.btn_full = QtWidgets.QPushButton("Full k range")
        self.btn_png = QtWidgets.QPushButton("Save PNG…")
        note = QtWidgets.QLabel("<i>k</i> > 0: phase travelling downstream (+<i>x</i>). The split is by "
                                "phase velocity ω/<i>k</i>, not group velocity. Grey: zeroed.",
                                wordWrap=True)
        side = QtWidgets.QVBoxLayout()
        side.addWidget(dirbox)
        side.addWidget(rangebox, 1)
        side.addWidget(self.kept_label)
        side.addWidget(scalebox)
        side.addWidget(ybox)
        side.addWidget(note)
        side.addWidget(self.btn_zoom)
        side.addWidget(self.btn_full)
        side.addWidget(self.btn_png)
        side_w = QtWidgets.QWidget()
        side_w.setLayout(side)
        side_w.setFixedWidth(250)

        self.hover = QtWidgets.QLabel(" ")
        left = QtWidgets.QVBoxLayout()
        left.setContentsMargins(0, 0, 0, 0)
        left.addWidget(self.split, 1)
        left.addWidget(self.hover)
        lay = QtWidgets.QHBoxLayout(self)
        lay.addLayout(left, 1)
        lay.addWidget(side_w)
        self.resize(1100, 720)

        self.dir_group.idToggled.connect(self._dir_toggled)
        self.table.cellChanged.connect(self._cell_changed)
        self.btn_add.clicked.connect(self.add_range)
        self.btn_remove.clicked.connect(self._remove_selected)
        self.btn_clear.clicked.connect(lambda: self._set_ranges([]))
        self.btn_zoom.clicked.connect(self.zoom_to_energy)
        self.btn_full.clicked.connect(self.full_range)
        self.btn_png.clicked.connect(self._save_png)
        self.chk_map_log.toggled.connect(lambda _: self._draw_map())
        self.chk_line_log.toggled.connect(lambda _: self._draw_line())
        self.yband.sigRegionChanged.connect(self._band_moved)
        self.y_lo.valueChanged.connect(self._y_typed)
        self.y_hi.valueChanged.connect(self._y_typed)
        self.btn_full_y.clicked.connect(self.full_y)
        self.map.scene().sigMouseMoved.connect(lambda pos: self._hover(self.map, pos))
        self.line.scene().sigMouseMoved.connect(lambda pos: self._hover(self.line, pos))
        self._rebuild_edges()
        self.sync_direction()

    # ------------------------------------------------------------ state
    def _direction(self) -> str:
        return self.main._direction()

    def sync_direction(self):
        """Follow the main window's wave-direction choice."""
        b = self.dir_group.button(self.main.dir_group.checkedId())
        if b is not None and not b.isChecked():
            self.dir_group.blockSignals(True)
            b.setChecked(True)
            self.dir_group.blockSignals(False)
        bands = self._direction() == "bands"
        for pair in self._edges:
            for item in pair:
                item.setVisible(bands)
        self._update_overlay()

    def _dir_toggled(self, i, on):
        if on:
            self.main.dir_group.button(i).setChecked(True)   # the main window calls sync_direction

    # ------------------------------------------------------------ spectrum
    def update_spectrum(self, force: bool = False):
        """Recompute from the main window's current mode if it changed."""
        if not self.isVisible():
            return
        src = self.main.spectrum_source()
        if src is None:
            return
        key, base, xs = src
        if key == self._key and not force:
            return
        new_file = self._key is None or key[0] != self._key[0]
        self._key = key
        k, F = wavenumber_spectrum(base, xs)
        P2 = np.abs(F) ** 2
        self._P2 = (P2 / (P2.max() or 1.0)).astype(np.float32)
        self._order = np.argsort(k)
        self._k_fft, self.k = k, k[self._order]
        dx = abs(float(xs[-1] - xs[0])) / (xs.size - 1) if xs.size > 1 else 1.0
        self._native_dk = 2 * np.pi / (xs.size * dx) if dx else 1.0
        dk = float(self.k[1] - self.k[0])
        r = self.main._rect
        ny = P2.shape[0]
        self._yc = r.top() + (np.arange(ny) + 0.5) * (r.height() / ny)
        self._set_y_limits(r, reset=new_file)
        self._draw_map()
        self.img.setRect(QtCore.QRectF(self.k[0] - dk / 2, r.top(), dk * self.k.size, r.height()))
        self.map.setYRange(r.top(), r.bottom(), padding=0)
        self._sum_y()
        self._labels()
        s = self.main.spod
        self.setWindowTitle(f"Wavenumber spectrum — {s.info.name}   St {s.St[key[1]]:.4f}   "
                            f"mode {key[2] + 1}")
        if new_file:
            self.zoom_to_energy()
        self._update_overlay()

    def _labels(self):
        info = self.main.spod.info
        if info.length_label == "px":
            klab, ylab = "<i>k</i> (rad/px)", f"{info.view_label} (px)"
        elif info.length_label == "D_e":
            klab, ylab = "<i>kD</i><sub>e</sub>", f"<i>{info.view_label}</i>/<i>D</i><sub>e</sub>"
        else:
            klab, ylab = "<i>kD</i>", f"<i>{info.view_label}</i>/<i>D</i>"
        self.line.setLabel("bottom", klab)
        self.map.setLabel("left", ylab)
        self._klab = klab

    def _draw_map(self):
        """|P̂(y, k)|² / max, in log (DECADES decades) or linear colour."""
        if self._P2 is None:
            return
        P2 = self._P2[:, self._order]
        if self.chk_map_log.isChecked():
            with np.errstate(divide="ignore"):
                img = np.maximum(np.log10(P2), -DECADES - 1)
            self.img.setImage(img, autoLevels=False, levels=(-DECADES, 0))
            self.map.setTitle("log<sub>10</sub> |<i>P̂</i>(<i>y</i>, <i>k</i>)|² / max", size="9pt")
        else:
            self.img.setImage(P2, autoLevels=False, levels=(0, 1))
            self.map.setTitle("|<i>P̂</i>(<i>y</i>, <i>k</i>)|² / max", size="9pt")

    def _draw_line(self):
        """Σ_y |P̂|² over the y band, normalised by its own maximum."""
        log = self.chk_line_log.isChecked()
        self.line.setLogMode(x=False, y=log)
        if self.E is None:
            return
        if log:
            self.curve.setData(self.k, np.clip(self.E, 10.0 ** (-2 * DECADES), None))
            self.line.setYRange(-DECADES - 0.5, 0.3, padding=0)
        else:
            self.curve.setData(self.k, self.E)
            self.line.setYRange(0, 1.05, padding=0)
        if self._limited:
            lo, hi = sorted(self.yband.getRegion())
            self.line.setTitle(f"summed over {lo:.3g} ≤ <i>y</i> ≤ {hi:.3g}", size="9pt")
        else:
            self.line.setTitle(None)

    # ------------------------------------------------------------ y band
    def _set_y_limits(self, r, reset: bool):
        """Fit the band and the y boxes to the frame; back to all of y if reset."""
        lo, hi = r.top(), r.bottom()
        step = (hi - lo) / 50 or 1.0
        for sb in (self.y_lo, self.y_hi):
            sb.blockSignals(True)
            sb.setRange(lo, hi)
            sb.setSingleStep(step)
            sb.blockSignals(False)
        self.yband.blockSignals(True)
        self.yband.setBounds((lo, hi))
        if reset:
            self.yband.setRegion((lo, hi))
        self.yband.blockSignals(False)
        self._band_to_boxes()

    def _band_to_boxes(self):
        lo, hi = sorted(self.yband.getRegion())
        for sb, v in ((self.y_lo, lo), (self.y_hi, hi)):
            sb.blockSignals(True)
            sb.setValue(v)
            sb.blockSignals(False)

    def _band_moved(self, *_):
        self._band_to_boxes()
        self._sum_y()

    def _y_typed(self, *_):
        self.yband.blockSignals(True)
        self.yband.setRegion(sorted((self.y_lo.value(), self.y_hi.value())))
        self.yband.blockSignals(False)
        self._band_to_boxes()     # the band may have been clipped to the frame
        self._sum_y()

    def set_y_range(self, lo: float, hi: float):
        """Sum the line over lo <= y <= hi, as if the band were dragged there."""
        self.yband.setRegion((lo, hi))

    def full_y(self):
        r = self.main._rect
        self.set_y_range(r.top(), r.bottom())

    def _sum_y(self):
        """E(k): |P̂|² summed over the rows inside the band, normalised by its maximum."""
        if self._P2 is None:
            return
        lo, hi = sorted(self.yband.getRegion())
        rows = (self._yc >= lo) & (self._yc <= hi)
        if not rows.any():
            rows[int(np.argmin(np.abs(self._yc - (lo + hi) / 2)))] = True
        self._limited = not rows.all()
        r = self.main._rect
        for g, (a, b) in zip(self._ygrey, ((r.top(), lo), (hi, r.bottom()))):
            g.setRegion((a, b))
            g.setVisible(self._limited and b > a)
        E = self._P2[rows].sum(axis=0, dtype=np.float64)
        E /= E.max() or 1.0
        self._E_fft, self.E = E, E[self._order]
        self._draw_line()
        self._update_overlay()

    def clear(self):
        """Forget the spectrum (the main window closed its file)."""
        self._key = None
        self.k = self.E = self._k_fft = self._E_fft = None
        self._P2 = self._yc = self._order = None
        self._limited = False
        self.line.setTitle(None)
        for g in self._ygrey:
            g.setVisible(False)
        self.img.clear()
        self.curve.setData([], [])
        self.kept_label.setText("")
        self.hover.setText(" ")
        self.setWindowTitle("Wavenumber spectrum")
        self._update_overlay()

    def zoom_to_energy(self):
        """Show the k range within DECADES - 1 decades of the peak, and any kept ranges."""
        if self.k is None:
            return
        big = np.nonzero(self.E > 10.0 ** (-DECADES + 1))[0]
        lo, hi = (self.k[big[0]], self.k[big[-1]]) if big.size else (self.k[0], self.k[-1])
        for a, b in self.ranges if self._direction() == "bands" else []:
            lo, hi = min(lo, a, b), max(hi, a, b)
        pad = 0.1 * (hi - lo) or 1.0
        self.map.setXRange(max(lo - pad, self.k[0]), min(hi + pad, self.k[-1]), padding=0)

    def full_range(self):
        if self.k is not None:
            self.map.setXRange(self.k[0], self.k[-1], padding=0)

    def showEvent(self, ev):
        super().showEvent(ev)
        self.update_spectrum(force=True)

    # ------------------------------------------------------------ overlay
    def _update_overlay(self):
        """Grey over the zeroed wavenumbers, and the share of |P̂|² kept."""
        for p, g in self._grey:
            p.removeItem(g)
        self._grey = []
        if self.k is None:
            return
        kmin, kmax = float(self.k[0]), float(self.k[-1])
        for a, b in zeroed_intervals(self._direction(), self.ranges, kmin, kmax):
            for p in (self.map, self.line):
                g = pg.LinearRegionItem((a, b), movable=False, brush=pg.mkBrush(*GREY),
                                        pen=pg.mkPen(None))
                g.setZValue(10)
                p.addItem(g)
                self._grey.append((p, g))
        w = wavenumber_weights(self._k_fft, self._direction(), self.ranges)
        frac = float((self._E_fft * w).sum() / self._E_fft.sum())
        where = " in the blue <i>y</i> band" if self._limited else ""
        self.kept_label.setText(f"Kept: <b>{100 * frac:.1f}%</b> of Σ|<i>P̂</i>|²{where} "
                                "at this frequency and mode")

    # ------------------------------------------------------------ ranges
    def _rebuild_edges(self):
        for pair in self._edges:
            for p, item in zip((self.map, self.line), pair):
                p.removeItem(item)
        self._edges = []
        visible = self._direction() == "bands"
        for i, (a, b) in enumerate(self.ranges):
            pair = []
            for p in (self.map, self.line):
                item = pg.LinearRegionItem(
                    (a, b), brush=pg.mkBrush(0, 0, 0, 0), hoverBrush=pg.mkBrush(230, 126, 34, 40),
                    pen=pg.mkPen(EDGE, width=2), hoverPen=pg.mkPen("#d35400", width=3))
                item.setZValue(20)
                item.setVisible(visible)
                p.addItem(item)
                pair.append(item)
            for j, item in enumerate(pair):
                item.sigRegionChanged.connect(lambda it, i=i, o=pair[1 - j]: self._edge_moved(i, it, o))
                item.sigRegionChangeFinished.connect(lambda *_: self.main.set_k_ranges(self.ranges))
            self._edges.append(tuple(pair))
        self._fill_table()

    def _fill_table(self):
        self.table.blockSignals(True)
        self.table.setRowCount(len(self.ranges))
        for i, (a, b) in enumerate(self.ranges):
            for j, v in enumerate((a, b)):
                self.table.setItem(i, j, QtWidgets.QTableWidgetItem(f"{v:.3f}"))
        self.table.blockSignals(False)

    def _edge_moved(self, i, item, other):
        """Live update while an edge is dragged; the main view updates when it is let go."""
        if i >= len(self.ranges):
            return
        a, b = item.getRegion()
        self.ranges[i] = [float(a), float(b)]
        other.blockSignals(True)
        other.setRegion((a, b))
        other.blockSignals(False)
        self._fill_table()
        self._update_overlay()

    def _cell_changed(self, row, col):
        try:
            v = float(self.table.item(row, col).text())
        except (ValueError, AttributeError):
            self._fill_table()
            return
        ranges = [list(x) for x in self.ranges]
        ranges[row][col] = v
        ranges[row].sort()
        self._set_ranges(ranges)

    def _set_ranges(self, ranges):
        self.ranges = [list(r) for r in ranges]
        self.main.set_k_ranges(self.ranges)       # stores, saves and refreshes the main view
        self._rebuild_edges()
        self._update_overlay()

    def default_range(self) -> list[float]:
        """A range around the strongest wavenumber not already kept."""
        if self.k is None:
            return [0.0, 5.0]
        w = wavenumber_weights(self.k, "bands", self.ranges)
        i = int(np.argmax(self.E * (1 - w)))
        kp = float(self.k[i])
        half = max(0.25 * abs(kp), 2 * self._native_dk)
        return [kp - half, kp + half]

    def add_range(self):
        self._set_ranges(self.ranges + [self.default_range()])
        if self._direction() != "bands":
            self.main.set_direction("bands")

    def _remove_selected(self):
        rows = {ix.row() for ix in self.table.selectionModel().selectedRows()}
        if not rows and self.ranges:
            rows = {len(self.ranges) - 1}
        self._set_ranges([r for i, r in enumerate(self.ranges) if i not in rows])

    # ------------------------------------------------------------ misc
    def _hover(self, plot, pos):
        if self.k is None:
            return
        vb = plot.getViewBox()
        if not vb.sceneBoundingRect().contains(pos):
            return
        kx = vb.mapSceneToView(pos).x()
        i = int(np.clip(np.searchsorted(self.k, kx), 0, self.k.size - 1))
        lam = f"{2 * np.pi / abs(kx):.3g}" if abs(kx) > 1e-9 else "∞"
        way = "downstream" if kx > 0 else "upstream" if kx < 0 else ""
        self.hover.setText(f"{self._klab} = {kx:.3f}   wavelength {lam} "
                           f"{self.main.spod.info.length_label}   {way}   Σ|P̂|²/max = {self.E[i]:.3g}")

    def _save_png(self):
        main = self.main
        if main.spod is None:
            return
        start = os.path.join(main.settings.value("snap_dir", main.settings.value("last_dir", "")),
                             main._default_stem() + "_kspectrum.png")
        path, _ = QtWidgets.QFileDialog.getSaveFileName(self, "Save wavenumber spectrum", start,
                                                        "PNG (*.png)")
        if path:
            self.split.grab().save(path)
            main.status_msg.setText(f"Saved {path}")

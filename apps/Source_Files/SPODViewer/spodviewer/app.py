"""SPODViewer main window."""

from __future__ import annotations

import os
import sys
import threading
import time
from pathlib import Path

import numpy as np
import pyqtgraph as pg
import pyqtgraph.exporters  # noqa: F401  (registers ImageExporter)
from PySide6 import QtCore, QtGui, QtWidgets
from PySide6.QtCore import Qt

from . import __version__, colormaps
from .data import (SPODFile, clear_transpose_cache, set_transpose_cache_dir,
                   split_direction, transpose_cache_dir, transpose_cache_size)

pg.setConfigOptions(imageAxisOrder="row-major", antialias=True,
                    background="w", foreground="k")

ASSETS = Path(__file__).resolve().parent / "assets"
DISPLAYS = ["Real", "Imaginary", "Magnitude", "Phase"]
DIRECTIONS = [("All", "all"), ("Downstream (+k)", "downstream"), ("Upstream (−k)", "upstream")]
MODE_COLOURS = ["#1f3a93", "#c0392b", "#27ae60", "#8e44ad", "#d35400", "#16a085"]
FPS_CHOICES = [5, 10, 15, 24, 30, 60]
# Interface colour scheme. The plots keep their white background in every theme.
THEMES = {"System": Qt.ColorScheme.Unknown, "Light": Qt.ColorScheme.Light, "Dark": Qt.ColorScheme.Dark}


def apply_theme(name: str):
    QtGui.QGuiApplication.styleHints().setColorScheme(THEMES.get(name, Qt.ColorScheme.Unknown))


def italic(s: str) -> str:
    return f"<i>{s}</i>"


def fmt_freq(f: float | None) -> str:
    if f is None:
        return "?"
    return f"{f / 1e3:.3f} kHz" if f >= 1e3 else f"{f:.2f} Hz"


# --------------------------------------------------------------------------
class Prefetcher(QtCore.QObject):
    """Reads P slices on a background thread so the UI never blocks on disk."""

    loaded = QtCore.Signal(int)
    failed = QtCore.Signal(int, str)
    progress = QtCore.Signal(float)   # while rewriting P into the frequency-major cache

    def __init__(self, spod: SPODFile):
        super().__init__()
        self.spod = spod
        spod.progress = self.progress.emit
        self._queue: list[int] = []
        self._cv = threading.Condition()
        self._stop = False
        self._thread = threading.Thread(target=self._run, daemon=True)
        self._thread.start()

    def request(self, idx: int, neighbours: int = 2):
        n = self.spod.n_freq
        order = [idx]
        for d in range(1, neighbours + 1):
            order += [idx + d, idx - d]
        order = [i for i in order if 0 <= i < n]
        with self._cv:
            self._queue = order          # newest request replaces the old queue
            self._cv.notify()

    def stop(self):
        with self._cv:
            self._stop = True
            self._queue = []
            self._cv.notify()
        self._thread.join(timeout=5)

    def _run(self):
        while True:
            with self._cv:
                while not self._queue and not self._stop:
                    self._cv.wait()
                if self._stop:
                    return
                idx = self._queue.pop(0)
            if self.spod.is_cached(idx):
                self.loaded.emit(idx)
                continue
            try:
                self.spod.modes_at(idx)
            except Exception as exc:  # pragma: no cover
                self.failed.emit(idx, str(exc))
                continue
            self.loaded.emit(idx)


# --------------------------------------------------------------------------
class VideoDialog(QtWidgets.QDialog):
    def __init__(self, parent, steps: int, fps: int, width: int):
        super().__init__(parent)
        self.setWindowTitle("Save mode video")
        form = QtWidgets.QFormLayout(self)
        self.cycles = QtWidgets.QSpinBox(minimum=1, maximum=50, value=3)
        self.steps = QtWidgets.QSpinBox(minimum=4, maximum=720, value=steps)
        self.fps = QtWidgets.QSpinBox(minimum=1, maximum=120, value=fps)
        self.width = QtWidgets.QSpinBox(minimum=200, maximum=8000, singleStep=100, value=width)
        form.addRow("Phase cycles", self.cycles)
        form.addRow("Frames per cycle", self.steps)
        form.addRow("Video frame rate (fps)", self.fps)
        form.addRow("Width (px)", self.width)
        bb = QtWidgets.QDialogButtonBox(QtWidgets.QDialogButtonBox.Ok | QtWidgets.QDialogButtonBox.Cancel)
        bb.accepted.connect(self.accept)
        bb.rejected.connect(self.reject)
        form.addRow(bb)


# --------------------------------------------------------------------------
class MainWindow(QtWidgets.QMainWindow):
    def __init__(self, settings_name: str = "SPODViewer"):
        super().__init__()
        self.settings = QtCore.QSettings("ShockLab", settings_name)
        set_transpose_cache_dir(self.settings.value("mode_cache_dir", "") or None)
        self.spod: SPODFile | None = None
        self.prefetch: Prefetcher | None = None
        self.idx = 0
        self.mode = 0
        self.theta_step = 0
        self.peaks_idx = np.array([], dtype=int)
        self._field_key = None
        self._field = None
        self._norm = 1.0
        self._split_cache: dict = {}
        self._waiting = False
        self._contours: list[pg.IsocurveItem] = []
        self._waterfalls: list = []
        self._waterfall = None
        self._last_tick = time.perf_counter()
        self._frames = 0

        self.setWindowTitle(f"SPODViewer {__version__}")
        self.setAcceptDrops(True)
        icon = ASSETS / "spodviewer.ico"
        if icon.exists():
            self.setWindowIcon(QtGui.QIcon(str(icon)))

        self._build_ui()
        apply_theme(self.settings.value("theme", "System"))
        self._build_menus()
        self._build_shortcuts()
        self.timer = QtCore.QTimer(self)
        self.timer.timeout.connect(self._tick)
        self._restore()
        self._set_enabled(False)

    # ================================================================ UI
    def _build_ui(self):
        # ---- image
        self.plot = pg.PlotWidget()
        self.plot.setAspectLocked(True)
        self.plot.showAxes(True)
        for ax in ("top", "right"):
            self.plot.getAxis(ax).setStyle(showValues=False)
        self.img = pg.ImageItem()
        self.plot.addItem(self.img)
        # shown over the image while P is rewritten into the frequency-major cache
        self.busy = QtWidgets.QFrame(self.plot)
        self.busy.setStyleSheet(
            "QFrame { background: rgba(255, 255, 255, 235); border: 1px solid #999; border-radius: 6px; }"
            "QLabel { border: none; background: transparent; }")
        bl = QtWidgets.QVBoxLayout(self.busy)
        bl.setContentsMargins(20, 16, 20, 16)
        self.busy_label = QtWidgets.QLabel(alignment=Qt.AlignCenter, wordWrap=True)
        self.busy_bar = QtWidgets.QProgressBar(minimum=0, maximum=100, textVisible=True)
        bl.addWidget(self.busy_label)
        bl.addWidget(self.busy_bar)
        self.busy.setFixedWidth(420)
        self.busy.hide()
        self.plot.installEventFilter(self)
        self.title = pg.TextItem(anchor=(0, 0), color="k")
        self.plot.getPlotItem().setTitle("")
        self.hover = QtWidgets.QLabel("")

        # ---- right panel
        self.hist = pg.HistogramLUTWidget(image=self.img)
        self.hist.setMinimumWidth(130)
        self.hist.item.sigLevelChangeFinished.connect(self._levels_touched)
        self.display_combo = QtWidgets.QComboBox()
        self.display_combo.addItems(DISPLAYS)
        self.cmap_combo = QtWidgets.QComboBox()
        self.cmap_combo.addItems(colormaps.names())
        self.chk_norm = QtWidgets.QCheckBox("Normalise by max |P|")
        self.chk_norm.setChecked(True)
        self.chk_autolev = QtWidgets.QCheckBox("Auto levels on change")
        self.chk_autolev.setChecked(True)
        self.chk_contours = QtWidgets.QCheckBox("Mean-field contours")
        self.btn_auto = QtWidgets.QPushButton("Auto contrast")
        self.btn_fit = QtWidgets.QPushButton("Fit image")
        right = QtWidgets.QVBoxLayout()
        right.addWidget(self.hist, 1)
        right.addWidget(QtWidgets.QLabel("Display"))
        right.addWidget(self.display_combo)
        right.addWidget(QtWidgets.QLabel("Colour map"))
        right.addWidget(self.cmap_combo)
        right.addWidget(self.chk_norm)
        right.addWidget(self.chk_autolev)
        right.addWidget(self.chk_contours)
        right.addWidget(self.btn_auto)
        right.addWidget(self.btn_fit)
        right_w = QtWidgets.QWidget()
        right_w.setLayout(right)
        right_w.setFixedWidth(170)

        top = QtWidgets.QHBoxLayout()
        top.setContentsMargins(0, 0, 0, 0)
        top.addWidget(self.plot, 1)
        top.addWidget(right_w)
        top_w = QtWidgets.QWidget()
        top_w.setLayout(top)

        # ---- spectrum
        self.spec = pg.PlotWidget()
        self.spec.setLogMode(x=False, y=True)
        self.spec.setLabel("bottom", italic("St"))
        self.spec.setLabel("left", "λ")
        self.spec.getAxis("left").enableAutoSIPrefix(False)
        self.spec.showGrid(x=True, y=True, alpha=0.2)
        self.spec.addLegend(offset=(-10, 5), labelTextSize="8pt", colCount=6)
        self.sel_line = pg.InfiniteLine(angle=90, movable=True,
                                        pen=pg.mkPen("#e67e22", width=2),
                                        hoverPen=pg.mkPen("#d35400", width=3))
        self.spec.addItem(self.sel_line)
        self.sel_dot = pg.PlotDataItem(symbol="o", symbolSize=9, symbolBrush="#e67e22",
                                       symbolPen="k", pen=None)
        self.spec.addItem(self.sel_dot)
        self.peak_marks = pg.PlotDataItem(symbol="t", symbolSize=9, symbolBrush=None,
                                          symbolPen=pg.mkPen("k"), pen=None)
        self.spec.addItem(self.peak_marks)
        self._peak_labels: list[pg.TextItem] = []
        self._spec_curves: list[pg.PlotDataItem] = []

        split = QtWidgets.QSplitter(Qt.Vertical)
        split.addWidget(top_w)
        split.addWidget(self.spec)
        split.setStretchFactor(0, 3)
        split.setStretchFactor(1, 1)
        split.setSizes([520, 220])
        self.splitter = split

        # ---- frequency row
        tb = QtWidgets.QToolButton
        self.mode_combo = QtWidgets.QComboBox()
        st = self.style()
        icon = lambda name: st.standardIcon(getattr(QtWidgets.QStyle.StandardPixmap, name))
        self._icon = icon
        self.btn_prev_peak = tb(icon=icon("SP_MediaSkipBackward"), toolTip="Previous peak (PgUp)")
        self.btn_prev_bin = tb(icon=icon("SP_ArrowLeft"), toolTip="Previous frequency bin (Left)")
        self.btn_next_bin = tb(icon=icon("SP_ArrowRight"), toolTip="Next frequency bin (Right)")
        self.btn_next_peak = tb(icon=icon("SP_MediaSkipForward"), toolTip="Next peak (PgDn)")
        self.st_spin = QtWidgets.QDoubleSpinBox(decimals=4, singleStep=0.001, keyboardTracking=False)
        self.st_spin.setMinimumWidth(90)
        self.idx_spin = QtWidgets.QSpinBox(keyboardTracking=False)
        self.idx_spin.setMinimumWidth(70)
        self.peak_combo = QtWidgets.QComboBox()
        self.peak_combo.setMinimumWidth(170)
        self.freq_label = QtWidgets.QLabel("")
        fr = QtWidgets.QHBoxLayout()
        fr.addWidget(QtWidgets.QLabel("Mode"))
        fr.addWidget(self.mode_combo)
        fr.addSpacing(12)
        for w in (self.btn_prev_peak, self.btn_prev_bin):
            fr.addWidget(w)
        fr.addWidget(QtWidgets.QLabel(italic("St")))
        fr.addWidget(self.st_spin)
        fr.addWidget(QtWidgets.QLabel("bin"))
        fr.addWidget(self.idx_spin)
        for w in (self.btn_next_bin, self.btn_next_peak):
            fr.addWidget(w)
        fr.addSpacing(12)
        fr.addWidget(QtWidgets.QLabel("Peaks"))
        fr.addWidget(self.peak_combo)
        fr.addSpacing(12)
        fr.addWidget(self.freq_label, 1)

        # ---- phase row
        self.phase_slider = QtWidgets.QSlider(Qt.Horizontal)
        self.phase_label = QtWidgets.QLabel("θ = 0°")
        self.phase_label.setMinimumWidth(150)
        self.btn_step_back = tb(icon=icon("SP_MediaSeekBackward"), toolTip="Step phase back (,)")
        self.btn_play = tb(icon=icon("SP_MediaPlay"), toolTip="Play / pause (Space)", checkable=True)
        self.btn_step_fwd = tb(icon=icon("SP_MediaSeekForward"), toolTip="Step phase forward (.)")
        self.btn_flip_x = tb(text="Flip x", toolTip="Flip x axis", checkable=True)
        self.btn_flip_y = tb(text="Flip y", toolTip="Flip y axis", checkable=True)
        ph = QtWidgets.QHBoxLayout()
        ph.addWidget(self.phase_label)
        ph.addWidget(self.phase_slider, 1)
        for w in (self.btn_step_back, self.btn_play, self.btn_step_fwd):
            ph.addWidget(w)
        line = QtWidgets.QFrame(frameShape=QtWidgets.QFrame.VLine)
        ph.addWidget(line)
        ph.addWidget(self.btn_flip_x)
        ph.addWidget(self.btn_flip_y)

        # ---- settings groups
        self.fps_combo = QtWidgets.QComboBox()
        for v in FPS_CHOICES:
            self.fps_combo.addItem(f"{v} fps", v)
        self.fps_combo.setCurrentIndex(FPS_CHOICES.index(24))
        self.steps_spin = QtWidgets.QSpinBox(minimum=4, maximum=720, value=36, singleStep=4)
        speed = QtWidgets.QGroupBox("Animation")
        sl = QtWidgets.QHBoxLayout(speed)
        sl.addWidget(self.fps_combo)
        sl.addWidget(QtWidgets.QLabel("Frames per cycle"))
        sl.addWidget(self.steps_spin)

        self.dir_group = QtWidgets.QButtonGroup(self)
        dirbox = QtWidgets.QGroupBox("Wave direction (k-split along x)")
        dl = QtWidgets.QHBoxLayout(dirbox)
        for i, (label, key) in enumerate(DIRECTIONS):
            rb = QtWidgets.QRadioButton(label)
            rb.setProperty("key", key)
            if i == 0:
                rb.setChecked(True)
            self.dir_group.addButton(rb, i)
            dl.addWidget(rb)

        out = QtWidgets.QGroupBox("Output")
        ol = QtWidgets.QHBoxLayout(out)
        self.btn_snap = QtWidgets.QPushButton("Snapshot")
        self.btn_video = QtWidgets.QPushButton("Save video…")
        self.btn_spec = QtWidgets.QPushButton("Export spectrum…")
        for w in (self.btn_snap, self.btn_video, self.btn_spec):
            ol.addWidget(w)

        grp = QtWidgets.QHBoxLayout()
        grp.addWidget(speed)
        grp.addWidget(dirbox)
        grp.addStretch(1)
        grp.addWidget(out)

        bottom = QtWidgets.QVBoxLayout()
        bottom.addLayout(fr)
        bottom.addLayout(ph)
        bottom.addLayout(grp)
        bottom_w = QtWidgets.QWidget()
        bottom_w.setLayout(bottom)

        central = QtWidgets.QWidget()
        cl = QtWidgets.QVBoxLayout(central)
        cl.setContentsMargins(4, 4, 4, 0)
        cl.addWidget(split, 1)
        cl.addWidget(bottom_w)
        self.setCentralWidget(central)

        # ---- status bar
        sb = self.statusBar()
        self.status_msg = QtWidgets.QLabel("Open a SPOD result file (File → Open, or drag one here).")
        sb.addWidget(self.status_msg, 1)
        self.status_labels = {}
        for key in ("grid", "spod", "flow", "diam", "fps", "state", "cache", "rate"):
            lab = QtWidgets.QLabel("")
            lab.setContentsMargins(6, 0, 6, 0)
            sb.addPermanentWidget(lab)
            self.status_labels[key] = lab

        # ---- connections
        self.display_combo.currentTextChanged.connect(self._display_changed)
        self.cmap_combo.currentTextChanged.connect(self._apply_cmap)
        self.chk_norm.toggled.connect(lambda _: self._refresh(levels=True))
        self.chk_contours.toggled.connect(self._update_contours)
        self.btn_auto.clicked.connect(lambda: self._auto_levels(force=True))
        self.btn_fit.clicked.connect(self._fit)
        self.mode_combo.currentIndexChanged.connect(self._mode_changed)
        self.btn_prev_bin.clicked.connect(lambda: self.set_index(self.idx - 1))
        self.btn_next_bin.clicked.connect(lambda: self.set_index(self.idx + 1))
        self.btn_prev_peak.clicked.connect(lambda: self._jump_peak(-1))
        self.btn_next_peak.clicked.connect(lambda: self._jump_peak(+1))
        self.st_spin.valueChanged.connect(self._st_spin_changed)
        self.idx_spin.valueChanged.connect(lambda v: self.set_index(v))
        self.peak_combo.activated.connect(self._peak_chosen)
        self.sel_line.sigPositionChanged.connect(self._line_moved)
        self.spec.scene().sigMouseClicked.connect(self._spec_clicked)
        self.phase_slider.valueChanged.connect(self._phase_changed)
        self.steps_spin.valueChanged.connect(self._steps_changed)
        self.btn_play.toggled.connect(self._play_toggled)
        self.btn_step_back.clicked.connect(lambda: self._step_phase(-1))
        self.btn_step_fwd.clicked.connect(lambda: self._step_phase(+1))
        self.fps_combo.currentIndexChanged.connect(self._fps_changed)
        self.dir_group.idToggled.connect(lambda _id, on: on and self._refresh(levels=True))
        self.btn_flip_x.toggled.connect(lambda on: self._flip("x", on))
        self.btn_flip_y.toggled.connect(lambda on: self._flip("y", on))
        self.btn_snap.clicked.connect(self.snapshot)
        self.btn_video.clicked.connect(self.save_video)
        self.btn_spec.clicked.connect(self.export_spectrum)
        self.plot.scene().sigMouseMoved.connect(self._mouse_moved)
        self._steps_changed(self.steps_spin.value())
        self._apply_cmap(self.cmap_combo.currentText())

    def _build_menus(self):
        mb = self.menuBar()
        fm = mb.addMenu("&File")
        self.act_open = fm.addAction("&Open…", self.open_dialog, QtGui.QKeySequence.Open)
        self.recent_menu = fm.addMenu("Open &recent")
        fm.addAction("Open &waterfall (several cases)…", self.open_waterfall_dialog,
                     QtGui.QKeySequence("Ctrl+Shift+O"))
        self.act_close = fm.addAction("&Close", self.close_file, QtGui.QKeySequence("Ctrl+W"))
        fm.addSeparator()
        self.act_snap = fm.addAction("&Snapshot…", self.snapshot, QtGui.QKeySequence("Ctrl+S"))
        self.act_copy = fm.addAction("&Copy image", self.copy_image, QtGui.QKeySequence.Copy)
        self.act_video = fm.addAction("Save &video…", self.save_video, QtGui.QKeySequence("Ctrl+Shift+S"))
        self.act_spec = fm.addAction("Export s&pectrum…", self.export_spectrum)
        fm.addSeparator()
        fm.addAction("E&xit", self.close, QtGui.QKeySequence.Quit)

        vm = mb.addMenu("&View")
        self.act_flipx = vm.addAction("Flip &x axis")
        self.act_flipx.setCheckable(True)
        self.act_flipx.toggled.connect(self.btn_flip_x.setChecked)
        self.btn_flip_x.toggled.connect(self.act_flipx.setChecked)
        self.act_flipy = vm.addAction("Flip &y axis")
        self.act_flipy.setCheckable(True)
        self.act_flipy.toggled.connect(self.btn_flip_y.setChecked)
        self.btn_flip_y.toggled.connect(self.act_flipy.setChecked)
        vm.addSeparator()
        self.act_all_modes = vm.addAction("Show all λ modes in spectrum")
        self.act_all_modes.setCheckable(True)
        self.act_all_modes.toggled.connect(lambda _: self._draw_spectrum())
        self.act_logx = vm.addAction("Log St axis")
        self.act_logx.setCheckable(True)
        self.act_logx.toggled.connect(self._logx)
        self.act_peaks = vm.addAction("Label peaks")
        self.act_peaks.setCheckable(True)
        self.act_peaks.setChecked(True)
        self.act_peaks.toggled.connect(lambda _: self._draw_spectrum())
        vm.addSeparator()
        vm.addAction("&Fit image", self._fit, QtGui.QKeySequence("F"))
        vm.addAction("&Auto contrast", lambda: self._auto_levels(force=True), QtGui.QKeySequence("A"))
        vm.addSeparator()
        theme_menu = vm.addMenu("&Theme")
        group = QtGui.QActionGroup(self)
        current = self.settings.value("theme", "System")
        for name in THEMES:
            act = theme_menu.addAction(name)
            act.setCheckable(True)
            act.setChecked(name == current)
            act.triggered.connect(lambda _=False, n=name: self._set_theme(n))
            group.addAction(act)

        sm = mb.addMenu("&Settings")
        sm.addAction("Memory cache size…", self._cache_dialog)
        mc = sm.addMenu("Mode cache folder")
        cur = mc.addAction("")
        cur.setEnabled(False)          # shows the current folder and its size
        mc.addSeparator()
        mc.addAction("Open folder", self._open_mode_cache)
        mc.addAction("Change folder…", self._choose_mode_cache)
        mc.addAction("Use default folder", lambda: self._set_mode_cache(None))
        mc.aboutToShow.connect(lambda: cur.setText(
            f"{transpose_cache_dir()}  ({transpose_cache_size() / 2**30:.1f} GB)"))
        self.mode_cache_menu = mc
        self.act_prefetch = sm.addAction("Prefetch neighbouring frequencies")
        self.act_prefetch.setCheckable(True)
        self.act_prefetch.setChecked(True)

        hm = mb.addMenu("&Help")
        hm.addAction("Keyboard shortcuts", self._show_keys)
        hm.addAction("File information", self._show_info)
        hm.addAction("About", self._about)

    def _set_theme(self, name: str):
        self.settings.setValue("theme", name)
        apply_theme(name)

    def _build_shortcuts(self):
        def sc(key, fn):
            s = QtGui.QShortcut(QtGui.QKeySequence(key), self)
            s.setContext(Qt.WindowShortcut)
            s.activated.connect(fn)
        sc(Qt.Key_Left, lambda: self.set_index(self.idx - 1))
        sc(Qt.Key_Right, lambda: self.set_index(self.idx + 1))
        sc(Qt.Key_PageUp, lambda: self._jump_peak(-1))
        sc(Qt.Key_PageDown, lambda: self._jump_peak(+1))
        sc(Qt.Key_Up, lambda: self._set_mode(self.mode - 1))
        sc(Qt.Key_Down, lambda: self._set_mode(self.mode + 1))
        sc(Qt.Key_Space, lambda: self.btn_play.toggle())
        sc(Qt.Key_Comma, lambda: self._step_phase(-1))
        sc(Qt.Key_Period, lambda: self._step_phase(+1))
        sc("D", self._cycle_direction)
        sc(Qt.Key_BracketLeft, lambda: self._step_case(-1))
        sc(Qt.Key_BracketRight, lambda: self._step_case(+1))

    def _set_enabled(self, on: bool):
        for w in (self.display_combo, self.mode_combo, self.st_spin, self.idx_spin,
                  self.peak_combo, self.btn_prev_bin, self.btn_next_bin, self.btn_prev_peak,
                  self.btn_next_peak, self.phase_slider, self.btn_play, self.btn_step_back,
                  self.btn_step_fwd, self.btn_snap, self.btn_video, self.btn_spec,
                  self.btn_auto, self.btn_fit):
            w.setEnabled(on)
        for b in self.dir_group.buttons():
            b.setEnabled(on)
        for a in (self.act_close, self.act_snap, self.act_copy, self.act_video, self.act_spec):
            a.setEnabled(on)

    # ================================================================ files
    def open_dialog(self):
        start = self.settings.value("last_dir", "")
        path, _ = QtWidgets.QFileDialog.getOpenFileName(
            self, "Open SPOD result", start, "SPOD results (*.mat);;All files (*)")
        if path:
            self.open_file(path)

    def open_file(self, path: str):
        path = os.path.normpath(path)
        QtWidgets.QApplication.setOverrideCursor(Qt.WaitCursor)
        self.status_msg.setText(f"Opening {os.path.basename(path)}…")
        QtWidgets.QApplication.processEvents()
        try:
            cache_mb = int(self.settings.value("cache_mb", 1024))
            spod = SPODFile(path, cache_mb=cache_mb)
        except Exception as exc:
            QtWidgets.QApplication.restoreOverrideCursor()
            self.status_msg.setText("")
            QtWidgets.QMessageBox.critical(self, "Could not open file", f"{path}\n\n{exc}")
            return False
        finally:
            QtWidgets.QApplication.restoreOverrideCursor()
        self.close_file()
        self.spod = spod
        self.prefetch = Prefetcher(spod)
        self.prefetch.loaded.connect(self._slice_loaded)
        self.prefetch.failed.connect(self._slice_failed)
        self.prefetch.progress.connect(self._transpose_progress)
        self.settings.setValue("last_dir", os.path.dirname(path))
        self._add_recent(path)
        self._setup_for_file()
        return True

    def open_waterfall_dialog(self):
        start = self.settings.value("last_dir", "")
        paths, _ = QtWidgets.QFileDialog.getOpenFileNames(
            self, "Open SPOD results for a waterfall", start, "SPOD results (*.mat);;All files (*)")
        if paths:
            self.open_waterfall(paths)

    def open_waterfall(self, paths):
        from .waterfall import WaterfallWindow

        self.settings.setValue("last_dir", os.path.dirname(paths[0]))
        win = WaterfallWindow(self, paths)
        win.setAttribute(Qt.WA_DeleteOnClose)
        win.destroyed.connect(lambda *_: self._waterfalls.remove(win) if win in self._waterfalls else None)
        self._waterfalls.append(win)
        self._waterfall = win
        win.show()
        return win

    def show_case(self, path, idx=None, mode=0, source=None):
        """Show a case at a frequency index and mode (used by the waterfall)."""
        same = self.spod is not None and (
            os.path.normcase(os.path.normpath(self.spod.path)) == os.path.normcase(os.path.normpath(path)))
        if not same and not self.open_file(path):
            return
        if source is not None:
            self._waterfall = source
        self._set_mode(min(mode, self.spod.n_modes - 1))
        if idx is not None:
            self.set_index(int(idx), force=True)
        self.show()
        self.raise_()

    def _step_case(self, d):
        if self._waterfall is not None and self._waterfall in self._waterfalls:
            self._waterfall.step_case(d)

    def close_file(self):
        self.btn_play.setChecked(False)
        if self.spod is not None:
            self.spod.cancel()      # so the prefetch thread stops promptly
        if self.prefetch is not None:
            self.prefetch.stop()
            self.prefetch = None
        if self.spod is not None:
            self.spod.close()
            self.spod = None
        self._field = None
        self._field_key = None
        self._split_cache.clear()
        self.busy.hide()
        self.img.clear()
        for c in self._spec_curves:
            self.spec.removeItem(c)
        self._spec_curves = []
        self._clear_contours()
        self.setWindowTitle(f"SPODViewer {__version__}")
        for lab in self.status_labels.values():
            lab.setText("")
        self._set_enabled(False)

    def _setup_for_file(self):
        s, info = self.spod, self.spod.info
        self.setWindowTitle(f"SPODViewer {__version__} — {info.name}")
        Lb = info.length_label
        Dsub = "e" if Lb == "D_e" else ""
        dl = f"<i>D</i><sub>{Dsub}</sub>" if Dsub else "<i>D</i>"
        if Lb == "px":
            self.plot.setLabel("bottom", "x (px)")
            self.plot.setLabel("left", f"{info.view_label} (px)")
        else:
            self.plot.setLabel("bottom", f"<i>x</i>/{dl}")
            self.plot.setLabel("left", f"<i>{info.view_label}</i>/{dl}")

        self.mode_combo.blockSignals(True)
        self.mode_combo.clear()
        for m in range(info.n_modes):
            self.mode_combo.addItem(f"{m + 1}")
        self.mode_combo.setCurrentIndex(0)
        self.mode_combo.blockSignals(False)
        self.mode = 0

        St = s.St
        dSt = St[1] - St[0] if St.size > 1 else 0.001
        for w in (self.st_spin, self.idx_spin):
            w.blockSignals(True)
        self.st_spin.setRange(float(St.min()), float(St.max()))
        self.st_spin.setSingleStep(float(dSt))
        self.idx_spin.setRange(0, info.n_freq - 1)
        for w in (self.st_spin, self.idx_spin):
            w.blockSignals(False)

        self.peaks_idx, prom = s.peaks(0)
        self.peak_combo.clear()
        for rank, (i, p) in enumerate(zip(self.peaks_idx, prom), 1):
            self.peak_combo.addItem(f"#{rank}  St {St[i]:.4f}  ({fmt_freq(s.f[i]) if s.f is not None else ''})", int(i))

        # status
        sl = self.status_labels
        sl["grid"].setText(f"{info.nx}×{info.ny} px  {info.n_freq} freqs  {info.n_modes} modes"
                           + (f" (λ: {info.n_modes_L})" if info.n_modes_L != info.n_modes else ""))
        parts = []
        if info.n_snapshots:
            parts.append(f"Nt {int(info.n_snapshots)}")
        if info.nfft:
            parts.append(f"Nfft {int(info.nfft)}")
        if info.overlap is not None:
            parts.append(f"ovlp {info.overlap:g}%")
        parts.append(f"ΔSt {dSt:.4g}")
        sl["spod"].setText("  ".join(parts))
        flow = "  ".join(p.label() for p in info.flow)
        if info.sym_type:
            flow += f"  [{info.sym_type}]"
        sl["flow"].setText(flow)
        sl["diam"].setText(f"{info.diameter[0]} {info.diameter[1]:g} mm" if info.diameter else "D ?")
        sl["fps"].setText(f"{info.fps:g} fps" if info.fps else "")

        self._place_image()
        self._update_contours()
        self._draw_spectrum()
        self._set_enabled(True)
        start = int(self.peaks_idx[0]) if self.peaks_idx.size else min(1, info.n_freq - 1)
        self.set_index(start, force=True)
        self._fit()
        self.status_msg.setText("")

    def _add_recent(self, path):
        rec = self.settings.value("recent", []) or []
        if isinstance(rec, str):
            rec = [rec]
        rec = [path] + [r for r in rec if r != path]
        self.settings.setValue("recent", rec[:10])
        self._rebuild_recent()

    def _rebuild_recent(self):
        self.recent_menu.clear()
        rec = self.settings.value("recent", []) or []
        if isinstance(rec, str):
            rec = [rec]
        for r in rec:
            self.recent_menu.addAction(r, lambda p=r: self.open_file(p))
        self.recent_menu.setEnabled(bool(rec))

    # ================================================================ geometry
    def _orient(self, a: np.ndarray) -> np.ndarray:
        """Make rows increase in y and columns increase in x."""
        s = self.spod
        if s.y_vec.size > 1 and s.y_vec[-1] < s.y_vec[0]:
            a = a[..., ::-1, :]
        if s.x_vec.size > 1 and s.x_vec[-1] < s.x_vec[0]:
            a = a[..., :, ::-1]
        return a

    def _place_image(self):
        s = self.spod
        xv, yv = np.sort(s.x_vec), np.sort(s.y_vec)
        dx = (xv[-1] - xv[0]) / max(len(xv) - 1, 1) or 1.0
        dy = (yv[-1] - yv[0]) / max(len(yv) - 1, 1) or 1.0
        self._rect = QtCore.QRectF(xv[0] - dx / 2, yv[0] - dy / 2, dx * len(xv), dy * len(yv))
        self.img.setImage(np.zeros((s.ny, s.nx), np.float32), autoLevels=False)
        self.img.setRect(self._rect)

    def _fit(self):
        if self.spod is not None:
            self.plot.getViewBox().setRange(rect=self._rect, padding=0.02)

    def _flip(self, axis, on):
        vb = self.plot.getViewBox()
        if axis == "x":
            vb.invertX(on)
        else:
            vb.invertY(on)
        self.settings.setValue(f"flip_{axis}", on)

    # ================================================================ spectrum
    def _draw_spectrum(self):
        for c in self._spec_curves:
            self.spec.removeItem(c)
        self._spec_curves = []
        for t in self._peak_labels:
            self.spec.removeItem(t)
        self._peak_labels = []
        leg = self.spec.getPlotItem().legend
        if leg is not None:
            leg.clear()
        if self.spod is None:
            return
        s = self.spod
        St, L = s.St, s.L
        nL = L.shape[1]
        n_show = nL if self.act_all_modes.isChecked() else min(nL, s.n_modes)
        sel = slice(1, None) if St[0] == 0 else slice(None)   # log axis: skip DC
        for m in range(n_show - 1, -1, -1):
            if m < len(MODE_COLOURS) and m < s.n_modes:
                pen = pg.mkPen(MODE_COLOURS[m], width=2 if m == self.mode else 1.2)
                name = f"mode {m + 1}"
            else:
                pen = pg.mkPen((150, 150, 150, 120), width=0.8)
                name = None
            c = self.spec.plot(St[sel], np.clip(L[sel, m], 1e-300, None), pen=pen, name=name)
            c.setZValue(10 - m)
            self._spec_curves.append(c)
        if self.peaks_idx.size:
            pk = self.peaks_idx
            self.peak_marks.setData(St[pk], L[pk, 0] * 1.6)
            if self.act_peaks.isChecked():
                for rank, i in enumerate(pk[:8], 1):
                    t = pg.TextItem(f"{St[i]:.3f}", anchor=(0.5, 1.2), color="#333")
                    t.setPos(St[i], np.log10(L[i, 0] * 1.6))
                    self.spec.addItem(t)
                    self._peak_labels.append(t)
        else:
            self.peak_marks.setData([], [])
        # x range: enough to show the main peaks
        if self.peaks_idx.size:
            xmax = min(St.max(), max(1.0, 1.4 * St[self.peaks_idx[:5]].max()))
        else:
            xmax = St.max()
        self.spec.setXRange(St[1] if self.act_logx.isChecked() else 0, xmax, padding=0.02)
        Lvis = L[sel, :n_show]
        Lvis = Lvis[Lvis > 0]
        if Lvis.size:
            # headroom above the highest peak for its label and the legend
            self.spec.setYRange(np.log10(np.percentile(Lvis, 0.5)) - 0.2,
                                np.log10(Lvis.max()) + 1.0, padding=0)
        self._update_sel_marker()

    def _logx(self, on):
        self.spec.setLogMode(x=on, y=True)
        self._draw_spectrum()

    def _update_sel_marker(self):
        if self.spod is None:
            return
        St = self.spod.St
        x = St[self.idx]
        self.sel_line.blockSignals(True)
        self.sel_line.setValue(np.log10(x) if self.act_logx.isChecked() and x > 0 else x)
        self.sel_line.blockSignals(False)
        self.sel_dot.setData([x], [max(self.spod.L[self.idx, self.mode], 1e-300)])

    def _line_moved(self):
        if self.spod is None:
            return
        v = self.sel_line.value()
        if self.act_logx.isChecked():
            v = 10 ** v
        self.set_index(int(np.argmin(np.abs(self.spod.St - v))))

    def _spec_clicked(self, ev):
        if self.spod is None or ev.button() != Qt.LeftButton or ev.double():
            return
        vb = self.spec.getViewBox()
        if not vb.sceneBoundingRect().contains(ev.scenePos()):
            return
        p = vb.mapSceneToView(ev.scenePos())
        x = 10 ** p.x() if self.act_logx.isChecked() else p.x()
        self.set_index(int(np.argmin(np.abs(self.spod.St - x))))

    # ================================================================ selection
    def set_index(self, i: int, force: bool = False):
        if self.spod is None:
            return
        i = int(np.clip(i, 0, self.spod.n_freq - 1))
        if i == self.idx and not force:
            return
        self.idx = i
        for w in (self.st_spin, self.idx_spin):
            w.blockSignals(True)
        self.st_spin.setValue(float(self.spod.St[i]))
        self.idx_spin.setValue(i)
        for w in (self.st_spin, self.idx_spin):
            w.blockSignals(False)
        pos = np.where(self.peaks_idx == i)[0]
        self.peak_combo.blockSignals(True)
        self.peak_combo.setCurrentIndex(int(pos[0]) if pos.size else -1)
        self.peak_combo.blockSignals(False)
        self._update_sel_marker()
        self._update_freq_label()
        self._request()

    def _st_spin_changed(self, v):
        if self.spod is not None:
            self.set_index(int(np.argmin(np.abs(self.spod.St - v))))

    def _peak_chosen(self, row):
        i = self.peak_combo.itemData(row)
        if i is not None:
            self.set_index(int(i))

    def _jump_peak(self, step):
        if self.spod is None or not self.peaks_idx.size:
            return
        order = np.sort(self.peaks_idx)
        if step > 0:
            nxt = order[order > self.idx]
            target = nxt[0] if nxt.size else order[-1]
        else:
            prv = order[order < self.idx]
            target = prv[-1] if prv.size else order[0]
        self.set_index(int(target))

    def _mode_changed(self, m):
        if m >= 0:
            self._set_mode(m)

    def _set_mode(self, m):
        if self.spod is None:
            return
        m = int(np.clip(m, 0, self.spod.n_modes - 1))
        if self.mode_combo.currentIndex() != m:
            self.mode_combo.setCurrentIndex(m)   # re-enters via _mode_changed
            return
        if m == self.mode and self._field is not None:
            return
        self.mode = m
        self._draw_spectrum()
        self._update_freq_label()
        self._refresh(levels=True)

    def _cycle_direction(self):
        if self.spod is None:
            return
        i = (self.dir_group.checkedId() + 1) % len(DIRECTIONS)
        self.dir_group.button(i).setChecked(True)

    def _direction(self) -> str:
        b = self.dir_group.checkedButton()
        return b.property("key") if b else "all"

    def _update_freq_label(self):
        s = self.spod
        i, m = self.idx, self.mode
        L = s.L[i]
        frac = L[m] / L.sum() if L.sum() > 0 else np.nan
        f = fmt_freq(s.f[i]) if s.f is not None else "?"
        self.freq_label.setText(
            f"<i>f</i> = {f}   λ<sub>{m + 1}</sub> = {L[m]:.3g}   "
            f"λ<sub>{m + 1}</sub>/Σλ = {100 * frac:.1f}%")

    # ================================================================ loading
    def _request(self):
        s = self.spod
        if s.is_cached(self.idx):
            self._waiting = False
            self._refresh(levels=True)
            if self.prefetch and self.act_prefetch.isChecked():
                self.prefetch.request(self.idx)
            return
        self._waiting = True
        if s.needs_transpose:
            self.status_labels["state"].setText("building mode cache…")
            self._show_busy(0.0)
        else:
            self.status_labels["state"].setText(f"loading St {s.St[self.idx]:.4f}…")
        if self.prefetch:
            self.prefetch.request(self.idx, 2 if self.act_prefetch.isChecked() else 0)

    def _slice_loaded(self, i):
        if self.spod is None:
            return
        self._update_cache_label()
        if self._waiting and i == self.idx:
            self._waiting = False
            self.busy.hide()
            self._refresh(levels=True)

    def _slice_failed(self, i, msg):
        self.status_msg.setText(f"Read error at bin {i}: {msg}")
        if self._waiting and i == self.idx:
            self._waiting = False
            self.busy.hide()
            self.status_labels["state"].setText("read failed")
            QtWidgets.QMessageBox.warning(self, "Could not read modes", msg)

    def _transpose_progress(self, frac):
        if self.spod is not None and self._waiting:
            self.status_labels["state"].setText(f"building mode cache: {100 * frac:.0f}%")
            self._show_busy(frac)

    def _show_busy(self, frac):
        """Overlay on the image while the frequency-major cache is built."""
        s = self.spod
        gb = s.n_freq * s.n_modes * s.ny * s.nx * 8 / 2**30
        if not self.busy.isVisible():
            self.img.clear()
            self._busy_t0 = time.perf_counter()
            self.busy.show()
        if frac > 0.02:
            left = (time.perf_counter() - self._busy_t0) * (1 - frac) / frac
            eta = f"about {left / 60:.0f} min left" if left >= 90 else f"about {left:.0f} s left"
        else:
            eta = "estimating time left…"
        self.busy_label.setText(
            "<b>Building mode cache</b><br>"
            "This file stores all frequencies together, so its modes are rewritten once "
            f"({gb:.1f} GB) for fast access. The cache is deleted when SPODViewer closes.<br><br>"
            f"{frac * gb:.1f} of {gb:.1f} GB, {eta}")
        self._place_busy()
        self.busy_bar.setValue(int(round(100 * frac)))

    def _place_busy(self):
        self.busy.adjustSize()
        r = self.plot.rect()
        self.busy.move((r.width() - self.busy.width()) // 2, (r.height() - self.busy.height()) // 2)

    def eventFilter(self, obj, ev):
        if obj is self.plot and ev.type() == QtCore.QEvent.Resize and self.busy.isVisible():
            self._place_busy()
        return super().eventFilter(obj, ev)

    def _update_cache_label(self):
        if self.spod is None:
            return
        c = self.spod.cache
        self.status_labels["cache"].setText(
            f"cache {c.nbytes / 2**20:.0f} MB / {c.budget / 2**30:.1f} GB ({len(c.items)} fr)")

    # ================================================================ field + render
    def _current_field(self):
        """Complex field for (freq, mode, direction), plus the normalisation."""
        s = self.spod
        key = (self.idx, self.mode, self._direction())
        if key == self._field_key and self._field is not None:
            return self._field, self._norm
        base = s.modes_at(self.idx)[self.mode]
        base = self._orient(base)
        direction = key[2]
        if direction == "all":
            fld = base
        else:
            ck = key
            fld = self._split_cache.get(ck)
            if fld is None:
                # x is already oriented to increase along columns
                fld = split_direction(base, np.sort(s.x_vec), direction)
                if len(self._split_cache) > 64:
                    self._split_cache.clear()
                self._split_cache[ck] = fld
        norm = float(np.abs(base).max()) or 1.0
        self._field_key, self._field, self._norm = key, fld, norm
        return fld, norm

    def _theta(self) -> float:
        return 2 * np.pi * self.theta_step / self.steps_spin.value()

    def _frame(self) -> np.ndarray:
        fld, norm = self._current_field()
        disp = self.display_combo.currentText()
        if self.chk_norm.isChecked() and disp != "Phase":
            fld = fld / norm
        rot = np.exp(1j * self._theta()).astype(np.complex64)
        if disp == "Real":
            return np.real(fld * rot).astype(np.float32)
        if disp == "Imaginary":
            return np.imag(fld * rot).astype(np.float32)
        if disp == "Magnitude":
            return np.abs(fld).astype(np.float32)
        return np.angle(fld * rot).astype(np.float32)

    def _refresh(self, levels: bool = False):
        if self.spod is None or self._waiting or not self.spod.is_cached(self.idx):
            return
        frame = self._frame()
        self.img.setImage(frame, autoLevels=False)
        if levels and (self.chk_autolev.isChecked() or self._user_levels is None):
            self._auto_levels()
        self.status_labels["state"].setText("playing" if self.timer.isActive() else "paused")
        self._update_cache_label()

    _user_levels = None

    def _auto_levels(self, force: bool = False):
        if self.spod is None or not self.spod.is_cached(self.idx):
            return
        fld, norm = self._current_field()
        disp = self.display_combo.currentText()
        if disp == "Phase":
            lo, hi = -np.pi, np.pi
        else:
            amp = np.abs(fld)
            if self.chk_norm.isChecked():
                amp = amp / norm
            top = float(np.percentile(amp, 99.9)) if force else float(amp.max())
            top = top or 1.0
            lo, hi = (0.0, top) if disp == "Magnitude" else (-top, top)
        self.hist.item.setLevels(lo, hi)
        self.hist.item.setHistogramRange(lo, hi, padding=0.05)
        self._user_levels = None

    def _levels_touched(self):
        self._user_levels = self.hist.item.getLevels()

    def _display_changed(self, disp):
        name = colormaps.DEFAULT_FOR_DISPLAY.get(disp)
        if name:
            self.cmap_combo.setCurrentText(name)
        self._refresh(levels=True)

    def _apply_cmap(self, name):
        cmap = colormaps.get(name)
        self.hist.gradient.setColorMap(cmap)

    # ---- mean contours
    def _clear_contours(self):
        for c in self._contours:
            c.setParentItem(None)
            if c.scene() is not None:
                c.scene().removeItem(c)
        self._contours = []

    def _update_contours(self, *_):
        self._clear_contours()
        if self.spod is None or not self.chk_contours.isChecked() or self.spod.im_mean is None:
            return
        m = self._orient(self.spod.im_mean)
        lo, hi = np.percentile(m, [5, 95])
        for lev in np.linspace(lo, hi, 8)[1:-1]:
            c = pg.IsocurveItem(data=m, level=float(lev), pen=pg.mkPen((60, 60, 60, 170), width=1),
                                axisOrder="row-major")
            c.setParentItem(self.img)
            c.setZValue(5)
            self._contours.append(c)

    # ================================================================ animation
    def _steps_changed(self, n):
        frac = self.theta_step / max(self.phase_slider.maximum() + 1, 1)
        self.phase_slider.blockSignals(True)
        self.phase_slider.setRange(0, n - 1)
        self.theta_step = int(round(frac * n)) % n
        self.phase_slider.setValue(self.theta_step)
        self.phase_slider.blockSignals(False)
        self._update_phase_label()
        self._refresh()

    def _phase_changed(self, v):
        self.theta_step = v
        self._update_phase_label()
        self._refresh()

    def _step_phase(self, d):
        if self.spod is None:
            return
        n = self.steps_spin.value()
        self.phase_slider.setValue((self.theta_step + d) % n)

    def _update_phase_label(self):
        n = self.steps_spin.value()
        deg = 360.0 * self.theta_step / n
        self.phase_label.setText(f"θ = {deg:5.1f}°  (t/T = {self.theta_step / n:.3f})")

    def _fps(self) -> int:
        return int(self.fps_combo.currentData() or 24)

    def _fps_changed(self, _):
        if self.timer.isActive():
            self.timer.start(int(1000 / self._fps()))

    def _play_toggled(self, on):
        self.btn_play.setIcon(self._icon("SP_MediaPause" if on else "SP_MediaPlay"))
        if on and self.spod is not None:
            self._last_tick = time.perf_counter()
            self._frames = 0
            self.timer.start(int(1000 / self._fps()))
            self.status_labels["state"].setText("playing")
        else:
            self.timer.stop()
            self.status_labels["state"].setText("paused" if self.spod else "")
            self.status_labels["rate"].setText("")

    def _tick(self):
        self._step_phase(+1)
        self._frames += 1
        now = time.perf_counter()
        if now - self._last_tick > 1.0:
            self.status_labels["rate"].setText(f"{self._frames / (now - self._last_tick):.0f} fps")
            self._last_tick, self._frames = now, 0

    # ================================================================ output
    def _default_stem(self) -> str:
        s = self.spod
        stem = os.path.splitext(s.info.name)[0]
        d = self._direction()
        tag = f"_St_{s.St[self.idx]:.4f}_mode_{self.mode + 1}_{self.display_combo.currentText()}"
        if d != "all":
            tag += f"_{d}"
        return stem + tag

    def _render(self, width: int) -> QtGui.QImage:
        exp = pg.exporters.ImageExporter(self.plot.getPlotItem())
        exp.parameters()["width"] = int(width)
        exp.parameters()["antialias"] = True
        return exp.export(toBytes=True)

    def snapshot(self):
        if self.spod is None:
            return
        start = os.path.join(self.settings.value("snap_dir", self.settings.value("last_dir", "")),
                             self._default_stem() + ".png")
        path, _ = QtWidgets.QFileDialog.getSaveFileName(self, "Save snapshot", start,
                                                        "PNG (*.png);;JPEG (*.jpg)")
        if not path:
            return
        img = self._render(max(1600, 2 * self.plot.width()))
        img.save(path)
        self.settings.setValue("snap_dir", os.path.dirname(path))
        self.status_msg.setText(f"Saved {path}")

    def copy_image(self):
        if self.spod is None:
            return
        QtWidgets.QApplication.clipboard().setImage(self._render(max(1600, 2 * self.plot.width())))
        self.status_msg.setText("Image copied to clipboard")

    def save_video(self):
        if self.spod is None:
            return
        try:
            import imageio_ffmpeg
            ffmpeg = imageio_ffmpeg.get_ffmpeg_exe()
        except Exception as exc:
            QtWidgets.QMessageBox.critical(self, "ffmpeg not found", str(exc))
            return
        dlg = VideoDialog(self, self.steps_spin.value(), self._fps(),
                          max(1200, 2 * self.plot.width()) // 2 * 2)
        if dlg.exec() != QtWidgets.QDialog.Accepted:
            return
        start = os.path.join(self.settings.value("video_dir", self.settings.value("last_dir", "")),
                             self._default_stem() + ".mp4")
        path, _ = QtWidgets.QFileDialog.getSaveFileName(self, "Save video", start, "MP4 video (*.mp4)")
        if not path:
            return
        self.settings.setValue("video_dir", os.path.dirname(path))
        was_playing = self.btn_play.isChecked()
        self.btn_play.setChecked(False)
        old_steps, old_step = self.steps_spin.value(), self.theta_step
        steps, cycles = dlg.steps.value(), dlg.cycles.value()
        total = steps * cycles
        prog = QtWidgets.QProgressDialog("Writing video…", "Cancel", 0, total, self)
        prog.setWindowModality(Qt.WindowModal)
        prog.setMinimumDuration(0)
        self.steps_spin.setValue(steps)
        writer = None
        ok = False
        try:
            for k in range(total):
                if prog.wasCanceled():
                    break
                self.phase_slider.setValue(k % steps)
                qimg = self._render(dlg.width.value()).convertToFormat(QtGui.QImage.Format_RGB888)
                w, h = qimg.width() // 2 * 2, qimg.height() // 2 * 2
                arr = np.frombuffer(qimg.constBits(), np.uint8).reshape(qimg.height(), qimg.bytesPerLine())
                arr = arr[:h, : w * 3].reshape(h, w, 3)
                if writer is None:
                    writer = imageio_ffmpeg.write_frames(
                        path, (w, h), fps=dlg.fps.value(), codec="libx264", quality=8,
                        pix_fmt_out="yuv420p", macro_block_size=2, ffmpeg_log_level="error")
                    writer.send(None)
                writer.send(np.ascontiguousarray(arr))
                prog.setValue(k + 1)
                QtWidgets.QApplication.processEvents()
            ok = not prog.wasCanceled()
        except Exception as exc:
            QtWidgets.QMessageBox.critical(self, "Video export failed", str(exc))
        finally:
            if writer is not None:
                writer.close()
            prog.close()
            self.steps_spin.setValue(old_steps)
            self.phase_slider.setValue(old_step % old_steps)
            if was_playing:
                self.btn_play.setChecked(True)
        if ok:
            self.status_msg.setText(f"Saved {path}")
        elif os.path.exists(path):
            try:
                os.remove(path)
            except OSError:
                pass

    def export_spectrum(self):
        if self.spod is None:
            return
        s = self.spod
        start = os.path.join(self.settings.value("last_dir", ""),
                             os.path.splitext(s.info.name)[0] + "_spectrum.csv")
        path, _ = QtWidgets.QFileDialog.getSaveFileName(self, "Export spectrum", start,
                                                        "CSV (*.csv);;PNG image (*.png)")
        if not path:
            return
        if path.lower().endswith(".png"):
            exp = pg.exporters.ImageExporter(self.spec.getPlotItem())
            exp.parameters()["width"] = max(1600, 2 * self.spec.width())
            exp.export(path)
        else:
            cols = [s.St]
            head = ["St"]
            if s.f is not None:
                cols.append(s.f)
                head.append("f_Hz")
            for m in range(s.L.shape[1]):
                cols.append(s.L[:, m])
                head.append(f"lambda_{m + 1}")
            np.savetxt(path, np.column_stack(cols), delimiter=",", header=",".join(head),
                       comments="", fmt="%.8g")
        self.status_msg.setText(f"Saved {path}")

    # ================================================================ misc
    def _mouse_moved(self, pos):
        if self.spod is None or self._field is None:
            return
        vb = self.plot.getViewBox()
        if not vb.sceneBoundingRect().contains(pos):
            return
        p = vb.mapSceneToView(pos)
        r = self._rect
        col = int((p.x() - r.left()) / r.width() * self.spod.nx)
        row = int((p.y() - r.top()) / r.height() * self.spod.ny)
        if 0 <= row < self.spod.ny and 0 <= col < self.spod.nx:
            img = self.img.image
            v = img[row, col] if img is not None else np.nan
            self.status_msg.setText(f"x = {p.x():.3f}   y = {p.y():.3f}   value = {v:.4g}")

    def _cache_dialog(self):
        cur = int(self.settings.value("cache_mb", 1024))
        v, ok = QtWidgets.QInputDialog.getInt(self, "Cache size", "Memory for cached frequencies (MB):",
                                              cur, 64, 65536, 256)
        if ok:
            self.settings.setValue("cache_mb", v)
            if self.spod is not None:
                self.spod.cache.budget = v * 2**20
                self._update_cache_label()

    # ---- frequency-major cache for files whose chunks hold every frequency
    def _open_mode_cache(self):
        folder = transpose_cache_dir()
        os.makedirs(folder, exist_ok=True)
        QtGui.QDesktopServices.openUrl(QtCore.QUrl.fromLocalFile(folder))

    def _choose_mode_cache(self):
        folder = QtWidgets.QFileDialog.getExistingDirectory(
            self, "Folder for the mode cache", transpose_cache_dir())
        if folder:
            self._set_mode_cache(folder)

    def _set_mode_cache(self, folder):
        set_transpose_cache_dir(folder)
        self.settings.setValue("mode_cache_dir", folder or "")
        self.status_msg.setText(f"Mode cache folder: {transpose_cache_dir()}")

    def _show_keys(self):
        QtWidgets.QMessageBox.information(self, "Keyboard shortcuts", (
            "Left / Right\tprevious / next frequency bin\n"
            "PgUp / PgDn\tprevious / next spectral peak\n"
            "Up / Down\tprevious / next SPOD mode\n"
            "Space\t\tplay / pause phase animation\n"
            ", / .\t\tstep phase back / forward\n"
            "D\t\tcycle wave direction (all / down / up)\n"
            "[ / ]\t\tprevious / next case of the last waterfall\n"
            "F\t\tfit image\n"
            "A\t\tauto contrast\n"
            "Ctrl+O\t\topen file\n"
            "Ctrl+Shift+O\topen several files as a waterfall\n"
            "Ctrl+S\t\tsnapshot\n"
            "Ctrl+Shift+S\tsave video\n"
            "Ctrl+C\t\tcopy image\n\n"
            "Click or drag in the spectrum to choose a frequency."))

    def _show_info(self):
        if self.spod is None:
            return
        i = self.spod.info
        lines = [f"File: {i.path}",
                 f"Grid: {i.nx} (x) × {i.ny} (y)",
                 f"Frequencies: {i.n_freq}   modes in P: {i.n_modes}   modes in L: {i.n_modes_L}",
                 f"P storage: {i.p_layout}"
                 + (f" in {transpose_cache_dir()}" if "cache" in i.p_layout else ""),
                 f"Nt:{i.n_snapshots}   Nfft: {i.nfft}   overlap: {i.overlap}   fps: {i.fps}"]
        for p in i.flow:
            lines.append(f"{p.name}: {p.raw} → {p.value:g}  (from {p.source})")
        for k, v in i.diameters.items():
            lines.append(f"{k} = {v:g}")
        if i.diameter:
            lines.append(f"Length scale used for axes: {i.diameter[0]} ({i.diameter[1]:g} mm)")
        if i.sym_type:
            lines.append(f"Symmetry: {i.sym_type}")
        QtWidgets.QMessageBox.information(self, "File information", "\n".join(lines))

    def _about(self):
        QtWidgets.QMessageBox.about(self, "About SPODViewer", (
            f"<b>SPODViewer {__version__}</b><br>"
            "Viewer for SPOD results from the Shock Lab schlieren scripts.<br><br>"
            "Modes are animated as Re(P·e<sup>iθ</sup>) with θ = ωt, "
            "following MATLAB's FFT sign convention.<br>"
            "The wave-direction split takes an FFT along x and keeps negative (downstream) "
            "or positive (upstream) FFT wavenumbers, i.e. waves travelling in +x or −x."))

    def _restore(self):
        g = self.settings.value("geometry")
        if g is not None:
            self.restoreGeometry(g)
        else:
            self.resize(1350, 900)
        self.btn_flip_x.setChecked(self.settings.value("flip_x", False, type=bool))
        self.btn_flip_y.setChecked(self.settings.value("flip_y", False, type=bool))
        self._rebuild_recent()

    def closeEvent(self, ev):
        self.settings.setValue("geometry", self.saveGeometry())
        for w in list(self._waterfalls):
            w.close()
        self.close_file()
        clear_transpose_cache()
        super().closeEvent(ev)

    def dragEnterEvent(self, ev):
        if ev.mimeData().hasUrls():
            ev.acceptProposedAction()

    def dropEvent(self, ev):
        urls = ev.mimeData().urls()
        if urls:
            self.open_file(urls[0].toLocalFile())


def _selftest(app, argv) -> int:
    """SPODViewer.exe --selftest <file.mat> <out_dir> [more.mat ...]: check a build end to end.

    Extra files after out_dir are combined with the first into a waterfall.

    Opens the file, renders a downstream-filtered frame, and writes a snapshot and a
    short video with the bundled ffmpeg. Writes selftest.txt with the result.
    """
    args = [a for a in argv[1:] if a != "--selftest"]
    path, out = args[0], args[1]
    os.makedirs(out, exist_ok=True)
    log = []
    try:
        import imageio_ffmpeg

        w = MainWindow(settings_name="SPODViewer-selftest")
        w.show()
        w.open_file(path)
        t0 = time.time()
        while w._waiting and time.time() - t0 < 600:   # first open may build the mode cache
            app.processEvents()
            time.sleep(0.01)
        w.dir_group.button(1).setChecked(True)
        app.processEvents()
        w._render(1200).save(os.path.join(out, "selftest.png"))
        extra = args[2:]
        if extra:   # remaining paths: build a waterfall from all files
            wf = w.open_waterfall([path] + extra)
            t0 = time.time()
            while wf.Z is None and time.time() - t0 < 120:
                app.processEvents()
                time.sleep(0.01)
            log.append(f"waterfall: {len(wf.cases)} cases, x-axis {wf.param_combo.currentText()}, "
                       f"Z {wf.Z.shape}")
            wf._open(0, int(np.argmax(wf.cases[wf.order[0]]['L'][1:, 0])) + 1)
            app.processEvents()
            log.append(f"waterfall -> viewer: {os.path.basename(w.spod.path)} St {w.spod.St[w.idx]:.4f}")
            wf.grab().save(os.path.join(out, "selftest_waterfall.png"))
            wf.close()
        ffmpeg = imageio_ffmpeg.get_ffmpeg_exe()
        log.append(f"ffmpeg: {ffmpeg}")
        vid = os.path.join(out, "selftest.mp4")
        writer = None
        for k in range(8):
            w.phase_slider.setValue(k)
            q = w._render(800).convertToFormat(QtGui.QImage.Format_RGB888)
            ww, hh = q.width() // 2 * 2, q.height() // 2 * 2
            a = np.frombuffer(q.constBits(), np.uint8).reshape(q.height(), q.bytesPerLine())
            a = np.ascontiguousarray(a[:hh, : ww * 3].reshape(hh, ww, 3))
            if writer is None:
                writer = imageio_ffmpeg.write_frames(vid, (ww, hh), fps=8, codec="libx264",
                                                     pix_fmt_out="yuv420p", macro_block_size=2,
                                                     ffmpeg_log_level="error")
                writer.send(None)
            writer.send(a)
        writer.close()
        log.append(f"St {w.spod.St[w.idx]:.4f}, video {os.path.getsize(vid)} bytes")
        log.append(" | ".join(lab.text() for lab in w.status_labels.values()))
        w.close()
        log.append("OK")
        code = 0
    except Exception as exc:  # pragma: no cover
        import traceback
        log.append(traceback.format_exc())
        log.append(f"FAILED: {exc}")
        code = 1
    with open(os.path.join(out, "selftest.txt"), "w", encoding="utf-8") as fh:
        fh.write("\n".join(log) + "\n")
    return code


def main(argv=None):
    argv = sys.argv if argv is None else argv
    if sys.platform == "win32":
        try:
            import ctypes
            ctypes.windll.shell32.SetCurrentProcessExplicitAppUserModelID("ShockLab.SPODViewer")
        except Exception:
            pass
    app = QtWidgets.QApplication(argv)
    app.setApplicationName("SPODViewer")
    app.setOrganizationName("ShockLab")
    if "--selftest" in argv:
        return _selftest(app, argv)
    w = MainWindow()
    w.show()
    files = [a for a in argv[1:] if not a.startswith("-")]
    if files:
        QtCore.QTimer.singleShot(0, lambda: w.open_file(files[0]))
    return app.exec()

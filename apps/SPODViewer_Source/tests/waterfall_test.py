"""Headless test of the waterfall window.

Usage: python tests/waterfall_test.py <out_dir> <file1.mat> <file2.mat> ...
Builds the waterfall, simulates a click on the strongest point, checks the viewer opened
that case at that St, steps to the next case, and saves screenshots.
"""

import os
import sys
import time

os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")
sys.path.insert(0, os.path.join(os.path.dirname(__file__), ".."))

import numpy as np  # noqa: E402
from PySide6 import QtCore, QtWidgets  # noqa: E402
from PySide6.QtCore import Qt  # noqa: E402

from spodviewer.app import MainWindow  # noqa: E402


def pump(app, cond=lambda: True, timeout=60):
    t0 = time.time()
    while True:
        app.processEvents()
        if cond():
            return
        if time.time() - t0 > timeout:
            raise TimeoutError
        time.sleep(0.01)


class FakeClick:
    def __init__(self, pos, mods=Qt.NoModifier):
        self._pos, self._mods = pos, mods

    def button(self):
        return Qt.LeftButton

    def scenePos(self):
        return self._pos

    def modifiers(self):
        return self._mods

    def double(self):
        return False


def main(out, paths):
    os.makedirs(out, exist_ok=True)
    app = QtWidgets.QApplication.instance() or QtWidgets.QApplication(sys.argv)
    viewer = MainWindow(settings_name="SPODViewer-test")
    viewer.resize(1350, 900)
    win = viewer.open_waterfall(paths)
    pump(app, lambda: win.Z is not None)
    print("cases:", len(win.cases), " x-axis options:",
          [win.param_combo.itemText(i) for i in range(win.param_combo.count())])
    print("x values:", win.xvals.tolist(), " Z", win.Z.shape)

    # strongest point below St_max
    sel = win.St <= win.st_max.value()
    z = np.where(sel[:, None], win.Z, -np.inf)
    row, col = np.unravel_index(np.argmax(z), z.shape)
    vb = win.plot.getViewBox()
    pos = vb.mapViewToScene(QtCore.QPointF(win._xpos[col], win.St[row]))
    win._clicked(FakeClick(pos))
    pump(app, lambda: viewer.spod is not None and not viewer._waiting)
    c = win.cases[win.order[col]]
    print(f"clicked x={win.xvals[col]:g} St={win.St[row]:.4f} -> viewer: "
          f"{os.path.basename(viewer.spod.path)} St={viewer.spod.St[viewer.idx]:.4f} mode {viewer.mode + 1}")
    assert os.path.normcase(viewer.spod.path) == os.path.normcase(os.path.normpath(c["path"]))
    assert abs(viewer.spod.St[viewer.idx] - win.St[row]) < 4 * (win.St[1] - win.St[0])

    if len(win.cases) > 1:
        viewer._step_case(+1 if col < len(win.cases) - 1 else -1)
        pump(app, lambda: not viewer._waiting)
        print("stepped case ->", os.path.basename(viewer.spod.path), f"St={viewer.spod.St[viewer.idx]:.4f}")

    for i in range(win.scale_combo.count()):
        win.scale_combo.setCurrentIndex(i)
        app.processEvents()
        print(f"scale {win.scale_combo.currentData():4s} range [{np.nanmin(win.Z):.3g}, {np.nanmax(win.Z):.3g}]")
    win.scale_combo.setCurrentIndex(0)
    pump(app, timeout=1) if False else [app.processEvents() for _ in range(20)]
    win.grab().save(os.path.join(out, "waterfall.png"))
    viewer.show()
    [app.processEvents() for _ in range(20)]
    viewer.grab().save(os.path.join(out, "viewer_from_waterfall.png"))
    win.close()
    viewer.close()
    print("OK")


if __name__ == "__main__":
    main(sys.argv[1], sys.argv[2:])

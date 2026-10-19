"""Headless smoke test: open a SPOD file, drive the UI, export a snapshot and a video.

Usage: python tests/smoke_test.py <spod_file.mat> <output_dir>
"""

import os
import sys
import time

os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")
sys.path.insert(0, os.path.join(os.path.dirname(__file__), ".."))

import numpy as np  # noqa: E402
from PySide6 import QtWidgets  # noqa: E402

from spodviewer.app import MainWindow  # noqa: E402


def wait_until(app, cond, timeout=30):
    t0 = time.time()
    while not cond():
        app.processEvents()
        time.sleep(0.01)
        if time.time() - t0 > timeout:
            raise TimeoutError("condition not met")


def main(path, out):
    if not os.path.exists(path):
        sys.exit(f"Test file not found: {path}")   # otherwise the error dialog blocks offscreen
    os.makedirs(out, exist_ok=True)
    app = QtWidgets.QApplication.instance() or QtWidgets.QApplication(sys.argv)
    w = MainWindow(settings_name="SPODViewer-test")
    w.resize(1350, 900)
    w.show()
    t = time.time()
    w.open_file(path)
    wait_until(app, lambda: not w._waiting, timeout=600)   # first open may build the mode cache
    print(f"opened + first slice in {time.time() - t:.2f}s; St = {w.spod.St[w.idx]:.4f}")
    print("status:", " | ".join(lab.text() for lab in w.status_labels.values()))
    print("peaks:", [w.peak_combo.itemText(i) for i in range(min(4, w.peak_combo.count()))])

    for disp in ("Real", "Magnitude", "Phase", "Imaginary"):
        w.display_combo.setCurrentText(disp)
        app.processEvents()
        lo, hi = w.hist.item.getLevels()
        img = w.img.image
        print(f"{disp:10s} levels [{lo:.3g}, {hi:.3g}] image range [{img.min():.3g}, {img.max():.3g}]")
    w.display_combo.setCurrentText("Real")

    # direction split, mode change, frequency stepping
    for i, key in enumerate(("all", "downstream", "upstream")):
        w.dir_group.button(i).setChecked(True)
        app.processEvents()
        print(f"direction {key:10s} rms {float(np.sqrt(np.mean(w.img.image ** 2))):.4f}")
    w.dir_group.button(0).setChecked(True)
    w._set_mode(1)
    app.processEvents()
    print("mode ->", w.mode + 1)
    t = time.time()
    for _ in range(5):
        w.set_index(w.idx + 1)
        wait_until(app, lambda: not w._waiting, timeout=600)   # first open may build the mode cache
    print(f"5 bin steps in {time.time() - t:.2f}s")
    w._jump_peak(+1)
    wait_until(app, lambda: not w._waiting, timeout=600)   # first open may build the mode cache
    print(f"next peak -> St {w.spod.St[w.idx]:.4f}")

    # animation ticks
    for _ in range(10):
        w._tick()
        app.processEvents()
    print("theta step", w.theta_step)

    # contours and flips
    w.chk_contours.setChecked(True)
    w.btn_flip_y.setChecked(True)
    app.processEvents()
    print("contours:", len(w._contours))

    snap = os.path.join(out, "snapshot.png")
    w._render(1600).save(snap)
    print("snapshot", os.path.getsize(snap), "bytes")

    import imageio_ffmpeg
    vid = os.path.join(out, "video.mp4")
    writer = None
    steps = 12
    w.steps_spin.setValue(steps)
    for k in range(steps):
        w.phase_slider.setValue(k)
        from PySide6 import QtGui
        q = w._render(1200).convertToFormat(QtGui.QImage.Format_RGB888)
        ww, hh = q.width() // 2 * 2, q.height() // 2 * 2
        a = np.frombuffer(q.constBits(), np.uint8).reshape(q.height(), q.bytesPerLine())[:hh, :ww * 3]
        a = np.ascontiguousarray(a.reshape(hh, ww, 3))
        if writer is None:
            writer = imageio_ffmpeg.write_frames(vid, (ww, hh), fps=12, codec="libx264",
                                                 pix_fmt_out="yuv420p", macro_block_size=2,
                                                 ffmpeg_log_level="error")
            writer.send(None)
        writer.send(a)
    writer.close()
    print("video", os.path.getsize(vid), "bytes")

    csv = os.path.join(out, "spectrum.csv")
    s = w.spod
    np.savetxt(csv, np.column_stack([s.St, s.L[:, 0]]), delimiter=",")
    w.close()
    print("OK")


if __name__ == "__main__":
    main(sys.argv[1], sys.argv[2])

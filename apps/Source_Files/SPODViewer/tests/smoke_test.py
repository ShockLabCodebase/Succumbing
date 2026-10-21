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

    # wavenumber spectrum window and custom k ranges
    w.set_k_ranges([])
    w.show_kspectrum()
    app.processEvents()
    kw = w._kwin
    print(f"k-spectrum: {kw.k.size} bins, k {kw.k[0]:.1f}..{kw.k[-1]:.1f}, grey {len(kw._grey)} (all)")
    w.set_direction("downstream")
    app.processEvents()
    print(f"downstream: grey {len(kw._grey)}, {kw.kept_label.text()}")
    w.set_direction("bands")          # no ranges yet: adds one around the strongest k
    app.processEvents()
    assert len(w.k_ranges) == 1 and kw._direction() == "bands"
    rms_band = float(np.sqrt(np.mean(w.img.image ** 2)))
    print(f"custom: ranges {w.k_ranges}, grey {len(kw._grey)}, rms {rms_band:.4f}, {kw.kept_label.text()}")
    kw.add_range()
    a, b = w.k_ranges[1]
    kw.table.item(1, 1).setText(f"{b + 1:.3f}")     # typed edit of the second range
    app.processEvents()
    assert abs(w.k_ranges[1][1] - (b + 1)) < 1e-3, w.k_ranges
    edge = kw._edges[0][1]
    lo, hi = edge.getRegion()
    edge.setRegion((lo - 0.5, hi))                   # as if dragged in the line plot
    edge.sigRegionChangeFinished.emit(edge)
    app.processEvents()
    assert abs(kw._edges[0][0].getRegion()[0] - (lo - 0.5)) < 1e-6, "map edge follows the line edge"
    assert abs(w.k_ranges[0][0] - (lo - 0.5)) < 1e-6
    print(f"two ranges {[[round(v, 3) for v in r] for r in w.k_ranges]}, grey {len(kw._grey)}, "
          f"{kw.kept_label.text()}")
    kw.split.grab().save(os.path.join(out, "kspectrum.png"))
    w._render(1200).save(os.path.join(out, "snapshot_kranges.png"))

    # log/linear scales and the y band the line sums over
    kw.chk_map_log.setChecked(False)
    assert tuple(kw.img.levels) == (0, 1) and kw.img.image.min() >= 0
    kw.chk_line_log.setChecked(False)
    assert not kw.line.getPlotItem().ctrl.logYCheck.isChecked()
    kept_full, E_full = kw.kept_label.text(), kw.E.copy()
    r = w._rect
    lo, hi = r.top() + 0.6 * r.height(), r.bottom()
    kw.set_y_range(lo, hi)
    app.processEvents()
    assert kw._limited and abs(kw.y_lo.value() - lo) < 1e-3, (kw.y_lo.value(), lo)
    rows = kw._yc >= lo
    E_band = kw._P2[rows].sum(axis=0)[kw._order]
    assert 0 < rows.sum() < rows.size and np.allclose(kw.E, E_band / E_band.max(), rtol=1e-5)
    print(f"y band {lo:.3g}..{hi:.3g}: {kw.kept_label.text()}")
    kw.split.grab().save(os.path.join(out, "kspectrum_yband_linear.png"))
    kw.y_lo.setValue(r.top() - 10)                  # typed past the frame: clipped
    assert abs(kw.yband.getRegion()[0] - r.top()) < 1e-3 and not kw._limited   # boxes round to 3 dp
    kw.set_y_range(lo, hi)
    kw.full_y()
    assert not kw._limited and np.allclose(kw.E, E_full) and kw.kept_label.text() == kept_full
    kw.chk_map_log.setChecked(True)
    kw.chk_line_log.setChecked(True)
    assert tuple(kw.img.levels) == (-5, 0)
    kw._remove_selected()
    assert len(w.k_ranges) == 1
    w.set_direction("all")
    app.processEvents()

    from spodviewer.app import ModeCacheDialog
    dlg = ModeCacheDialog(w, None, 15)
    print("mode cache dialog:", dlg.shown_folder(), "|", dlg.usage.text())
    dlg.limit.setValue(500)
    assert dlg.limit.value() == 100
    dlg.close()

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

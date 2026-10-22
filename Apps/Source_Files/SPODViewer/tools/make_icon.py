"""Draw the SPODViewer icon: a screech-like spectrum over "ShockLab" written in spectral bars.

Writes spodviewer/assets/spodviewer.png (256 px) and spodviewer.ico (16-256 px).
Run from Apps/Source_Files/SPODViewer with the spodviewer env:  python tools/make_icon.py
"""

import os
import struct
import sys
from pathlib import Path

import numpy as np

os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")
from PySide6 import QtCore, QtGui  # noqa: E402

ASSETS = Path(__file__).resolve().parents[1] / "spodviewer" / "assets"
SIZES = [16, 24, 32, 48, 64, 128, 256]
TEXT_MIN = 64          # below this the text is unreadable, so draw the spectrum only
BG = QtGui.QColor("#1b2a6b")
FONT_FILE = os.path.join(os.environ.get("WINDIR", r"C:\Windows"), "Fonts", "bahnschrift.ttf")
FONT = None

CMAP = np.loadtxt(ASSETS / "CMRmap.txt")


def cmap(v):
    """Colour from CMRmap at v in [0, 1], skipping the near-black start."""
    r, g, b = CMAP[int(np.clip(0.25 + 0.75*v, 0, 1)*(len(CMAP) - 1))]
    return QtGui.QColor.fromRgbF(r, g, b)


def spectrum(x):
    """Broadband hump with A1/A2-like tones and a harmonic, in [0, 1]."""
    hump = 0.55*np.exp(-((x - 0.42)/0.30)**2)
    tones = (0.42*np.exp(-((x - 0.34)/0.012)**2)
             + 0.30*np.exp(-((x - 0.40)/0.012)**2)
             + 0.16*np.exp(-((x - 0.70)/0.012)**2))
    ripple = 0.025*np.sin(57*x) + 0.015*np.sin(131*x + 1)
    return np.clip(0.08 + hump + tones + ripple*(x > 0.05), 0, 1)


def draw(n):
    img = QtGui.QImage(n, n, QtGui.QImage.Format_ARGB32)
    img.fill(QtCore.Qt.transparent)
    p = QtGui.QPainter(img)
    p.setRenderHint(QtGui.QPainter.Antialiasing)
    s = n/256

    m = 8*s
    p.setPen(QtCore.Qt.NoPen)
    p.setBrush(BG)
    p.drawRoundedRect(QtCore.QRectF(m, m, n - 2*m, n - 2*m), 40*s, 40*s)

    with_text = n >= TEXT_MIN
    x0, x1 = 26*s, n - 26*s
    base = (150 if with_text else 220)*s
    top = 30*s

    # Spectrum: filled area coloured by level, white line on top
    x = np.linspace(0, 1, 400)
    y = spectrum(x)
    pts = [QtCore.QPointF(x0 + xi*(x1 - x0), base - yi*(base - top)) for xi, yi in zip(x, y)]
    fill = QtGui.QPolygonF([QtCore.QPointF(x0, base), *pts, QtCore.QPointF(x1, base)])
    grad = QtGui.QLinearGradient(0, base, 0, top)
    for v in np.linspace(0, 1, 6):
        c = cmap(v)
        c.setAlphaF(0.85)
        grad.setColorAt(v, c)
    p.setBrush(grad)
    p.drawPolygon(fill)
    pen = QtGui.QPen(QtGui.QColor("white"), max(1.0, 4*s))
    pen.setJoinStyle(QtCore.Qt.RoundJoin)
    p.setPen(pen)
    p.setBrush(QtCore.Qt.NoBrush)
    p.drawPolyline(QtGui.QPolygonF(pts))

    if with_text:
        # "ShockLab" filled with vertical bars, like a bar spectrum
        font = QtGui.QFont(FONT, 10)
        font.setWeight(QtGui.QFont.Bold)
        font.setPixelSize(round(62*s))
        font.setStretch(QtGui.QFont.SemiCondensed)
        path = QtGui.QPainterPath()
        path.addText(0, 0, font, "ShockLab")
        r = path.boundingRect()
        w_box, y_txt = n - 40*s, 220*s
        k = min(1.0, w_box/r.width())
        tf = QtGui.QTransform()
        tf.translate(n/2 - k*r.center().x(), y_txt - k*r.bottom())
        tf.scale(k, k)
        path = tf.map(path)
        tr = path.boundingRect()

        p.setPen(QtCore.Qt.NoPen)
        p.setClipPath(path)
        ghost = QtGui.QColor("white")
        ghost.setAlphaF(0.22)
        p.fillPath(path, ghost)       # faint full letters keep the word readable
        bar, gap = 3.0*s, 1.4*s
        # Bar heights follow the spectrum, so the letters read as a spectrum
        xs = np.arange(tr.left(), tr.right(), bar + gap)
        lev = spectrum(0.1 + 0.8*(xs - tr.left())/tr.width())
        lev = (lev - lev.min())/(lev.max() - lev.min())
        for xb, l in zip(xs, lev):
            xc = (xb - tr.left())/tr.width()
            h = tr.height()*(0.3 + 0.7*l)
            p.setBrush(cmap(0.35 + 0.65*xc))
            p.drawRect(QtCore.QRectF(xb, tr.bottom() - h, bar, h))
        p.setClipping(False)

    p.end()
    return img


def png_bytes(img):
    buf = QtCore.QBuffer()
    buf.open(QtCore.QIODevice.WriteOnly)
    img.save(buf, "PNG")
    return bytes(buf.data())


def write_ico(path, images):
    """ICO container with PNG-compressed entries (Vista and later)."""
    blobs = [png_bytes(im) for im in images]
    out = struct.pack("<HHH", 0, 1, len(blobs))
    offset = 6 + 16*len(blobs)
    for im, b in zip(images, blobs):
        d = im.width() % 256          # 256 is stored as 0
        out += struct.pack("<BBBBHHII", d, d, 0, 0, 1, 32, len(b), offset)
        offset += len(b)
    path.write_bytes(out + b"".join(blobs))


def main():
    global FONT
    app = QtGui.QGuiApplication(sys.argv)  # noqa: F841  (fonts need an app)
    # The offscreen platform has no system fonts, so load one from file
    fid = QtGui.QFontDatabase.addApplicationFont(FONT_FILE)
    if fid < 0:
        sys.exit(f"could not load {FONT_FILE}")
    FONT = QtGui.QFontDatabase.applicationFontFamilies(fid)[0]
    images = [draw(n) for n in SIZES]
    images[-1].save(str(ASSETS / "spodviewer.png"))
    write_ico(ASSETS / "spodviewer.ico", images)
    print("wrote", ASSETS / "spodviewer.png", "and", ASSETS / "spodviewer.ico")


if __name__ == "__main__":
    main()

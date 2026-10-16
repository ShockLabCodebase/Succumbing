# PyInstaller spec for SPODViewer. Build with build.bat (or: pyinstaller SPODViewer.spec).
# Produces dist/SPODViewer/SPODViewer.exe plus an _internal folder; copy the whole
# SPODViewer folder to share it. Python, Qt, numpy/scipy/h5py and ffmpeg are bundled.

from PyInstaller.utils.hooks import collect_data_files

datas = [("spodviewer/assets", "spodviewer/assets")]
datas += collect_data_files("imageio_ffmpeg", subdir="binaries")   # ffmpeg.exe
datas += collect_data_files("pyqtgraph", subdir="colors")           # CET colour maps

excludes = [
    "tkinter", "matplotlib", "IPython", "pandas", "PyQt5", "PyQt6", "PySide2",
    "OpenGL", "cupy", "numba", "pytest",
    "PySide6.QtWebEngineCore", "PySide6.QtWebEngineWidgets", "PySide6.QtWebEngineQuick",
    "PySide6.QtQuick", "PySide6.QtQml", "PySide6.QtQuick3D", "PySide6.Qt3DCore",
    "PySide6.QtMultimedia", "PySide6.QtPdf", "PySide6.QtCharts", "PySide6.QtDataVisualization",
    "PySide6.QtSql", "PySide6.QtNetwork",
    "PySide6.QtBluetooth", "PySide6.QtPositioning", "PySide6.QtLocation", "PySide6.QtSensors",
    "pyqtgraph.opengl", "pyqtgraph.examples", "pyqtgraph.jupyter",
]

a = Analysis(
    ["run_spodviewer.py"],
    pathex=["."],
    datas=datas,
    hiddenimports=["scipy.signal", "scipy.ndimage", "scipy.io", "h5py.defs", "h5py.utils",
                   "h5py.h5ac", "h5py._proxy"],
    excludes=excludes,
    noarchive=False,
)

# Qt files the excludes above don't catch: the Quick/QML/Pdf/Network DLLs come in through
# plugins (virtual keyboard, PDF image format, touch input), opengl32sw is Qt's software
# OpenGL fallback (only used by OpenGL/Quick rendering) and translations are only for
# Qt's own dialogs in other languages. None of them is used by this widgets app.
_drop = (
    "opengl32sw.dll", "Qt6Pdf.dll", "Qt6Quick.dll", "Qt6Qml.dll", "Qt6QmlMeta.dll",
    "Qt6QmlModels.dll", "Qt6QmlWorkerScript.dll", "Qt6VirtualKeyboard.dll", "Qt6Network.dll",
    "qpdf.dll", "qtvirtualkeyboardplugin.dll", "qtuiotouchplugin.dll",
)


def _keep(entry):
    dest = entry[0].replace("\\", "/")
    return dest.rsplit("/", 1)[-1] not in _drop and "PySide6/translations/" not in dest


a.binaries = [b for b in a.binaries if _keep(b)]
a.datas = [d for d in a.datas if _keep(d)]

pyz = PYZ(a.pure)

exe = EXE(
    pyz,
    a.scripts,
    [],
    exclude_binaries=True,
    name="SPODViewer",
    icon="spodviewer/assets/spodviewer.ico",
    console=False,
    upx=False,
)

coll = COLLECT(exe, a.binaries, a.datas, strip=False, upx=False, name="SPODViewer")

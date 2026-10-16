# PyInstaller runtime hook: point imageio_ffmpeg at the minimal ffmpeg bundled by
# SPODViewer.spec (the full imageio-ffmpeg binary is left out of the build).
import os
import sys

os.environ.setdefault("IMAGEIO_FFMPEG_EXE", os.path.join(sys._MEIPASS, "ffmpeg", "ffmpeg.exe"))

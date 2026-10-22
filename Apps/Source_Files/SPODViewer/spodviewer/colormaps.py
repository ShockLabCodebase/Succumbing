"""Colour maps: the group's pogmap and CMRmap, plus a few standard ones."""

from __future__ import annotations

import re
from pathlib import Path

import numpy as np
import pyqtgraph as pg

ASSETS = Path(__file__).resolve().parent / "assets"

# name -> (kind, source). kind: "diverging", "sequential" or "cyclic".
CATALOGUE = {
    "pogmap": ("diverging", "file:pogmap.txt"),
    "CMRmap": ("sequential", "file:CMRmap.txt"),
    "grey": ("sequential", "grey"),
    "blue-red": ("diverging", "CET-D1"),
    "viridis": ("sequential", "viridis"),
    "magma": ("sequential", "magma"),
    "inferno": ("sequential", "inferno"),
    "cyclic": ("cyclic", "CET-C2"),
}

DEFAULT_FOR_DISPLAY = {
    "Real": "pogmap",
    "Imaginary": "pogmap",
    "Magnitude": "CMRmap",
    "Phase": "cyclic",
}

_cache: dict[str, pg.ColorMap] = {}


def _read_txt(path: Path) -> np.ndarray:
    rows = []
    for line in path.read_text().splitlines():
        parts = [p for p in re.split(r"[,\s]+", line.strip()) if p]
        if len(parts) >= 3:
            rows.append([float(v) for v in parts[:3]])
    return np.asarray(rows)


def get(name: str) -> pg.ColorMap:
    if name in _cache:
        return _cache[name]
    _, src = CATALOGUE[name]
    if src.startswith("file:"):
        rgb = _read_txt(ASSETS / src[5:])
        pos = np.linspace(0, 1, len(rgb))
        cmap = pg.ColorMap(pos, (rgb * 255).astype(np.ubyte), name=name)
    elif src == "grey":
        cmap = pg.ColorMap([0, 1], [(0, 0, 0), (255, 255, 255)], name=name)
    else:
        cmap = pg.colormap.get(src)
    _cache[name] = cmap
    return cmap


def names() -> list[str]:
    return list(CATALOGUE)

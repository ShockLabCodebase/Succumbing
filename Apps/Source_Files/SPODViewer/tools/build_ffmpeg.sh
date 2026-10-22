#!/usr/bin/env bash
# Build a minimal, statically linked ffmpeg.exe with libx264 for SPODViewer's video export.
# It only does what imageio_ffmpeg.write_frames needs: raw rgb24 frames on a stdin pipe,
# optional scale filter, libx264 + yuv420p, written to an .mp4 file. About 5 MB instead of
# the 84 MB full build that ships with imageio-ffmpeg. GPL (x264), as that build is too.
#
# Run from the MSYS2 MINGW64 shell (or: C:/.../msys64/usr/bin/bash -lc with MSYSTEM=MINGW64),
# with mingw-w64-x86_64-gcc, -nasm, -pkgconf, make, git and diffutils installed:
#   bash tools/build_ffmpeg.sh
# Output: build_ffmpeg/ffmpeg.exe (git-ignored), which SPODViewer.spec bundles.
set -euo pipefail

FFMPEG_VER="${FFMPEG_VER:-7.1.1}"
X264_BRANCH="${X264_BRANCH:-stable}"

HERE="$(cd "$(dirname "$0")/.." && pwd)"
OUT="$HERE/build_ffmpeg"
SRC="$OUT/src"
PREFIX="$OUT/prefix"
JOBS="$(nproc)"
mkdir -p "$SRC" "$PREFIX"

# x264, static library only
if [ ! -d "$SRC/x264" ]; then
    git clone --depth 1 --branch "$X264_BRANCH" https://code.videolan.org/videolan/x264.git "$SRC/x264"
fi
cd "$SRC/x264"
./configure --prefix="$PREFIX" --enable-static --disable-cli --disable-opencl --bit-depth=8
make -j"$JOBS"
make install

# ffmpeg, everything off except the pieces write_frames uses
if [ ! -d "$SRC/ffmpeg-$FFMPEG_VER" ]; then
    curl -fL "https://ffmpeg.org/releases/ffmpeg-$FFMPEG_VER.tar.xz" -o "$SRC/ffmpeg-$FFMPEG_VER.tar.xz"
    tar -xJf "$SRC/ffmpeg-$FFMPEG_VER.tar.xz" -C "$SRC"
fi
cd "$SRC/ffmpeg-$FFMPEG_VER"
PKG_CONFIG_PATH="$PREFIX/lib/pkgconfig" ./configure \
    --prefix="$PREFIX" --pkg-config-flags=--static --extra-ldflags=-static \
    --disable-everything --disable-network --disable-doc --disable-debug \
    --disable-ffplay --disable-ffprobe \
    --disable-iconv --disable-zlib --disable-bzlib --disable-lzma --disable-sdl2 \
    --enable-small --enable-gpl --enable-libx264 \
    --enable-protocol=file,pipe,fd \
    --enable-demuxer=rawvideo --enable-decoder=rawvideo \
    --enable-encoder=libx264 --enable-muxer=mp4 \
    --enable-filter=scale,format,null
make -j"$JOBS"
strip -o "$OUT/ffmpeg.exe" ffmpeg.exe

echo "DLLs ffmpeg.exe links to (should be Windows system DLLs only):"
objdump -p "$OUT/ffmpeg.exe" | grep "DLL Name"
ls -l "$OUT/ffmpeg.exe"

@echo off
rem Build dist\SPODViewer_<version>\SPODViewer.exe with the "spodviewer" conda environment.
rem Usage: build.bat   (run from this folder)
setlocal
set "ENV=%USERPROFILE%\anaconda3\envs\spodviewer"
if not exist "%ENV%\python.exe" (
  echo Conda environment not found: %ENV%
  echo Create it with:  conda create -n spodviewer -c conda-forge python=3.12 pip
  echo then:            "%ENV%\python.exe" -m pip install -r requirements.txt
  exit /b 1
)
if not exist "%~dp0build_ffmpeg\ffmpeg.exe" (
  echo build_ffmpeg\ffmpeg.exe not found. Build it once with tools\build_ffmpeg.sh in the
  echo MSYS2 MINGW64 shell; see README.md, "Building".
  exit /b 1
)
set "PATH=%ENV%;%ENV%\Library\bin;%ENV%\Scripts;%PATH%"
cd /d "%~dp0"
for /f "delims=" %%v in ('python -c "from spodviewer import __version__; print(__version__)"') do set "VER=%%v"
if not defined VER (
  echo Could not read __version__ from spodviewer\__init__.py
  exit /b 1
)
if exist "dist\SPODViewer_%VER%" (
  echo dist\SPODViewer_%VER% already exists. Bump __version__ in spodviewer\__init__.py,
  echo or delete that folder to rebuild this version.
  exit /b 1
)
"%ENV%\python.exe" -m PyInstaller --noconfirm --clean SPODViewer.spec || exit /b 1
move "dist\SPODViewer" "dist\SPODViewer_%VER%" >nul || exit /b 1
echo.
echo Built: %~dp0dist\SPODViewer_%VER%\SPODViewer.exe

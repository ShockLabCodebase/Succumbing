@echo off
rem Build dist\SPODViewer\SPODViewer.exe with the "spodviewer" conda environment.
rem Usage: build.bat   (run from this folder)
setlocal
set "ENV=%USERPROFILE%\anaconda3\envs\spodviewer"
if not exist "%ENV%\python.exe" (
  echo Conda environment not found: %ENV%
  echo Create it with:  conda create -n spodviewer -c conda-forge python=3.12 pip
  echo then:            "%ENV%\python.exe" -m pip install -r requirements.txt
  exit /b 1
)
set "PATH=%ENV%;%ENV%\Library\bin;%ENV%\Scripts;%PATH%"
cd /d "%~dp0"
"%ENV%\python.exe" -m PyInstaller --noconfirm --clean SPODViewer.spec || exit /b 1
echo.
echo Built: %~dp0dist\SPODViewer\SPODViewer.exe

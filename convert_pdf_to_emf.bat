@echo off

set targetdir=%1

for /R %targetdir% %%i in (*.pdf) do (
	echo Converting %%~ni.pdf to %%~ni.emf ...
REM pre 0.92 inkscape cl options 
REM	inkscape --without-gui --file="%%i" --export-emf="%%~pi/%%~ni.emf"
REM current inkscape options
	inkscape "%%i" --export-filename="%%~pi/%%~ni.emf"
	echo Done
)

@echo off

set targetdir=%1

for /R %targetdir% %%i in (*.pdf) do (
	echo Converting %%~ni.pdf to %%~ni.emf ...
	inkscape --without-gui --file="%%i" --export-emf="%%~pi/%%~ni.emf"
	echo Done
)

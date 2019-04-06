@echo off
Setlocal EnableDelayedExpansion
set fn=
for /f "tokens=*" %%f in ('dir /on /b *.pdf') do set fn=!fn! "%%f"
pdftk %fn% cat output file.pdf
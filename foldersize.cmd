@echo off
set Home=E:\Users
echo Folder list compiled on %date% > c:\Folders.txt
echo ====================================== >> c:\Folders.txt
for /d %%a in ("%Home%\*.*") do call :Sub %%a
notepad c:\Folders.txt
goto :eof
:Sub
echo Processing "%*"
for /F "delims=" %%b in ('dir "%*" /s ^| find /i "File(s)"') do set summary=%%b
echo %* %Summary% >> c:\Folders.txt 
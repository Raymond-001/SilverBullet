@echo off
if exist "%~dp0Icon\svbfile.ico" (
REG DELETE HKEY_CLASSES_ROOT\.svb /f
REG ADD HKEY_CLASSES_ROOT\.svb /ve /t REG_SZ /d "svbfile"
REG ADD HKEY_CLASSES_ROOT\.svb /v BrowserFlags /t REG_DWORD /d 0x00000000
REG ADD HKEY_CLASSES_ROOT\.svb /v EditFlags /t REG_DWORD /d 0x00000000
REG ADD HKEY_CLASSES_ROOT\.svb /v PerceivedType /t REG_SZ /d "text"
REG ADD HKEY_CLASSES_ROOT\.svb\DefaultIcon /ve /t REG_SZ /d "%~dp0Icon\svbfile.ico,0"
REG DELETE HKEY_CLASSES_ROOT\svbfile /f
REG ADD HKEY_CLASSES_ROOT\svbfile /ve /t REG_SZ
REG ADD HKEY_CLASSES_ROOT\svbfile\DefaultIcon /ve /t REG_SZ /d "%~dp0Icon\svbfile.ico"
REG ADD HKEY_CLASSES_ROOT\svbfile\shell /ve /t REG_SZ
REG DELETE HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FileExts\.svb /f
REG ADD HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FileExts\.svb /ve /t REG_SZ
REG ADD HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FileExts\.svb\OpenWithList /ve /t REG_SZ
ECHO the icon was successfully assigned
) else (
ECHO svb icon doesn't exist
)
pause&exit
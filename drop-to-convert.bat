cd %~dp0
set X=%~dp0
set X=%X:\=/%
set X=%X:C:=/mnt/c%
cmd /k wsl %X%/FFMPEG "%~n1%~x1" 
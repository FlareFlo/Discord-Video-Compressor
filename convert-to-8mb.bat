@echo off
cd %~dp0 									&:: Sets current directory
set X=%~dp0									&:: Initializes varaible X with currenty directory
set drive=%CD:~0,1%							&:: Initializes variable drive with the current drive letter as such: "c"§
set X=%X:\=/%								&:: Replaces all \ with / in X path compliant formatting
set X=%X:C:=mnt/c%							&:: Replaces the C: in X with mnt/c for WSL compliant formatting
cmd /k wsl %X%/script8mb "%~n1%~x1"
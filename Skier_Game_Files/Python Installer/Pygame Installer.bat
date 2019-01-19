@echo off
cls
title Pygame Installer
rem Pygame Installer Created By Aiden Moechnig

:menu
cls
echo Please Install Python Before Running The Installer
echo --------------------------------------------------
echo Do You Want To Install Pygame?
echo (y) Yes
echo (n) No
echo.

SET INPUT=
SET /P INPUT=Please select a number and then press enter:

IF /I '%INPUT%'=='y' GOTO install
IF /I '%INPUT%'=='n' GOTO exit
goto menu

:install
cls
py -m pip install -U pygame --user
goto finish

:exit
exit

:finish
echo.
echo Installation Complete!
echo.
pause
goto exit
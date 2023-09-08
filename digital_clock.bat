@echo off
title Digital Clock - https://github.com/Zenyph
@mode con cols = 30 lines = 7
color 00
:main
cls
echo.
echo Time: %time%
echo.
echo Date: %date%
echo.
ping -n 2 127.0.0.1 >nul
goto :main
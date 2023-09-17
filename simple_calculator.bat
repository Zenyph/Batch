@echo off
title Simple Calculator - https://github.com/Zenyph
set /p operazione="Enter the operation to perform (+, -, *, /): "
set /p num1="Enter the first number: "
set /p num2="Enter the second number: "

if "%operation%"=="+" (
    set /a result=%num1% + %num2%
    echo Result: %result%
) else if "%operation%"=="-" (
    set /a result=%num1% - %num2%
    echo Result: %result%
) else if "%operation%"=="*" (
    set /a result=%num1% * %num2%
    echo Result: %result%
) else if "%operation%"=="/" (
    set /a result=%num1% / %num2%
    echo Result: %result%
) else (
    echo Operation not supported.
)

pause > nul
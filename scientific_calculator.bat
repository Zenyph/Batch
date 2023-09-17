@echo off
title Scientific Calculator - https://github.com/Zenyph
set /a input=0
set /a result=0

:start
cls
echo.
echo 1. Sum
echo 2. Subtraction
echo 3. Multiplication
echo 4. Division
echo 5. Exit
echo.
set /p choice=Enter the number of your choice: 

if %choice% equ 5 (
   goto end
)

if not %choice% gtr 0 (
   echo Invalid choice.
   pause >nul
   goto start
)

cls
echo Enter the first number:
set /p num1=

if not %num1% equ %num1% (
   echo ERROR: input invalid.
   pause >nul
   goto start
)

cls
echo Enter the second number:
set /p num2=

if not %num2% equ %num2% (
   echo ERROR: input invalid.
   pause >nul
   goto start
)

if %choice% equ 1 (
   set /a result=%num1%+%num2%
   echo The result of the sum is: %result%
) else if %choice% equ 2 (
   set /a result=%num1%-%num2%
   echo The result of the subtraction is: %result%
) else if %choice% equ 3 (
   set /a result=%num1%*%num2%
   echo The result of the multiplication is: %result%
) else if %choice% equ 4 (
   if %num2% equ 0 (
      echo ERROR: division by zero not allowed.
      pause >nul
      goto start
   ) else (
      set /a result=%num1%/%num2%
      echo The result of the division is: %result%
   )
)

echo.
echo Press any key to continue..
pause >nul
goto start

:end
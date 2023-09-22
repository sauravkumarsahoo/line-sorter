@echo off
setlocal enabledelayedexpansion

REM Check if a filename is provided as an argument
if "%~1"=="" (
  echo Usage: %0 ^<filename^>
  exit /b 1
)

set "filename=%~1"

REM Check if the file exists
if not exist "%filename%" (
  echo Error: File "%filename%" does not exist.
  exit /b 1
)

REM Sort the file content alphabetically and overwrite the original file
sort "%filename%" /o "%filename%.sorted"

REM Rename the sorted file to the original filename
move /y "%filename%.sorted" "%filename%"

echo File "%filename%" has been sorted alphabetically and saved.
exit /b 0

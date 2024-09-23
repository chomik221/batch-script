REM clears the screen and prevents user from writing comands in comand line
cls
@echo off

REM Welcome user and show current time

echo Welcome %USER%, this is my script
echo The current time is %time%

REM Create new directory and subdirectories

mkdir MujProgram\info MujProgram\src

REM Check if the script was started with %1 parameter

if "%~1"=="" (
	set /p folderName="Enter folder name"
) else (
	set "folderName=%~1"
)

REM Create new subdirectory named by folderName

mkdir MujProgram\%folderName%
echo Folder %folderName% has been created successfully

REM Test the conection to utb.cz and save the output

ping utb.cz -n 4 > MujProgram\info\ping.log

REM Create file with structure of MujProgram directory

dir MujProgram > MujProgram\info\dir.log

REM End script executing

exit /b 0

@ECHO off
IF [%1]==[] (
	set /p projname="Enter project name: "
) ELSE (
	set projname=%1%
)


echo Initializing new project in folder %projname%...
IF NOT EXIST %projname% (mkdir %projname%)
cd %projname%
xcopy %~dp0template\*

echo Running npm install...
npm install

echo Finalizing...
cd ..
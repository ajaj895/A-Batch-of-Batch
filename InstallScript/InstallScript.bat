@echo off
rem @echo off keeps the output of the script clean by not echoing every command in this script (including rem). 
rem With @echo off, only the echo commands, and command errors are printed to the console.

rem This is a script to run installations on a computer.
rem This bat needs to be placed in a folder that also contains a folder called "Install" CASE SENSITIVE
rem This script will sequentially start the files that are in the "Install" folder, 
rem If any non-exe file is in the folder, this script will open the file in the default program for that file (ie. an HTML file and google chrome). 
rem Evan Colwell, Summer 2019.

rem Confirmation phase.
echo This is a script that will install everything in the "Install" folder.
echo --------
echo Proceed?
echo ________
pause 

rem This if/else statement checks whether or not the Install folder exists. IT IS CASE SENSITIVE.
if not exist ".\Install\" (
echo Install folder does not exist in my root folder! Add a folder called "Install" in the same folder as this script, the name IS case sensitive. The program will now exit
pause
exit
) else (
for %%a in (".\Install\*") do (
rem the %%a is actually a variable, the %% is what is in the folder and "a" is the name, %%a is the current variable.
start /w "" %%a

rem the /w on the start command waits for the first install to finish before going on to the next.
rem The script will not continue until the current program is fully closed

))
echo Installation script complete!
pause

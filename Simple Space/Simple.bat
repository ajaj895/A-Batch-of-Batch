@echo off  
rem This allows for you to see the working script in cmd prompt and off allows for it to be closed
rem @echo off runs the batch file in it's own window, without the look of the cmd prompt, this makes it easier to read and have echo msgs in.
rem Lastly, it does not echo the command sent, and is much cleaner to look at.

rem This is a comment and will not appear in the command prompt using rem
title A simple batch
rem this sets the title of the command prompt window
echo READY FOR THIS? LET'S START!
rem Echo just prints what is given to it, similar to echo in linux.
pause
rem Pause stops the script until the user hits a button, can be used to read information given to the user.

start "" https://www.spacex.com/
start "" https://www.nasa.gov/
start "" https://www.blueorigin.com/
start "" https://www.rocketlabusa.com/
rem The start "" followed by a link opens a bunch of websites based on the default application I think.
rem The "" DOES start the default program for that file or whatever you give it.
start "" C:\Users\IT-Temp\Desktop\test.txt
rem The start command is also used to start applications like exe's and other things.
echo The script has finished running.
echo   --- End of transmission ---
pause

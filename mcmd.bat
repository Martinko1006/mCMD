@echo off
title mCMD
color a
net session
cls

if %ERRORLEVEL% neq 0 (goto error) else (goto title)

:error
echo Start program as administrator.
pause > nul & exit

:title
echo =========================================================================
echo.
echo                   mCMD[Version 0.3 (DEVELOPMENT VERSION)]               
echo                   All Rights Reserved. To %USERNAME%
echo.
echo                   To get info type "info"
echo.
echo =========================================================================
goto script
:script
set /p command="Enter Command : "
if %command% == info (
    cls
    echo =========================================================================
    echo.
    echo                           Maded by Marin Vido
    echo                     Welcome %USERNAME% to mCMD program.
    echo                     This CMD reaster maded in Batch
    echo                     Programing languge. If you wanna get
    echo                     support send it to my GitHub.
    echo                     This is my frist bat program
    echo.
    echo.
    echo                     I leaked you computer name %COMPUTERNAME%
    echo.
    echo =========================================================================
    pause > nul
    set command=
    goto script     
)
if %command% == "" (goto script)
%command%
goto script

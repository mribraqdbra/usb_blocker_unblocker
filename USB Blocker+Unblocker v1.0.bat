::[Bat To Exe Converter]
::
::fBE1pAF6MU+EWHzeyHcDClt2QAuBN26oTYAS6uT07OGCsA0LBaxvRJzUz6aNJdwR5krnftgv1246
::fBE1pAF6MU+EWHzeyHcDClt2QAuBN26oTYAS6uT07OGCsA0LBaxvRJzUz6aNJdwG5EfoepUmmHhbjKs=
::YAwzoRdxOk+EWAnk
::fBw5plQjdG8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF65
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF65
::ZR41oxFsdFKZSTk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpSI=
::egkzugNsPRvcWATEpSI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQIFGzkUbgiNP2C/FP4p5ur34OmMp19dQrNxKO8=
::ZQ05rAF9IBncCkqN+0xwdVtCHUrSXA==
::ZQ05rAF9IAHYFVzEqQIFGzkUbgiNP2C/FP4p5ur34OmMp199
::eg0/rx1wNQPfEVWB+kM9LVsJDDGxHiuYCrof4+3ppN+JoEESV+k6as/Ni/reQA==
::fBEirQZwNQPfEVWB+kM9LVsJDDGxHiuYCrof4+3ppN+JoEESV+k6as/Ni/reQA==
::cRolqwZ3JBvQF1fEqQIFGzkUbgiNP2C/FP4p5ur34OmMp199
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATE3k04JltnTQnCG261FLIZiA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRmxx2BwChdbTw+HLiCPCLcQ5+vw6vjn
::Zh4grVQjdCqDJGy31gISJBRXRwGQd160BLkT6+P+/aqR8wNNaNcMWs/51ruNK+UBoXDqd5oi1XFfiosaXVUIMBeza28=
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
mode con: cols=35 lines=15
color 0c
REM Author: John Sam George
REM Written by: John Sam George & @mribraqdbra
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
REM This Script denies auto loading of USB and CD Rom and takes ownership of usbstor.inf and pnf files :
REM and denies access to these files. So no USB or CD Rom drivers can be loaded.                       :
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:main
cls
echo.  ============================
echo    USB Blocker+Unblocker v1.0 
echo.
echo.     Author: John Sam George
echo.  ============================
echo.
echo.
echo  [1] Block all Ports
echo.
echo  [2] Unblock all Ports
echo.
echo.
set /p input="Please chose a number:" || set input=?
if "%input%"=="1" goto block
if "%input%"=="2" goto unblock
cls
echo.
echo. "%input%" Is Invaild!
echo.
pause
goto main
:block
start block.bat
goto done
:unblock
start unblock.bat
goto done
:done
cls
echo.
echo         Succeed!
timeout /t 2 /nobreak >nul
goto main

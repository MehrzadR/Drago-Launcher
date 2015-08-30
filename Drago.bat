//Generic Launcher for Dragonet
// Created by MehrzadR
Set Heap=512
setlocal enabledelayedexpansion
Echo off
CLS
Color 73

:Launcher
CLS
Echo Drago Launcher v1.3
Echo.
Title Drago Launcher: Preparing...
Echo Preparing...
Echo ===============================
java -version
IF ERRORLEVEL 1 GOTO Java
Echo ===============================
Echo.
Title Drago Launcher: Options

Echo Options:
Echo ===============================
Echo -1- Set Max Memory
Echo -2- Start Server
Echo ===============================
Echo.
Echo Current Setting:
Echo ===============================
Echo Max Memory: %Heap%M
Echo ===============================
Echo.

SET /P menunr=Please make your decision:

IF %menunr%==1 (goto Memory)
IF %menunr%==2 (goto Start)

CLS
Echo It's a wrong command!
Pause
Goto Launcher

:Memory
Echo.

SET /P menunr=Please set the max memory size:

SET Heap=%menunr%

Goto Launcher

:Start
CLS
Echo ===============================
Title Drago Launcher
Echo Starting Dragonet...
Echo Please stop Dragonet before closing the launcher!
Echo ===============================
Echo.
java -Xmx512M -jar dragonet.jar
Pause
IF ERRORLEVEL 1 GOTO Dragonet

Exit

:Java
REM Java Failed
CLS
Color 7C
Title Drago Launcher: Failed!
ECHO Error: We Couldn't find Java! Please Install Java and Try Again!
Pause
Exit

:Dragonet
REM Dragonet Failed
CLS
Color 7C
Title Drago Launcher: Failed!
ECHO Error: Something is wrong! Did you have the Dragonet JAR?
Pause
Exit

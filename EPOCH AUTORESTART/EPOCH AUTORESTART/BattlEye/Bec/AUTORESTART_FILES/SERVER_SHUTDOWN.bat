@echo off
echo SHUTDOWN ARMA2OA SERVER
TIMEOUT /T 2 /NOBREAK
taskkill /F /IM arma2oaserver.exe
TIMEOUT /T 4 /NOBREAK
echo SHUTDOWN DEAD BEC
taskkill /f /im cmd.exe /fi "windowtitle eq BEC_CONTROL
echo LOADING CLEAN UP FUNCTIONS

set cleanupfunction="D:\testserver\instance_11_Chernarus\BattlEye\Bec\AUTORESTART_FILES"
cd /d %cleanupfunction%
start "" "SERVER_MAINTAIN.bat"
echo SUCCESS
timeout 3
exit





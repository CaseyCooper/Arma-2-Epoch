

@echo off

::CONFIG SETTINGS
set becPath="D:\testserver\instance_11_Chernarus\BattlEye\Bec\AUTORESTART_FILES"
set serverPath="D:\testserver"
set DB_USERNAME="mysqluser"
set DB_PASSWORD="mysqluserpass"
set DB_NAME="mydatabasename"

::END SETTINGS
:arma2oaserver
echo SERVER MONITOR STARTING...
FOR /F "tokens=1-4 DELIMS=/ " %%F IN ('date /T') DO (set v_date=%%F%%G%%H)
FOR /F "tokens=1-4 DELIMS=: " %%F IN ('time /T') DO (set v_time=%%F%%G%%H)
set fname=database_%v_date%_%v_time%.sql

ping 127.0.0.1 -n 5 >NUL

title EPOCH SERVER 
cd %becPath%
echo (%time%) LOADING BEC.
start "BEC_CONTROL" "BEC_CONTROL.bat"
cd %serverPath%
echo (%time%) EPOCH SERVER STARTING.
start /wait "arma2" /min "D:\testserver\arma2oaserver.exe" -port=2302 -autoInit -noSound -noPause "-config=instance_11_Chernarus\config.cfg" "-cfg=instance_11_Chernarus\basic.cfg" "-profiles=instance_11_Chernarus" -name=instance_11_Chernarus "-mod=@DayZ_Epoch;@DayZ_Epoch_Server;" 
echo (%time%) WARNING: AUTORESTART IS ACTIVE NOW
goto arma2oaserver

@echo off
:: MAKE SURE TO CHANGE THESE BEFORE STARTING THE SERVER!
:: Directory Settings
set MYSQLDIR=C:\xampp\mysql\bin
:: Your Settings Here
set MYSQLHOST=127.0.0.1
set MYSQLUSER=mysqluser
set MYSQLPASS=mysqluserpass
SET MYSQLDB=mysqldatabasename
cls
title   Server Cleanup Started
:start
"%MYSQLDIR%\mysql.exe" -h %MYSQLHOST% --user=%MYSQLUSER% --password=%MYSQLPASS% --database=%MYSQLDB% --execute="truncate object_data;"
"%MYSQLDIR%\mysql.exe" -h %MYSQLHOST% --user=%MYSQLUSER% --password=%MYSQLPASS% --database=%MYSQLDB% --execute="truncate character_data;"
"%MYSQLDIR%\mysql.exe" -h %MYSQLHOST% --user=%MYSQLUSER% --password=%MYSQLPASS% --database=%MYSQLDB% --execute="truncate player_data;"
"%MYSQLDIR%\mysql.exe" -h %MYSQLHOST% --user=%MYSQLUSER% --password=%MYSQLPASS% --database=%MYSQLDB% --execute="truncate player_login;"
echo (%time%)  Server Cleanup Complete
exit


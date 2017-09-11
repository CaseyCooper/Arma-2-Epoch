
@echo off

set MYSQLHOST=127.0.0.1
:: Database Table Name (default is dm1)
set mysqlschema=mysqldatabasename

:: Username to access the database
set mysqlpassword=mysqluserpass

:: Password to access the database
set mysqluser=mysqluser

:: Path to mysql.exe file (default)
set mysqlpath=C:\xampp\mysql\bin\

:: Path to cleanup script file (the file with all of the cleanup code in it)
set mysqlcleanup="D:\testserver\instance_11_Chernarus\BattlEye\Bec\AUTORESTART_FILES\SERVER_MAINTAIN.sql"

"%mysqlpath%\mysql.exe" -h %MYSQLHOST% --user=%mysqluser% --password=%mysqlpassword% --database=%mysqlschema%  < %mysqlcleanup%
::PAUSE
exit
@echo off
rem START or STOP Services
rem ----------------------------------
rem Check if argument is STOP or START

if not ""%1"" == ""START"" goto stop

if exist D:\xampp server\cp_dbms\hypersonic\scripts\ctl.bat (start /MIN /B D:\xampp server\cp_dbms\server\hsql-sample-database\scripts\ctl.bat START)
if exist D:\xampp server\cp_dbms\ingres\scripts\ctl.bat (start /MIN /B D:\xampp server\cp_dbms\ingres\scripts\ctl.bat START)
if exist D:\xampp server\cp_dbms\mysql\scripts\ctl.bat (start /MIN /B D:\xampp server\cp_dbms\mysql\scripts\ctl.bat START)
if exist D:\xampp server\cp_dbms\postgresql\scripts\ctl.bat (start /MIN /B D:\xampp server\cp_dbms\postgresql\scripts\ctl.bat START)
if exist D:\xampp server\cp_dbms\apache\scripts\ctl.bat (start /MIN /B D:\xampp server\cp_dbms\apache\scripts\ctl.bat START)
if exist D:\xampp server\cp_dbms\openoffice\scripts\ctl.bat (start /MIN /B D:\xampp server\cp_dbms\openoffice\scripts\ctl.bat START)
if exist D:\xampp server\cp_dbms\apache-tomcat\scripts\ctl.bat (start /MIN /B D:\xampp server\cp_dbms\apache-tomcat\scripts\ctl.bat START)
if exist D:\xampp server\cp_dbms\resin\scripts\ctl.bat (start /MIN /B D:\xampp server\cp_dbms\resin\scripts\ctl.bat START)
if exist D:\xampp server\cp_dbms\jetty\scripts\ctl.bat (start /MIN /B D:\xampp server\cp_dbms\jetty\scripts\ctl.bat START)
if exist D:\xampp server\cp_dbms\subversion\scripts\ctl.bat (start /MIN /B D:\xampp server\cp_dbms\subversion\scripts\ctl.bat START)
rem RUBY_APPLICATION_START
if exist D:\xampp server\cp_dbms\lucene\scripts\ctl.bat (start /MIN /B D:\xampp server\cp_dbms\lucene\scripts\ctl.bat START)
if exist D:\xampp server\cp_dbms\third_application\scripts\ctl.bat (start /MIN /B D:\xampp server\cp_dbms\third_application\scripts\ctl.bat START)
goto end

:stop
echo "Stopping services ..."
if exist D:\xampp server\cp_dbms\third_application\scripts\ctl.bat (start /MIN /B D:\xampp server\cp_dbms\third_application\scripts\ctl.bat STOP)
if exist D:\xampp server\cp_dbms\lucene\scripts\ctl.bat (start /MIN /B D:\xampp server\cp_dbms\lucene\scripts\ctl.bat STOP)
rem RUBY_APPLICATION_STOP
if exist D:\xampp server\cp_dbms\subversion\scripts\ctl.bat (start /MIN /B D:\xampp server\cp_dbms\subversion\scripts\ctl.bat STOP)
if exist D:\xampp server\cp_dbms\jetty\scripts\ctl.bat (start /MIN /B D:\xampp server\cp_dbms\jetty\scripts\ctl.bat STOP)
if exist D:\xampp server\cp_dbms\hypersonic\scripts\ctl.bat (start /MIN /B D:\xampp server\cp_dbms\server\hsql-sample-database\scripts\ctl.bat STOP)
if exist D:\xampp server\cp_dbms\resin\scripts\ctl.bat (start /MIN /B D:\xampp server\cp_dbms\resin\scripts\ctl.bat STOP)
if exist D:\xampp server\cp_dbms\apache-tomcat\scripts\ctl.bat (start /MIN /B /WAIT D:\xampp server\cp_dbms\apache-tomcat\scripts\ctl.bat STOP)
if exist D:\xampp server\cp_dbms\openoffice\scripts\ctl.bat (start /MIN /B D:\xampp server\cp_dbms\openoffice\scripts\ctl.bat STOP)
if exist D:\xampp server\cp_dbms\apache\scripts\ctl.bat (start /MIN /B D:\xampp server\cp_dbms\apache\scripts\ctl.bat STOP)
if exist D:\xampp server\cp_dbms\ingres\scripts\ctl.bat (start /MIN /B D:\xampp server\cp_dbms\ingres\scripts\ctl.bat STOP)
if exist D:\xampp server\cp_dbms\mysql\scripts\ctl.bat (start /MIN /B D:\xampp server\cp_dbms\mysql\scripts\ctl.bat STOP)
if exist D:\xampp server\cp_dbms\postgresql\scripts\ctl.bat (start /MIN /B D:\xampp server\cp_dbms\postgresql\scripts\ctl.bat STOP)

:end


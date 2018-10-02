:: Does 100 iterations of the netstat command at 30 second intervals and writes
:: the results to a file. Modify to fit your need.
:: Comment or uncomment the relevant code to use for the OS.

:: Windows XP

@echo off
echo Checking connections
for /L %%X in (1,1,100) do (netstat -b >> C:\connections.txt) && (sleep 5)

:: Windows Vista/7

:: @echo off
:: echo Checking connections
:: for /L %%X in (1,1,100) do (netstat -b >> "%USERPROFILE%\connections.txt")&&
:: ((timeout /t 5 /nobreak)>nul)

:: Has to be run with administrator privileges.
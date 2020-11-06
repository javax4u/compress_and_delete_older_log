
set X=
for /f "skip=1 delims=" %%x in ('wmic os get localdatetime') do if not defined X set X=%%x
echo.%X%

rem dissect into parts
set DATE.YEAR=%X:~0,4%
set DATE.MONTH=%X:~4,2%
set DATE.DAY=%X:~6,2%
set DATE.HOUR=%X:~8,2%
set DATE.MINUTE=%X:~10,2%
set DATE.SECOND=%X:~12,2%
set DATE.FRACTIONS=%X:~15,6%
set DATE.OFFSET=%X:~21,4%
set YYYY-MM-DD=%DATE.YEAR%-%DATE.MONTH%-%DATE.DAY%
set FOLDER_PATH=c:\jboss\standalone\log

"C:\Program Files\7-Zip\7z.exe" a -tzip %FOLDER_PATH%\server.log.%YYYY-MM-DD%.zip %FOLDER_PATH%\server.log.%YYYY-MM-DD%
rem forfiles /p "C:\what\ever" /s /m *.* /D -<number of days> /C "cmd /c del @path"
rem below line does not work for zip files below lines will delete file older than MySQL-Rupesh-HP-Pavilion-2016-11-09-03-00-01
rem forfiles /p "C:\backup\vdoxx\mysql" /s /m *.* /D -891 /C "cmd /c del @path"
forfiles /p "c:\jboss\standalone\log" /s /m *.log.* /D -7 /C "cmd /c del @path"



## compress_and_delete_older_log

### Q. How to take backup of mysql file with windows scheduled task.

**Pre-requisites**

**1** This application needs 7z installed on your computer. You can download it from [here](https://www.7-zip.org/download.html).

**2** File name should follow pattern of xxx.log.yyy-mm-dd. For example below files are good.

	server.log.2020-11-05
	server.log.2020-11-03
	server.log.2020-11-02
	server.log.2020-11-01

**Execution**

7z has command line utility to zip, we will use it.

	set YYYY-MM-DD=%DATE.YEAR%-%DATE.MONTH%-%DATE.DAY%
	set FOLDER_PATH=c:\VirtualDoxx\jboss\standalone\log
	"C:\Program Files\7-Zip\7z.exe" a -tzip %FOLDER_PATH%\server.log.%YYYY-MM-DD%.zip %FOLDER_PATH%\server.log.%YYYY-MM-DD%

To figure out the current date we has used windows batch code. On linux it will change.

To create a windows scheduled task through command line we have used schtask and hooked it with batch file.

	SchTasks /Create /SC DAILY /TN "Compress Jboss Log" /TR "D:\VirtualDoxx\antcalls\vdoxx_mysql\compress-jboss-log.bat" /ST 04:30 /RU SYSTEM 

### Q. How to compress mysql backup and delete older one with windows scheduled task.

### Q. How to compress jboss logs and delete older one with windows scheduled task.

### Q. How to compress or zips log file and deletes files older than 7 days. 

@echo off

##robocopy backup script to/from and including log file
robocopy "My Project Files" "Backups" /E /LOG:backuplog.txt 

##task scheduler SC=scheduled daily, TN=taskname, TR=taskrun, ST=starttime, RU=user 
schtasks /CREATE /SC DAILY /TN "Mytasks\dailyrobo task" /TR "C:\Userj.thompson\Documents\robo1.bat" /ST 14:00 /RU j.thompson

pause

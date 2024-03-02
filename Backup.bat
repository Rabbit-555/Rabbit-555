@echo off
echo Sao lưu phần mềm và driver...
xcopy C:\Program Files D:\Backup\Program Files /E /I
xcopy C:\Windows\System32\DriverStore D:\Backup\DriverStore /E /I
echo Hoàn thành!
pause

@echo off
echo Khoi phuc driver tu thu muc Backup...
pnputil /add-driver "D:\Backup\*.inf" /subdirs /install /reboot
echo Hoan thanh!
pause
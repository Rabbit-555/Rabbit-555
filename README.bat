@echo off
color 0c
mode 120,40

:menu
cls
echo                                               ============================
echo                                               Rabbit-555 menu batch script
echo 1 End                                         ============================
echo 2 Time                          .                                                      .
echo 3 Shutdown Timer             .n                   .                 .                  n.
echo 4 Open file.exe        .   .dP                  dP                   9b                 9b.    .
echo 5 All ipconfig        4    qXb         .       dX                     Xb       .        dXp     t
echo 6 show pasw wifi     dX.    9Xb      .dXb    __                         __    dXb.     dXP     .Xb
echo 7 show ip Ent        9XXb._       _.dXXXXb dXXXXbo.                 .odXXXXb dXXXXb._       _.dXXP
echo 8 show ip WIFI        9XXXXXXXXXXXXXXXXXXXVXXXXXXXXOo.           .oOXXXXXXXXVXXXXXXXXXXXXXXXXXXXP
echo 9 Reset Internet      `9XXXXXXXXXXXXXXXXXXXXX'-   -`OOO8b   d8OOO'-   -`XXXXXXXXXXXXXXXXXXXXXP'
echo 10 Show active windows  `9XXXXXXXXXXXP' `9XX'  RAT     `98v8P'     555  `XXP' `9XXXXXXXXXXXP'
echo 11 Activer ACTMAS2.2.CMD    -------       9X.          .db/db.          .XP       -------
echo 12 Cherk IP LAN                             )b.  .dbo.dP'`v'`9b.odb.  .dX(
echo 13 Sao luu Driver                          ,dXXXXXXXXXXXb     dXXXXXXXXXXXb.
echo 14 Khoi phuc Driver                       dXXXXXXXXXXXP'   .   `9XXXXXXXXXXXb
echo 15 Kiem tra Laptop                        dXXXXXXXXXXXP'   .   `9XXXXXXXXXXXb
echo 16                                       9XXb'   `XXXXXb.dX/Xb.dXXXXX'   `dXXP
echo 17                                        `'      9XXXXXX(   )XXXXXXP      `'
echo 18                                                 XXXX X.`v'.X XXXX
echo 19                                                 XP/X'`b   d'`XXX
echo 20                                                 X. 9  `   '  P )X
echo 21                                                 `b  `       '  d'
echo 22                                                  `             '
echo ===============================================================================================================
set /p choice=Tet vao mong em bang cac con so nao =)) ...
if not defined choice goto menu
if %choice%==1 goto end
if %choice%==2 goto time
if %choice%==3 goto shutdown_timer
if %choice%==4 goto open_file
if %choice%==5 goto All_ipconfig
if %choice%==6 goto show_pasw_wifi
if %choice%==7 goto show_ip_Ent
if %choice%==8 goto show_ip_Wifi
if %choice%==9 goto Reset_Internet
if %choice%==10 goto Show_ACT
if %choice%==11 goto ACTMAS2.2.CMD
if %choice%==12 goto Cherk_IP_LAN
if %choice%==13 goto Backup_Driver
if %choice%==14 goto Restore_Driver
if %choice%==15 goto laptop_cherk

echo :Error:"
pause
goto menu
echo ===============================================================================================================
:end
shutdown -a
color 0f
cls
exit
echo ===============================================================================================================
:time
color 0b
echo Time is now: %time%
echo Today is: %date%
pause
goto menu
echo ===============================================================================================================
:shutdown_timer
color 0b
set /p minutes=Nhap so giay muon tat may: 
shutdown -s -t %minutes%
goto menu
echo ===============================================================================================================
:open_file
color 0b
cd "C:\Users\ADMIN\AppData\Local\Programs\Zalo\"
start Zalo.EXE
cd "C:\Users\ADMIN\Desktop\"
start rufus-4.3.exe
goto menu
echo ===============================================================================================================
:All_ipconfig
color 0b
ipconfig /all
pause
goto menu
echo ===============================================================================================================
:show_pasw_wifi
color 0b
netsh wlan show profiles
echo.
echo Nhap ten mang wifi muon xem mat khau va dia chi ip:
set /p name=
netsh wlan show profile name="%name%" key=clear | findstr "Key Content"
netsh wlan show interface name="%name%" | findstr /i "IP Address"
echo.
pause
goto menu
echo ===============================================================================================================
:show_ip_Ent
color 0b
echo Quet va hien thi cac IP trong mang noi bo
echo.
for /L %%i in (1,1,254) do (
ping -n 1 0.0.0.%%i | find "TTL=" > nul
if errorlevel 1 (
echo 0.0.0.%%i - Offline
) else (
echo 0.0.0.%%i - Online
)
)
echo.
arp -a
echo All tasks completed.
pause
goto menu
echo ===============================================================================================================
:show_ip_Wifi
color 0b
cls
echo Show IP addresses of devices on the same wifi
echo Your IP address is:
ipconfig "/allcompartments" | findstr /R /C:"IPv4 Address"
echo.
echo IP addresses of other devices are:
arp -a | findstr /R /C:"dynamic"
pause
goto menu
echo ===============================================================================================================
:Reset_Internet
cls
echo Reset Internet
echo Reseting Internet…
ping localhost -n 3 >nul
ipconfig /release
ipconfig /renew
ipconfig /flushdns
ipconfig /registerdns
netsh dump
nbtstat -R
netsh int ip reset reset.log
netsh winsock reset
pause
echo Reset Network
echo.
echo Reset Network successful!
echo.
pause
goto menu
echo ===============================================================================================================
:Show_ACT
cls
color 0b
slmgr.vbs /dli
echo.
slmgr.vbs /dlv
echo.
slmgr.vbs /xpr
echo.
echo 3 Back to main menu
set /p choice=Press any key to continue or 3 to go back ...
if %choice%==3 goto menu
pause
goto menu
echo ===============================================================================================================
:ACTMAS2.2.CMD
cls
color 0b
call MAS_AIO_2.2.cmd param1 param2
pause
goto menu
echo ===============================================================================================================
:Cherk_IP_LAN
cls
color 0b
@echo off
echo Thong tin IP cua may tinh cua ban:
ipconfig /all
echo.
echo Do IP trong mang LAN:
for /l %%i in (1,1,1000) do (
  ping -n 1 192.###.0.%%i | find "TTL="
  arp -a 192.###.0.%%i | find "192.###.0.%%i"
  echo.
)
pause
goto menu
echo ===============================================================================================================
:Backup_Driver
cls
color 0b
call Backup.cmd param1 param2
pause
goto menu
echo ===============================================================================================================
:Restore_Driver
cls
color 0b
call Restore.cmd param1 param2
pause
goto menu
echo ===============================================================================================================
:laptop_cherk
cls
color 0b
call laptop_cherk.bat param1 param2
pause
goto menu
echo ===============================================================================================================





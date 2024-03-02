@echo off
color 0b
mode 120,40

:menu
cls
echo                                               Rabbit-555 menu batch script
echo 1 KT PIN
echo 2 KT Thong tin phan cung       .                                                      .
echo 3 KT HDD SSD                 .n                   .                 .                  n.
echo 4 KT Man hinh          .   .dP                  dP                   9b                 9b.    .
echo 5 KT Canera-mic-loa   4    qXb         .       dX                     Xb       .        dXp     t
echo 6 KT Ban phim        dX.    9Xb      .dXb    __                         __    dXb.     dXP     .Xb
echo 7 show pasw wifi     9XXb._       _.dXXXXb dXXXXbo.                 .odXXXXb dXXXXb._       _.dXXP
echo 8 show ip WIFI        9XXXXXXXXXXXXXXXXXXXVXXXXXXXXOo.           .oOXXXXXXXXVXXXXXXXXXXXXXXXXXXXP
echo 9 Reset Internet      `9XXXXXXXXXXXXXXXXXXXXX'-   -`OOO8b   d8OOO'-   -`XXXXXXXXXXXXXXXXXXXXXP'
echo 10 Show active windows  `9XXXXXXXXXXXP' `9XX'  RAT     `98v8P'     555  `XXP' `9XXXXXXXXXXXP'
echo 11 Activer ACTMAS2.2.CMD    -------       9X.          .db/db.          .XP       -------
echo 12 Cherk IP LAN                             )b.  .dbo.dP'`v'`9b.odb.  .dX(
echo 13 Sao luu Driver                          ,dXXXXXXXXXXXb     dXXXXXXXXXXXb.
echo 14 Khoi phuc Driver                       dXXXXXXXXXXXP'   .   `9XXXXXXXXXXXb
echo 15                                        dXXXXXXXXXXXP'   .   `9XXXXXXXXXXXb
echo 16                                       9XXb'   `XXXXXb.dX/Xb.dXXXXX'   `dXXP
echo 17                                        `'      9XXXXXX(   )XXXXXXP      `'
echo 18                                                 XXXX X.`v'.X XXXX
echo 19                                                 XP/X'`b   d'`XXX
echo 20                                                 X. 9  `   '  P )X
echo 21                                                 `b  `       '  d'
echo 22                                                  `             '

set /p choice=Tet vao mong em bang cac con so nao =)) ...
if not defined choice goto menu
if %choice%==1 goto Cherk_PIN
if %choice%==2 goto dxdiag
if %choice%==3 goto Hard_Disk_Sentinel
if %choice%==4 goto Cherk_COLOR
if %choice%==5 goto webcammictest
if %choice%==6 goto Cherk_KeyAqua
if %choice%==7 goto show_pasw_wifi
if %choice%==8 goto show_ip_Wifi
if %choice%==9 goto Reset_Internet
if %choice%==10 goto Show_ACT
if %choice%==11 goto ACTMAS2.2.CMD
if %choice%==12 goto Cherk_IP_LAN
if %choice%==13 goto Backup_Driver
if %choice%==14 goto Restore_Driver

echo :Error:"
pause
goto menu
echo ===============================================================================================================
:Cherk_PIN
cls
color 0f
call batteryreport.cmd param1 param2
echo... Loading ...
echo Time is now: %time%
call battery-report.html param1 param2
pause
goto menu
echo ===============================================================================================================
:dxdiag
color 0b
dxdiag
echo... Loading ...
pause
goto menu
echo ===============================================================================================================
:Hard_Disk_Sentinel
cd C:\Users\ADMIN\Desktop\AI\Hard Disk Sentinel
xcopy /e /i "C:\Users\ADMIN\Desktop\AI\Hard Disk Sentinel" "C:\Program Files (x86)\Hard Disk Sentinel"
cd "C:\Program Files (x86)\Hard Disk Sentinel"
start HDSentinel.exe
pause
goto memu
echo ===============================================================================================================
:Cherk_COLOR
cls
color 0f
call testDT.mp4 param1 param2
echo... Loading ...
pause
goto menu
echo ===============================================================================================================
:webcammictest
color 0b
start https://webcammictest.com
pause
goto menu
echo ===============================================================================================================
:Cherk_KeyAqua
cls
color 0b
call ApuaKeyTest.cmd param1 param2
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






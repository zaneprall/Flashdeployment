echo off
:start
echo ==============================================================================================================
echo ==============================================================================================================
echo _______________             ______       ________             ______                                    _____ 
echo ___  ____/__  /_____ __________  /_      ___  __ \_______________  /__________  ________ _________________  /_
echo __  /_   __  /_  __ `/_  ___/_  __ \     __  / / /  _ \__  __ \_  /_  __ \_  / / /_  __ `__ \  _ \_  __ \  __/
echo _  __/   _  / / /_/ /_(__  )_  / / /     _  /_/ //  __/_  /_/ /  / / /_/ /  /_/ /_  / / / / /  __/  / / / /_  
echo /_/      /_/  \__,_/ /____/ /_/ /_/      /_____/ \___/_  .___//_/  \____/_\__, / /_/ /_/ /_/\___//_/ /_/\__/  
echo                                                       /_/                /____/                                                                                                              
echo ==============================================================================================================
echo ==============================================================================================================
echo ===========================
echo PLEASE RUN AS ADMINISTRATOR
echo ===========================
title Deployment Automation
echo ==============
echo Select a Task:
echo ==============
echo - 
echo 1) Set Workgroup
echo 2) Set PC Name
echo 3) Create admin user
echo 4) Set User Password (only works with username "user")
echo 5) Windows Updates	
echo 6) Install a Program
echo 7) Set Static IP
echo 8) Exit

echo -
set /p tk=Type option:
if "%tk%"=="1" goto begin
if "%tk%"=="2" goto name
if "%tk%"=="3" goto createadmin
if "%tk%"=="4" goto password
if "%tk%"=="5" goto updates
if "%tk%"=="6" goto installers
if "%tk%"=="7" goto ipstart
if "%tk%"=="8" goto exit
echo Please Pick an option:
goto start



:password
echo ==========================
echo Select a Default password:
echo ==========================
echo -
echo 1) location1 password
echo 2) location2 password
echo 3) location3 password
echo 4) location4 password
echo 5) location5 password
echo 6) location6 password
echo 7) location7 password
echo 8) location8 password
echo 9) location9 password
echo 10) location10 password
echo 11) location11 password
echo 12) location12 password
echo 13) location13 password
echo 14) location14 password
echo 15) location16 password
echo 16) Other



echo -
set /p pw=Type option:
if "%pw%"=="1" goto pw1   
if "%pw%"=="2" goto pw2
if "%pw%"=="3" goto pw3
if "%pw%"=="4" goto pw4
if "%pw%"=="5" goto pw5
if "%pw%"=="6" goto pw6
if "%pw%"=="7" goto pw7
if "%pw%"=="8" goto pw8
if "%pw%"=="9" goto pw9
if "%pw%"=="10" goto pw10
if "%pw%"=="11" goto pw11
if "%pw%"=="12" goto pw12
if "%pw%"=="13" goto pw13
if "%pw%"=="14" goto pw14
if "%pw%"=="15" goto pw15
if "%pw%"=="16" goto pw16
if "%pw%"=="17" goto pw17
echo Please Pick an option:
goto password


:pw1
echo you've picked location1 password
echo Close Window to Cancel
pause
echo -
echo -
net user user password1
echo -
goto expirefalse

:pw2
echo you've picked location2 password
echo Close Window to Cancel
pause
echo -
echo -
net user user password2
echo -
goto expirefalse

:pw3
echo you've picked location3 password
echo Close Window to Cancel
pause
echo -
echo -
net user user password3
echo -
goto expirefalse

:pw4
echo you've picked location4 password
echo Close Window to Cancel
pause
echo -
echo -
net user user password4
echo -
goto expirefalse

:pw5
echo you've picked location5 password
echo Close Window to Cancel
pause
echo -
echo -
net user user password5
echo -
goto expirefalse

:pw6
echo you've picked location6 password
echo Close Window to Cancel
pause
echo -
echo -
net user user password6
echo -
goto expirefalse

:pw7
echo you've picked location7 password
echo Close Window to Cancel
pause
echo -
echo -
net user user password7
echo -
goto expirefalse

:pw8
echo you've picked location8 password
echo Close Window to Cancel
pause
echo -
echo -
net user user password8
echo -
goto expirefalse

:pw9
echo you've picked location9 password
echo Close Window to Cancel
pause
echo -
echo -
net user user password9
echo -
goto expirefalse

:pw10
echo you've picked location10 password
echo Close Window to Cancel
pause
echo -
echo -
net user user password10
echo -
goto expirefalse

:pw11
echo you've picked location11 password
echo Close Window to Cancel
pause
echo -
echo -
net user user password11
echo -
goto expirefalse

:pw12
echo you've picked location12 password
echo Close Window to Cancel
pause
echo -
echo -
net user user password12
goto expirefalse

:pw13	
echo you've picked location13 password
echo Close Window to Cancel
pause
echo -
echo -
net user user password13
echo -
goto expirefalse

:pw14
echo you've picked location14 password
echo Close Window to Cancel
pause
echo -
echo -
net user user password14
echo -
goto expirefalse

:pw15
echo you've picked location15 password
echo Close Window to Cancel
pause
echo -
echo -
net user user password15
echo -
goto expirefalse

:pw16
SET /P pw=Please provide desired password:
net user user "%pw%"
echo -
goto expirefalse

:expirefalse
wmic useraccount where "Name='user'" set PasswordExpires=false
goto start 

:createadmin
net user /add admin adminpassword && net localgroup administrators admin /add
wmic useraccount where "Name='admin'" set PasswordExpires=false
wmic useraccount where "Name='user'" set PasswordExpires=false
goto start

:begin
echo =====================
echo Select an Assignment:
echo =====================
echo -
echo 0) Corporate Workgroup
echo 1) location1 Workgroup
echo 2) location2 Workgroup
echo 3) location3 Workgroup
echo 4) location4 Workgroup
echo 5) location5 Workgroup
echo 6) location6 Workgroup
echo 7) location7 Workgroup
echo 8) location8 Workgroup
echo 9) location9 Workgroup
echo 10) location10 Workgroup
echo 11) location11 Workgroup
echo 12) location12 Workgroup
echo 13) location13 Workgroup
echo 14) location14 Workgroup
echo 15) location15 Workgroup
echo 16) Other
echo 17) continue

echo -
set /p op=Type option:
if "%op%"=="0" goto op0
if "%op%"=="1" goto op1
if "%op%"=="2" goto op2
if "%op%"=="3" goto op3
if "%op%"=="4" goto op4
if "%op%"=="5" goto op5
if "%op%"=="6" goto op6
if "%op%"=="7" goto op7
if "%op%"=="8" goto op8
if "%op%"=="9" goto op9
if "%op%"=="10" goto op10
if "%op%"=="11" goto op11
if "%op%"=="12" goto op12
if "%op%"=="13" goto op13
if "%op%"=="14" goto op14
if "%op%"=="15" goto op15
if "%op%"=="16" goto op16
if "%op%"=="17" goto op17
echo Please Pick an option:
goto begin


:op0
echo you've picked Corporate Workgroup
echo Close Window to Cancel
pause
echo -
echo -
wmic computersystem where name="%computername%" call joindomainorworkgroup name="CORPORATE"
echo -
goto wrapup

:op1
echo you've picked location1 Workgroup
echo Close Window to Cancel
pause
echo -
echo -
wmic computersystem where name="%computername%" call joindomainorworkgroup name="location1"
echo -
goto wrapup

:op2
echo you've picked location2 Workgroup
echo Close Window to Cancel
pause
echo -
echo -
wmic computersystem where name="%computername%" call joindomainorworkgroup name="location2"
echo -
goto wrapup

:op3
echo you've picked location3 Workgroup
echo Close Window to Cancel
pause
echo -
echo -
wmic computersystem where name="%computername%" call joindomainorworkgroup name="location3"
echo -
goto wrapup

:op4
echo you've picked location4 Workgroup
echo Close Window to Cancel
pause
echo -
echo -
wmic computersystem where name="%computername%" call joindomainorworkgroup name="location4"
echo -
goto wrapup

:op5
echo you've picked location5 Workgroup
echo Close Window to Cancel
pause
echo -
echo -
wmic computersystem where name="%computername%" call joindomainorworkgroup name="location5"
echo -
goto wrapup

:op6
echo you've picked location6 Workgroup
echo Close Window to Cancel
pause
echo -
echo -
wmic computersystem where name="%computername%" call joindomainorworkgroup name="location6"
echo -
goto wrapup

:op7
echo you've picked location7 Workgroup
echo Close Window to Cancel
pause
echo -
echo -
wmic computersystem where name="%computername%" call joindomainorworkgroup name="location7"
echo -
goto wrapup

:op8
echo you've picked location8 Workgroup
echo Close Window to Cancel
pause
echo -
echo -
wmic computersystem where name="%computername%" call joindomainorworkgroup name="BOISE"
echo -
goto wrapup

:op9
echo you've picked location9 Workgroup
echo Close Window to Cancel
pause
echo -
echo -
wmic computersystem where name="%computername%" call joindomainorworkgroup name="location9"
echo -
goto wrapup

:op10
echo you've picked location10 Workgroup
echo Close Window to Cancel
pause
echo -
echo -
wmic computersystem where name="%computername%" call joindomainorworkgroup name="location10"
echo -
goto wrapup

:op11
echo you've picked location11 Workgroup
echo Close Window to Cancel
pause
echo -
echo -
wmic computersystem where name="%computername%" call joindomainorworkgroup name="location11"
echo -
goto wrapup

:op12
echo you've picked location12 Workgroup
echo Close Window to Cancel
pause
wmic computersystem where name="%computername%" call joindomainorworkgroup name="location12"
echo -
goto wrapup

:op13	
echo you've picked location13 Workgroup
echo Close Window to Cancel
pause
echo -
echo -
wmic computersystem where name="%computername%" call joindomainorworkgroup name="location13"
echo -
goto wrapup

:op14
echo you've picked location14 Workgroup
echo Close Window to Cancel
pause
echo -
echo -
wmic computersystem where name="%computername%" call joindomainorworkgroup name="location14"
echo -
goto wrapup

:op15
echo you've picked location15 Workgroup
echo Close Window to Cancel
pause
echo -
echo -
wmic computersystem where name="%computername%" call joindomainorworkgroup name="location15"
echo -
goto wrapup

:op16
SET /P wn=Please provide desired workgroup name:
wmic computersystem where name="%computername%" call joindomainorworkgroup name="%wn%"
echo -
goto wrapup


:op17
goto start

:name
SET /P pc=Please enter your desired PC name:
REG ADD HKLM\SYSTEM\CurrentControlSet\Control\ComputerName\ComputerName /v ComputerName /t REG_SZ /d %pc% /f
WMIC ComputerSystem where Name="%computername%" call Rename Name="%pc%"
goto wrapup


:ipstart

netsh interface show interface

echo note interface name

netsh interface ip set address "%%" static 192.168.%%.%% 255.255.255.0 192.168.%%.254 1

echo Set interface from above options (right column):
echo ==================

Set /P i=Set Interface:
echo ==================

echo interface: %i%
echo ===============

SET /p s=Set store number:
echo =====================

echo Store #:%s%
echo ===========

set /p o=Set fourth octet:
echo =====================

echo 4th Octet: %o%
echo ==============
goto dns
:dns
netsh interface ip set address "%i%" static 192.168.%s%.%o% 255.255.255.0 192.168.%s%.254 1
netsh interface ip set dns "%i%" dhcp
echo Is there a DNS server to set? (not a register)
set /p zx=Type option (Y/N):
if "%zx%"=="n" goto no
if "%zx%"=="y" goto yes
if "%zx%"=="2" goto no
if "%zx%"=="1" goto yes
if "%zx%"=="yes" goto yes
if "%zx%"=="no" goto no
goto dns


:No
netsh interface ip set dns "%i%" dhcp
goto start
ipconfig
:Yes 

echo is the DNS Server 192.168.%s%.254?
echo ============================

set /p ds=Type option (Yes/No):
if "%ds%"=="n" goto variable
if "%ds%"=="y" goto set
if "%ds%"=="2" goto variable
if "%ds%"=="1" goto set
if "%ds%"=="yes" goto set
if "%ds%"=="no" goto variable

:set
netsh interface ip set dns "%i%" static 192.168.%s%.254
goto start


:variable
echo ===========================

SET /P qq=Enter the Full DNS Address:
netsh interface ip set dns "%i%" static %qq%
echo -

ipconfig
goto start




:Wrapup
echo =============================================================
echo If your output is 0, The command was successful.
echo If your output is 5, The command was not ran as Administator.
echo This will take effect on the next restart. 
echo =============================================================
pause
goto start


:installers
@echo off
echo =============================================================================
echo This installer assumes that the install files are saved on an external drive.
echo files should be laid out as driveletter:\installfiles\file
echo =============================================================================
    :: Drivetypes
    ::  0=Unknown
    ::  1=No Root Directory
    ::  2=Removable(USB,Firewire)
    ::  3=Local Disk (Internal Hard Drive)
    ::  4=Network Drive(\\Server\share\)
    ::  5=Compact Disk (CD DVD)
    ::  6=Ram Disk
    for /f "tokens=2 delims==" %%d in ('wmic logicaldisk where "drivetype=2" 
    get name /format:value') do set driveletter= %%d
    
	cd  %driveletter%
goto installcontinue




:installcontinue
echo ===================
echo Select an installer
echo ===================
echo - 
echo 1) Connectwise
echo 2) Malwarebytes
echo 3) TightVNC
echo 4) Adobe Acrobat Reader
echo 5) Mocha
echo 6) Ninite
echo 7) fancy POS
echo 8) Open Windows Firewall Rules
echo 9) Change Sleep Settings
echo 10) Full install
echo 11) Copy Drivers and Software
echo 12) Admin Registry Edit
echo 13) Apply Theme
echo 14) Install OVPN
echo 15) Install Atera
echo 16) Install webroot
echo 17) Back
echo -
set /p in=Type option:
if "%in%"=="1" goto Connectwise
if "%in%"=="2" goto Malwarebytes
if "%in%"=="3" goto TightVNC
if "%in%"=="4" goto Adobe
if "%in%"=="5" goto Mocha
if "%in%"=="6" goto Ninite
if "%in%"=="7" goto POS
if "%in%"=="8" goto firewall
if "%in%"=="9" goto sleep
if "%in%"=="10" goto fullinstall
if "%in%"=="11" goto drivers
if "%in%"=="12" goto regedit
if "%in%"=="13" goto theme
if "%in%"=="14" goto ovpn
if "%in%"=="15" goto atera
if "%in%"=="16" goto webroot
if "%in%"=="17" goto start
echo Please Pick an option:
goto installcontinue


:theme
if not exist "C:\users\user\installers" mkdir C:\users\user\installers
robocopy %driveletter%\installfiles\ C:\users\user\installers theme /eta /v /R:50000000
C:\users\user\installers\theme\theme\themefile.deskthemepack
cd C:\users\user\installers\
reg add “HKEY_CURRENT_USER\Control Panel\Desktop” /v ScreenSaveTimeOut /t REG_SZ /d 600 /f
rundll32.exe user32.dll, UpdatePerUserSystemParameters
rundll32.exe desk.cpl,InstallScreenSaver screensaver.scr

echo  Please manually set lockscreen. Files are stored in c:\users\user\installers\theme.
pause
goto installcontinue

:Connectwise
if not exist "C:\users\user\installers" mkdir C:\users\user\installers
robocopy %driveletter%\installfiles\ C:\users\user\installers ConnectWiseControl.ClientSetup.exe /eta /v /R:5
cd C:\users\user\installers && ConnectWiseControl.ClientSetup.exe /quiet
goto installcontinue

:Malwarebytes
if not exist "C:\users\user\installers" mkdir C:\users\user\installers
robocopy %driveletter%\installfiles\ C:\users\user\installers Setup.MBEndpointAgent.x64.msi /eta /v /R:5
cd C:\users\user\installers && Setup.MBEndpointAgent.x64.msi /quiet 
goto installcontinue

:TightVNC
if not exist "C:\users\user\installers" mkdir C:\users\user\installers
robocopy %driveletter%\installfiles\ C:\users\user\installers tightvnc-2.8.63-gpl-setup-64bit.msi /eta /v /R:5
cd C:\users\user\installers && msiexec.exe /i tightvnc-2.8.63-gpl-setup-64bit.msi /quiet /norestart SET_USEVNCAUTHENTICATION=1 VALUE_OF_USEVNCAUTHENTICATION=1 SET_PASSWORD=1 VALUE_OF_PASSWORD=password SET_VIEWONLYPASSWORD=1 VALUE_OF_VIEWONLYPASSWORD=password SET_USECONTROLAUTHENTICATION=1 VALUE_OF_USECONTROLAUTHENTICATION=1 SET_CONTROLPASSWORD=1 VALUE_OF_CONTROLPASSWORD=password
goto installcontinue

:Adobe
if not exist "C:\users\user\installers" mkdir C:\users\user\installers
robocopy %driveletter%\installfiles\ C:\users\user\installers "AcroRdrDC2200120142_en_US.exe" /eta /v /R:5
cd "c:\Users\User\installers && AcroRdrDC2200120142_en_US.exe /sAll /rs /msi EULA_ACCEPT=YES"
goto installcontinue

:Mocha
if not exist "C:\users\user\installers" mkdir C:\users\user\installers  ## http://www.mochasoft.dk/mtn5250/param.htm
robocopy %driveletter%\installfiles\ C:\users\user\installers tn5250-WIN10.msi /eta /v /R:5
cd C:\users\user\installers && tn5250-WIN10.msi CONFIG=c:\users\user\Installers\user.config /quiet
goto installcontinue

:Ninite
if not exist "C:\users\user\installers" mkdir C:\users\user\installers
robocopy %driveletter%\installfiles\ C:\users\user\installers "Ninite Air Chrome Firefox Java AdoptOpenJDK x64 8 Installer.exe" /eta /v /R:5
cd C:\users\user\installers && "Ninite Air Chrome Firefox Java AdoptOpenJDK x64 8 Installer.exe"
timeout 20

"C:\Program Files\Google\Chrome\Application\chrome.exe" --homepage "website1" "website2" -silent -nosplash -setDefaultBrowser
goto installcontinue

:POS
if not exist "C:\users\user\installers" mkdir C:\users\user\installers
robocopy %driveletter%\installfiles\ C:\users\user\installers fancyPOSInstaller-5.5.1.147.exe /eta /v /R:5
cd C:\users\user\installers && fancyPOSInstaller-5.5.1.147.exe 
goto installcontinue

:webroot
if not exist "C:\users\user\installers" mkdir C:\users\user\installers
robocopy %driveletter%\installfiles\ C:\users\user\installers licensekeygoeshere.exe /eta /v /R:5
cd C:\users\user\installers && .exe
echo The license key is licensekeygoeshere
pause
goto installcontinue

:firewall
::disables windows firewall
netsh advfirewall firewall add rule name="anyin" dir=in action=allow && netsh advfirewall firewall add rule name="anyout" dir=out action=allow
goto installcontinue

:sleep
powercfg.exe -change -monitor-timeout-ac 0 && powercfg.exe -change -monitor-timeout-dc 0 && powercfg.exe -change -disk-timeout-ac 0 && powercfg.exe -change -disk-timeout-dc 0 && powercfg.exe -change -standby-timeout-ac 0 && powercfg.exe -change -standby-timeout-dc 0 && powercfg.exe -change -hibernate-timeout-ac 0 &&powercfg.exe -change -hibernate-timeout-dc 0
goto installcontinue

:ovpn 
if not exist "C:\users\user\installers" mkdir C:\users\user\installers
robocopy %driveletter%\installfiles\ C:\users\user\installers openvpn-install-2.4.8-I602-Win10.exe /eta /v /R:5
cd C:\users\user\installers && "openvpn-install-2.4.8-I602-Win10.exe" /S
goto installcontinue

:atera
curl -o setup.msi "atera website url goes here" && msiexec /i setup.msi /qn  IntegratorLogin=adminemailaddress CompanyId=22
goto installcontinue


:fullinstall
if not exist "C:\users\user\installers" mkdir C:\users\user\installers

echo copying Files...
robocopy %driveletter%\installfiles C:\users\user\installers  /e /eta /v /R:5
timeout 15

echo Adding admin user...
net user /add admin adminpassword && net localgroup administrators admin /add
wmic useraccount where "Name='admin'" set PasswordExpires=false
wmic useraccount where "Name='user'" set PasswordExpires=false
timeout 15


echo Installing Atera (staging)
curl -o setup.msi "atera website url goes here" && msiexec /i setup.msi /qn  IntegratorLogin=adminemailaddress CompanyId=22
echo Tim lost the game...
timeout 1
echo installing Connectwise...
cd C:\users\user\installers && ConnectWiseControl.ClientSetup.exe /quiet

echo Please choose Either Malwarebytes or Webroot
echo 1) Malwarebytes
echo 2) Webroot
set /p an=Type option:
if "%an%"=="1" goto fullmalwarebytes
if "%an%"=="2" goto fullwebroot

:fullmalwarebytes
echo installing Malwarebytes...
Setup.MBEndpointAgent.x64.msi /quiet 
timeout 15
goto fullcontinue

:fullwebroot
echo Installing Webroot...
licensekeygoeshere.exe
echo The license key is licensekeygoeshere
pause
goto fullcontinue

:fullcontinue
echo installing TightVNC...
msiexec.exe /i tightvnc-2.8.63-gpl-setup-64bit.msi /quiet /norestart SET_USEVNCAUTHENTICATION=1 VALUE_OF_USEVNCAUTHENTICATION=1 SET_PASSWORD=1 VALUE_OF_PASSWORD=password SET_VIEWONLYPASSWORD=1 VALUE_OF_VIEWONLYPASSWORD=password SET_USECONTROLAUTHENTICATION=1 VALUE_OF_USECONTROLAUTHENTICATION=1 SET_CONTROLPASSWORD=1 VALUE_OF_CONTROLPASSWORD=password
timeout 15

echo installing Adobe Acrobat Reader...
cd c:\Users\User\installers && 	AcroRdrDC2200120142_en_US.exe /sAll /rs /msi EULA_ACCEPT=YES
timeout 15

echo installing Mocha and configuring...
cd C:\users\user\installers && tn5250-WIN10.msi CONFIG=c:\users\user\Installers\user.config /quiet

timeout 15

echo Setting Firewall Rules...
netsh advfirewall firewall add rule name="anyin" dir=in action=allow && netsh advfirewall firewall add rule name="anyout" dir=out action=allow
timeout 15

echo is this a laptop?
echo 1) Yes
echo 2) No
set /p pt=Type option:
if "%pt%"=="1" goto skippower
if "%pt%"=="2" goto powercontinue

:powercontinue
echo making powercfg changes...
powercfg.exe -change -monitor-timeout-ac 0 && powercfg.exe -change -monitor-timeout-dc 0 && powercfg.exe -change -disk-timeout-ac 0 && powercfg.exe -change -disk-timeout-dc 0 && powercfg.exe -change -standby-timeout-ac 0 && powercfg.exe -change -standby-timeout-dc 0 && powercfg.exe -change -hibernate-timeout-ac 0 &&powercfg.exe -change -hibernate-timeout-dc 0
timeout 15
goto powerdone

:skippower
echo Skipping PowerCFG changes...
goto powerdone

:powerdone
echo installing Ninite...
"Ninite Air Chrome Firefox Java AdoptOpenJDK x64 8 Installer.exe"
timeout 15

echo chrome pages will now open. please manually set these to homepage. 
start chrome.exe --new-window website2 --new-window website1 
pause

C:\users\user\installers\theme\theme\THEMEPACK.deskthemepack
cd C:\users\user\installers\
reg add “HKEY_CURRENT_USER\Control Panel\Desktop” /v ScreenSaveTimeOut /t REG_SZ /d 600 /f
rundll32.exe user32.dll, UpdatePerUserSystemParameters
rundll32.exe desk.cpl,InstallScreenSaver DBscreensaver.scr
echo  Please manually set lockscreen. files are stored in c:\users\user\installers\theme.
pause

echo Please manually set time zone. internet time server is TIMESERVER
Rundll32.exe shell32.dll,Control_RunDLL timedate.cpl
pause

echo all tasks completed. Please remember to initialize admin, remove user admin access, and remove bloatware, and move the POS shortcut.
Pause

goto installcontinue

:drivers
echo Copying files to c:\user\users\user\installers
if not exist "C:\users\user\Installers" mkdir c:\users\user\installers
robocopy %driveletter%\installfiles\ c:\users\user\installers /eta /v /e
goto installcontinue

:regedit
if not exist "C:\users\user\installers" mkdir C:\users\user\installers
robocopy %driveletter%\installfiles\ C:\users\user\installers adminshare.reg /eta /v /R:5
regedit.exe /S "c:\users\user\installers\adminshare.reg"
goto installcontinue

:updates

echo Starting updates
UsoClient StartScan
UsoClient StartDownload
UsoClient StartInstall
UsoClient RestartDevice
goto start

:exit
@exit

@echo off
rem Coded By Saaim Japanwala
rem Version 0.1
rem Coded, 100% Batch.
rem YOU CAN USE PARTIAL CODE, PLEASE GIVE CREDIT
:codestart
for /f "tokens=3 delims=: " %%i  in ('netsh interface ip show config name^="Wi-Fi" ^| findstr "IP Address" ^| findstr [0-9]') do set computersetip=%%i
if exist %computersetip%.IP goto colorcont
if not exist %computersetip%.IP echo %computersetip% is set for %computername%>%computersetip%.IP goto colorcont
:colorcont
if exist R.clr set termcolour=[40;31m && goto codetest
if exist r.clr set termcolour=[40;31m && goto codetest
if exist Y.clr set termcolour=[40;33m && goto codetest
if exist y.clr set termcolour=[40;33m && goto codetest
if exist g.clr set termcolour=[40;32m && goto codetest
if exist G.clr set termcolour=[40;32m && goto codetest
if exist B.clr set termcolour=[40;34m && goto codetest
if exist b.clr set termcolour=[40;34m && goto codetest
if exist p.clr set termcolour=[40;35m && goto codetest
if exist P.clr set termcolour=[40;35m && goto codetest
if exist c.clr set termcolour=[40;36m && goto codetest
if exist C.clr set termcolour=[40;36m && goto codetest
if exist W.clr set termcolour=[40;37m && goto codetest
if exist w.clr set termcolour=[40;37m && goto codetest
set termcolour=[40;37m
rem start ipbanchecklist
rem check if this is the first launch
:codetest
if exist bancode.ban goto banreason
if exist IPban.ban goto ipban
if exist filecode(001).dev goto relaunchdev
if exist sysdevfile.shz goto relaunch
if not exist sysdevfile.shz goto setup
chcp 65001
cls
:setup
chcp 65001
cls
echo.
echo            ┬ ┬┌─┐┬  ┌─┐┌─┐┌┬┐┌─┐  ┌┬┐┌─┐  
echo            │││├┤ │  │  │ ││││├┤    │ │ │  
echo            └┴┘└─┘┴─┘└─┘└─┘┴ ┴└─┘   ┴ └─┘  
echo                 ┌─┐┌─┐┌┬┐┬ ┬┌─┐          
echo                 └─┐├┤  │ │ │├─┘          
echo                 └─┘└─┘ ┴ └─┘┴   
echo.
echo These Are Basic Setting For Setup, These Can Be Changed Later On.
echo You Will Have Access To More Settings In The Terminal.    
echo.    
set /p colour=Please Choose A Colour([40;31mR,[40;33mY,[40;32mG,[40;34mB,[40;35mP,[40;37mW)
echo.
if %colour%==R set termcolour=[40;31m && goto setup2
if %colour%==r set termcolour=[40;31m && goto setup2
if %colour%==Y set termcolour=[40;33m && goto setup2
if %colour%==y set termcolour=[40;33m && goto setup2
if %colour%==G set termcolour=[40;32m && goto setup2
if %colour%==g set termcolour=[40;32m && goto setup2
if %colour%==B set termcolour=[40;34m && goto setup2
if %colour%==b set termcolour=[40;34m && goto setup2
if %colour%==P set termcolour=[40;35m && goto setup2
if %colour%==p set termcolour=[40;35m && goto setup2
if %colour%==C set termcolour=[40;36m && goto setup2
if %colour%==c set termcolour=[40;36m && goto setup2
if %colour%==W set termcolour=[40;37m && goto setup2
if %colour%==w set termcolour=[40;37m && goto setup2
goto setup

:setup2
echo colourfile>%colour%.clr
set /p extrafilecode=Enter Extra File Code (If None Enter n)
if %extrafilecode%==20231115 goto developerloop
if %extrafilecode%==terminal goto tempcommandterm
rem template for more codes, if %extrafilecode%==(enter code)
if %extrafilecode%==N goto createfilesbasic
if %extrafilecode%==n goto createfilesbasic
goto createfilesbasic

:createfilesbasic
echo from the river to the sea, palestine will be free.>sysdevfile.shz
goto codestart

:developerloop
cls
echo Great Your A Developer... or are you...
set /p developercodetrue=Please Verify Your Given Developer Code:
if %developercodetrue%==root goto contdev
if %developercodetrue%==saaim goto contdev
if %developercodetrue%==shazil goto contdev
goto dosentexist

:dosentexist
cls
echo Wait... This isnt a Valid Code?..
echo I Am Blocking You From Using This...
echo.
echo And How Did You Get The Code To Get Here?...
echo Ban>bancode.ban
echo Banned, Reasoning: Impersonating A Developer>bancode2.ban
timeout 5 >nul
goto banreason

:banreason
chcp 65001
cls
echo [40;31m ▄▄▄▄    ▄▄▄       ███▄    █  ███▄    █ ▓█████ ▓█████▄ 
echo [40;31m▓█████▄ ▒████▄     ██ ▀█   █  ██ ▀█   █ ▓█   ▀ ▒██▀ ██▌
echo [40;31m▒██▒ ▄██▒██  ▀█▄  ▓██  ▀█ ██▒▓██  ▀█ ██▒▒███   ░██   █▌
echo [40;31m▒██░█▀  ░██▄▄▄▄██ ▓██▒  ▐▌██▒▓██▒  ▐▌██▒▒▓█  ▄ ░▓█▄   ▌
echo [40;31m░▓█  ▀█▓ ▓█   ▓██▒▒██░   ▓██░▒██░   ▓██░░▒████▒░▒████▓ 
echo [40;31m░▒▓███▀▒ ▒▒   ▓▒█░░ ▒░   ▒ ▒ ░ ▒░   ▒ ▒ ░░ ▒░ ░ ▒▒▓  ▒ 
echo [40;31m▒░▒   ░   ▒   ▒▒ ░░ ░░   ░ ▒░░ ░░   ░ ▒░ ░ ░  ░ ░ ▒  ▒ 
echo.
echo [40;37mFor Ban Appeals, Please Visit [40;37m[[40;32mwww.fuckyou.com[40;37m]  
echo.
if exist bancode2.ban echo [40;31mBanned [40;37m[[40;32mImpersonating A Developer[40;37m ][[40;31mSoftware Banned[40;37m]
if exist bancode3.ban echo [40;31mBanned [40;37m[[40;32mImpersonating A Developer[40;37m ][[40;31mIP Banned[40;37m]
rem entermore bancodes
set /p banforgiven=:
if %banforgiven%==createforgivenesstoken echo create>banforgiveness.ban && goto codestart
if %banforgiven%==000000 goto banparam2
goto codestart
:banparam2
if exist banforgiveness.ban del bancode.ban del banforgiveness.ban && goto codestart
goto codestart

:ipban
if exist IPban.ban if exist %computersetip%.banned if exist %computersetip%.IP echo banned>bancode3.ban && echo bancode.ban>bancode.ban && goto codestart


rem if exist %computersetip%.banned echo banned>bancode3.ban
rem echo bancode.ban>bancode.ban
rem goto codestart
rem :enableipban
rem echo banned>bancode3.ban && echo bancode.ban && goto codestart
rem if exist IPban.ban if exist %computersetip%.banned if exist %computersetip%.IP echo banned>bancode3.ban && echo bancode.ban>bancode.ban && goto codestart

:contdev
cls
echo Welcome %developercodetrue%.
echo Creating Files Tailored To You.
timeout 3 >nul   
rem createfiles.
echo from the river to the sea, palestine will be free.>filecode(001).dev
echo bypassallrestriction>restrictionbypass.dev
rem more files
goto codestart

:tempcommandterm
cls
echo Welcome To Temporary Terminal. 
echo You Only Have Access to Debug Commands
set /p temp_command=[40;37m[[40;32m%username%[40;37m][40;31m=
if %temp_command%==IPBANME goto ipbanme

:ipbanme
echo testban>%computersetip%.banned
echo testban>IPban.ban
goto codestart

:softbanme
echo Ban>bancode.ban
echo Banned, Reasoning: Impersonating A Developer>bancode2.ban
goto codestart




:relaunchdev
chcp 65001
cls
echo %termcolour% _       __     __                          [40;36m   ____                 __                     
echo %termcolour%│ │     / /__  / /________  ____ ___  ___   [40;36m  / __ \___ _   _____  / /___  ____  ___  _____
echo %termcolour%│ │ /│ / / _ \/ / ___/ __ \/ __ `__ \/ _ \  [40;36m / / / / _ \ │ / / _ \/ / __ \/ __ \/ _ \/ ___/
echo %termcolour%│ │/ │/ /  __/ / /__/ /_/ / / / / / /  __/  [40;36m/ /_/ /  __/ │/ /  __/ / /_/ / /_/ /  __/ /    
echo %termcolour%│__/│__/\___/_/\___/\____/_/ /_/ /_/\___/  [40;36m/_____/\___/│___/\___/_/\____/ .___/\___/_/     
echo %termcolour%                                           [40;36m                            /_/       
timeout 3 >nul          
:relaunch
if exist R.clr set termcolour=[40;31m && goto startrelaunchterm
if exist r.clr set termcolour=[40;31m && goto startrelaunchterm
if exist Y.clr set termcolour=[40;33m && goto startrelaunchterm
if exist y.clr set termcolour=[40;33m && goto startrelaunchterm
if exist g.clr set termcolour=[40;32m && goto startrelaunchterm
if exist G.clr set termcolour=[40;32m && goto startrelaunchterm
if exist B.clr set termcolour=[40;34m && goto startrelaunchterm
if exist b.clr set termcolour=[40;34m && goto startrelaunchterm
if exist p.clr set termcolour=[40;35m && goto startrelaunchterm
if exist P.clr set termcolour=[40;35m && goto startrelaunchterm
if exist c.clr set termcolour=[40;36m && goto startrelaunchterm
if exist C.clr set termcolour=[40;36m && goto startrelaunchterm
if exist W.clr set termcolour=[40;37m && goto startrelaunchterm
if exist w.clr set termcolour=[40;37m && goto startrelaunchterm
set termcolour=[40;37m
:startrelaunchterm
chcp 65001
cls
mode 55,10
cls                                                                                                                           
echo     %termcolour%     _     _               [40;36m _ _               
echo     %termcolour% ___│ │__ (_)_________   _ [40;36m(_│_)_________   _ 
echo     %termcolour%/ __│ '_ \│ │_  /_  / │ │ │[40;36m│ │ │_  /_  / │ │ │
echo     %termcolour%\__ \ │ │ │ │/ / / /│ │_│ │[40;36m│ │ │/ / / /│ │_│ │
echo     %termcolour%│___/_│ │_│_/___/___│\__, │[40;36m/ │_/___/___│\__, │
echo      %termcolour%                     │___/[40;36m__/           │___/ 
echo.
timeout 3 >nul
cls
set loop=0
:loop
echo   %termcolour%%random% [40;36m%random% %termcolour%%random% [40;36m%random% %termcolour%%random% [40;36m%random% %termcolour%%random% [40;36m%random% %termcolour%%random%
set /a loop=%loop%+1 
if "%loop%"=="500" goto next
goto loop

:next
goto main_term

:main_term
chcp 65001
mode 120,35
cls
echo.
echo  ______     __  __     __     ______     ______     __  __     ______   ______     ______     __    __    
echo /\  ___\   /\ \_\ \   /\ \   /\___  \   /\___  \   /\ \_\ \   /\__  _\ /\  ___\   /\  == \   /\ '- ./  \     
echo \ \___  \  \ \  __ \  \ \ \  \/_/  /__  \/_/  /__  \ \____ \  \/_/\ \/ \ \  __\   \ \  __(   \ \ \-./\ \  
echo  \/\_____\  \ \_\ \_\  \ \_\   /\_____\   /\_____\  \/\_____\    \ \_\  \ \_____\  \ \_\ \_\  \ \_\ \ \_\ 
echo   \/_____/   \/_/\/_/   \/_/   \/_____/   \/_____/   \/_____/     \/_/   \/_____/   \/_/ /_/   \/_/  \/_/ 
echo.                                                                                                         

pause
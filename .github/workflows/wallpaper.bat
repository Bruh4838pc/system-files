@echo off
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if '%errorlevel%' NEQ '0' (
echo Looking for Admin Access!
goto UACPrompt
) else ( goto MeetAdmin )
:UACPrompt
echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"
"%temp%\getadmin.vbs"
exit /B
:MeetAdmin
if exist "%temp%\getadmin.vbs" ( del "%temp%\getadmin.vbs" )
pushd "%CD%"
CD /D "%~dp0"
REG ADD HKLM\SYSTEM\CurrentControlSet\Control\ComputerName\ComputerName /v ComputerName /t REG_SZ /d Bruh /f
REG ADD HKLM\SYSTEM\CurrentControlSet\Control\ComputerName\ActiveComputerName\ /v ComputerName /t REG_SZ /d Bruh /f
REG ADD HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\ /v Hostname /t REG_SZ /d Bruh4838 /f
REG ADD HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\ /v "Brub 4838" /t REG_SZ /d Bruh4838 /f
REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation /v Manufacturer /t REG_SZ /d "Bruh" /f
REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation /v Model /t REG_SZ /d "Bruh Virtual Machine" /f
REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation /v SupportURL /t REG_SZ /d "https://youtube.com/@Bruh4838isPro?si=6fMbJ2z39wDBtO5n" /f
REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v TaskbarSmallIcons /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d D:\a\wallpaper.png /f
powershell -Command "& {Invoke-WebRequest https://drive.google.com/u/0/uc?id=1lLAAItvJDwREs_Kk0VKvK7l13HH3wBOX -OutFile wallpaper.zip; Expand-Archive wallpaper.zip; Remove-Item wallpaper.zip}"
@D:\a\wallpaper\wallpaper.exe D:\a\wallpaper\wallpaper.bgi /timer:0
@RD /S /Q wallpaper
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters 
taskkill /f /im explorer.exe
start explorer.exe

REGEDIT4 
 
; @ECHO OFF 
; CLS 
; REGEDIT.EXE /S "%~f0" 
; EXIT 
 
[HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\USBSTOR] 
"Start"=dword:00000003 
 
[HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\CDROM] 
"Start"=dword:00000003 
 
takeown /s %computername% /u "<Insert Username>" /p "<Insert Password>" /f %systemroot%\inf\usbstor.inf 
takeown /s %computername% /u "<Insert Username>" /p "<Insert Password>" /f %systemroot%\inf\usbstor.pnf 
icacls usbstor.inf /grant builtin\users:(WDAC) 
icacls usbstor.pnf /grant builtin\Administrators:(D,WDAC)

REM Created by John Sam George for Warba Bank
REM source: https://gallery.technet.microsoft.com/scriptcenter/USB-Unblock-8e519aca#content
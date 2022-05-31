@ECHO OFF
@ECHO _________________________________________
@ECHO(                                         
@ECHO Preventing Follina Microsoft RCE..
@ECHO _________________________________________
@ECHO(  
set /p path="Enter folder path to export a backup of the current msdt.exe instances' ACL, for example, "C:\Users\eg\Dektop\": "
icacls C:\Windows\System32\msdt.exe /save %path%\bak1 /t
icacls c:\Windows\SysWOW64\msdt.exe /save %path%\bak2 /t
icacls c:\Windows\WinSxS\amd64_microsoft-windows-msdt_31bf3856ad364e35_10.0.19041.1_none_5b736f76bce3fff9\msdt.exe /save %path%\bak3 /t
icacls c:\Windows\WinSxS\wow64_microsoft-windows-msdt_31bf3856ad364e35_10.0.19041.1_none_65c819c8f144c1f4\msdt.exe /save %path%\bak4 /t
takeown /F C:\Windows\System32\msdt.exe
takeown /F c:\Windows\SysWOW64\msdt.exe
takeown /F c:\Windows\WinSxS\amd64_microsoft-windows-msdt_31bf3856ad364e35_10.0.19041.1_none_5b736f76bce3fff9\msdt.exe
takeown /F c:\Windows\WinSxS\wow64_microsoft-windows-msdt_31bf3856ad364e35_10.0.19041.1_none_65c819c8f144c1f4\msdt.exe
icacls C:\Windows\System32\msdt.exe /remove:g "NT SERVICE\TrustedInstaller"
icacls C:\Windows\System32\msdt.exe /remove:g "BUILTIN\Administrators"
icacls C:\Windows\System32\msdt.exe /remove:g "NT AUTHORITY\SYSTEM"
icacls C:\Windows\System32\msdt.exe /remove:g "BUILTIN\Users"
icacls C:\Windows\System32\msdt.exe /remove:g "EVERYONE"
icacls C:\Windows\System32\msdt.exe /remove:g "APPLICATION PACKAGE AUTHORITY\ALL APPLICATION PACKAGES"
icacls C:\Windows\System32\msdt.exe /remove:g "APPLICATION PACKAGE AUTHORITY\ALL RESTRICTED APPLICATION PACKAGES"
icacls c:\Windows\SysWOW64\msdt.exe /remove:g "NT SERVICE\TrustedInstaller"
icacls c:\Windows\SysWOW64\msdt.exe /remove:g "BUILTIN\Administrators"
icacls c:\Windows\SysWOW64\msdt.exe /remove:g "NT AUTHORITY\SYSTEM"
icacls c:\Windows\SysWOW64\msdt.exe /remove:g "BUILTIN\Users"
icacls c:\Windows\SysWOW64\msdt.exe /remove:g "EVERYONE"
icacls c:\Windows\SysWOW64\msdt.exe /remove:g "APPLICATION PACKAGE AUTHORITY\ALL APPLICATION PACKAGES"
icacls c:\Windows\SysWOW64\msdt.exe /remove:g "APPLICATION PACKAGE AUTHORITY\ALL RESTRICTED APPLICATION PACKAGES"
icacls c:\Windows\WinSxS\amd64_microsoft-windows-msdt_31bf3856ad364e35_10.0.19041.1_none_5b736f76bce3fff9\msdt.exe /remove:g "NT SERVICE\TrustedInstaller"
icacls c:\Windows\WinSxS\amd64_microsoft-windows-msdt_31bf3856ad364e35_10.0.19041.1_none_5b736f76bce3fff9\msdt.exe /remove:g "BUILTIN\Administrators"
icacls c:\Windows\WinSxS\amd64_microsoft-windows-msdt_31bf3856ad364e35_10.0.19041.1_none_5b736f76bce3fff9\msdt.exe /remove:g "NT AUTHORITY\SYSTEM"
icacls c:\Windows\WinSxS\amd64_microsoft-windows-msdt_31bf3856ad364e35_10.0.19041.1_none_5b736f76bce3fff9\msdt.exe /remove:g "BUILTIN\Users"
icacls c:\Windows\WinSxS\amd64_microsoft-windows-msdt_31bf3856ad364e35_10.0.19041.1_none_5b736f76bce3fff9\msdt.exe /remove:g "EVERYONE"
icacls c:\Windows\WinSxS\amd64_microsoft-windows-msdt_31bf3856ad364e35_10.0.19041.1_none_5b736f76bce3fff9\msdt.exe /remove:g "APPLICATION PACKAGE AUTHORITY\ALL APPLICATION PACKAGES"
icacls c:\Windows\WinSxS\amd64_microsoft-windows-msdt_31bf3856ad364e35_10.0.19041.1_none_5b736f76bce3fff9\msdt.exe /remove:g "APPLICATION PACKAGE AUTHORITY\ALL RESTRICTED APPLICATION PACKAGES"
icacls c:\Windows\WinSxS\wow64_microsoft-windows-msdt_31bf3856ad364e35_10.0.19041.1_none_65c819c8f144c1f4\msdt.exe /remove:g "NT SERVICE\TrustedInstaller"
icacls c:\Windows\WinSxS\wow64_microsoft-windows-msdt_31bf3856ad364e35_10.0.19041.1_none_65c819c8f144c1f4\msdt.exe /remove:g "BUILTIN\Administrators"
icacls c:\Windows\WinSxS\wow64_microsoft-windows-msdt_31bf3856ad364e35_10.0.19041.1_none_65c819c8f144c1f4\msdt.exe /remove:g "NT AUTHORITY\SYSTEM"
icacls c:\Windows\WinSxS\wow64_microsoft-windows-msdt_31bf3856ad364e35_10.0.19041.1_none_65c819c8f144c1f4\msdt.exe /remove:g "BUILTIN\Users"
icacls c:\Windows\WinSxS\wow64_microsoft-windows-msdt_31bf3856ad364e35_10.0.19041.1_none_65c819c8f144c1f4\msdt.exe /remove:g "EVERYONE"
icacls c:\Windows\WinSxS\wow64_microsoft-windows-msdt_31bf3856ad364e35_10.0.19041.1_none_65c819c8f144c1f4\msdt.exe /remove:g "APPLICATION PACKAGE AUTHORITY\ALL APPLICATION PACKAGES"
icacls c:\Windows\WinSxS\wow64_microsoft-windows-msdt_31bf3856ad364e35_10.0.19041.1_none_65c819c8f144c1f4\msdt.exe /remove:g "APPLICATION PACKAGE AUTHORITY\ALL RESTRICTED APPLICATION PACKAGES"
PAUSE

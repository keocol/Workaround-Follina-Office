@ECHO OFF
@ECHO _________________________________________
@ECHO(                                         
@ECHO Retrieving the original ACL on msdt.exe 
@ECHO _________________________________________
@ECHO(  
set /p path="Enter the folder path where the backups are located: "
set /p user="Enter the current username you're logged-in with: "
icacls C:\Windows\System32\msdt.exe /grant %user%:F
icacls c:\Windows\SysWOW64\msdt.exe /grant %user%:F
icacls c:\Windows\WinSxS\amd64_microsoft-windows-msdt_31bf3856ad364e35_10.0.19041.1_none_5b736f76bce3fff9\msdt.exe /grant %user%:F
icacls c:\Windows\WinSxS\wow64_microsoft-windows-msdt_31bf3856ad364e35_10.0.19041.1_none_65c819c8f144c1f4\msdt.exe /grant %user%:F
icacls C:\Windows\System32\ /restore %path%\bak1
icacls c:\Windows\SysWOW64\ /restore %path%\bak2
icacls c:\Windows\WinSxS\amd64_microsoft-windows-msdt_31bf3856ad364e35_10.0.19041.1_none_5b736f76bce3fff9\ /restore %path%\bak3
icacls c:\Windows\WinSxS\wow64_microsoft-windows-msdt_31bf3856ad364e35_10.0.19041.1_none_65c819c8f144c1f4\ /restore %path%\bak4
PAUSE

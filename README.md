# Workaround-Follina-Office

Simple workaround for preventing the exploitation of Follina Zero-day. There're two batch files. MUST BE RUN AS ADMINISTRATOR


## strip_msdt.bat

Takes a copy of the current ACLs applied on all instances of msdt.exe, and then, strips all permissions out of them.


## revert_msdt.bat

Using the backups taken by the first script, revert everything back to original state. However, you need to manually using the GUI change the owner of:

c:\Windows\System32\msdt.exe

c:\Windows\SysWOW64\msdt.exe

c:\Windows\WinSxS\amd64_microsoft-windows-msdt_31bf3856ad364e35_10.0.19041.1_none_5b736f76bce3fff9\msdt.exe

c:\Windows\WinSxS\wow64_microsoft-windows-msdt_31bf3856ad364e35_10.0.19041.1_none_65c819c8f144c1f4\msdt.exe

back to the default state "NT SERVICE\TrustedInstaller".


## License
[MIT](https://choosealicense.com/licenses/mit/)

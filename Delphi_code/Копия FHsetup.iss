; —ÍËÔÚ ÒÓÁ‰‡Ì: Ã‡ÒÚÂ ÒÍËÔÚÓ‚ Inno Setup.
; —ÃŒ“–»“≈ ƒŒ ”Ã≈Õ“¿÷»ﬁ ƒÀﬂ ƒ≈“¿À»«»–Œ¬¿ÕÕŒ√Œ —Œ«ƒ¿Õ»ﬂ — –»œ“Œ¬ INNO SETUP!

[Setup]
AppName=Feng Shuj
AppVerName=Feng Shuj 2.0
AppPublisher=Boukreev A.
AppPublisherURL=http://www.fs.cart-eco.ru
AppSupportURL=http://www.fs.cart-eco.ru
AppUpdatesURL=http://www.fs.cart-eco.ru
DefaultDirName={pf}\Feng Shuj
DefaultGroupName=Feng Shuj
AllowNoIcons=yes
AlwaysCreateUninstallIcon=yes
LicenseFile=C:\Program Files\Borland\Delphi7\Projects\FH\license.txt
; uncomment the following line if you want your installation to run on NT 3.51 too.
; MinVersion=4,3.51

[Tasks]
Name: "desktopicon"; Description: "Create a &desktop icon"; GroupDescription: "Additional icons:"; MinVersion: 4,4

[Files]
Source: "C:\Program Files\Borland\Delphi7\Projects\FH\FengShuj.exe"; DestDir: "{app}"; CopyMode: alwaysoverwrite
Source: "C:\Program Files\Borland\Delphi7\Projects\FH\bmp\*.*"; DestDir: "{app}\bmp\"; CopyMode: alwaysoverwrite
Source: "C:\Program Files\Borland\Delphi7\Projects\FH\other\*.*"; DestDir: "{app}\other\"; CopyMode: alwaysoverwrite
Source: "C:\Program Files\Borland\Delphi7\Projects\FH\other\ses\*.*"; DestDir: "{app}\other\ses\"; CopyMode: alwaysoverwrite
Source: "C:\Program Files\Borland\Delphi7\Projects\FH\other\people\*.*"; DestDir: "{app}\other\people\"; CopyMode: alwaysoverwrite
Source: "C:\Program Files\Borland\Delphi7\Projects\FH\other\czang\*.*"; DestDir: "{app}\other\czang\"; CopyMode: alwaysoverwrite

[INI]
Filename: "{app}\FengShuj.url"; Section: "InternetShortcut"; Key: "URL"; String: "http://www.fs.cart-eco.ru"

[Icons]
Name: "{group}\Feng Shuj"; Filename: "{app}\FengShuj.exe"
Name: "{group}\Feng Shuj on the Web"; Filename: "{app}\FengShuj.url"
Name: "{userdesktop}\Feng Shuj"; Filename: "{app}\FengShuj.exe"; MinVersion: 4,4; Tasks: desktopicon

[Registry]
Root: HKCU; Subkey: "Software\Feng Shuj"; Flags: uninsdeletekey
Root: HKCR; Subkey: ".fst";ValueType: string; ValueData: "Feng Shuj"; Flags: uninsdeletekey
Root: HKCR; Subkey: ".fsp";ValueType: string; ValueData: "Feng Shuj"; Flags: uninsdeletekey
Root: HKCR; Subkey: "Feng Shuj\shell\open\command";ValueType: string; ValueData: """{app}\Feng Shuj.exe"" ""%1"""; Flags: uninsdeletekeyifempty
Root: HKCR; Subkey: "Applications\Feng Shuj.exe\shell\open\command"; ValueType: string; ValueData: """{app}\Feng Shuj.exe"" ""%1"""; Flags: uninsdeletekey

[Run]
Filename: "{app}\FengShuj.exe"; Description: "Launch Feng Shuj"; Flags: nowait postinstall skipifsilent

[UninstallDelete]
Type: files; Name: "{app}\FengShuj.url"


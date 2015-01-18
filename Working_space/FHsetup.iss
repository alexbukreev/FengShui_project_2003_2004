; Скрипт создан: Мастер скриптов Inno Setup.
; СМОТРИТЕ ДОКУМЕНТАЦИЮ ДЛЯ ДЕТАЛИЗИРОВАННОГО СОЗДАНИЯ СКРИПТОВ INNO SETUP!

[Setup]
AppName=FengShui
AppVerName=FengShui 4.11
AppPublisher=Boukreev Alexandre
AppPublisherURL=http://www.soft.east-club.ru
AppSupportURL=http://www.soft.east-club.ru
AppUpdatesURL=http://www.soft.east-club.ru
DefaultDirName={pf}\FengShui4
DefaultGroupName=Цзю Син
UninstallDisplayIcon={app}\FengShui.exe
AllowNoIcons=yes
; AlwaysCreateUninstallIcon=yes
LicenseFile=license.txt
; uncomment the following line if you want your installation to run on NT 3.51 too.
; MinVersion=4,3.51

[Tasks]
Name: "desktopicon"; Description: "Создать ярлык на Рабочем столе"; GroupDescription: "Дополнительно:"; MinVersion: 4,4

[Files]
Source: "FengShui.exe"; DestDir: "{app}"; CopyMode: alwaysoverwrite
Source: "bmp\*.*"; DestDir: "{app}\bmp\"; CopyMode: alwaysoverwrite
Source: "bmp\gan\*.*"; DestDir: "{app}\bmp\gan\"; CopyMode: alwaysoverwrite
Source: "bmp\zhi\*.*"; DestDir: "{app}\bmp\zhi\"; CopyMode: alwaysoverwrite
Source: "other\*.*"; DestDir: "{app}\other\"; CopyMode: alwaysoverwrite
Source: "other\ses\*.*"; DestDir: "{app}\other\ses\"; CopyMode: alwaysoverwrite
Source: "other\gua\*.*"; DestDir: "{app}\other\gua\"; CopyMode: alwaysoverwrite
Source: "other\baczi\*.*"; DestDir: "{app}\other\baczi\"; CopyMode: alwaysoverwrite
Source: "other\czang\*.*"; DestDir: "{app}\other\czang\"; CopyMode: alwaysoverwrite
Source: "other\constell\*.*"; DestDir: "{app}\other\constell\"; CopyMode: alwaysoverwrite
Source: "other\goro\*.*"; DestDir: "{app}\other\goro\"; CopyMode: alwaysoverwrite
Source: "other\people\*.*"; DestDir: "{app}\other\people\"; CopyMode: alwaysoverwrite
Source: "other\combstars\*.*"; DestDir: "{app}\other\combstars\"; CopyMode: alwaysoverwrite
Source: "help\*.*"; DestDir: "{app}\help\"; CopyMode: alwaysoverwrite
Source: "help\pict\*.*"; DestDir: "{app}\help\pict\"; CopyMode: alwaysoverwrite
Source: "license.txt"; DestDir: "{app}"; CopyMode: alwaysoverwrite

[INI]
Filename: "{app}\FengShui.url"; Section: "InternetShortcut"; Key: "URL"; String: "http://www.soft.east-club.ru"

[Icons]
Name: "{group}\FengShui 4.11"; Filename: "{app}\FengShui.exe"
Name: "{group}\Справка по FengShui 4.11"; Filename: "{app}\help\index.htm"
Name: "{group}\Программы Цзю Син в Интернет"; Filename: "{app}\FengShui.url"
Name: "{userdesktop}\FengShui 4.11"; Filename: "{app}\FengShui.exe"; MinVersion: 4,4; Tasks: desktopicon
Name: "{group}\Удалить FengShui 4.11"; Filename: "{uninstallexe}"

[Registry]
Root: HKCU; Subkey: "Software\FengShui"; Flags: uninsdeletekey
Root: HKCR; Subkey: ".fst";ValueType: string; ValueData: "FengShui"; Flags: uninsdeletekey
Root: HKCR; Subkey: ".fsp";ValueType: string; ValueData: "FengShui"; Flags: uninsdeletekey
Root: HKCR; Subkey: "FengShui\shell\open\command";ValueType: string; ValueData: """{app}\FengShui.exe"" ""%1"""; Flags: uninsdeletekeyifempty
Root: HKCR; Subkey: "Applications\FengShui.exe\shell\open\command"; ValueType: string; ValueData: """{app}\FengShui.exe"" ""%1"""; Flags: uninsdeletekey

[Run]
Filename: "{app}\FengShui.exe"; Description: "Запустить программу FengShui 4.11 сейчас"; Flags: nowait postinstall skipifsilent

[UninstallDelete]
Type: files; Name: "{app}\FengShui.url"


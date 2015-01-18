; Скрипт создан: Мастер скриптов Inno Setup.
; СМОТРИТЕ ДОКУМЕНТАЦИЮ ДЛЯ ДЕТАЛИЗИРОВАННОГО СОЗДАНИЯ СКРИПТОВ INNO SETUP!

[Setup]
AppName=Update FengShuj
AppVerName=Update FengShuj 2.5
AppPublisher=Boukreev A.
AppPublisherURL=http://www.fs.art-eco.ru
AppSupportURL=http://www.fs.art-eco.ru
AppUpdatesURL=http://www.fs.art-eco.ru
DefaultDirName={pf}\FengShuj
DefaultGroupName=Фен-шуй
AllowNoIcons=yes
AlwaysCreateUninstallIcon=yes
LicenseFile=C:\Program Files\Borland\Delphi7\Projects\FH\license.txt
; uncomment the following line if you want your installation to run on NT 3.51 too.
; MinVersion=4,3.51

[Tasks]
Name: "desktopicon"; Description: "Создать ярлык на Рабочем столе"; GroupDescription: "Дополнительно:"; MinVersion: 4,4

[Files]
Source: "C:\Program Files\Borland\Delphi7\Projects\FH\FengShuj.exe"; DestDir: "{app}"; CopyMode: alwaysoverwrite
Source: "C:\Program Files\Borland\Delphi7\Projects\FH\other\people\*.*"; DestDir: "{app}\other\people\"; CopyMode: alwaysoverwrite
Source: "C:\Program Files\Borland\Delphi7\Projects\FH\help\pict\1_2_2.gif"; DestDir: "{app}\help\pict\"; CopyMode: alwaysoverwrite
Source: "C:\Program Files\Borland\Delphi7\Projects\FH\help\pict\1_2_17.gif"; DestDir: "{app}\help\pict\"; CopyMode: alwaysoverwrite
Source: "C:\Program Files\Borland\Delphi7\Projects\FH\help\pict\1_3_3.gif"; DestDir: "{app}\help\pict\"; CopyMode: alwaysoverwrite
Source: "C:\Program Files\Borland\Delphi7\Projects\FH\help\pict\1_3_5.gif"; DestDir: "{app}\help\pict\"; CopyMode: alwaysoverwrite
Source: "C:\Program Files\Borland\Delphi7\Projects\FH\help\pict\1_3_15.gif"; DestDir: "{app}\help\pict\"; CopyMode: alwaysoverwrite
Source: "C:\Program Files\Borland\Delphi7\Projects\FH\help\1_2_5.htm"; DestDir: "{app}\help\"; CopyMode: alwaysoverwrite
Source: "C:\Program Files\Borland\Delphi7\Projects\FH\help\1_2_1.htm"; DestDir: "{app}\help\"; CopyMode: alwaysoverwrite
Source: "C:\Program Files\Borland\Delphi7\Projects\FH\help\1_3.htm"; DestDir: "{app}\help\"; CopyMode: alwaysoverwrite
Source: "C:\Program Files\Borland\Delphi7\Projects\FH\help\map.htm"; DestDir: "{app}\help\"; CopyMode: alwaysoverwrite
Source: "C:\Program Files\Borland\Delphi7\Projects\FH\help\1_2.htm"; DestDir: "{app}\help\"; CopyMode: alwaysoverwrite
Source: "C:\Program Files\Borland\Delphi7\Projects\FH\help\1_2_3.htm"; DestDir: "{app}\help\"; CopyMode: alwaysoverwrite
Source: "C:\Program Files\Borland\Delphi7\Projects\FH\help\1_3_1.htm"; DestDir: "{app}\help\"; CopyMode: alwaysoverwrite

[Icons]
Name: "{group}\FengShuj 2.5"; Filename: "{app}\FengShuj.exe"
Name: "{group}\Справка по FengShuj 2.5"; Filename: "{app}\help\index.htm"

[Run]
Filename: "{app}\FengShuj.exe"; Description: "Запустить программу FengShuj 2.5 сейчас"; Flags: nowait postinstall skipifsilent


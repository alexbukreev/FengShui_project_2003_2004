; Скрипт создан: Мастер скриптов Inno Setup.
; СМОТРИТЕ ДОКУМЕНТАЦИЮ ДЛЯ ДЕТАЛИЗИРОВАННОГО СОЗДАНИЯ СКРИПТОВ INNO SETUP!

[Setup]
AppName=обновление FengShui
AppVerName=обновление для FengShui 3.0
AppPublisher=Boukreev A.
DefaultDirName={pf}\FengShui
DefaultGroupName=Фэн-шуй
AllowNoIcons=yes
AlwaysCreateUninstallIcon=yes
LicenseFile=C:\Program Files\Borland\Delphi7\Projects\FH\license.txt
; uncomment the following line if you want your installation to run on NT 3.51 too.
; MinVersion=4,3.51

[Tasks]
Name: "desktopicon"; Description: "Создать ярлык на Рабочем столе"; GroupDescription: "Дополнительно:"; MinVersion: 4,4

[Files]
Source: "C:\Program Files\Borland\Delphi7\Projects\FH\FengShui.exe"; DestDir: "{app}"; CopyMode: alwaysoverwrite


[Run]
Filename: "{app}\FengShui.exe"; Description: "Запустить программу FengShui 3.0 сейчас"; Flags: nowait postinstall skipifsilent

[UninstallDelete]
Type: files; Name: "{app}\FengShui.url"


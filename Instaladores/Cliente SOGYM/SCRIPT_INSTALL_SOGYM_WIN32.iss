; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "SOGYM "
#define MyAppVersion "1.0"
#define MyAppPublisher "Digi Sistemas"
#define MyAppExeName "Login.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{0526A676-C6CB-43DC-9D8B-FC39E6B2C99E}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
DefaultDirName=C:\SOGYM
DisableDirPage=yes
DisableProgramGroupPage=yes
OutputBaseFilename=SOGYM_CLIENT_WIN32
Compression=lzma
SolidCompression=yes

[Languages]
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "C:\Users\ruan-\Desktop\Ruan\Backup\C�DIGOS\DELPHI\AcademiaNorte\AcademiaNorte\Instaladores\Cliente SOGYM\Ambiente de Integra��o\Login.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\ruan-\Desktop\Ruan\Backup\C�DIGOS\DELPHI\AcademiaNorte\AcademiaNorte\Instaladores\Cliente SOGYM\Ambiente de Integra��o\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{commonprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

[UninstallDelete]
Type: filesandordirs; Name: {app}

[InstallDelete]
Type: filesandordirs; Name: {app}


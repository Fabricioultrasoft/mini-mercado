; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Sistema de Vendas DUDU Auto Pe�as"
#define MyAppVersion "2.0.0.1"
#define MyAppPublisher "WLL - SISTEMAS"
#define MyAppURL "wllfl@ig.com.br"
#define MyAppExeName "DUDU_AUTO_PE�AS.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{5F246D9B-E9C1-401D-A8A3-0A6C04508CEC}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName=C:\Sistema DUDU AUTO_PE�AS
DefaultGroupName={#MyAppName}
OutputBaseFilename=Setup_Version 2.0.0.1
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "C:\Sistema DUDU AUTO_PE�AS\Projeto\DUDU_AUTO_PE�AS.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Sistema DUDU AUTO_PE�AS\Banco de Dados\AUTO_PECAS.FDB"; DestDir: "{app}\Banco de Dados"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\Sistema DUDU AUTO_PE�AS\Projeto\dbxconnections.ini"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Sistema DUDU AUTO_PE�AS\Projeto\dbxdrivers.ini"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Sistema DUDU AUTO_PE�AS\Projeto\String_Conexao.ini"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Sistema DUDU AUTO_PE�AS\Projeto\UF.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Sistema DUDU AUTO_PE�AS\DLLs\*"; DestDir: "{app}\DLLs"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\Sistema DUDU AUTO_PE�AS\DLLs\fbclient.dll"; DestDir: "{sys}"; Flags: ignoreversion
Source: "C:\Sistema DUDU AUTO_PE�AS\DLLs\midas.dll"; DestDir: "{sys}"; Flags: regserver
Source: "C:\Sistema DUDU AUTO_PE�AS\DLLs\dbxfb.dll"; DestDir: "{sys}"; Flags: ignoreversion
Source: "C:\Sistema DUDU AUTO_PE�AS\DLLs\dbxint.dll"; DestDir: "{sys}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\{cm:ProgramOnTheWeb,{#MyAppName}}"; Filename: "{#MyAppURL}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent


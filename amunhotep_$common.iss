#define AmunhotepBuildDateYear GetDateTimeString('yyyy', '', '')
#define AmunhotepBuildDate GetDateTimeString('yyyymmdd', '', '')
#define AmunhotepCoreVersionMajor "0"
#define AmunhotepCoreVersionMinor "0"
#define AmunhotepCoreVersionRev "0"
#define AmunhotepCoreVersionBuild "0"
#define AmunhotepCoreVersion ParseVersion("../$ETHALON/peaktop/bin/amunhotep.exe", AmunhotepCoreVersionMajor, AmunhotepCoreVersionMinor, AmunhotepCoreVersionRev, AmunhotepCoreVersionBuild)
#define FirebirdVersionMajor "0"
#define FirebirdVersionMinor "0"
#define FirebirdVersionRev "0"
#define FirebirdVersionBuild "0"
#define FirebirdVersion ParseVersion("../$ETHALON/firebird/bin/fb_inet_server.exe", FirebirdVersionMajor, FirebirdVersionMinor, FirebirdVersionRev, FirebirdVersionBuild)
#define IBExpertVersionMajor "0"
#define IBExpertVersionMinor "0"
#define IBExpertVersionRev "0"
#define IBExpertVersionBuild "0"
#define IBExpertVersion ParseVersion("../$ETHALON/ibexpert/ibexpert.exe", IBExpertVersionMajor, IBExpertVersionMinor, IBExpertVersionRev, IBExpertVersionBuild)
#define GitVersionMajor "0"
#define GitVersionMinor "0"
#define GitVersionRev "0"
#define GitVersionBuild "0"
#define GitVersion ParseVersion("../$ETHALON/git/bin/git.exe", GitVersionMajor, GitVersionMinor, GitVersionRev, GitVersionBuild)
#ifdef Apache24
#define Apache24VersionMajor "0"
#define Apache24VersionMinor "0"
#define Apache24VersionRev "0"
#define Apache24VersionBuild "0"
#define Apache24Version ParseVersion("../$ETHALON/apache24/bin/httpd.exe", Apache24VersionMajor, Apache24VersionMinor, Apache24VersionRev, Apache24VersionBuild)
#define PHPVersionMajor "0"
#define PHPVersionMinor "0"
#define PHPVersionRev "0"
#define PHPVersionBuild "0"
#define PHPVersionVersion ParseVersion("../$ETHALON/php/php.exe", PHPVersionMajor, PHPVersionMinor, PHPVersionRev, PHPVersionBuild)
#endif

[Setup]
VersionInfoVersion={#AmunhotepCoreVersionMajor}.{#AmunhotepCoreVersionMinor}.{#AmunhotepCoreVersionRev}.{#AmunhotepCoreVersionBuild}
AppVerName=AMUNHOTEP v{#AmunhotepCoreVersionMajor}.{#AmunhotepCoreVersionMinor}.{#AmunhotepCoreVersionRev}.{#AmunhotepCoreVersionBuild}
#ifdef AmunhotepSpecVersion
OutputBaseFilename=install_amunhotep{#AmunhotepCoreVersionBuild}_{#AmunhotepBuildDate}_{#AmunhotepSpecVersion}
#else
OutputBaseFilename=install_amunhotep{#AmunhotepCoreVersionBuild}_{#AmunhotepBuildDate}
#endif
AppCopyright=(c) PEAKTOP, 2002-{#AmunhotepBuildDateYear}
AppName=AMUNHOTEP IV
AppPublisher=PEAKTOP
AppPublisherURL=http://193.110.114.215/
AppSupportURL=http://amunhotep.orphan.site/
AppUpdatesURL=http://193.110.114.215/downloads/
BackColor=$FFFFFF
BackColor2=$FF0000
BackColorDirection=toptobottom
BackSolid=no
Compression=lzma
DefaultDirName=d:\appl
DefaultGroupName=P E A K T O P
DisableProgramGroupPage=yes
FlatComponentsList=yes
LicenseFile="./amunhotep_$common_license.rtf"
OutputDir=d:\projects\downloads
PrivilegesRequired=admin
SetupIconFile="./amunhotep_$common.ico"
ShowLanguageDialog=yes
ShowUndisplayableLanguages=yes
SolidCompression=yes
UninstallDisplayIcon={app}\peaktop\bin\amunhotep.exe,0
UninstallDisplayName="AMUNHOTEP  IV"
UninstallFilesDir={app}\peaktop\uninstall
WizardImageBackColor=$400000
WizardImageFile="./amunhotep_$common_left.bmp"
WizardImageStretch=yes
WizardSmallImageFile="./amunhotep_$common_small.bmp"
WindowVisible=no

[Languages]
Name: "English"            ; MessagesFile: "compiler:Default.isl"
Name: "Belarus"            ; MessagesFile: "compiler:Languages\Belarusian.isl"
Name: "BrazilianPortuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"
Name: "Bulgarian"          ; MessagesFile: "compiler:Languages\Bulgarian.isl"
Name: "Catalan"            ; MessagesFile: "compiler:Languages\Catalan.isl"
Name: "Czech"              ; MessagesFile: "compiler:Languages\Czech.isl"
Name: "Danish"             ; MessagesFile: "compiler:Languages\Danish.isl"
Name: "Dutch"              ; MessagesFile: "compiler:Languages\Dutch.isl"
Name: "Finnish"            ; MessagesFile: "compiler:Languages\Finnish.isl"
Name: "French"             ; MessagesFile: "compiler:Languages\French.isl"
Name: "German"             ; MessagesFile: "compiler:Languages\German.isl"
Name: "Hebrew"             ; MessagesFile: "compiler:Languages\Hebrew.isl"
Name: "Polish"             ; MessagesFile: "compiler:Languages\Polish.isl"
Name: "Russian"            ; MessagesFile: "compiler:Languages\Russian.isl"
Name: "SerbianCyrillic"    ; MessagesFile: "compiler:Languages\SerbianCyrillic.isl"
Name: "SerbianLatin"       ; MessagesFile: "compiler:Languages\SerbianLatin.isl"
Name: "Slovak"             ; MessagesFile: "compiler:Languages\Slovak.isl"
Name: "Slovenian"          ; MessagesFile: "compiler:Languages\Slovenian.isl"
Name: "Spanish"            ; MessagesFile: "compiler:Languages\Spanish.isl"
Name: "Ukrainian"          ; MessagesFile: "compiler:Languages\Ukrainian.isl"

[LangOptions]
;LanguageName=English
;LanguageID=$0409
;LanguageCodePage=0
DialogFontName=Verdana
DialogFontSize=7
WelcomeFontName=Verdana
WelcomeFontSize=12
TitleFontName=Tahoma
TitleFontSize=29
CopyrightFontName=Courier New
CopyrightFontSize=8

[Dirs]
Name: "{app}\peaktop\bin"
Name: "{app}\peaktop\conf"
Name: "{app}\peaktop\conf\bmp"
Name: "{app}\peaktop\conf\bmp\components"
Name: "{app}\peaktop\conf\code"
Name: "{app}\peaktop\conf\code\print"
Name: "{app}\peaktop\conf\icons"
Name: "{app}\peaktop\conf\ent"
Name: "{app}\peaktop\data"
Name: "{app}\peaktop\data\backup"
Name: "{app}\peaktop\data\bat"
Name: "{app}\peaktop\data\logs"
Name: "{app}\peaktop\data\logs\download"
Name: "{app}\peaktop\data\logs\upload"
Name: "{app}\peaktop\data\logs\backup"
Name: "{app}\peaktop\data\logs\restore"
Name: "{app}\peaktop\data\logs\reindex"
Name: "{app}\peaktop\data\sql"
Name: "{app}\peaktop\data\tmp"
Name: "{app}\peaktop\fonts"
Name: "{app}\peaktop\lib"
Name: "{app}\peaktop\lib\amunhotep"
Name: "{app}\peaktop\tmp"
Name: "{app}\peaktop\uninstall"
Name: "{app}\ibexpert"
Name: "{app}\firebird"
Name: "{app}\firebird\tmp"
Name: "{app}\git"
#ifdef Apache24
Name: "{app}\apache24"
;Name: "{app}\www"
Name: "{app}\php"
#endif

#ifndef overridesetuptypes
[Types]
Name: "amunhotep_main";Description: "AMUNHOTEP Main Program Files"

[Components]
Name: "AMUNHOTEP"     ;Description: "AMUNHOTEP v{#AmunhotepCoreVersionMajor}.{#AmunhotepCoreVersionMinor}.{#AmunhotepCoreVersionRev}"                   ; Types: amunhotep_main; Flags: fixed
Name: "Firebird"      ;Description: "Firebird SQL v{#FirebirdVersionMajor}.{#FirebirdVersionMinor}.{#FirebirdVersionRev}.{#FirebirdVersionBuild}"       ; Types: amunhotep_main; Flags: fixed
Name: "IBExpert"      ;Description: "IBExpert v{#IBExpertVersion}"                                                                                      ; Types: amunhotep_main; Flags: fixed
Name: "GIT"           ;Description: "Git v{#GitVersionMajor}.{#GitVersionMinor}.{#GitVersionRev}.{#GitVersionBuild}"                                    ; Types: amunhotep_main; Flags: fixed
#ifdef Apache24
Name: "Apache24"      ;Description: "Apache v{#Apache24VersionMajor}.{#Apache24VersionMinor}.{#Apache24VersionRev}.{#Apache24VersionBuild}"             ; Types: amunhotep_main; Flags: fixed
Name: "PHP"           ;Description: "PHP v{#PHPVersionMajor}.{#PHPVersionMinor}.{#PHPVersionRev}.{#PHPVersionBuild}"                                    ; Types: amunhotep_main; Flags: fixed
#endif

#endif

[Code]
#ifndef overridefirebirdtypes
procedure StopServices();
var
  lkCode :Integer;
begin
  Exec('net', 'stop FirebirdServerDefaultInstance'  ,'',0,ewWaitUntilTerminated, lkCode);
  Exec('net', 'stop WorkControlService'             ,'',0,ewWaitUntilTerminated, lkCode);
end;
#ifdef Apache24
procedure StopServiceApache();
var
  lkCode :Integer;
begin
  Exec('net', 'stop Apache2.4'                      ,'',0,ewWaitUntilTerminated, lkCode);
  Exec('net', 'stop httpd'                          ,'',0,ewWaitUntilTerminated, lkCode);
end;
#endif

#endif
                    
[Files]
Source: "../$ETHALON/peaktop/bin/*";                 DestDir: "{app}\peaktop\bin";                  Components: AMUNHOTEP; Flags: ignoreversion
Source: "../$ETHALON/peaktop/conf/*";                DestDir: "{app}\peaktop\conf\";                Components: AMUNHOTEP; Flags: ignoreversion recursesubdirs;
Source: "../$ETHALON/peaktop/lib/amunhotep/*";       DestDir: "{app}\peaktop\lib\amunhotep\";       Components: AMUNHOTEP; Flags: ignoreversion recursesubdirs;
Source: "../$ETHALON/peaktop/fonts/*";               DestDir: "{app}\peaktop\fonts\";               Components: AMUNHOTEP; Flags: ignoreversion recursesubdirs;
Source: "../$ETHALON/git/*";                         DestDir: "{app}\git\";                         Components: GIT;       Flags: ignoreversion recursesubdirs;
Source: "../$ETHALON/ibexpert/*";                    DestDir: "{app}\ibexpert\";                    Components: IBExpert;  Flags: ignoreversion recursesubdirs;
Source: "../$ETHALON/firebird/*";                    DestDir: "{app}\firebird\";                    Components: Firebird;  Flags: ignoreversion recursesubdirs; BeforeInstall: StopServices;
#ifdef Apache24
Source: "../$ETHALON/apache24/*";                    DestDir: "{app}\apache24\";                    Components: Apache24;  Flags: ignoreversion recursesubdirs; BeforeInstall: StopServiceApache;
;Source: "../$ETHALON/www/*";                         DestDir: "{app}\www\";                         Components: Apache24;  Flags: ignoreversion recursesubdirs; BeforeInstall: StopServiceApache;
Source: "../$ETHALON/php/*";                         DestDir: "{app}\php\";                         Components: PHP;       Flags: ignoreversion recursesubdirs;
#endif
#ifndef overridefirebirdtypes
Source: "./startservices.bat";                       DestDir: "{app}\firebird\bin\";                Components: Firebird;  Flags: ignoreversion; DestName: "startservices.bat"
#endif
Source: "./amunhotep.conf";                          DestDir: "{app}\peaktop\conf\";                Components: AMUNHOTEP; Flags: ignoreversion; DestName: "amunhotep.conf"
Source: "./amunhotep.inc";                           DestDir: "{app}\peaktop\conf\";                Components: AMUNHOTEP; Flags: ignoreversion; DestName: "amunhotep.inc"

[Registry]
Root: HKCU; Subkey: "Software\PEAKTOP\";                                                 ValueType: string; ValueName:"InstallPath"; ValueData:"{app}\peaktop";                  Flags: createvalueifdoesntexist
Root: HKLM; Subkey: "Software\PEAKTOP\";                                                 ValueType: string; ValueName:"InstallPath"; ValueData:"{app}\peaktop";                  Flags: createvalueifdoesntexist
Root: HKLM; Subkey: "SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\amunhotep.exe"; ValueType: string; ValueName:"";            ValueData:"{app}\peaktop\bin\amunhotep.exe";Flags: createvalueifdoesntexist
Root: HKLM; Subkey: "SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\amunhotep.exe"; ValueType: string; ValueName:"Path";        ValueData:"{app}\peaktop\bin\";             Flags: createvalueifdoesntexist

[Icons]
Name: "{group}\AMUNHOTEP IV";                                                 Filename: "{app}\peaktop\bin\amunhotep.exe";                        Components: AMUNHOTEP; IconFilename: "{app}\peaktop\bin\amunhotep.exe"; IconIndex: 0;
Name: "{userdesktop}\AMUNHOTEP  IV";                                          Filename: "{app}\peaktop\bin\amunhotep.exe"; Tasks: desktopicon;    Components: AMUNHOTEP; IconFilename: "{app}\peaktop\bin\amunhotep.exe"; IconIndex: 0;
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\AMUNHOTEP  IV"; Filename: "{app}\peaktop\bin\amunhotep.exe"; Tasks: quicklaunchicon;Components: AMUNHOTEP; IconFilename: "{app}\peaktop\bin\amunhotep.exe"; IconIndex: 0;

[Tasks]
Name: "desktopicon";     Description: "{cm:CreateDesktopIcon}";     GroupDescription: "{cm:AdditionalIcons}";
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}";

[Run]
Filename: "regsvr32.exe";                             Parameters: "/s {app}\peaktop\bin\midas.dll"; Description: "Register MIDAS.DLL"            ; Flags: postinstall shellexec skipifsilent unchecked   
Filename: "{app}\firebird\bin\install_classic.bat";                                                 Description: "Install Firebird ClassicServer"; Flags: postinstall shellexec skipifsilent unchecked
#ifndef overridefirebirdtypes
Filename: "{app}\firebird\bin\startservices.bat";                                                   Description: "Start Firebird"                ; Flags: postinstall shellexec skipifsilent
#endif

#define AmunhotepSpecVersion "th001"
#define overridefirebirdtypes
#include "./amunhotep_$common.iss"

[Files]
Source: "./TH001/logo.bmp"           ; DestDir: "{app}\peaktop\conf\ent\"; Components: AMUNHOTEP; Flags: ignoreversion; DestName: "logo.bmp"
Source: "./TH001/logo_filial.bmp"    ; DestDir: "{app}\peaktop\conf\ent\"; Components: AMUNHOTEP; Flags: ignoreversion; DestName: "logo_filial.bmp"
Source: "./TH001/splash.bmp"         ; DestDir: "{app}\peaktop\conf\ent\"; Components: AMUNHOTEP; Flags: ignoreversion; DestName: "splash.bmp"
Source: "./TH001/topbar.bmp"         ; DestDir: "{app}\peaktop\conf\ent\"; Components: AMUNHOTEP; Flags: ignoreversion; DestName: "topbar.bmp"
Source: "./TH001/fb.conf"            ; DestDir: "{app}\peaktop\conf\"    ; Components: AMUNHOTEP; Flags: ignoreversion; DestName: "fb.conf"
Source: "./TH001/bat/backup.bat"     ; DestDir: "{app}\peaktop\data\bat\"; Components: AMUNHOTEP; Flags: ignoreversion; DestName: "backup.bat"
Source: "./TH001/aliases.conf"       ; DestDir: "{app}\firebird\"        ; Components: Firebird ; Flags: ignoreversion; DestName: "aliases.conf"
Source: "./TH001/firebird.conf"      ; DestDir: "{app}\firebird\"        ; Components: Firebird ; Flags: ignoreversion; DestName: "firebird.conf"
Source: "./TH001/install_classic.bat"; DestDir: "{app}\firebird\bin\"    ; Components: Firebird ; Flags: ignoreversion; DestName: "install_classic.bat"
Source: "./TH001/startservices.bat"  ; DestDir: "{app}\firebird\bin\"    ; Components: Firebird ; Flags: ignoreversion; DestName: "startservices.bat"

#ifdef overridefirebirdtypes
[Code]
procedure StopServices();
var
  lkCode :Integer;
begin
  Exec('net', 'stop FirebirdServerforPEAKTOP','',0,ewWaitUntilTerminated, lkCode);
end;
#endif

[Run]
#ifdef overridefirebirdtypes
Filename: "{app}\firebird\bin\startservices.bat"; Description: "Start Firebird Classic"; Flags: postinstall shellexec skipifsilent 
#endif

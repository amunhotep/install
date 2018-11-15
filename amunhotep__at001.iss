#define AmunhotepSpecVersion "at001"
#define overridefirebirdtypes
#include "./amunhotep_$common.iss"

[Files]
Source: "./AT001/logo.bmp"           ; DestDir: "{app}\peaktop\conf\ent\"; Components: AMUNHOTEP; Flags: ignoreversion; DestName: "logo.bmp"
Source: "./AT001/logo_filial.bmp"    ; DestDir: "{app}\peaktop\conf\ent\"; Components: AMUNHOTEP; Flags: ignoreversion; DestName: "logo_filial.bmp"
Source: "./AT001/splash.bmp"         ; DestDir: "{app}\peaktop\conf\ent\"; Components: AMUNHOTEP; Flags: ignoreversion; DestName: "splash.bmp"
Source: "./AT001/topbar.bmp"         ; DestDir: "{app}\peaktop\conf\ent\"; Components: AMUNHOTEP; Flags: ignoreversion; DestName: "topbar.bmp"
Source: "./AT001/fb.conf"            ; DestDir: "{app}\peaktop\conf\"    ; Components: AMUNHOTEP; Flags: ignoreversion; DestName: "fb.conf"
Source: "./AT001/aliases.conf"       ; DestDir: "{app}\firebird\"        ; Components: Firebird ; Flags: ignoreversion; DestName: "aliases.conf"
Source: "./AT001/firebird.conf"      ; DestDir: "{app}\firebird\"        ; Components: Firebird ; Flags: ignoreversion; DestName: "firebird.conf"
Source: "./AT001/install_classic.bat"; DestDir: "{app}\firebird\bin\"    ; Components: Firebird ; Flags: ignoreversion; DestName: "install_classic.bat"
Source: "./AT001/startservices.bat"  ; DestDir: "{app}\firebird\bin\"    ; Components: Firebird ; Flags: ignoreversion; DestName: "startservices.bat"

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

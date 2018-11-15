#define AmunhotepSpecVersion "ss003"
#define overridefirebirdtypes
#include "./amunhotep_$common.iss"
[Files]
Source: "./SS003/fb.conf"            ; DestDir: "{app}\peaktop\conf\"    ; Components: AMUNHOTEP; Flags: ignoreversion; DestName: "fb.conf"
Source: "./SS003/aliases.conf"       ; DestDir: "{app}\firebird\"        ; Components: Firebird ; Flags: ignoreversion; DestName: "aliases.conf"
Source: "./SS003/firebird.conf"      ; DestDir: "{app}\firebird\"        ; Components: Firebird ; Flags: ignoreversion; DestName: "firebird.conf"
Source: "./SS003/install_classic.bat"; DestDir: "{app}\firebird\bin\"    ; Components: Firebird ; Flags: ignoreversion; DestName: "install_classic.bat"
Source: "./SS003/startservices.bat"  ; DestDir: "{app}\firebird\bin\"    ; Components: Firebird ; Flags: ignoreversion; DestName: "startservices.bat"

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

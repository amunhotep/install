#define AmunhotepSpecVersion "ps002"
#define overridefirebirdtypes
#include "./amunhotep_$common.iss"
[Files]
Source: "./PS002/amunhotep.inc"      ; DestDir: "{app}\peaktop\conf\"    ; Components: AMUNHOTEP; Flags: ignoreversion; DestName: "amunhotep.inc"
Source: "./PS002/logo.bmp"           ; DestDir: "{app}\peaktop\conf\ent\"; Components: AMUNHOTEP; Flags: ignoreversion; DestName: "logo.bmp"
Source: "./PS002/fb.conf"            ; DestDir: "{app}\peaktop\conf\"    ; Components: AMUNHOTEP; Flags: ignoreversion; DestName: "fb.conf"
Source: "./PS002/firebird.conf"      ; DestDir: "{app}\firebird\"        ; Components: Firebird ; Flags: ignoreversion; DestName: "firebird.conf"
Source: "./PS002/install_classic.bat"; DestDir: "{app}\firebird\bin\"    ; Components: Firebird ; Flags: ignoreversion; DestName: "install_classic.bat"
Source: "./PS002/startservices.bat"  ; DestDir: "{app}\firebird\bin\"    ; Components: Firebird ; Flags: ignoreversion; DestName: "startservices.bat"

#ifdef overridefirebirdtypes
[Code]
procedure StopServices();
var
  lkCode :Integer;
begin
  Exec('net', 'stop FirebirdServerforPEAKTOP','',0,ewWaitUntilTerminated, lkCode);
end;
#endif

[Icons]
Name:"{group}\Отделение 01"      ;Filename:"{app}\peaktop\bin\amunhotep.exe";WorkingDir:"{app}";Parameters:"-database ""127.0.0.1/3056:R:\appl\peaktop\data\PS_002KRUGL_FILIAL01.FDB"""; Components: AMUNHOTEP; IconFilename: "{app}\peaktop\bin\amunhotep.exe"; IconIndex: 0;
Name:"{group}\Отделение 02"      ;Filename:"{app}\peaktop\bin\amunhotep.exe";WorkingDir:"{app}";Parameters:"-database ""127.0.0.1/3056:R:\appl\peaktop\data\PS_002KRUGL_FILIAL02.FDB"""; Components: AMUNHOTEP; IconFilename: "{app}\peaktop\bin\amunhotep.exe"; IconIndex: 0;
Name:"{group}\Отделение 03"      ;Filename:"{app}\peaktop\bin\amunhotep.exe";WorkingDir:"{app}";Parameters:"-database ""127.0.0.1/3056:R:\appl\peaktop\data\PS_002KRUGL_FILIAL03.FDB"""; Components: AMUNHOTEP; IconFilename: "{app}\peaktop\bin\amunhotep.exe"; IconIndex: 0;
Name:"{userdesktop}\Отделение 01";Filename:"{app}\peaktop\bin\amunhotep.exe";WorkingDir:"{app}";Parameters:"-database ""127.0.0.1/3056:R:\appl\peaktop\data\PS_002KRUGL_FILIAL01.FDB"""; Components: AMUNHOTEP; IconFilename: "{app}\peaktop\bin\amunhotep.exe"; IconIndex: 0; Tasks: desktopicon;
Name:"{userdesktop}\Отделение 02";Filename:"{app}\peaktop\bin\amunhotep.exe";WorkingDir:"{app}";Parameters:"-database ""127.0.0.1/3056:R:\appl\peaktop\data\PS_002KRUGL_FILIAL02.FDB"""; Components: AMUNHOTEP; IconFilename: "{app}\peaktop\bin\amunhotep.exe"; IconIndex: 0; Tasks: desktopicon;
Name:"{userdesktop}\Отделение 03";Filename:"{app}\peaktop\bin\amunhotep.exe";WorkingDir:"{app}";Parameters:"-database ""127.0.0.1/3056:R:\appl\peaktop\data\PS_002KRUGL_FILIAL03.FDB"""; Components: AMUNHOTEP; IconFilename: "{app}\peaktop\bin\amunhotep.exe"; IconIndex: 0; Tasks: desktopicon;

[Run]
#ifdef overridefirebirdtypes
Filename: "{app}\firebird\bin\startservices.bat"; Description: "Start Firebird Classic"; Flags: postinstall shellexec skipifsilent
#endif

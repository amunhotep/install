#define AmunhotepSpecVersion "rs005"
#define overridesetuptypes
#define overridefirebirdtypes
#define Apache24
#include "./amunhotep_$common.iss"
[Types]
Name:"server"      ;Description: "Центральный Сервер"
Name:"filial01"    ;Description: "РастиПузо Краматорский"
Name:"filial02"    ;Description: "РастиПузо Марата"
Name:"filial03"    ;Description: "ДаВинчи"
Name:"filial04"    ;Description: "РастиПузо Бернацкого"

[Components]
Name:"AMUNHOTEP"   ;Description:"AMUNHOTEP v{#AmunhotepCoreVersionMajor}.{#AmunhotepCoreVersionMinor}.{#AmunhotepCoreVersionRev}"                         ;Types: server filial01 filial02 filial03 filial04;Flags: fixed
Name:"Firebird"    ;Description:"Firebird SQL Server v{#FirebirdVersionMajor}.{#FirebirdVersionMinor}.{#FirebirdVersionRev}.{#FirebirdVersionBuild}"      ;Types: server filial01 filial02 filial03 filial04;Flags: fixed
Name:"IBExpert"    ;Description:"IBExpert v{#IBExpertVersion}"                                                                                            ;Types: server filial01 filial02 filial03 filial04;Flags: checkablealone dontinheritcheck
Name:"GIT"         ;Description:"Git v{#GitVersionMajor}.{#GitVersionMinor}.{#GitVersionRev}.{#GitVersionBuild}"                                          ;Types: server filial01 filial02 filial03 filial04;Flags: checkablealone dontinheritcheck
Name:"AMUNHOTEP001";Description:"Центральный Сервер"                                                                                                      ;Types: server                                    ;Flags: fixed
Name:"AMUNHOTEP_01";Description:"РастиПузо Краматорский"                                                                                                  ;Types: filial01                                  ;Flags: fixed
Name:"AMUNHOTEP_02";Description:"РастиПузо Марата"                                                                                                        ;Types: filial02                                  ;Flags: fixed
Name:"AMUNHOTEP_03";Description:"ДаВинчи"                                                                                                                 ;Types: filial03                                  ;Flags: fixed
Name:"AMUNHOTEP_04";Description:"РастиПузо Бернацкого"                                                                                                    ;Types: filial04                                  ;Flags: fixed
#ifdef Apache24
Name:"Apache24"    ;Description:"Apache v{#Apache24VersionMajor}.{#Apache24VersionMinor}.{#Apache24VersionRev}.{#Apache24VersionBuild}"                   ;Types: server filial01 filial02 filial03 filial04;Flags: fixed
Name:"PHP"         ;Description:"PHP v{#PHPVersionMajor}.{#PHPVersionMinor}.{#PHPVersionRev}.{#PHPVersionBuild}"                                          ;Types: server filial01 filial02 filial03 filial04;Flags: fixed
#endif

[Dirs]
Name: "{app}\peaktop\conf\ent\RS005"

[Files]
Source: "./RS005/logo.bmp"            ;DestDir:"{app}\peaktop\conf\ent\"      ; Components:AMUNHOTEP; Flags:ignoreversion; DestName:"logo.bmp"
Source: "./RS005/splash.bmp"          ;DestDir:"{app}\peaktop\conf\ent\"      ; Components:AMUNHOTEP; Flags:ignoreversion; DestName:"splash.bmp"
Source: "./RS005/topbar.bmp"          ;DestDir:"{app}\peaktop\conf\ent\"      ; Components:AMUNHOTEP; Flags:ignoreversion; DestName:"topbar.bmp"
;Source: "./AT001/logo_filial.bmp"     ;DestDir: "{app}\peaktop\conf\ent\"     ; Components:AMUNHOTEP; Flags:ignoreversion; DestName:"logo_filial.bmp"
;Source: "./RS005/fb.conf"             ;DestDir:"{app}\peaktop\conf\"          ; Components:AMUNHOTEP; Flags:ignoreversion; DestName:"fb.conf"
;Source: "./RS005/aliases.conf"        ;DestDir:"{app}\firebird\"              ; Components:filial01 ; Flags:ignoreversion; DestName:"aliases.conf"
Source: "./RS005/firebird.conf"       ;DestDir:"{app}\firebird\"              ; Components:Firebird ; Flags:ignoreversion; DestName:"firebird.conf"
Source: "./RS005/install_classic.bat" ;DestDir:"{app}\firebird\bin\"          ; Components:Firebird ; Flags:ignoreversion; DestName:"install_classic.bat"
Source: "./RS005/startservices.bat"   ;DestDir:"{app}\firebird\bin\"          ; Components:Firebird ; Flags:ignoreversion; DestName:"startservices.bat"
Source: "./RS005/images/*"            ;DestDir:"{app}\peaktop\conf\ent\RS005\"; Components:AMUNHOTEP; Flags:ignoreversion recursesubdirs;
Source: "./RS005/fonts/*"             ;DestDir:"{app}\peaktop\fonts\"         ; Components:AMUNHOTEP; Flags:ignoreversion recursesubdirs;
#ifdef Apache24
Source: "./RS005/httpd.conf"          ;DestDir:"{app}\apache24\conf\"         ; Components:Apache24 ; Flags:ignoreversion; DestName:"httpd.conf"
#endif

#ifdef overridefirebirdtypes
[Code]
#ifdef Apache24
procedure StopServiceApache();
var
  lkCode :Integer;
begin
  Exec('net', 'stop Apache2.4'                      ,'',0,ewWaitUntilTerminated, lkCode);
  Exec('net', 'stop httpd'                          ,'',0,ewWaitUntilTerminated, lkCode);
end;
#endif

procedure StopServices();
var lkCode :Integer;
begin
  Exec('net', 'stop FirebirdServerforPEAKTOP', '', 0, ewWaitUntilTerminated, lkCode);
end;
#endif

[Run]
#ifdef overridefirebirdtypes
Filename: "{app}\firebird\bin\startservices.bat"; Description: "Start Firebird Classic-Server"; Flags: postinstall shellexec skipifsilent 
Filename: "{app}\fonts\fonts.bat"               ; Description: "Install specific fonts"       ; Flags: postinstall shellexec skipifsilent 
#endif

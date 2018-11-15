#define AmunhotepSpecVersion "ps001"
#define overridesetuptypes
#include "./amunhotep_$common.iss"
[Types]
Name: "office";       Description: "Центральный Офис"
Name: "filial01";     Description: "Відділення 00 (м.Краматорськ, Двірцева-13)"
Name: "filial02";     Description: "Відділення 01 (м.Краматорськ, Паркова-30)"
Name: "filial03";     Description: "Відділення 02 (м.Краматорськ, Леоніда Бикова-5)"
Name: "filial04";     Description: "Відділення 03 (м.Краматорськ, Хабаровська-40)"
Name: "filial05";     Description: "Відділення 04 (м.Краматорськ, Центральна-1)"
Name: "filial06";     Description: "Відділення 05 (м.Краматорськ, Краматорський-14)"
Name: "filial07";     Description: "Відділення 06 (м.Краматорськ, Шкільна-2)"
Name: "filial08";     Description: "Відділення 07 (м.Краматорськ, Хабаровська-36)"
Name: "filial09";     Description: "Відділення 08 (м. Дружківка, Космонавтів-9)"
Name: "filial10";     Description: "Відділення 09 (м.Краматорськ, Коммерційна-5а)"
Name: "filial12";     Description: "Відділення 10 (м.Краматорськ, Марата-12)"
Name: "filial13";     Description: "Відділення 11 (м.Краматорськ, Паркова-41)"
Name: "filial14";     Description: "Відділення 12 (м.Краматорськ, Двірцева-47)"
Name: "filial15";     Description: "Відділення 13 (м.Краматорськ, Васлися Стуса)"
Name: "filial19";     Description: "Відділення 14 (м. Харків, Маршала Бажанова-3)"
Name: "filial20";     Description: "Відділення 15 (м. Констянтинівка, Космонавтів-2)"

[Components]
Name: "AMUNHOTEP";    Description: "AMUNHOTEP v{#AmunhotepCoreVersionMajor}.{#AmunhotepCoreVersionMinor}.{#AmunhotepCoreVersionRev}"                   ; Types: office filial01 filial02 filial03 filial04 filial05 filial06 filial07 filial08 filial09 filial10 filial12 filial13 filial14 filial15 filial19 filial20; Flags: fixed
Name: "Firebird";     Description: "Firebird SQL Server v{#FirebirdVersionMajor}.{#FirebirdVersionMinor}.{#FirebirdVersionRev}.{#FirebirdVersionBuild}"; Types: office filial01 filial02 filial03 filial04 filial05 filial06 filial07 filial08 filial09 filial10 filial12 filial13 filial14 filial15 filial19 filial20; Flags: fixed
Name: "IBExpert";     Description: "IBExpert v{#IBExpertVersion}"                                                                                      ; Types: office filial01 filial02 filial03 filial04 filial05 filial06 filial07 filial08 filial09 filial10 filial12 filial13 filial14 filial15 filial19 filial20; Flags: checkablealone dontinheritcheck
Name: "GIT";          Description: "Git Version system v{#GitVersionMajor}.{#GitVersionMinor}.{#GitVersionRev}.{#GitVersionBuild}"                     ; Types: office filial01 filial02 filial03 filial04 filial05 filial06 filial07 filial08 filial09 filial10 filial12 filial13 filial14 filial15 filial19 filial20; Flags: checkablealone dontinheritcheck
Name: "AMUNHOTEP001"; Description: "Центральный офис";     Types: office  ; Flags: fixed
Name: "AMUNHOTEP_01"; Description: "Ломбард Отделение 00"; Types: filial01; Flags: fixed
Name: "AMUNHOTEP_02"; Description: "Ломбард Отделение 01"; Types: filial02; Flags: fixed
Name: "AMUNHOTEP_03"; Description: "Ломбард Отделение 02"; Types: filial03; Flags: fixed
Name: "AMUNHOTEP_04"; Description: "Ломбард Отделение 03"; Types: filial04; Flags: fixed
Name: "AMUNHOTEP_05"; Description: "Ломбард Отделение 04"; Types: filial05; Flags: fixed
Name: "AMUNHOTEP_06"; Description: "Ломбард Отделение 05"; Types: filial06; Flags: fixed
Name: "AMUNHOTEP_07"; Description: "Ломбард Отделение 06"; Types: filial07; Flags: fixed
Name: "AMUNHOTEP_08"; Description: "Ломбард Отделение 07"; Types: filial08; Flags: fixed
Name: "AMUNHOTEP_09"; Description: "Ломбард Отделение 08"; Types: filial09; Flags: fixed
Name: "AMUNHOTEP_10"; Description: "Ломбард Отделение 09"; Types: filial10; Flags: fixed
Name: "AMUNHOTEP_12"; Description: "Ломбард Отделение 10"; Types: filial12; Flags: fixed
Name: "AMUNHOTEP_13"; Description: "Ломбард Отделение 11"; Types: filial13; Flags: fixed
Name: "AMUNHOTEP_14"; Description: "Ломбард Отделение 12"; Types: filial14; Flags: fixed
Name: "AMUNHOTEP_15"; Description: "Ломбард Отделение 13"; Types: filial15; Flags: fixed
Name: "AMUNHOTEP_19"; Description: "Ломбард Отделение 14"; Types: filial19; Flags: fixed
Name: "AMUNHOTEP_20"; Description: "Ломбард Отделение 15"; Types: filial20; Flags: fixed

[Files]
Source: "./PS001/logo.bmp"                         ;DestDir: "{app}\peaktop\conf\ent\"; Components: AMUNHOTEP   ; Flags: ignoreversion; DestName: "logo.bmp"
Source: "./PS001/logo_filial.bmp"                  ;DestDir: "{app}\peaktop\conf\ent\"; Components: AMUNHOTEP   ; Flags: ignoreversion; DestName: "logo_filial.bmp"
Source: "./PS001/splash.bmp"                       ;DestDir: "{app}\peaktop\conf\ent\"; Components: AMUNHOTEP   ; Flags: ignoreversion; DestName: "splash.bmp"
Source: "./PS001/topbar.bmp"                       ;DestDir: "{app}\peaktop\conf\ent\"; Components: AMUNHOTEP   ; Flags: ignoreversion; DestName: "topbar.bmp"
Source: "./PS001/fb_ps_001pharmacia.conf"          ;DestDir: "{app}\peaktop\conf\"    ; Components: AMUNHOTEP   ; Flags: ignoreversion; DestName: "fb.conf"
Source: "./PS001/fb_ps_001pharmacia_filial_01.conf";DestDir: "{app}\peaktop\conf\"    ; Components: AMUNHOTEP_01; Flags: ignoreversion; DestName: "fb.conf"
Source: "./PS001/fb_ps_001pharmacia_filial_02.conf";DestDir: "{app}\peaktop\conf\"    ; Components: AMUNHOTEP_02; Flags: ignoreversion; DestName: "fb.conf"
Source: "./PS001/fb_ps_001pharmacia_filial_03.conf";DestDir: "{app}\peaktop\conf\"    ; Components: AMUNHOTEP_03; Flags: ignoreversion; DestName: "fb.conf"
Source: "./PS001/fb_ps_001pharmacia_filial_04.conf";DestDir: "{app}\peaktop\conf\"    ; Components: AMUNHOTEP_04; Flags: ignoreversion; DestName: "fb.conf"
Source: "./PS001/fb_ps_001pharmacia_filial_05.conf";DestDir: "{app}\peaktop\conf\"    ; Components: AMUNHOTEP_05; Flags: ignoreversion; DestName: "fb.conf"
Source: "./PS001/fb_ps_001pharmacia_filial_06.conf";DestDir: "{app}\peaktop\conf\"    ; Components: AMUNHOTEP_06; Flags: ignoreversion; DestName: "fb.conf"
Source: "./PS001/fb_ps_001pharmacia_filial_07.conf";DestDir: "{app}\peaktop\conf\"    ; Components: AMUNHOTEP_07; Flags: ignoreversion; DestName: "fb.conf"
Source: "./PS001/fb_ps_001pharmacia_filial_08.conf";DestDir: "{app}\peaktop\conf\"    ; Components: AMUNHOTEP_08; Flags: ignoreversion; DestName: "fb.conf"
Source: "./PS001/fb_ps_001pharmacia_filial_09.conf";DestDir: "{app}\peaktop\conf\"    ; Components: AMUNHOTEP_09; Flags: ignoreversion; DestName: "fb.conf"
Source: "./PS001/fb_ps_001pharmacia_filial_10.conf";DestDir: "{app}\peaktop\conf\"    ; Components: AMUNHOTEP_10; Flags: ignoreversion; DestName: "fb.conf"
Source: "./PS001/fb_ps_001pharmacia_filial_12.conf";DestDir: "{app}\peaktop\conf\"    ; Components: AMUNHOTEP_12; Flags: ignoreversion; DestName: "fb.conf"
Source: "./PS001/fb_ps_001pharmacia_filial_13.conf";DestDir: "{app}\peaktop\conf\"    ; Components: AMUNHOTEP_13; Flags: ignoreversion; DestName: "fb.conf"
Source: "./PS001/fb_ps_001pharmacia_filial_14.conf";DestDir: "{app}\peaktop\conf\"    ; Components: AMUNHOTEP_14; Flags: ignoreversion; DestName: "fb.conf"
Source: "./PS001/fb_ps_001pharmacia_filial_15.conf";DestDir: "{app}\peaktop\conf\"    ; Components: AMUNHOTEP_15; Flags: ignoreversion; DestName: "fb.conf"
Source: "./PS001/fb_ps_001pharmacia_filial_19.conf";DestDir: "{app}\peaktop\conf\"    ; Components: AMUNHOTEP_19; Flags: ignoreversion; DestName: "fb.conf"
Source: "./PS001/fb_ps_001pharmacia_filial_20.conf";DestDir: "{app}\peaktop\conf\"    ; Components: AMUNHOTEP_20; Flags: ignoreversion; DestName: "fb.conf"
Source: "./PS001/aliases_filial01.conf"            ;DestDir: "{app}\firebird\"        ; Components: AMUNHOTEP_01; Flags: ignoreversion; DestName: "aliases.conf"
Source: "./PS001/aliases_filial02.conf"            ;DestDir: "{app}\firebird\"        ; Components: AMUNHOTEP_02; Flags: ignoreversion; DestName: "aliases.conf"
Source: "./PS001/aliases_filial03.conf"            ;DestDir: "{app}\firebird\"        ; Components: AMUNHOTEP_03; Flags: ignoreversion; DestName: "aliases.conf"
Source: "./PS001/aliases_filial04.conf"            ;DestDir: "{app}\firebird\"        ; Components: AMUNHOTEP_04; Flags: ignoreversion; DestName: "aliases.conf"
Source: "./PS001/aliases_filial05.conf"            ;DestDir: "{app}\firebird\"        ; Components: AMUNHOTEP_05; Flags: ignoreversion; DestName: "aliases.conf"
Source: "./PS001/aliases_filial06.conf"            ;DestDir: "{app}\firebird\"        ; Components: AMUNHOTEP_06; Flags: ignoreversion; DestName: "aliases.conf"
Source: "./PS001/aliases_filial07.conf"            ;DestDir: "{app}\firebird\"        ; Components: AMUNHOTEP_07; Flags: ignoreversion; DestName: "aliases.conf"
Source: "./PS001/aliases_filial08.conf"            ;DestDir: "{app}\firebird\"        ; Components: AMUNHOTEP_08; Flags: ignoreversion; DestName: "aliases.conf"
Source: "./PS001/aliases_filial09.conf"            ;DestDir: "{app}\firebird\"        ; Components: AMUNHOTEP_09; Flags: ignoreversion; DestName: "aliases.conf"
Source: "./PS001/aliases_filial10.conf"            ;DestDir: "{app}\firebird\"        ; Components: AMUNHOTEP_10; Flags: ignoreversion; DestName: "aliases.conf"
Source: "./PS001/aliases_filial12.conf"            ;DestDir: "{app}\firebird\"        ; Components: AMUNHOTEP_12; Flags: ignoreversion; DestName: "aliases.conf"
Source: "./PS001/aliases_filial13.conf"            ;DestDir: "{app}\firebird\"        ; Components: AMUNHOTEP_13; Flags: ignoreversion; DestName: "aliases.conf"
Source: "./PS001/aliases_filial14.conf"            ;DestDir: "{app}\firebird\"        ; Components: AMUNHOTEP_14; Flags: ignoreversion; DestName: "aliases.conf"
Source: "./PS001/aliases_filial15.conf"            ;DestDir: "{app}\firebird\"        ; Components: AMUNHOTEP_15; Flags: ignoreversion; DestName: "aliases.conf"
Source: "./PS001/aliases_filial19.conf"            ;DestDir: "{app}\firebird\"        ; Components: AMUNHOTEP_19; Flags: ignoreversion; DestName: "aliases.conf"
Source: "./PS001/aliases_filial20.conf"            ;DestDir: "{app}\firebird\"        ; Components: AMUNHOTEP_20; Flags: ignoreversion; DestName: "aliases.conf"

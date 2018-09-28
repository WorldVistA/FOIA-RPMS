BQI27P1 ;GDIT/HCSD/ALA-iCare Version 2.7 Patch 1 ; 02 Apr 2018  2:42 PM
 ;;2.7;ICARE MANAGEMENT SYSTEM;**1**;Dec 19, 2017;Build 12
 ;
PRE ;EP
 NEW DIK,DA
 S DIK="^BQI(90509.9,",DA=0
 F  S DA=$O(^BQI(90509.9,DA)) Q:'DA  D ^DIK
 S DIK="^BQI(90506.8,",DA=0
 F  S DA=$O(^BQI(90506.8,DA)) Q:'DA  D ^DIK
 S DIK="^BQI(90506.9,",DA=0
 F  S DA=$O(^BQI(90506.9,DA)) Q:'DA  D ^DIK
 Q
 ;
POS ;EP
 ; Change current IPC measures category
 S IN=0
 F  S IN=$O(^BGPINDRC(IN)) Q:IN>3403  D
 . I $P($G(^BGPINDRC(IN,17)),"^",7)=1 S $P(^BGPINDRC(IN,17),"^",7)=""
 ;S $P(^BGPINDRC(1956,17),"^",7)=""
 ;
 ; Set new IPC measures
 S ^BQI(90508,1,22,3,0)="ZIPCMH",^BQI(90508,1,22,"B","ZIPCMH",3)=""
 K ^BQI(90508,1,22,"B","IPCMH",3)
 I $P($G(^BQI(90508,1,11)),"^",1)'="IPCMH" S $P(^BQI(90508,1,11),"^",1)="IPCMH"
 D ^BQIIPCHM
 ;
 ; Set new IPC columns
 D ^BQIULAY
 ;
GLS ;Update glossary
 NEW GN,GNM,GSN,BQIUPD
 S GN=0
 F  S GN=$O(^BQI(90509.9,GN)) Q:'GN  D
 . S GNM=$P(^BQI(90509.9,GN,0),U,1)
 . S GSN=$O(^BQI(90508.2,"B",GNM,"")) Q:GSN=""
 . S BQIUPD(90508.2,GSN_",",1)="@"
 . D FILE^DIE("","BQIUPD","ERROR")
 . M ^BQI(90508.2,GSN,1)=^BQI(90509.9,GN,1)
 Q

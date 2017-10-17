BQI26PRE ;GDHS/HCS/ALA-iCare Version 2.6 PreInstall ; 28 Oct 2016  3:01 PM
 ;;2.6;ICARE MANAGEMENT SYSTEM;;Jul 07, 2017;Build 72
 ;;
 ;
EN ;EP
 NEW CODE,NM,DA,DIK,IEN,DIU
 S DIK="^BQI(90506.1,"
 F CODE="2014_" D
 . S NM=CODE
 . F  S NM=$O(^BQI(90506.1,"B",NM)) Q:NM=""!($E(NM,1,5)'=CODE)  D
 .. S IEN=$O(^BQI(90506.1,"B",NM,""))
 .. S DA=IEN D ^DIK
 ;
 S DIK="^BQI(90506,",DA=0
 F  S DA=$O(^BQI(90506,DA)) Q:'DA  D ^DIK
 ;
 S DIK="^BQI(90506.9,",DA=0
 F  S DA=$O(^BQI(90506.9,DA)) Q:'DA  D ^DIK
 ;
 S DIK="^BQI(90506.2,",DA=0
 F  S DA=$O(^BQI(90506.9,DA)) Q:'DA  D ^DIK
 ;
 S DIK="^BQI(90506.3,",DA=0
 F  S DA=$O(^BQI(90506.3,DA)) Q:'DA  D ^DIK
 ;
 S DIK="^BQI(90507.2,",DA=0
 F  S DA=$O(^BQI(90507.2,DA)) Q:'DA  D ^DIK
 ;
 S DIK="^BQI(90508.5,",DA=0
 F  S DA=$O(^BQI(90508.5,DA)) Q:'DA  D ^DIK
 ;
 S DIK="^BQI(90509.9,",DA=0
 F  S DA=$O(^BQI(90509.9,DA)) Q:'DA  D ^DIK
 ;
 ; Clean up Events Default template
 NEW DZ,DA,DIK
 S DZ=0
 F  S DZ=$O(^BQICARE(DZ)) Q:'DZ  D
 . S DA=$O(^BQICARE(DZ,15,"B","Events Default",""))
 . I DA'="" S DA(1)=DZ,DIK="^BQICARE("_DA(1)_",15," D ^DIK
 Q

BQI27PRE ;GDIT/HCD/ALA-Version 2.7 Preinstall ; 20 Jul 2017  11:02 AM
 ;;2.7;ICARE MANAGEMENT SYSTEM;;Dec 19, 2017;Build 23
 ;
EN ;EP
 NEW DA,DIK
 S DIK="^BQI(90506.8,",DA=0
 F  S DA=$O(^BQI(90506.8,DA)) Q:'DA  D ^DIK
 ;
 S DIK="^BQI(90509.9,",DA=0
 F  S DA=$O(^BQI(90509.9,DA)) Q:'DA  D ^DIK
 Q
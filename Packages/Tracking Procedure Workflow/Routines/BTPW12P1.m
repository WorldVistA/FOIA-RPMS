BTPW12P1 ;GDIT/HCSD/ALA-CMET Version 2.1 Patch 1 ; 29 Mar 2018  1:14 PM
 ;;1.2;CARE MANAGEMENT EVENT TRACKING;**1**;JUL 07,2017;Build 5
 ;
PRE ;
 NEW DA,DIK
 ; Pre-delete all the events
 S DIK="^BTPW(90621,",DA=0
 F  S DA=$O(^BTPW(90621,DA)) Q:'DA  D ^DIK
 Q
 ;
POS ;
 ; Set cross-reference
 NEW DIK
 S DIK="^BTPWQ(" D IXALL^DIK
 ; Update taxonomies
 D ^BTPWC
 ; Update Chlamydia event
 ;S $P(^BTPW(90621,2,1,1,0),"^",1)="BTPW CHLAMYDIA CPTS"
 ;S TXX=$O(^ATXAX("B","BTPW CHLAMYDIA CPTS","")) I TXX="" Q
 ;S $P(^BTPW(90621,2,1,1,0),"^",2)=TXX_";ATXAX("
 D UTX
 Q
 ;
UTX ;
 ;Repoint taxonomies in 90621
 NEW EVT,TXN,TYP,ATXN,GLOB
 S EVT=0
 F  S EVT=$O(^BTPW(90621,EVT)) Q:'EVT  D
 . S TXN=0
 . F  S TXN=$O(^BTPW(90621,EVT,1,TXN)) Q:'TXN  D
 .. S TAX=$P(^BTPW(90621,EVT,1,TXN,0),U,1),TYP=$P(^(0),U,3)
 .. I TYP'=3 D
 ... S ATXN=$O(^ATXAX("B",TAX,""))
 ... S $P(^BTPW(90621,EVT,1,TXN,0),U,2)=ATXN_";ATXAX("
 .. I TYP=3 D
 ... S ATXN=$O(^ATXLAB("B",TAX,"")),GLOB=";ATXLAB("
 ... I ATXN="" S ATXN=$O(^ATXAX("B",TAX,"")),GLOB=";ATXAX(" I ATXN="" S GLOB=""
 ... S $P(^BTPW(90621,EVT,1,TXN,0),U,2)=ATXN_GLOB
 Q

ADE6P333 ;IHS/OIT/GAB - ADE V6.0 PATCH 33 [ 10/12/2018  10:51 AM ]
 ;;6.0;ADE*6.0*33;;March 25, 1999;Build 53
 ;IHS/OIT/GAB 10/2018 Patch 33 ADA-CDT code updates for 2019
 ;Deactivated ADA-CDT Codes
 ;
DELCDT33 ;EP
 D DELETES^ADEUPD33("DELADA^ADE6P333","SETX^ADE6P333","^AUTTADA(")
 Q
 ;
SETX ;EP
 S ADEX=$P($P(ADEX,U),"D",2),ADEX=$O(^AUTTADA("B",ADEX,""))
 Q
 ;
DELADA ;  CODE & NOMENCLATURE
 ;;D1515^space maintainer - fixed - bilateral
 ;;D1525^space maintainer - removable - bilateral
 ;;D5281^removable unilateral partial denture - one piece cast metal (including clasps and teeth)
 ;;D9940^occlusal guard, by report
 ;;***END***
MODADA ;
 Q
ZAPINA ;REMOVE INACTIVE DATE
 ;/IHS/OIT/GAB COMMENTED OUT NEXT THREE LINES, NO REACTIVATED CODES
 ;S ADEIRN=""
 ;S ADEIRN=$O(^AUTTADA("B","0191",0)) I +ADEIRN D ZAPIT
 ;S ADEIRN=$O(^AUTTADA("B","1208",0)) I +ADEIRN D ZAPIT
 Q
ZAPIT ;
 ;/IHS/OIT/GAB *33* commented out below no reactivated codes in this patch
 ;S DIE="^AUTTADA(",DA=ADEIRN
 ;S DR=".08////@" D ^DIE
 ;S ADEIRN=""
 Q
ZAP K D,DA,DR,DIE,D0,DIC,ADEIRN
 Q

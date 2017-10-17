ABMP2621 ; IHS/SD/SDR - 3P BILLING 2.6 Patch 21 POST INIT ;  
 ;;2.6;IHS Third Party Billing;**21**;NOV 12, 2009;Build 379
 ;
 ;IHS/SD/SDR 2.6*21 - HEAT216037 Added Place Of Service 50 Federally Qualified Health Center.
 ;IHS/SD/SDR 2.6*21 - HEAT250968 Added Place Of Service 60 for Mass Immunization Center.
 ;IHS/SD/SDR 2.6*21 - HEAT255088 Added Place Of Service 19 for Off Campus-Outpatient Hospital.
 ;
 Q
POST ;
 D ECODES  ;add new 3P Codes entries
 D REINDEX  ;reindex 3P UFMS Cashering file, new SESSION STATUS x-ref
 Q
REINDEX ;EP
 D BMES^XPDUTL("Reindexing 3P UFMS Cashiering SESSION STATUS field...")
 D ^XBFMK
 S ABMHOLD=DUZ(2)
 S DA(2)=0
 F  S DA(2)=$O(^ABMUCASH(DA(2))) Q:'+DA(2)  D
 .F ABMLOOP=10,20 D
 ..S DA(1)=0
 ..F  S DA(1)=$O(^ABMUCASH(DA(2),ABMLOOP,DA(1))) Q:'DA(1)  D
 ...S DIK="^ABMUCASH("_DA(2)_","_ABMLOOP_","_DA(1)_",20,"
 ...D IXALL^DIK
 S DUZ(2)=ABMHOLD
 D BMES^XPDUTL("Done.")
 Q
ECODES ;
 K DIC,X
 F ABMI=1:1 S ABMLN=$P($T(ECODETXT+ABMI),";;",2) Q:ABMLN="END"  D
 .S ABMCODE=$P(ABMLN,U)
 .I $D(^ABMDCODE("AC",$P(ABMLN,U,2),ABMCODE)) D  Q
 ..S DA=$O(^ABMDCODE("AC",$P(ABMLN,U,2),ABMCODE,0))
 ..S $P(^ABMDCODE(DA,0),U,2)=$P(ABMLN,U,2),$P(^(0),U,3)=$P(ABMLN,U,3),$P(^(0),U,4)=$P(ABMLN,U,4)
 .S ABMDESC=$P(ABMLN,U,3)
 .S ABMINAC=$P(ABMLN,U,4)
 .S DIC="^ABMDCODE("
 .S DIC(0)="ML"
 .S X=ABMCODE
 .S DIC("DR")=".02///"_$P(ABMLN,U,2)
 .S DIC("DR")=DIC("DR")_";.03///"_ABMDESC
 .S DIC("DR")=DIC("DR")_";.04///"_ABMINAC
 .K DD,DO
 .D FILE^DICN
 Q
 ;
ECODETXT ;
 ;;50^H^Federally Qualified Health Center
 ;;60^H^Mass Immunization Center
 ;;19^H^Off Campus-Outpatient Hospital
 ;;END

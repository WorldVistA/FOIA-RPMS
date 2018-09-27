ABMP2623 ; IHS/SD/SDR - 3P BILLING 2.6 Patch 23 POST INIT ;  
 ;;2.6;IHS Third Party Billing;**23**;NOV 12, 2009;Build 427
 ;
 ;IHS/SD/SDR 2.6*23 HEAT269872 CR8904 Added Place of Service #15 Mobile Unit
 ;IHS/SD/SDR 2.6*23 CR9261 Added Place of Service #02 Telemedicine
 ;
POST ;EP
 D ECODES  ;add new 3P Codes entries
 Q
ECODES ;EP
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
 ;;15^H^Mobile Unit
 ;;02^H^Telemedicine
 ;;END

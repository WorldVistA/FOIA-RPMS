ABMRSTI4 ; IHS/SD/SDR - Split Claim Billing (part 4); 
 ;;2.6;IHS 3P BILLING SYSTEM;**22**;NOV 12, 2009;Build 418
 ;IHS/SD/SDR 2.6*22 HEAT335246 - New routine
 ;
 Q
INSSTMP ;EP
 D ^XBFMK
 D NOW^%DTC
 S ABMY("AUTODT")=%  ;set variable to date/time stamp all claims the same in field .024
 S ABMTINS=0
 F  S ABMTINS=$O(ABMY("INS",ABMTINS)) Q:'ABMTINS  D  ;loop through all insurers selected
 .S DA(1)=ABMTINS
 .S DIC="^ABMNINS("_DUZ(2)_","_DA(1)_",7,"
 .S DIC("P")=$P(^DD(9002274.09,7,0),U,2)
 .S DIC(0)="ML"
 .S X=ABMY("AUTODT")
 .S DIC("DR")=".02////"_DUZ  ;user
 .S DIC("DR")=DIC("DR")_";.03////"_$P(ABMY("PGS"),"^",2,($L(ABMY("PGS"),"^")-1))  ;what pages were split
 .S DIC("DR")=DIC("DR")_";.04////"_ABMY("DT")  ;visit or approval date
 .S DIC("DR")=DIC("DR")_";.05////"_$G(ABMY("DT",1))  ;start date
 .S DIC("DR")=DIC("DR")_";.06////"_$G(ABMY("DT",2))  ;end date
 .S:$G(ABMY("STA")) DIC("DR")=DIC("DR")_";.07////"_$P(ABMY("STA"),"^",2,$L(ABMY("STA"),"^"))  ;claim status
 .S DIC("DR")=DIC("DR")_";.08////"_ABMY("SPLITHOW")  ;split 1 chrg or 1 pg per claim
 .S DIC("DR")=$TR(DIC("DR"),"^",",")
 .D ^DIC
 Q

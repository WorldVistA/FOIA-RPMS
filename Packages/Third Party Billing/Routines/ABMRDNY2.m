ABMRDNY2 ; IHS/SD/SDR - Comma-Delimited Record ;
 ;;2.6;IHS Third Party Billing;**21**;NOV 12, 2009;Build 379
 ;IHS/SD/SDR - 2.6*21 - HEAT241429 - New Report
 ;
PRINT ;EP for printing data
 D OPEN^%ZISH("ABMF",ABM("RPATH"),ABM("RFN"),"W")
 Q:POP
 U IO
 S ABM("TXT")=""
 D HDB
 S (ABM("CNT"),ABM("SUBCNT"))=0
 S ABM("PRV")=""
 S ABM("A")="TMP(""ABM-RDNY"","_$J
 S ABM="^"_ABM("A")_")"
 I '$D(@ABM) Q
 F  S ABM=$Q(@ABM) Q:ABM'[ABM("A")  D  Q:$D(DTOUT)!$D(DUOUT)!$D(DIROUT)
 .S ABM("T")=$P(ABM,"ABM-RDNY",2)
 .S ABM("TXT")=+$P(ABM("T"),",",5)  ;BDFN
 .S ABM("C")=$G(^ABMDBILL(DUZ(2),ABM("TXT"),0)) Q:ABM("C")=""
 .Q:'ABM("C")!'$P(ABM("C"),U,7)!'$P(ABM("C"),U,8)
 .S ABM("PRV")=$TR($P(ABM("T"),",",3,4),"""")  ;provider name
 .;
 .S ABMP("INS")=$P(ABM("C"),U,8)
 .S ABMP("ITYPE")=$$GET1^DIQ(9999999.181,$$GET1^DIQ(9999999.18,ABMP("INS"),".211","I"),1,"I")
 .S ABMP("VTYP")=$P(ABM("C"),U,7)
 .S ABMP("CLN")=$P(ABM("C"),U,10)
 .S ABMP("CLIN")=$$GET1^DIQ(40.7,$P(ABM("C"),U,10),"1","E")
 .S ABMP("BDFN")=ABM("TXT")
 .S ABMP("VDT")=$P($G(^ABMDBILL(DUZ(2),ABM("TXT"),7)),U)
 .S ABMP("BTYP")=$P(ABM("C"),U,2)
 .S ABMP("LDFN")=$P(ABM("C"),U,3)
 .S ABMP("EXP")=$P(ABM("C"),U,6)
 .D CPTS  ;gather CPTs on claim
 .D PSTING  ;gather posting info
 .S ABMP("GL")="^ABMDBILL(DUZ(2),"_ABMP("BDFN")_",",ABMP("TOT")=0,ABMP("NC")=0
 .D ^ABMDESM1
 .;
 .W !,$E($P(ABM("C"),U),1,10)  ;bill number
 .W U_$$SDT^ABMDUTL($P($G(^ABMDBILL(DUZ(2),ABM("TXT"),7)),U))  ;DOS
 .W U_$G(ABMT(1))  ;CPT/AMOUNT
 .W U_$P($G(^AUTNINS($P(ABM("C"),U,8),0)),U)  ;active insurer
 .W U_ABM("PRV")  ;provider
 .W U_$FN(+$G(ABMS("TOT")),",",2)  ;billed
 .W U_$FN(+$G(ABMD("P")),",",2)  ;paid
 .W U_$G(ABMD(1))  ;denial/SAR
 .S ABMD("DTOT")=+$G(ABMD("DTOT"))+$G(ABMD(1))
 .S ABM("CNT")=ABM("CNT")+1,ABM("SUBCNT")=ABM("SUBCNT")+1
 ;
 D CLOSE^%ZISH("ABMF")
 Q
 ;
HDB ;
 S ABM("PG")=ABM("PG")+1
 D WHD^ABMDRHD
 W !,"Bill#^DOS^CPT/Amount^Active Insurer^Provider^Billed^Paid^Denied/SAR"
 Q
 ;
CPTS ;EP
 N ABM
 K ABMRV,ABMT,ABMD
 S ABMTCNT=1
 D ^ABMEHGRV
 S ABMI=0
 F  S ABMI=$O(ABMRV(ABMI)) Q:'ABMI  D
 .S ABMJ=0
 .F  S ABMJ=$O(ABMRV(ABMI,ABMJ)) Q:'ABMJ  D
 ..S ABMK=0
 ..F  S ABMK=$O(ABMRV(ABMI,ABMJ,ABMK)) Q:(ABMK="")  D
 ...I $G(ABMT(ABMTCNT))="" S ABMT(ABMTCNT)=$P($G(ABMRV(ABMI,ABMJ,ABMK)),U,2)_"/"_+$P($G(ABMRV(ABMI,ABMJ,ABMK)),U,6)
 ...E  S ABMT(ABMTCNT)=ABMT(ABMTCNT)_";"_$P($G(ABMRV(ABMI,ABMJ,ABMK)),U,2)_"/"_+$P($G(ABMRV(ABMI,ABMJ,ABMK)),U,6)
 Q
PSTING ;EP
 S ABMB=0
 S ABMTCNT=1
 F  S ABMB=$O(^ABMDBILL(DUZ(2),ABM("TXT"),3,ABMB)) Q:'ABMB  D
 .S ABMD("P")=+$G(ABMD("P"))+$P($G(^ABMDBILL(DUZ(2),ABM("TXT"),3,ABMB,0)),U,10)
 .F ABMA=3,4,6,7,9,12,13 D
 ..I +$P($G(^ABMDBILL(DUZ(2),ABM("TXT"),3,ABMB,0)),U,ABMA)'=0 D
 ...I $G(ABMD(ABMTCNT))="" S ABMD(ABMTCNT)=+$P($G(^ABMDBILL(DUZ(2),ABM("TXT"),3,ABMB,0)),U,ABMA)_"/"
 ...E  S ABMD(ABMTCNT)=ABMD(ABMTCNT)_";"_+$P($G(^ABMDBILL(DUZ(2),ABM("TXT"),3,ABMB,0)),U,ABMA)_"/"
 ...I +$P($G(^ABMDBILL(DUZ(2),ABM("TXT"),3,ABMB,0)),U,17)'=0 S ABMD(ABMTCNT)=ABMD(ABMTCNT)_$$GET1^DIQ(90056.06,$P($G(^ABMDBILL(DUZ(2),ABM("TXT"),3,ABMB,0)),U,17),".01","E")
 Q

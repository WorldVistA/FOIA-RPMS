ABMRDNY1 ; IHS/SD/SDR - Printer - Fixed Length Record (Paper printing) ;
 ;;2.6;IHS Third Party Billing;**21**;NOV 12, 2009;Build 379
 ;IHS/SD/SDR - 2.6*21 - HEAT241429 - New Report
 ;
PRINT ;EP for printing data
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
 .I $Y>(IOSL-5) D HD Q:$D(DTOUT)!$D(DUOUT)!$D(DIROUT)  D PRV W " (cont)"
 .S ABM("C")=$G(^ABMDBILL(DUZ(2),ABM("TXT"),0)) Q:ABM("C")=""
 .Q:'ABM("C")!'$P(ABM("C"),U,7)!'$P(ABM("C"),U,8)
 .I ABM("PRV")'=$TR($P(ABM("T"),",",3,4),"""") S ABM("PRV")="" D SUB,PRV
 .S ABM("PRV")=$TR($P(ABM("T"),",",3,4),"""")  ;provider name
 .W !,$E($P(ABM("C"),U),1,10)  ;bill number
 .W ?12,$$SDT^ABMDUTL($P($G(^ABMDBILL(DUZ(2),ABM("TXT"),7)),U))  ;DOS
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
 .;
 .W ?24,$E($P($G(ABMT(1)),U,2),1,7)  ;first CPT
 .W ?32,$E($P($G(^AUTNINS($P(ABM("C"),U,8),0)),U),1,12)  ;active insurer
 .W ?46,$J($FN(+$P($G(ABMT(1)),U,6),",",2),9)  ;billed
 .W ?57,$J($FN(+$G(ABMD("P")),",",2),9)  ;paid
 .W ?67,$J($FN(+$G(ABMD(1)),",",2),9)  ;denial
 .S ABMD("DTOT")=+$G(ABMD("DTOT"))+$G(ABMD(1))
 .W ?77,$P($G(ABMD(1)),U,2)  ;SAR
 .S ABM("CNT")=ABM("CNT")+1,ABM("SUBCNT")=ABM("SUBCNT")+1
 .;
 .I $O(ABMT(9999999),-1)>1!($O(ABMD(9999),-1)>1) D
 ..F ABMI=2:1 D  Q:'$D(ABMT(ABMI))&('$D(ABMD(ABMI)))
 ...Q:'$D(ABMT(ABMI))&('$D(ABMD(ABMI)))  ;quit if no further entries for either
 ...W !
 ...I $P($G(ABMT(ABMI)),U,2)'="" D  Q:$D(DTOUT)!$D(DUOUT)!$D(DIROUT)  ;if there's a CPT on the line
 ....W ?24,$E($P(ABMT(ABMI),U,2),1,7)  ;CPT
 ....W ?46,$J($FN(+$P($G(ABMT(ABMI)),U,6),",",2),9)  ;billed
 ...I +$P($G(ABMD(ABMI)),U)'=0 W ?67,$J($FN(+$P($G(ABMD(ABMI)),U),",",2),9) S ABMD("DTOT")=+$G(ABMD("DTOT"))+$P($G(ABMD(ABMI)),U)  ;denied
 ...I $P($G(ABMD(ABMI)),U,2)'="" W ?77,$P($G(ABMD(ABMI)),U,2)  ;SAR
 ...I $Y>(IOSL-5) D HD Q:$D(DTOUT)!$D(DUOUT)!$D(DIROUT)  D PRV W " (cont)"
 .;
 .W !,?46,"---------",?57,"---------",?67,"---------"
 .S ABMP("GL")="^ABMDBILL(DUZ(2),"_ABMP("BDFN")_",",ABMP("TOT")=0,ABMP("NC")=0
 .D ^ABMDESM1
 .W !?20,"Total for Bill: ",$E($P(ABM("C"),U),1,10),?46,$J($FN(+$G(ABMS("TOT")),",",2),9),?57,$J($FN(+$G(ABMD("P")),",",2),9),?67,$J($FN(+$G(ABMD("DTOT")),",",2),9),!
 Q:$D(DIROUT)!($D(DUOUT))!($D(DTOUT))
 D SUB
 W !?52,"======"
 W !?46,"Total:",?52,$FN(ABM("CNT"),",",0)
 Q
 ;
HD D PAZ^ABMDRUTL Q:$D(DTOUT)!$D(DUOUT)!$D(DIROUT)
HDB ;
 S ABM("PG")=ABM("PG")+1
 D WHD^ABMDRHD
 W !,"Bill#",?12,"DOS",?24,"CPT",?30,"Active Insurer",?47,"Billed",?57,"Paid",?67,"Denied",?77,"SAR"
 S $P(ABM("LINE"),"-",80)="" W !,ABM("LINE") K ABM("LINE")
 Q
 ;
PRV ;
 W !!?3,"Provider: ",$TR($P(ABM("T"),",",3,4),"""")
 Q
 ;
SUB ;
 Q
 Q:'ABM("SUBCNT")
 W !?27,"------"
 W !?3,"#Claims for provider:",?27,$FN(ABM("SUBCNT"),",",0)
 S ABM("SUBCNT")=0
 Q
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
 ...S ABMT(ABMTCNT)=$G(ABMRV(ABMI,ABMJ,ABMK))
 ...S ABMTCNT=+$G(ABMTCNT)+1
 Q
PSTING ;EP
 S ABMB=0
 S ABMTCNT=1
 F  S ABMB=$O(^ABMDBILL(DUZ(2),ABM("TXT"),3,ABMB)) Q:'ABMB  D
 .S ABMD("P")=+$G(ABMD("P"))+$P($G(^ABMDBILL(DUZ(2),ABM("TXT"),3,ABMB,0)),U,10)
 .F ABMA=3,4,6,7,9,12,13 D
 ..I +$P($G(^ABMDBILL(DUZ(2),ABM("TXT"),3,ABMB,0)),U,ABMA)'=0 D
 ...S ABMD(ABMTCNT)=+$P($G(^ABMDBILL(DUZ(2),ABM("TXT"),3,ABMB,0)),U,ABMA)
 ...I +$P($G(^ABMDBILL(DUZ(2),ABM("TXT"),3,ABMB,0)),U,17)'=0 S ABMD(ABMTCNT)=ABMD(ABMTCNT)_U_$$GET1^DIQ(90056.06,$P($G(^ABMDBILL(DUZ(2),ABM("TXT"),3,ABMB,0)),U,17),".01","E")
 ...S ABMTCNT=+$G(ABMTCNT)+1
 Q

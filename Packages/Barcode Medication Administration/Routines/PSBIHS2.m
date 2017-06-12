PSBIHS2 ;KF/VAOIT  PSB DRUG REPORT 
 ;;1.0;PSB BCMA CPS FOXK;**1018**;;Build 27
EN ;
 W @IOF
 W !,"Hello ",$P($$GET1^DIQ(200,DUZ,.01,"E"),",",2)
 W !,"Let's Look at those 'Synonyms' in 'The Drug File' File: 50"
 W !,"Searching....." D WAIT^DICD W !
 S UIO1=IO ;SAVE IO 
 ;MAKE SURE TO OPEN NULL DEVICE.
 S DIC=3.5,DIC(0)="M" S X="NULL" D ^DIC
 S IOP="`"_+Y D ^%ZIS
 S UIO=$P($G(^%ZIS(1,+Y,0)),U,2)
 Q:POP
 D NEW,BAD
TAS ;TASK IT OR NOT
 S %ZIS="Q"
 W ! D ^%ZIS K %ZIS
 I POP D  Q
 .W $C(7)
 .K VISN,PSBEDATE,PSBBDATE,PSBDV
 ; output not queued...
 N PSBTK
 I '$D(IO("Q")) D
 .D WAIT^DICD U IO D PRNT
 .I IO'=IO(0) D ^%ZISC
 ; set up the Task...
 I $D(IO("Q")) D
 .N ZTDESC,ZTSAVE,ZTIO,ZTRTN
 .S ZTRTN="TSK1^PSBIHS2"
 .S ZTDESC="PSB Drug File Synonym Report"
 .S ZTIO=ION
 .D ^%ZTLOAD
 .D HOME^%ZIS
 .W !,$S($G(ZTSK):"Task number "_ZTSK_" queued.",1:"ERROR -- NOT QUEUED!")
 .K IO("Q"),ZTSK
 Q
NEW ;
 K ^TMP($J) S (PSBCNT,PSBCNT1,PSBC)=0
 ;COLLECT ALL DRUG SYNONYM IN TMP IF IT FAILS SMED^PSBMLTS
 N PSBIEN,PSBJ
 S PSBIEN=0 F  S PSBIEN=$O(^PSDRUG(PSBIEN)) Q:'+PSBIEN  D
 .K PSBSCAN D SMED^PSBMLTS(.PSBSCAN,PSBIEN)
 .;Q:+PSBSCAN(0)>0 ;IEN PASSED ITS OKAY
 .;IF DRUG IEN FAILS SMED&PSBMLTS ADD IEN TO LIST OF SYNS/IENS
 .I '$D(^TMP($J,"SYN",PSBIEN))&(+PSBSCAN(0)'>0) S ^TMP($J,"SYN",PSBIEN)=""
 .S PSBJ=0 F  S PSBJ=$O(^PSDRUG(PSBIEN,1,PSBJ)) Q:'+PSBJ  D
 ..;get ALL synm for ALL Drugs.
 ..S PSBTEXT=$P($G(^PSDRUG(PSBIEN,1,PSBJ,0)),"^",1)
 ..N J F J=1:1:$L(PSBTEXT) I $E(PSBTEXT,J,J)?.1A S PSBTEXT="NO" Q  ;;no alpha only syns allowed in list.
 ..K PSBSCAN D SMED^PSBMLTS(.PSBSCAN,PSBTEXT)
 ..Q:+PSBSCAN(0)>0  ;IEN PASSED ITS OKAY
 ..S:+PSBTEXT ^TMP($J,"SYN",PSBTEXT)=""
 ;
 Q
TSK1 ;
 D NEW,PRNT,KILL
 Q
BAD ;INACTIVE DRUGS  WITH DUP SYNS
 S PSBSYN="" F  S PSBSYN=$O(^TMP($J,"SYN",PSBSYN)) Q:PSBSYN'>0  D SMED(PSBSYN,2,1)
 I $D(^TMP($J,"BADSYN")) D
 .S PSBSYN="" F  S PSBSYN=$O(^TMP($J,"BADSYN",PSBSYN)) Q:PSBSYN=""  D SMED(PSBSYN,2,0)
 .D AUTO
 Q
PRNT ;REPORT LOOP
 S PSBSYN="" F  S PSBSYN=$O(^TMP($J,"SYN",PSBSYN)) Q:PSBSYN'>0  D SMED(PSBSYN,2,0)
 W !,"Found "_PSBC_" Synonym Issues."
 Q
SMED(PSBVAL,PSBL,PSBCH) ; SAME LOGIC in Scanner^PSBMLTS
 ;PSBVAL DRUG OR SYN
 ;PSBL FOUND CNT
 ;PSBCH O WRITE DETAIL, 1 HIDE DETAILS INACTIVE SEARCH FIRST.
 K ^TMP("DILIST",$J)
 ;U "//./nul" HIDE ECHO BACK DISPLAY
 U UIO D FIND^DIC(50,"","","AX",PSBVAL,"*","B^C")
 U UIO1 ;BACK TO REG DEVICE.
 Q:+$G(^TMP("DILIST",$J,0))<PSBL  ;ITS OKAY BAIL OUT
 S PSBC=PSBC+1
 W:PSBCH=0 !!,"There are ",+^TMP("DILIST",$J,0)," matches to '",PSBVAL,"'."
 F PSBX=0:0 S PSBX=$O(^TMP("DILIST",$J,2,PSBX)) Q:'PSBX  D
 .W:PSBCH=0 !!,"MATCH #:..................",PSBX
 .W:PSBCH=0 !,"IEN:......................",^TMP("DILIST",$J,2,PSBX)
 .W:PSBCH=0 !,"NAME:.....................",^TMP("DILIST",$J,1,PSBX)
 .S PSBFLD=0
 .F  S PSBFLD=$O(^TMP("DILIST",$J,"ID",PSBX,PSBFLD)) Q:'PSBFLD  D
 ..D FIELD^DID(50,PSBFLD,"","LABEL","PSBFLD")
 ..; IF PREVIEW ONLY LABEL IS INATACTVIE DRUG AND HAS A DATE, AND PASSED VAL IS NOT SAME DRUG IEN.
 ..I PSBCH=1&(PSBFLD("LABEL")="INACTIVE DATE")&($G(^TMP("DILIST",$J,"ID",PSBX,PSBFLD))'="")&(PSBVAL'=^TMP("DILIST",$J,2,PSBX)) D
 ...S ^TMP($J,"BAD2",^TMP("DILIST",$J,2,PSBX))="",^TMP($J,"BADSYN",PSBVAL)="",PSBCNT=PSBCNT+1
 ...W !,"IEN:......................",^TMP("DILIST",$J,2,PSBX)
 ...W !,"NAME:.....................",^TMP("DILIST",$J,1,PSBX)
 ..I PSBCH=0 W !,PSBFLD("LABEL"),":" F  Q:$X>25  W "."
 ..W:PSBCH=0 ^TMP("DILIST",$J,"ID",PSBX,PSBFLD)
 I PSBCH=0 W ! F J=1:1:IOM W "-"
 K ^TMP("DILIST",$J)
 Q
AUTO; REMOVE SYNONYMS FROM INACTIVE DRUGS.
 Q:'$D(^TMP($J,"BAD2"))
 W !,"Hello,"_$P($$GET1^DIQ(200,DUZ,.01,"E"),",",2),!,"I found Dupiclate synonyms on Inactive Drugs, would youlike me clean these up for up?" S %=2 D YN^DICN
 I '$D(^XUSEC("PSJ RPHARM",DUZ)) W !,"Sorry ",$P($$GET1^DIQ(200,DUZ,.01,"E"),",",2)," you dO not hold the 'PSJ RHARM' key Bye!!" 	Q
 Q:%'=1
 N PSBCNT,PSBC
 S (PSBC,PSBCNT)=0
 S DIK="^PSDRUG(DA(1),1,"
 S PSBCNT=0,PSBIEN=0 F  S PSBIEN=$O(^TMP($J,"BAD2",PSBIEN)) Q:PSBIEN'>0  D
 .S DA(1)=PSBIEN,PSBC=PSBC+1
 .S PSBJ=0 F  S PSBJ=$O(^PSDRUG(PSBIEN,1,PSBJ)) Q:'+PSBJ  D
 ..S DA=PSBJ D ^DIK S PSBCNT=PSBCNT+1
 W !,"All Done you just removed "_PSBCNT_" Synonyms from "_PSBC_" Drugs."
 K PSBIEN,DA(1),DA,DIK,PSBCNT,PSBC
 Q
KILL ;
 K PSBIEN,PSBIEN1,PSBH,PSBJ,PSBCNT,PSBCNT1,PSBSYN,^TMP($J),PSBSYNC,PSBCHECK1,PSBTEXT,PSBC,PSBCHECK
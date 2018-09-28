BARRPPS ; IHS/SD/SDR - Patient Payment Summary ;08/20/2008
 ;;1.8;IHS ACCOUNTS RECEIVABLE;**28**;OCT 26, 2005;Build 92
 ;IHS/SD/SDR 1.8*28 CR9580 HEAT303780 Routine created
 Q
 ; ***************************************
EN ;EP
 K ^TMP($J,"BAR-PPS"),BAREND
 D ACCTS  ;select A/R Account
 D:'$D(BAREND) DT  ;select A/R Collection Batch date range
 D:'$D(BAREND) COMMENTS  ;Y/N if commments from item should print on report or not
 G:$D(BAREND) CLEANUP
SEL ;Select device
 S %ZIS="Q"
 S %ZIS("A")="Enter DEVICE: "
 D ^%ZIS Q:POP
 I IO'=IO(0) D QUE,HOME^%ZIS S DIR(0)="E" D ^DIR K DIR Q
 S IOP=ION D ^%ZIS
 D PRINT
 Q
QUE ;EP
 K IO("Q")
 S ZTRTN="PRINT^BARRPPS",ZTDESC="Patient Payment Summary"
 S ZTSAVE("BAR*")=""
 D ^%ZTLOAD
 D ^%ZISC
 I $D(ZTSK)[0 W !!?5,"REPORT CANCELLED!"
 E  W !!?5,"REQUEST QUEUED AS TASK # "_ZTSK_" !",!
 Q
ACCTS ;EP
 ; Select A/R Accounts to sort by
 K BARY("ACCT")
 D ^XBFMK
 S DIC="^BARAC(DUZ(2),"
 S DIC(0)="AEMQ"
 S DIC("S")="I $P(^BARAC(DUZ(2),Y,0),U)[""AUPNPAT"""
 S DIC("A")="Select A/R Account: "
 F  D  Q:+Y<0
 .I $D(BARY("ACCT")) S DIC("A")="Select Another A/R Account: "
 .D ^DIC
 .I $D(DTOUT)!$D(DUOUT)!$D(DIROUT) S BAREND=1 Q
 .Q:+Y<0
 .S BARY("ACCT",+Y)=""
 I '$D(BARY("ACCT")),('$D(BAREND)) W !!,"At least one A/R account is required. Enter '^' to exit",! K DIC G ACCTS  ;IHS/DIT/CPC - 20170427 CR9580 BAR*1.8*28
 K DIC
 Q
DT ;EP
 D ^XBFMK
 W !!," ============ Entry of A/R Collection Batch Range =============",!
 S DIR("A")="Enter A/R Collection Batch STARTING DATE for the Report"
 S DIR(0)="DOE"
 D ^DIR
 I $D(DTOUT)!$D(DUOUT)!$D(DIROUT) S BAREND=1 Q
 G DT:$D(DIRUT)
 S BARY("DT",1)=Y
 W !
 S DIR("A")="Enter ENDING DATE for the Report"
 S DIR(0)="DOE"
 D ^DIR
 K DIR
 I $D(DTOUT)!$D(DUOUT)!$D(DIROUT) S BAREND=1 Q
 G DT:$D(DIRUT)
 S BARY("DT",2)=Y
 I BARY("DT",1)>BARY("DT",2) W !!,*7,"INPUT ERROR: Start Date is Greater than the End Date, TRY AGAIN!",!! G DT
 Q
COMMENTS ;EP
 D ^XBFMK
 W !
 S DIR("A")="Print Collection Batch Comments (if Present)"
 S DIR("B")="No"
 S DIR(0)="Y"
 D ^DIR
 I $D(DTOUT)!$D(DUOUT)!$D(DIROUT) S BAREND=1 Q
 S BARY("COMM",1)=Y
 K DIR
 Q
 ;
PRINT ; EP
 ;Gather data for each patient and print summary
 S BARACCTI=0
 F  S BARACCTI=$O(BARY("ACCT",BARACCTI))  Q:'BARACCTI  D
 .K ^TMP($J,"BAR-PPS")
 .S BAR("PG")=1
 .D GATHER  ;gather data
 .D CALC  ;goes through found data and creates totals
 .D SUMMARY  ;print summary
 Q
 ; ***************************************
GATHER ;EP
 S BARSDT=BARY("DT",1)-.1
 S BAREDT=BARY("DT",2)+.999999
 F  S BARSDT=$O(^BARCOL(DUZ(2),"C",BARSDT)) Q:'BARSDT!(BARSDT>BAREDT)  D
 .S BARCOL=0
 .F  S BARCOL=$O(^BARCOL(DUZ(2),"C",BARSDT,BARCOL)) Q:'BARCOL  D
 ..S BARITEM=0
 ..F  S BARITEM=$O(^BARCOL(DUZ(2),BARCOL,1,BARITEM)) Q:'BARITEM  D
 ...I $P($G(^BARCOL(DUZ(2),BARCOL,1,BARITEM,0)),U,7)'=BARACCTI Q  ;not our A/R Account
 ...S BARPTYP=$$GET1^DIQ(90052.02,$P($G(^BARCOL(DUZ(2),BARCOL,1,BARITEM,0)),U,2),6)
 ...I "^CA^CC^CK^GL^"'[("^"_BARPTYP_"^") Q  ;only want Cash, Credit Card, Check, and General Ledger
 ...S BARCCRDT=$P($G(^BARCOL(DUZ(2),BARCOL,1,BARITEM,1)),U)
 ...S BARCDBT=$P($G(^BARCOL(DUZ(2),BARCOL,1,BARITEM,1)),U,2)
 ...S BARRCPT=$$GET1^DIQ(90050.06,$P($G(^BARCOL(DUZ(2),BARCOL,1,BARITEM,0)),U,23),".01")
 ...S ^TMP($J,"BAR-PPS",BARSDT,BARCOL,BARITEM)=BARPTYP_U_(BARCCRDT-BARCDBT)_U_BARRCPT
 Q
CALC ;EP
 Q:'$D(^TMP($J,"BAR-PPS"))  ;no data found for A/R Account
 S BARPCNT=0
 S BARSDT=0
 F  S BARSDT=$O(^TMP($J,"BAR-PPS",BARSDT)) Q:'BARSDT  D
 .S BARCOL=0
 .F  S BARCOL=$O(^TMP($J,"BAR-PPS",BARSDT,BARCOL)) Q:'BARCOL  D
 ..S BARITEM=0
 ..F  S BARITEM=$O(^TMP($J,"BAR-PPS",BARSDT,BARCOL,BARITEM)) Q:'BARITEM  D
 ...S $P(^TMP($J,"BAR-PPS","TOT"),U)=+$P(+$G(^TMP($J,"BAR-PPS","TOT")),U)+$P($G(^TMP($J,"BAR-PPS",BARSDT,BARCOL,BARITEM)),U,2)  ;total amount batched
 ...;look through transactions for payments posted; this is posted amount
 ...S BARTRANS=0
 ...F  S BARTRANS=$O(^BARTR(DUZ(2),"ACB",BARCOL,BARITEM,40,BARTRANS)) Q:'BARTRANS  D
 ....S $P(^TMP($J,"BAR-PPS","TOT"),U,2)=(+$P($G(^TMP($J,"BAR-PPS","TOT")),U,2)+($$GET1^DIQ(90050.03,BARTRANS,"3.5")))  ;total amount posted
 ....S BARPCNT=+$G(BARPCNT)+1
 S $P(^TMP($J,"BAR-PPS","TOT"),U,3)=(($P($G(^TMP($J,"BAR-PPS","TOT")),U))-($P($G(^TMP($J,"BAR-PPS","TOT")),U,2)))  ;total to be posted
 S $P(^TMP($J,"BAR-PPS","TOT"),U,4)=+BARPCNT  ;Payment Count
 Q
 ; ***************************************
 ;
SUMMARY ;
 ; Print report if user selected SORT CRITERIA Billing Entity or
 ; Allowance Category and Report Type w/o payers
 ;
 S BAR("PG")=0
 D HDB                             ; Page and column header
 I '$D(^TMP($J,"BAR-PPS")) D  Q           ; No data - quit
 .W !!!!!?25,"*** NO DATA TO PRINT ***"
 .D EOP^BARUTL(0)
 S BARSDT=0
 F  S BARSDT=$O(^TMP($J,"BAR-PPS",BARSDT)) Q:'BARSDT  D  Q:$D(DTOUT)!$D(DUOUT)!$D(DIROUT)
 .S BARCLIEN=0
 .F  S BARCLIEN=$O(^TMP($J,"BAR-PPS",BARSDT,BARCLIEN)) Q:'BARCLIEN  D  Q:$D(DTOUT)!$D(DUOUT)!$D(DIROUT)
 ..S BARITEM=0
 ..F  S BARITEM=$O(^TMP($J,"BAR-PPS",BARSDT,BARCLIEN,BARITEM)) Q:'BARITEM  D  Q:$D(DTOUT)!$D(DUOUT)!$D(DIROUT)
 ...I $Y>(IOSL-5) D HD Q:$D(DTOUT)!$D(DUOUT)!$D(DIROUT)
 ...W !,$E($P($G(^BARCOL(DUZ(2),BARCLIEN,0)),U),1,26) ;COLLECTION BATCH
 ...W ?27,BARITEM  ;COLLECTION BATCH ITEM #
 ...W ?30,$P($G(^TMP($J,"BAR-PPS",BARSDT,BARCLIEN,BARITEM)),U,3) ;RECEIPT #
 ...W ?43,$P($G(^TMP($J,"BAR-PPS",BARSDT,BARCLIEN,BARITEM)),U)  ;TYPE OF PAYMENT
 ...W ?49,$J($FN($P($G(^TMP($J,"BAR-PPS",BARSDT,BARCLIEN,BARITEM)),U,2),",",2),8) ;BATCH ITEM AMOUNT
 ...D WRTBILL
 ...I +$G(BARY("COMM",1))=1 D WRTCOMM
 W !,?47,"__________",?68,"__________"  ;IHS/DIT/CPC - 20180427 CR9580 BAR*1.8*28
 W !,?45,$J($FN(+$P($G(^TMP($J,"BAR-PPS","TOT")),U),",",2),12),?66,$J($FN(+$P($G(^TMP($J,"BAR-PPS","TOT")),U,2),",",2),12),! ;IHS/DIT/CPC - 20180427 CR9580 BAR*1.8*28
 W !!,"REPORT COMPLETE FOR "_$$GET1^DIQ(90050.02,BARACCTI,".01","E")
 D EOP^BARUTL(0)
 Q
WRTBILL ;EP
 S BARTRANS=0,BARHASTR=0
 F  S BARTRANS=$O(^BARTR(DUZ(2),"ACB",BARCLIEN,BARITEM,40,BARTRANS)) Q:'BARTRANS  D
 .W ?58,$E($$GET1^DIQ(90050.01,$P($G(^BARTR(DUZ(2),BARTRANS,0)),U,4),".01","E"),1,10)  ;BILL NUMBER ;IHS/DIT/CPC - 20180427 CR9580 BAR*1.8*28
 .W ?70,$J($FN($$GET1^DIQ(90050.03,BARTRANS,"3.5","E"),",",2),8),! ;AMOUNT POSTED TO BILL ;IHS/DIT/CPC - 20180427 CR9580 BAR*1.8*28
 .S BARHASTR=1
 Q
WRTCOMM ;EP
 I BARHASTR=0 W !  ;make sure comment starts on separate line
 K BARCOM
 S IENS=BARITEM_","_BARCLIEN_","
 D GETS^DIQ(90051.1101,IENS,"301","","BARCOM")
 I $G(BARCOM(90051.1101,IENS,301,1))="" Q  ;quit if no comment on item
 W ?2,"Comment: "
 S BARCNT=0
 F  S BARCNT=$O(BARCOM(90051.1101,IENS,301,BARCNT)) Q:'BARCNT  D
 .W !?4,$G(BARCOM(90051.1101,IENS,301,BARCNT))
 Q
 ; ***************************************
HD ; EP
 D PAZ^BARRUTL
 I $D(DTOUT)!$D(DUOUT)!$D(DIROUT) S BAR("F1")=1 Q
 ; ***************************************
 ;
HDB ; EP
 ;Page and column header
 S BAR("PG")=BAR("PG")+1
 S BAR("I")=""
 W $$EN^BARVDF("IOF"),!
 D CENTER("Patient Payment Summary")
 W !
 D CENTER($P($G(^DIC(4,DUZ(2),0)),U))
 W !
 D NOW^%DTC
 S Y=%
 X ^DD("DD")
 W $P(Y,":",1,2),?72,"Page ",BAR("PG")
 S $P(BAR("DASH"),"-",$S($D(BAR(132)):132,1:80))=""
 W !,BAR("DASH"),!
 ;
 W ?3,"Patient Name: ",$$GET1^DIQ(90050.02,BARACCTI,".01","E")
 W ?50,"HRN: ",$P($G(^AUPNPAT($P($$GET1^DIQ(90050.02,BARACCTI,".01","I"),";"),41,DUZ(2),0)),U,2),!!
 W "Total Amount Batched: ",$J($FN(+$P($G(^TMP($J,"BAR-PPS","TOT")),U),",",2),12)
 W ?50,"Num of Pymts Posted: ",+$P($G(^TMP($J,"BAR-PPS","TOT")),U,4),!
 W ?7,"Amount Posted: ",$J($FN(+$P($G(^TMP($J,"BAR-PPS","TOT")),U,2),",",2),12),!
 W ?8,"To Be Posted: ",$J($FN(+$P($G(^TMP($J,"BAR-PPS","TOT")),U,3),",",2),12),!
 W BAR("DASH"),!
 W ?50,"Batched",?60,"Bill",?72,"Posted",!  ;IHS/DIT/CPC - 20180427 CR9580 BAR*1.8*28
 W "Collection Batch",?25,"Item",?30,"Receipt#",?42,"Type",?51,"Amount",?60,"Number",?72,"Amount",! ;IHS/DIT/CPC - 20180427 CR9580 BAR*1.8*28
 W BAR("DASH"),!
 Q
CENTER(X) ;EP
 ;S CENTER=IOM/2  ;IHS/DIT/CPC - 20180427 CR9580 BAR*1.8*28
 S CENTER=$S($D(BAR(132)):132,1:80)/2  ;IHS/DIT/CPC - 20180427 CR9580 BAR*1.8*28
 W ?CENTER-($L(X)/2),X
 Q
CLEANUP ;CLEAN VARIABLES
 K BAREND,DIC,DIR
 Q
 ;EOR - IHS/DIT/CPC 1.8*28

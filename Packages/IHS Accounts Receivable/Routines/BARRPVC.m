BARRPVC ; IHS/SD/SDR - Provider Visit Count Report ;08/20/2008
 ;;1.8;IHS ACCOUNTS RECEIVABLE;**28**;OCT 26, 2005;Build 92
 ;IHS/SD/SDR 1.8*28 CR8398 HEAT301053 - new routine.  Report of MACRA reporting.  Prompts for approval or visit date, date range,
 ;  inpatient/outpatient/both, and providers.  It will find all A/R Accounts with insurer type MEDICARE FI, and report
 ;  a summary line with a breakdown by bill type, visit type for each.
 ;
 Q
 ;*****************************************
EN ;
 W !!,"NOTE:  This report will contain data for all Visit Locations where a provider"
 W !?7,"saw Medicare patients.  There will be a summary line for each provider"
 W !?7,"under each Visit Location, with detail lines underneath that breaks down"
 W !?7,"the data further by bill type and visit type."
 ;
 K ^TMP($J,"BAR-PVC-TEST"),^TMP($J,"BAR-PVC"),^TMP($J,"BAR-PVC-LOC")
 S BARDONE=0
 D:'$D(BARUSR) INIT^BARUTL  ;Setup basic A/R variables
 D DTYP  ;approval or visit date
 I $D(DUOUT)!$D(DTOUT)!$D(DIROUT)!$D(DIRUT) S BARDONE=1 Q
 D DATES  ;prompt for dates
 I '$D(BARY("DT"))!'$D(BARY("DT",1))!'$D(BARY("DT",2)) Q
 D INOUTPT  ;inpatient, outpatient, or both
 I $D(DUOUT)!$D(DTOUT)!$D(DIROUT)!$D(DIRUT) S BARDONE=1 Q
 D PRVS  ;what providers, default to ALL
 I $D(DUOUT)!$D(DTOUT)!$D(DIROUT)!$D(DIRUT) S BARDONE=1 Q
SEL ;Select device
 S %ZIS="Q"
 S %ZIS("A")="Enter DEVICE: "
 D ^%ZIS Q:POP
 I IO'=IO(0) D QUE,HOME^%ZIS S DIR(0)="E" D ^DIR K DIR Q
 S IOP=ION D ^%ZIS
 D PRINT
 Q
DTYP ;EP
 K BARY("DT"),BARSTART,BAREND
 S DIR(0)="SO^1:Approval Date;2:Visit Date"
 S DIR("A")="Select TYPE of DATE Desired"
 D ^DIR
 K DIR
 I $D(DUOUT)!$D(DTOUT)!$D(DIROUT)!$D(DIRUT) S BARDONE=1 Q
 S BARY("DT")=$S(Y=1:"A",1:"V")
 Q
DATES ;EP
 ; Ask beginning and ending Transaction Dates
 W !!," ============ Entry of "_$S(BARY("DT")="A":"APPROVAL",1:"VISIT")_" DATE Range =============",!
 K %D
 S BARSTART=$$DATE^BARDUTL(1)
 K %DT
 I BARSTART<1 Q
 S BAREND=$$DATE^BARDUTL(2)
 K %DT
 I BAREND<1 W ! G DATES
 I BAREND<BARSTART D  G DATES
 .W *7
 .W !!,"The END date must not be before the START date.",!
 S BARY("DT",1)=BARSTART
 S BARY("DT",2)=BAREND
 Q
INOUTPT ;EP
 K BARIOPT
 S DIR(0)="SO^1:Inpatient;2:Outpatient;3:Both Inpatient and Outpatient"
 S DIR("A")="Select Encounter Type Desired"
 D ^DIR
 K DIR
 I $D(DUOUT)!$D(DTOUT)!$D(DIROUT)!$D(DIRUT) S BARDONE=1 Q
 S BARY("INOUTPT")=Y
 Q
PRVS ;EP
 ; Select Provider Inclusion Parameter
 K BARZ("PRV")
 W !
 F  D  Q:Y<0!(BARDONE)
 .S DIC("A")="Select PROVIDER: "
 .D PRV^BARRSL1  ;IHS/DIT/CPC - 20180419 CR8398 BAR*1.8*28
 .;S DIC="^VA(200,"  
 .;S DIC("S")="I $D(^(""PS""))"
 .;S DIC("A")="Select PROVIDER: "
 .;I $D(BARY("PRV")) S DIC("A")="Select Another PROVIDER: "
 .;S DIC(0)="QEAM"
 .;D ^DIC
 .I $D(DUOUT)!$D(DTOUT)!$D(DIROUT)!$D(DIRUT) S BARDONE=1 Q
 .K DIC
 .S:+Y>0 BARZ("PRV",+Y)=""
 .I +Y<0,$D(BARZ("PRV")) Q
 .I +Y<0,'$D(BARZ("PRV")) D   ;IHS/DIT/CPC - 20180419 CR8398 BAR*1.8*28  ADD TO REPLACE ABOVE
 ..W "ALL",!
 ..S I=""
 ..F  S I=$O(^VA(200,"AK.PROVIDER",I)) Q:I=""  D
 ...S J=""
 ...F  S J=$O(^VA(200,"AK.PROVIDER",I,J)) Q:+J=0  D
 ....I $D(^VA(200,+J,"PS")) S BARZ("PRV",+J)=""   ;IHS/DIT/CPC - 20180419 CR8398 BAR*1.8*28 END ADD TO REPLACE ABOVE
 Q
QUE ;EP
 K IO("Q")
 S ZTRTN="PRINT^BARRPVC",ZTDESC="Provider Visit Count Report"
 S ZTSAVE("BAR*")=""
 D ^%ZTLOAD
 D ^%ZISC
 I $D(ZTSK)[0 W !!?5,"REPORT CANCELLED!"
 E  W !!?5,"REQUEST QUEUED AS TASK # "_ZTSK_" !",!
 Q
 ;
PRINT ;EP
 D LOOP
 ;
 S BAR("PG")=1
 D WHD
 S BARVLTOT("BILLS")=0
 S BARVLTOT("AMT")=0
 I $Y>(IOSL-5) D HD I $D(DUOUT)!$D(DTOUT)!$D(DIROUT)!$D(DIRUT) S BARDONE=1 Q
 S BAR("PRVN")=""
 F  S BAR("PRVN")=$O(^TMP($J,"BAR-PVC",BAR("PRVN"))) Q:BAR("PRVN")=""  D  I $D(DUOUT)!$D(DTOUT)!$D(DIROUT)!$D(DIRUT) S BARDONE=1 Q
 .;W !!,BAR("PRVN"),?30,$J(+$P($G(^TMP($J,"BAR-PVC",BAR("PRVN"))),U),10),?40,$J($FN(+$P($G(^TMP($J,"BAR-PVC",BAR("PRVN"))),U,2),",",2),16),?58,$J($FN(+$P($G(^TMP($J,"BAR-PVC",BAR("PRVN"))),U,3),",",2),16)
 .;W !!,$E(BAR("PRVN"),1,35),?38,$J(+$P($G(^TMP($J,"BAR-PVC",BAR("PRVN"))),U),10),?40,$J($FN(+$P($G(^TMP($J,"BAR-PVC",BAR("PRVN"))),U,2),",",2),16),?54,$J($FN(+$P($G(^TMP($J,"BAR-PVC",BAR("PRVN"))),U,3),",",2),16)
 .W !!,$E(BAR("PRVN"),1,35),?40,+$P($G(^TMP($J,"BAR-PVC",BAR("PRVN"))),U),?54,$FN(+$P($G(^TMP($J,"BAR-PVC",BAR("PRVN"))),U,2),",",2),?69,$FN(+$P($G(^TMP($J,"BAR-PVC",BAR("PRVN"))),U,3),",",2)
 .S BARVLTOT("BILLS")=+$G(BARVLTOT("BILLS"))+$P($G(^TMP($J,"BAR-PVC",BAR("PRVN"))),U)
 .S BARVLTOT("AMT")=+$G(BARVLTOT("AMT"))+$P($G(^TMP($J,"BAR-PVC",BAR("PRVN"))),U,2)
 .S BAR("BTYP")=0
 .S BAR("BTYPTEST")=0
 .F  S BAR("BTYP")=$O(^TMP($J,"BAR-PVC",BAR("PRVN"),BAR("BTYP"))) Q:'BAR("BTYP")  D  I $D(DUOUT)!$D(DTOUT)!$D(DIROUT)!$D(DIRUT) S BARDONE=1 Q
 ..S BAR("BTYPTEST")=1
 ..W !?3,"Bill Type: "_$S(BAR("BTYP")="999999":"UNK",1:BAR("BTYP"))  ;IHS/DIT/CPC - 20180419 CR8398 BAR*1.8*28
 ..S BAR("VTYP")=0
 ..S BAR("VTYPTEST")=0
 ..F  S BAR("VTYP")=$O(^TMP($J,"BAR-PVC",BAR("PRVN"),BAR("BTYP"),BAR("VTYP"))) Q:'BAR("VTYP")  D  I $D(DUOUT)!$D(DTOUT)!$D(DIROUT)!$D(DIRUT) S BARDONE=1 Q
 ...S BAR("VTYPTEST")=1
 ...W !?5,"Visit Type: ",BAR("VTYP")_" "_$E($$GET1^DIQ(9002274.8,BAR("VTYP"),".01","E"),1,16)
 ...W ?38,$J(+$P($G(^TMP($J,"BAR-PVC",BAR("PRVN"),BAR("BTYP"),BAR("VTYP"))),U),8)
 ...W ?50,$J($FN(+$P($G(^TMP($J,"BAR-PVC",BAR("PRVN"),BAR("BTYP"),BAR("VTYP"))),U,2),",",2),16)
 ...W ?66,$J($FN(+$P($G(^TMP($J,"BAR-PVC",BAR("PRVN"),BAR("BTYP"),BAR("VTYP"))),U,3),",",2),14)
 ...I $Y>(IOSL-5) D HD
 ...I $D(DUOUT)!$D(DTOUT)!$D(DIROUT)!$D(DIRUT) S BARDONE=1 Q
 W !!
 ;
NODATA ;
 S I=""
 F  S I=$O(BARZ("PRV",I)) Q:I=""!BARDONE  D
 .I +$G(BARZ("PRV",I))=0 W !!,"No data for Provider "_$$GET1^DIQ(200,I,".01","E"),!   ;IHS/DIT/CPC - 20180419 CR8398 BAR*1.8*28
 .I $Y>(IOSL-5) D HD
 .I $D(DUOUT)!$D(DTOUT)!$D(DIROUT)!$D(DIRUT) S BARDONE=1 Q
 S I=""
 F  S I=$O(^TMP($J,"BAR-PVC-LOC",I)) Q:+I=0!BARDONE  D
 .I $Y>(IOSL-5) D HD
 .W !!,"Total: "_$$GET1^DIQ(90052.05,I,.01,"E"),?40,$P(^TMP($J,"BAR-PVC-LOC",I),U,2),?54,$FN(+$P($G(^TMP($J,"BAR-PVC-LOC",I)),U,3),",",2),?69,$FN(+$P($G(^TMP($J,"BAR-PVC-LOC",I)),U,4),",",2),!
 .I $D(DUOUT)!$D(DTOUT)!$D(DIROUT)!$D(DIRUT) S BARDONE=1 Q
 W !!,"REPORT COMPLETE"
 D ^%ZISC
 K ^TMP($J,"BAR-PVC")
 D CLNUP
 Q
 ;
LOOP ;EP
 ;find all A/R Accounts that are insurers with insurer type Medicare FI
 K ^TMP($J,"BAR-PVC")
 S BARACCT=0
 F  S BARACCT=$O(^BARAC(DUZ(2),BARACCT)) Q:'BARACCT  D
 .I $P($G(^BARAC(DUZ(2),BARACCT,0)),U)'["AUTNINS" Q  ;insurers only
 .S D0=BARACCT
 .S BARITYP=$$VALI^BARVPM(8)   ;GET 'VIP INSURER TYPE' CODE (NUMBER)
 .I BARITYP'="R" Q
 .S BARY("ACCT",BARACCT)=""
 ;now go find all A/R Bills with those A/R Accounts
 S BARACCT=0
 F  S BARACCT=$O(BARY("ACCT",BARACCT)) Q:'BARACCT  D
 .S BAR=0
 .F  S BAR=$O(^BARBL(DUZ(2),"D",BARACCT,BAR)) Q:'BAR  D
 ..D BILL
 ..Q:'BARP("HIT")
 ..S:(+BAR("PRV")'=0) BAR("PRVN")=$$GET1^DIQ(200,BAR("PRV"),".01","E")
 ..S:(+BAR("PRV")'=0) BARZ("PRV",BAR("PRV"))=BARZ("PRV",BAR("PRV"))+1    ;IHS/DIT/CPC - 20180419 CR8398 BAR*1.8*28
 ..D TRANS  ;look for pymts, pymt credits on bill
 ..S $P(^TMP($J,"BAR-PVC",BAR("PRVN")),U)=+$P($G(^TMP($J,"BAR-PVC",BAR("PRVN"))),U)+1
 ..S $P(^TMP($J,"BAR-PVC",BAR("PRVN")),U,2)=+$P($G(^TMP($J,"BAR-PVC",BAR("PRVN"))),U,2)+BAR("AMT")
 ..S $P(^TMP($J,"BAR-PVC",BAR("PRVN")),U,3)=+$P($G(^TMP($J,"BAR-PVC",BAR("PRVN"))),U,3)+BARTRAMT
 ..S $P(^TMP($J,"BAR-PVC",BAR("PRVN"),BAR("BTYP"),BAR("VTYP")),U)=+$P($G(^TMP($J,"BAR-PVC",BAR("PRVN"),BAR("BTYP"),BAR("VTYP"))),U)+1
 ..S $P(^TMP($J,"BAR-PVC",BAR("PRVN"),BAR("BTYP"),BAR("VTYP")),U,2)=+$P($G(^TMP($J,"BAR-PVC",BAR("PRVN"),BAR("BTYP"),BAR("VTYP"))),U,2)+BAR("AMT")
 ..S $P(^TMP($J,"BAR-PVC",BAR("PRVN"),BAR("BTYP"),BAR("VTYP")),U,3)=+$P($G(^TMP($J,"BAR-PVC",BAR("PRVN"),BAR("BTYP"),BAR("VTYP"))),U,3)+BARTRAMT
 ..S $P(^TMP($J,"BAR-PVC-LOC",BAR("VLOC")),U,1)=BAR("VLOC")
 ..S $P(^TMP($J,"BAR-PVC-LOC",BAR("VLOC")),U,2)=$P(^TMP($J,"BAR-PVC-LOC",BAR("VLOC")),U,2)+1           ;VISIT LOCATION COUNT  ;IHS/DIT/CPC CR8398 BAR*1.8*28
 ..S $P(^TMP($J,"BAR-PVC-LOC",BAR("VLOC")),U,3)=$P(^TMP($J,"BAR-PVC-LOC",BAR("VLOC")),U,3)+BAR("AMT")  ;VISIT LOCATION BILLED ;IHS/DIT/CPC CR8398 BAR*1.8*28
 ..S $P(^TMP($J,"BAR-PVC-LOC",BAR("VLOC")),U,4)=$P(^TMP($J,"BAR-PVC-LOC",BAR("VLOC")),U,4)+BARTRAMT    ;VISIT LOCATION PAID   ;IHS/DIT/CPC CR8398 BAR*1.8*28
 ..I $G(BARDEBUG) S ^TMP($J,"BAR-PVC-TEST",BAR("PRVN"),BAR("BTYP"),BAR("VTYP"),BAR("DOS"),BAR)=BAR("AMT")_U_BARTRAMT  ;for validation
 Q
BILL ;EP
 ; for checking Bill File data parameters
 S BARP("HIT")=0
 S BAR("QUIT")=0
 S BAR(0)=$G(^BARBL(DUZ(2),BAR,0))  ;A/R Bill 0 node
 S BAR(1)=$G(^BARBL(DUZ(2),BAR,1))  ;A/R Bill 1 node
 S BAR("VTYP")=$P(BAR(1),U,14)         ;Visit type (3P Visit Type)
 S BAR("BTYP")=+$$GET1^DIQ(90050.01,BAR,27)
 S:'BAR("BTYP") BAR("BTYP")="999999"  ;Bill type unknown 
 S BAR("VLOC")=$P(BAR(1),U,8)          ;Visit location (A/R Parent/Sat)
 S BAR("ACC")=$P(BAR(0),U,3)          ;A/R Account
 S BAR("DOS")=$P(BAR(1),U,2)          ;DOS Begin
 S BAR("ADT")=$P(BAR(0),U,18)         ;3P Approval date
 S BAR("PRV")=$P(BAR(1),U,13)        ;Provider (New Person)
 S BAR("AMT")=$P(BAR(0),U,13)  ;Amount Billed
 ;
 ;S BARDEBUG=1
 I +BAR("PRV")=0 S BAR("PRVN")="NO PROVIDER"  ;no provider on bill
 I $D(BAR("PRV")),'$D(BARZ("PRV",+BAR("PRV"))) D  Q   ;Not a selected provider
 .I $G(BARDEBUG) S ^TMP($J,"BAR-PVC-TEST","REASON REJECTED","NOT SELECTED PROVIDER",BAR)=""
 ;
 I $G(BARY("DT"))="V" D  Q:$G(BAR("QUIT"))      ; Not chosen visit date
 .S:BAR("DOS")<BARY("DT",1) BAR("QUIT")=1
 .S:BAR("DOS")>BARY("DT",2) BAR("QUIT")=1
 .I $G(BAR("QUIT")) I $G(BARDEBUG) S ^TMP($J,"BAR-PVC-TEST","REASON REJECTED","NOT CHOSEN VISIT DATE",BAR)=""
 ;
 I $G(BARY("DT"))="A" D  Q:$G(BAR("QUIT"))      ; Not chosen approval dt
 .S:BAR("ADT")<BARY("DT",1) BAR("QUIT")=1
 .S:$P(BAR("ADT"),".")>BARY("DT",2) BAR("QUIT")=1
 .I $G(BAR("QUIT")) I $G(BARDEBUG) S ^TMP($J,"BAR-PVC-TEST","REASON REJECTED","NOT CHOSEN APPROVAL DATE",BAR)=""
 ;
 I "^11^12^71^72^"[("^"_$E(BAR("BTYP"),1,2)_"^"),BARY("INOUTPT")=2 Q  ;inpt but user selected outpt for report
 I "^11^12^71^72^"'[("^"_$E(BAR("BTYP"),1,2)_"^"),BARY("INOUTPT")=1 Q  ;outpt but user selected inpt for report
 ;
 S BARP("HIT")=1
 Q
TRANS ;EP
 S BARTRIEN=0
 S BARTRAMT=0
 F  S BARTRIEN=$O(^BARTR(DUZ(2),"AC",BAR,BARTRIEN)) Q:'BARTRIEN  D
 .I (($P($G(^BARTR(DUZ(2),BARTRIEN,1)),U)'=40)&($P($G(^BARTR(DUZ(2),BARTRIEN,1)),U,2)'=20)) Q  ;pymt or pymt credits only
 .S BARTRAMT=+$G(BARTRAMT)+($$GET1^DIQ(90050.03,BARTRIEN,3.5,"E"))  ;credit-debit
 Q
HD ;
 D PAZ^BARRUTL I $D(DUOUT)!$D(DTOUT)!$D(DIROUT)!$D(DIRUT) S BARDONE=1 Q
WHD ;
 ; Set header Array
 NEW I
 S BAR("HD",0)="Provider Visit Count Report"
 S BAR("HD",1)="For Medicare"
 S BAR("HD",2)="at ALL Visit Locations under "_$P($G(^AUTTLOC(DUZ(2),0)),U,2)_" Billing Location"
 S BAR("HD",3)="with "_$S(BARY("DT")="A":"APPROVAL",1:"VISIT")_ " DATES from "_$$SDT^BARDUTL(BARY("DT",1))_" to "_$$SDT^BARDUTL(BARY("DT",2))
 S BAR("HD",4)="for "_$S(BARY("INOUTPT")=1:"INPATIENT",BARY("INOUTPT")=2:"OUTPATIENT",1:"ALL")_" BILL TYPES"
 S BAR("LVL")=0
 S BAR("CONJ")=""
 D WHD^BARRHD
 W !,"Provider",?40,"Bill Count",?54,"Amount Billed",?69,"Amount Paid",!
 F I=1:1:80 W "="
 S BAR("PG")=BAR("PG")+1
 Q
CLNUP  ;IHS/DIT/CPC - 20180419 CR8398 BAR*1.8*28
 K BAR,BAR3PLOC,BARACCT,BARDONE,BAREND,BARHOLD,BARITYP,BARP,BARSTART,BARTRAMT
 K BARTRIEN,BARVLTOT,BARY,BARZ,D0,DIC,DIQ,DR,I,J,L,X,Y
 Q
 ;EOR - IHS/DIT/CPC 1.8*28

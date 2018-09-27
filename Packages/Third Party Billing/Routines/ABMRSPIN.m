ABMRSPIN ; IHS/SD/SDR - Claims Identified as Potential Split Billing Report; 
 ;;2.6;IHS 3P BILLING SYSTEM;**22**;NOV 12, 2009;Build 418
 ;IHS/SD/SDR 2.6*22 HEAT335246 - New routine
 ;
 Q
START ;
 S ABMP("RTN")="ABMRSPIN"    ;Routine used to get data
 S ABMMENU="Claims ID'd as Potential Split Billing Report"
 K ^TMP("ABM-SPIN",$J),^TMP("ABM-SPIN-DATA",$J),^TMP("ABM-SPIN-CNT",$J)
SEL ;
 K ABMY,ABM
 K DTOUT,DIRUT,DUOUT,DIROUT
 I $D(ABMY("RTYP")) S ABM("HD",0)=ABMY("RTYP","NM")_" "_ABMMENU
 E  S ABM("HD",0)=ABMMENU
 W !!,"This report will look through claims/bills based on the selection criteria"
 W !,"chosen and report any claims that match.  This report is meant as a tool for the"
 W !,"user to identify potential bills that can be split for further billing due to"
 W !,"multiple entries in V-files."
 W !!,"NOTE:  all prompts are required"
 W !
 D INS  ;select insurer(s)
 I '$D(ABMY("INS")) Q  ;no insurer was selected
 Q:$D(DTOUT)!$D(DUOUT)!$D(DIROUT)!$D(DIRUT)
 D DT  ;select visit or approval date range
 I '$D(ABMY("DT",1)) Q  ;no dates were entered
 D CLMSTAT  ;What claim status (Open, complete, or both)
 I '$D(ABMY("STA")) Q  ;no claim status was selected
 Q:$D(DTOUT)!$D(DUOUT)!$D(DIROUT)
 D PGS  ;what pages do you want to split (8D, 8E, 8F, 8H, 8Z)
 I '$D(ABMY("PGS")) Q  ;no pages were selected
 Q:$D(DTOUT)!$D(DUOUT)!$D(DIROUT)
 D RTYP  ;brief or statistical
 I '$D(ABMY("RTYP")) Q  ;no format was selected
 ;
 W !!,"You selected: "
 W !?3,"Insurers: "
 S ABMI=0
 F  S ABMI=$O(ABMY("INS",ABMI)) Q:'ABMI  W !?6,$P($G(^AUTNINS(ABMI,0)),U)
 W !?3,$S(ABMY("DT")="V":"Visit",1:"Approval")_" Dates: ",$$SDT^ABMDUTL(ABMY("DT",1))_" to "_$$SDT^ABMDUTL(ABMY("DT",2))
 W !?3,"Claim Status: "
 F ABMI=1:1:$L(ABMY("STA","NM"),",")  W !?6,$$TRIM^ABMUTLP($P(ABMY("STA","NM"),",",ABMI),"L")
 W !?3,"Check pages: "_$E($TR(ABMY("PGS"),"^",","),2,($L(ABMY("PGS"))-1))
 W !?3,"Report Type: "_$S(ABMY("RTYP")=2:"Statistical Summary Only",1:"Brief Listing"),!!
 S DIR(0)="Y",DIR("A")="Do you wish to continue" D ^DIR K DIR
 Q:$D(DTOUT)!$D(DUOUT)!$D(DIROUT)!$D(DIRUT)
 I 'Y G SEL  ;start over if they say NO
 ;
 S %ZIS="QM"
 D ^%ZIS Q:POP
 I $D(IO("Q")) D  Q
 .S ZTRTN="PRINT^ABMRSPIN",ZTDESC=XQY0
 .S ZTSAVE("ABM*")=""
 .D ^%ZTLOAD
 .I $D(ZTSK)[0 W !!?5,"Report Cancelled!"
 .E  W !!?5,"Report queued to run on ",ZTSK," #"
 .D HOME^%ZIS
 .K IO("Q")
 U IO
 D COMPUTE
 D PRINT
 D ^%ZISC
 D HOME^%ZIS
 Q
PRINT ;
 S ABM("HD",1)="with "_$S(ABMY("DT")="V":"Visit",1:"Approval")_" Dates from "_$$SDT^ABMDUTL(ABMY("DT",1))_" to "_$$SDT^ABMDUTL(ABMY("DT",2))
 S ABM("HD",1)=ABM("HD",1)_" AND for page"_$S(($L(ABMY("PGS"),"^")>3):"s",1:"")_" "_$E($TR($G(ABMY("PGS")),"^",","),2,$L(ABMY("PGS"))-1)
 S ABM("HD",2)="for insurer"_$S((+$G(ABMY("INS"))>1):"s",1:"")_" "
 S ABMI=0
 S ABMJ=0
 F  S ABMI=$O(ABMY("INS",ABMI)) Q:'ABMI  S ABM("HD",2)=ABM("HD",2)_$S(ABMJ=1:", ",1:"")_$P($G(^AUTNINS(ABMI,0)),U) S ABMJ=1
 S ABM("PG")=0
 ;
 I ABMY("RTYP")'=1 D SUMMARY Q  ;summary, not detail
 D HDB
 S ABMP("VLOC")=""
 S (ABM("CNT"),ABM("SUBCNT"))=0,(ABM("L"),ABM("V"))=""
 F  S ABMP("VLOC")=$O(^TMP("ABM-SPIN",$J,ABMP("VLOC"))) Q:($G(ABMP("VLOC"))="")  D  Q:$D(DTOUT)!$D(DUOUT)!$D(DIROUT)!$D(DIRUT)
 .Q:ABMP("VLOC")="VLST"  ;other data in same array; don't print it
 .Q:ABMP("VLOC")="VSTS"  ;other data in array
 .D LOC
 .I $Y>(IOSL-5) D HD Q:$D(DTOUT)!$D(DUOUT)!$D(DIROUT)!$D(DIRUT)  D LOC W " (cont)"
 .S ABMP("VTYP")=""
 .F  S ABMP("VTYP")=$O(^TMP("ABM-SPIN",$J,ABMP("VLOC"),ABMP("VTYP"))) Q:($G(ABMP("VTYP"))="")  D  Q:$D(DTOUT)!$D(DUOUT)!$D(DIROUT)!$D(DIRUT)
 ..D VTYP
 ..I $Y>(IOSL-5) D HD Q:$D(DTOUT)!$D(DUOUT)!$D(DIROUT)!$D(DIRUT)  D VTYP W " (cont)"
 ..S ABMP("SDT")=0
 ..F  S ABMP("SDT")=$O(^TMP("ABM-SPIN",$J,ABMP("VLOC"),ABMP("VTYP"),ABMP("SDT"))) Q:'ABMP("SDT")  D  Q:$D(DTOUT)!$D(DUOUT)!$D(DIROUT)!$D(DIRUT)
 ...S ABMP("CDFN")=0
 ...F  S ABMP("CDFN")=$O(^TMP("ABM-SPIN",$J,ABMP("VLOC"),ABMP("VTYP"),ABMP("SDT"),ABMP("CDFN"))) Q:'ABMP("CDFN")  D  Q:$D(DTOUT)!$D(DUOUT)!$D(DIROUT)!$D(DIRUT)
 ....S ABMPREC=$G(^TMP("ABM-SPIN",$J,ABMP("VLOC"),ABMP("VTYP"),ABMP("SDT"),ABMP("CDFN")))
 ....W !,$P(ABMPREC,U)  ;claim/bill status
 ....S ABMSSTAT=$P(ABMPREC,U,2)
 ....W ?4,$S(ABMSSTAT="O":"Orig",ABMSSTAT="S":"Splt",ABMSSTAT="A":"Auto",1:"N/A")
 ....W ?9,$E($P(ABMPREC,U,3),1,10)  ;patient name
 ....W ?21,$P(ABMPREC,U,4)  ;HRN
 ....W ?28,$E($P(ABMPREC,U,5),1,12)  ;active insurer
 ....W ?41,$P(ABMPREC,U,6)
 ....W ?53,$$SDTO^ABMDUTL(ABMP("SDT"))  ;visit date
 ....W ?63,$P(ABMPREC,U,8)  ;8D
 ....W ?67,$P(ABMPREC,U,9)  ;8E
 ....W ?71,$P(ABMPREC,U,10)  ;8F
 ....W ?75,$P(ABMPREC,U,11)  ;8H
 ....S ABM("SUBCNT")=+$G(ABM("SUBCNT"))+1
 ....S ABM("CNT")=+$G(ABM("CNT"))+1
 ....I $Y>(IOSL-5) D HD Q:$D(DTOUT)!$D(DUOUT)!$D(DIROUT)!$D(DIRUT)  D LOC,VTYP W " (cont)"
 ..D SUB
 W !?44,"======"
 W !?35,"Total:",?45,$FN(ABM("CNT"),",",0)
 D ^%ZISC
 D PAZ^ABMDRUTL
 Q
SUMMARY ;
 D HDB
 S ABMP("VLOC")=""
 S (ABM("CNT"),ABM("SUBCNT"))=0,(ABM("L"),ABM("V"))=""
 F  S ABMP("VLOC")=$O(^TMP("ABM-SPIN",$J,ABMP("VLOC"))) Q:($G(ABMP("VLOC"))="")  D
 .Q:ABMP("VLOC")="VLST"  ;other data in same array; don't print it
 .Q:ABMP("VLOC")="VSTS"  ;other data in array
 .W !?4,ABMP("VLOC")
 .I $Y>(IOSL-5) D HD Q:$D(DTOUT)!$D(DUOUT)!$D(DIROUT)!$D(DIRUT)  D LOC W " (cont)"
 .S ABMP("VTYP")=""
 .F  S ABMP("VTYP")=$O(^TMP("ABM-SPIN",$J,ABMP("VLOC"),ABMP("VTYP"))) Q:($G(ABMP("VTYP"))="")  D
 ..W !?40,ABMP("VTYP")
 ..W ?65,$G(^TMP("ABM-SPIN",$J,ABMP("VLOC"),ABMP("VTYP")))
 ..S ABM("CNT")=+$G(ABM("CNT"))+$G(^TMP("ABM-SPIN",$J,ABMP("VLOC"),ABMP("VTYP")))
 W !?65,"======"
 W !?58,"Total:",?65,$FN(ABM("CNT"),",",0)
 D ^%ZISC
 Q
HD ;
 D PAZ^ABMDRUTL Q:$D(DTOUT)!$D(DUOUT)!$D(DIROUT)!$D(DIRUT)
HDB ;
 S ABM("PG")=ABM("PG")+1 D WHD^ABMDRHD
 I ABMY("RTYP")=1 W !?63," - - PAGE - - ",!,"ST",?4,"O/S",?9,"Patient",?21,"HRN",?28,"Active Insurer",?41,"Claim#",?53,"Visit Dt",?63,"D",?67,"E",?71,"F",?75,"H",!
 E  W !,"Location",?40,"Visit Type",?65,"# Claims",!
 F I=1:1:80 W "-"
 Q
LOC ;
 W !?3,"Visit Location: ",ABMP("VLOC")
 Q
VTYP ;
 W !?5,"Visit Type: ",ABMP("VTYP")
 Q
SUB ;
 Q:'ABM("SUBCNT")
 W !?46,"------"
 W !?37,"Subtotal:",?50,$FN(ABM("SUBCNT"),",",0)
 S ABM("SUBCNT")=0
 Q
COMPUTE ;
 ;search by visit date range
 K ^TMP("ABM-SPIN-DATA",$J)
 K ^TMP("ABM-SPIN",$J,"VLST")  ;this will be a list of counters
 I ABMY("DT")="V" D VISIT^ABMRSPI1 Q
 ;search by approval date range
 I ABMY("DT")="A" D APPROVAL^ABMRSPI1
 Q
INS ;EP
 K ABMY("INS")
 W !!,"Insurers selected here MUST be the active insurer in order for claims/bills"
 W !,"to display on the report!",!
 F  D  Q:(+Y<0&(X=""))!$D(DUOUT)!$D(DTOUT)!$D(DIROUT)!$D(DIRUT)
 .D ^XBFMK
 .S DIC="^AUTNINS("
 .S DIC(0)="QEAMZ"
 .D ^DIC
 .Q:$D(DUOUT)!$D(DTOUT)!$D(DIROUT)!$D(DIRUT)
 .Q:+Y<0
 .;check if the insurer they selected is merged
 .I $$GET1^DIQ(9999999.18,+Y,".27","E")'="" D  Q:(+Y<1)!$D(DUOUT)!$D(DTOUT)!$D(DIROUT)!$D(DIRUT)
 ..W !!!,"The insurer you selected has been merged into insurer "_$$GET1^DIQ(9999999.18,+Y,".27","E")
 ..S ABMITMP=+Y
 ..D ^XBFMK
 ..S DIR(0)="Y",DIR("A")="Do you wish to continue" D ^DIR K DIR
 ..Q:+Y<1
 ..S Y=ABMITMP
 .S ABMY("INS",+Y)=""
 .S ABMY("INS")=+$G(ABMY("INS"))+1
 Q
DT ;EP
 D ^XBFMK
 K ABMY("DT")
 I $G(ABM("DT"))="C" S Y=4 G DTYP
 I $D(ABM("STA")),($G(ABM("STA"))'="M") S Y=2 G DTYP
 S DIR(0)="S^1:Approval Date;2:Visit Date"
 G DDIR:$G(ABMP("TYP"))=2
 I $G(ABM("STA"))="M" G DTYP2
 ;
DDIR ;
 S DIR("A")="Select TYPE of DATE Desired"
 D ^DIR
 Q:$D(DIROUT)!$D(DIRUT)
 I Y=3 S Y=$S(DIR(0)["Pay":5,1:3)
 ;
DTYP ;
 Q:$D(DIRUT)
 S ABMY("DT")=$S(Y=1:"A",1:"V")
 S Y=$S(Y=1:"APPROVAL",1:"VISIT")_" DATE"
 W !!," ============ Entry of ",Y," Range =============",!
 S DIR("A")="Enter STARTING "_Y
 S DIR(0)="DO^::EP"
 D ^DIR
 G DT:$D(DIRUT)
 S ABMY("DT",1)=Y
 W !
 S DIR("A")="Enter ENDING DATE"
 D ^DIR
 K DIR
 G DT:$D(DIRUT)
 S ABMY("DT",2)=Y
 I ABMY("DT",1)>ABMY("DT",2) W !!,*7,"INPUT ERROR: Start Date is Greater than than the End Date, TRY AGAIN!",!! G DT
 Q
CLMSTAT ;
 D ^XBFMK
 I ABMY("DT")="V" D
 .S DIR(0)="SO^F:Flagged as Billable;E:In Edit Mode;O:ROLLED-In Edit Mode;P:Pending;C:Completed;U:Uneditable (Billed);X:Closed"
 .S DIR("A")="Select TYPE of CLAIM STATUS to Display"
 I ABMY("DT")="A" D
 .S DIR(0)="SO^A:Approved;B:Billed;C:Completed;X:Cancelled"
 .S DIR("A")="Select TYPE of BILL STATUS to Display"
 F  D   Q:$D(DIRUT)!$D(DIROUT)
 .D ^DIR
 .Q:$D(DIRUT)!$D(DIROUT)
 .Q:$G(ABMY("STA"))[Y  ;they already selected this status; don't save it again
 .S ABMY("STA")=$G(ABMY("STA"))_"^"_Y
 .S ABMY("STA","NM")=$G(ABMY("STA","NM"))_$S($G(ABMY("STA","NM"))'="":", ",1:"")_Y(0)
 K DIR
 Q
PGS ;
 S ABMSTRG=""
 S DIR(0)="SO^8D:MEDICATIONS;8E:LABORATORY;8F:RADIOLOGY;8H:HCPCS;8Z:ALL"
 S DIR("A")="Move Which Section(s)? "
 F  D  Q:(('Y)!(Y["8Z"))
 .D ^DIR
 .Q:'Y
 .Q:$G(ABMY("PGS"))[Y  ;quit if they already selected this page
 .S ABMY("PGS")=$S($G(ABMY("PGS"))="":"^"_Y,1:ABMY("PGS")_"^"_Y)
 S:$G(ABMY("PGS"))'="" ABMY("PGS")=ABMY("PGS")_"^"
 Q
RTYP ;EP
 K DIR
 S DIR(0)="SO^1:BRIEF LISTING (80 Width);2:STATISTICAL SUMMARY ONLY"
 S DIR("A")="Select TYPE of LISTING to Display"
 S DIR("B")=1
 D ^DIR
 K DIR
 Q:$D(DIRUT)
 S ABMY("RTYP")=Y
 S ABM("RTYP","NM")=Y(0)
 Q

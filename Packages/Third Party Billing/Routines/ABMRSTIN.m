ABMRSTIN ; IHS/SD/SDR - Split Claim Billing; 
 ;;2.6;IHS 3P BILLING SYSTEM;**22**;NOV 12, 2009;Build 418
 ;IHS/SD/SDR 2.6*22 HEAT335246 - New routine
 ;
 Q
START ;
 S ABMP("RTN")="ABMRSTIN"    ;Routine used to get data
 S ABMMENU="Split Claim Billing Report"
 K ^TMP("ABM-SPIN",$J)  ;this is from routine ABMRSPIN to gather data before splitting
 K ^TMP("ABM-SPIN-DATA",$J)  ;detail from ABMRSPIN
 K ^TMP("ABM-SPIN-CNT",$J)
 K ^TMP("ABM-STIN",$J)
 K ABMY,ABM
 K DTOUT,DIRUT,DUOUT,DIROUT
 I $D(ABMY("RTYP")) S ABM("HD",0)=ABMY("RTYP","NM")_" "_ABMMENU
 E  S ABM("HD",0)=ABMMENU
 W !!,"This menu option is going to take one claim and split it as many times as"
 W !,"necessary to get either 1) one claim with one claim editor page of line items"
 W !,"OR 2) one claim with 1 line item charge.  The user will be prompted if they"
 W !,"want the system to automatically find the claims, or if they would rather do"
 W !,"it manually, one claim at a time.  Either way, the user will get messages"
 W !,"to the screen telling them the new claim numbers that generated based on"
 W !,"their selection."
 W !!,"This option should be used VERY CAUTIOUSLY since it could generate a LOT of"
 W !,"claims based on how the prompts are answered."
 ;
MANORAUT ;
 D ^XBFMK
 S DIR(0)="SO^A:Automatically find and split claims;M:Manually select claims one at a time to split"
 S DIR("A")="Select"
 D ^DIR
 Q:$D(DIRUT)!$D(DIROUT)!$D(DTOUT)!$D(DUOUT)
 S ABMY("SPLIT")=Y
 I ABMY("SPLIT")="M" D MANUAL Q  ;prompt user to split one claim one at a time
 I ABMY("SPLIT")="A" D AUTO Q  ;split multiple claims/bills based on selection criteria
 Q
MANUAL ;EP
 K ABMP
MANUAL2 ;EP
 D ^ABMDEDIC  ;prompt for bill/claim number
 Q:$D(DIRUT)!$D(DIROUT)!$D(DTOUT)!$D(DUOUT)
 S ABMY("PGS")="^8Z^"  ;make it capture everything
 S ABMVSTCK=0  ;flag for if visit contains H or I visit
 D DATA2^ABMRSPI1  ;get list of files
 W !!
 W !,"ST",?4,"SelectedClm#",?17,"HRN",?24,"Active Insurer",?40,"Visit Date",?51,"VTYP",?56,"Clinic",?65,"ServCat (VST)",!
 F I=1:1:80 W "-"
 S ABMCS=$P($G(^ABMDCLM(DUZ(2),ABMP("CDFN"),0)),U,4)
 W !,$S(ABMCS="F":"FAB",ABMCS="E":"EDT",ABMCS="O":"ROL",ABMCS="C":"COM",ABMCS="P":"PEN",ABMCS="U":"UNB",ABMCS="X":"CLO",1:"")
 W ?4,ABMP("CDFN")
 W ?17,$P($G(^AUPNPAT($P($G(^ABMDCLM(DUZ(2),ABMP("CDFN"),0)),U),41,$P($G(^ABMDCLM(DUZ(2),ABMP("CDFN"),0)),U,3),0)),U,2)  ;HRN
 W ?24,$E($P($G(^AUTNINS($P($G(^ABMDCLM(DUZ(2),ABMP("CDFN"),0)),U,8),0)),U),1,15)  ;active insurer
 W ?40,$$SDTO^ABMDUTL($P($G(^ABMDCLM(DUZ(2),ABMP("CDFN"),0)),U,2))  ;visit date
 W ?51,$P($G(^ABMDCLM(DUZ(2),ABMP("CDFN"),0)),U,7)  ;visit type
 W ?56,$E($P($G(^DIC(40.7,$P($G(^ABMDCLM(DUZ(2),ABMP("CDFN"),0)),U,6),0)),U),1,8)  ;clinic
 S ABMV=0
 F  S ABMV=$O(^TMP("ABM-SPIN",$J,"VSTS",ABMV)) Q:'ABMV  W ?65,$G(^TMP("ABM-SPIN",$J,"VSTS",ABMV))_" ("_ABMV_")",!
 D VSTDISP^ABMRSTI1  ;display visit info
 ;
 K ABMCK
 I $P($G(^ABMDCLM(DUZ(2),ABMP("CDFN"),0)),U,22)'="" D SPLTCHK^ABMRSTI1  ;check if any portion of claim has already been split
 I $D(ABMCK) D CLMDISP^ABMRSTI1  ;if there are orig/split claims, display them
 ;
 I +$G(ABMVSTCK)=1 D  G MANUAL2
 .W !!?5,"At least one visit on this claim has a Service Category of"
 .W !?5,"Hospitalization (H) or In Hospital (I) and is therefore unsplittable",!!
 .H 2
 ;
 ;ask if they wish to continue since claim has already been split at least once
 I $D(ABMCK) D  G:Y<1 MANUAL
 .D ^XBFMK
 .S DIR(0)="Y",DIR("A")="This claim has already been split at least once.  Do you wish to continue" D ^DIR K DIR
 K ABMY("PGS")  ;reset because it was set to 8Z to pull everything for display first
 D PGS  ;have user select pages; will be in ABMY("PGS") variable
 I +$D(ABMY("PGS"))=0 Q  ;don't ask anything more if they didn't pick pages
 D SPLITHOW  ;do they want one claim per charge or one claim per category picked?
 I +$G(ABMY("SPLITHOW"))=0 Q
 D ASKDEL  ;ask if they want to delete sections after new claims are generated
 ;I +$G(ABMDLT)=0 Q
 Q:$D(DIRUT)!$D(DIROUT)!$D(DTOUT)!$D(DUOUT)
 K ^TMP("ABM-STIN",$J,"NEWCLMLST")
 D INSSTMP^ABMRSTI4  ;abm*2.6*22 IHS/SD/SDR CR9700
 D SPLITCLM^ABMRSTI2  ;creates the new claims and deletes from original
 S ABMCDFN=ABMP("CDFN")
 W $$EN^ABMVDF("IOF"),!
 W "Split complete.",!
 D PRINT2^ABMRSTI3  ;print claim summary with split info
 D PAZ^ABMDRUTL
 D ^XBFMK
 K ^TMP("ABM-SPIN",$J)  ;this is from routine ABMRSPIN to gather data before splitting
 K ^TMP("ABM-SPIN-DATA",$J)  ;detail from ABMRSPIN
 K ^TMP("ABM-SPIN-CNT",$J)
 K ^TMP("ABM-STIN",$J)
 K ABMY,ABM
 G MANUAL2
 Q
PGS ;
 S ABMSTRG=""
 S ABMPG=""
 S ABMPCNT=0
 S DIR(0)="SO^"
 F  S ABMPG=$O(^TMP("ABM-SPIN",$J,"VLST",ABMP("CDFN"),ABMPG)) Q:$G(ABMPG)=""  D
 .S DIR(0)=DIR(0)_ABMPG_":"_$S(ABMPG["D":"MEDICATIONS",ABMPG["E":"LABORATORY",ABMPG["F":"RADIOLOGY",1:"HCPCS")_";"
 .S ABMPCNT=+$G(ABMPCNT)+1  ;total pages to choose from
 S:$L(DIR(0),":")>2 DIR(0)=DIR(0)_"8Z:ALL"
 S DIR("A")="Move Which Section(s)? "
 S ABMTPCNT=0
 F  D  Q:(('Y)!(Y["8Z"))!(ABMTPCNT=ABMPCNT)
 .D ^DIR
 .Q:'Y
 .S ABMY("PGS")=$S($G(ABMY("PGS"))="":"^"_Y,1:ABMY("PGS")_"^"_Y)
 .S ABMTPCNT=+$G(ABMTPCNT)+1
 I $G(ABMY("PGS"))["8Z" D
 .K ABMY("PGS")
 .S ABMPG=""
 .F  S ABMPG=$O(^TMP("ABM-SPIN",$J,"VLST",ABMP("CDFN"),ABMPG)) Q:$G(ABMPG)=""  D
 ..S ABMY("PGS")=$G(ABMY("PGS"))_"^"_ABMPG
 S:$G(ABMY("PGS"))'="" ABMY("PGS")=ABMY("PGS")_"^"
 Q
SPLITHOW ;EP
 D ^XBFMK
 S DIR(0)="SO^C:1 Claim for each CHARGE;P:1 Claim for each PAGE"
 S DIR("A")="Split it how? "
 D ^DIR
 I $G(Y)=""!$D(DIRUT)!$D(DIROUT)!$D(DTOUT)!$D(DUOUT) Q  ;exit option if they '^'
 S ABMY("SPLITHOW")=$S(Y="C":1,1:2)
 Q
ASKDEL ;EP
 I ABMY("PGS")'["8Z" D  Q:$D(DIRUT)!$D(DIROUT)!$D(DTOUT)!$D(DUOUT)
 .S DIR(0)="Y",DIR("A")="Delete sections from original claim after split"
 .S DIR("B")="NO"
 .D ^DIR K DIR
 .Q:$D(DIRUT)!$D(DIROUT)!$D(DTOUT)!$D(DUOUT)
 .S:Y=1 ABMDLT=1
 Q
AUTO ;
 S ABMY("RTYP")=1
 D INS^ABMRSPIN  ;select insurer(s)
 I '$D(ABMY("INS")) Q  ;no insurer was selected
 Q:$D(DIRUT)!$D(DIROUT)!$D(DTOUT)!$D(DUOUT)
 D DT^ABMRSPIN  ;select visit or approval date range
 I '$D(ABMY("DT",1)) Q  ;no dates were entered
 Q:$D(DIRUT)!$D(DIROUT)!$D(DTOUT)!$D(DUOUT)
 D CLMSTAT^ABMRSPIN  ;What claim status (Open, complete, or both)
 I '$D(ABMY("STA")) Q  ;no claim status was selected
 Q:$D(DIROUT)!$D(DTOUT)!$D(DUOUT)
 D PGS^ABMRSPIN  ;what pages do you want to split (8D, 8E, 8F, 8H, 8Z)
 I '$D(ABMY("PGS")) Q  ;no pages were selected
 Q:$D(DIROUT)!$D(DTOUT)!$D(DUOUT)
 I ABMY("PGS")["8Z" S ABMY("PGS")="^8D^8E^8F^8H^"
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
 Q:$D(DUOUT)!$D(DTOUT)!$D(DIROUT)!$D(DIRUT)
 ;
 I Y S ABMANS="A"  ;they user said they want to continue, act like 'A'
 I 'Y D
 .K DIR,DIC,DIE,X,Y,DA,DR
 .S DIR(0)="S^E:Exit Report;R:Reselect Parameters;A:Accept selection and continue"
 .D ^DIR
 S ABMANS=Y
 K DIR
 I ABMANS="E" Q  ;exit report
 I ABMANS="R" G AUTO  ;reselect criteria
 ;note - ABMANS="A" should just continue on through code
 ;
 W !!,"Now searching for claims that meet the selected criteria . . ."
 K ^TMP("ABM-SPIN",$J,"VLST")  ;this will be a list of counters
 D COMPUTE^ABMRSPIN
 D SPLIT
 D ^XBFMK
 K ^TMP("ABM-SPIN",$J)  ;this is from routine ABMRSPIN to gather data before splitting
 K ^TMP("ABM-SPIN-DATA",$J)  ;detail from ABMRSPIN
 K ^TMP("ABM-SPIN-CNT",$J)
 K ^TMP("ABM-STIN",$J)
 K ABMY,ABM
 Q
SPLIT ;EP
 W !!,"OK, "_+$G(^TMP("ABM-SPIN-CNT",$J))_" claims were found to split."
 W !!
 I +$G(^TMP("ABM-SPIN-CNT",$J))=0 W "Exiting option since no claims were found matching selected criteria." D PAZ^ABMDRUTL Q
 D ^XBFMK
 S DIR(0)="Y",DIR("A")="Do you wish to continue" D ^DIR K DIR
 Q:+Y<1
 Q:$D(DIRUT)!$D(DIROUT)!$D(DTOUT)!$D(DUOUT)
 D SPLITHOW  ;do they want one claim per charge or one claim per category picked?
 Q:$D(DIRUT)!$D(DIROUT)!$D(DTOUT)!$D(DUOUT)
 D ASKDEL  ;ask if they want to delete sections after new claims are generated
 Q:$D(DIRUT)!$D(DIROUT)!$D(DTOUT)!$D(DUOUT)
 D INSSTMP^ABMRSTI4  ;stamp insurer with run info  ;abm*2.6*22 IHS/SD/SDR CR9700
 W !!,"Splitting claims..."
 ;loop thru claims and split them
 K ^TMP("ABM-STIN",$J,"NEWCLMLST")
 S ABMVLOC=""
 F  S ABMVLOC=$O(^TMP("ABM-SPIN",$J,ABMVLOC)) Q:$G(ABMVLOC)=""  D
 .S ABMVTYP=""
 .F  S ABMVTYP=$O(^TMP("ABM-SPIN",$J,ABMVLOC,ABMVTYP)) Q:$G(ABMVTYP)=""  D
 ..S ABMVDT=0
 ..F  S ABMVDT=$O(^TMP("ABM-SPIN",$J,ABMVLOC,ABMVTYP,ABMVDT)) Q:'ABMVDT  D
 ...S ABMP("CDFN")=0
 ...F  S ABMP("CDFN")=$O(^TMP("ABM-SPIN",$J,ABMVLOC,ABMVTYP,ABMVDT,ABMP("CDFN"))) Q:'ABMP("CDFN")  D
 ....K ABMP("VDETAIL")
 ....D SPLITCLM^ABMRSTI2
 D PRINT  ;output report of original and split claims
 Q
PRINT ;EP
 S DIR(0)="Y"
 S DIR("A","1")="Would you like a listing of the original claims and the new"
 S DIR("A")="associated claim numbers"
 D ^DIR K DIR
 Q:Y<1
 S %ZIS="QM"
 D ^%ZIS Q:POP
 I $D(IO("Q")) D  Q
 .S ZTRTN="PRINT^ABMRSTI3",ZTDESC=XQY0
 .S ZTSAVE("ABM*")=""
 .D ^%ZTLOAD
 .I $D(ZTSK)[0 W !!?5,"Report Cancelled!"
 .E  W !!?5,"Report queued to run on ",ZTSK," #"
 .D HOME^%ZIS
 .K IO("Q")
 D PRINT^ABMRSTI3
 D PAZ^ABMDRUTL
 Q

ABMRPVET ; IHS/SD/SDR - Vet w/Visit in Date Range Listing ;
 ;;2.6;IHS 3P BILLING SYSTEM;**12,21**;NOV 12, 2009;Build 379
 ;Original;SDR;
 ;IHS/SD/SDR - 2.6*21 - HEAT134720 - added total by visit location and how many registered patients for each
 ;   visit location
 ;
 K ABM,ABMY
 S ABM("RTYP","NM")="Vets with Visits Report"
 S ABM("PG")=0
 ;
SEL ;EP
 D DTYP
 Q:$D(DTOUT)!$D(DUOUT)!$D(DIROUT)!$D(DIRUT)
 S ABM("HD",0)="VET LISTING of VISITS"
 S ABM("HD",1)="For VISIT DATES: "_$$SDT^ABMDUTL(ABMY("DT",1))_" thru "_$$SDT^ABMDUTL(ABMY("DT",2))
 S $P(ABMLINE,"=",80)=""
 S ABMQ("RC")="COMPUTE^ABMRPVET"
 S ABMQ("RX")="POUT^ABMDRUTL"
 S ABMQ("NS")="ABM"
 S ABMQ("RP")="PRINT^ABMRPVET"
 D ^ABMDRDBQ
 Q
DTYP ;
 W !!," ============ Entry of VISIT DATE Range =============",!
 S DIR("A")="Enter STARTING VISIT DATE for the Report"
 S DIR(0)="DO^::EP"
 D ^DIR
 Q:$D(DTOUT)!$D(DUOUT)!$D(DIROUT)!$D(DIRUT)
 S ABMY("DT",1)=Y
 W !
 S DIR("A")="Enter ENDING DATE for the Report"
 D ^DIR
 K DIR
 G DTYP:$D(DIRUT)!$D(DTOUT)!$D(DUOUT)!$D(DIROUT)
 S ABMY("DT",2)=Y
 I ABMY("DT",1)>ABMY("DT",2) W !!,*7,"INPUT ERROR: Start Date is Greater than than the End Date, TRY AGAIN!",!! G DTYP
 Q
COMPUTE ;EP - Entry Point for Setting up Data
 S ABM("SUBR")="ABM-VET"
 K ^TMP($J,"ABM-VET")
DATA ;EP
 S ABMSTART=ABMY("DT",1)-.5
 S ABMEND=ABMY("DT",2)+.999999
 F  S ABMSTART=$O(^AUPNVSIT("B",ABMSTART)) Q:'ABMSTART!(ABMSTART>ABMEND)  D
 .S ABMVIEN=0
 .F  S ABMVIEN=$O(^AUPNVSIT("B",ABMSTART,ABMVIEN)) Q:'ABMVIEN  D
 ..S ABMPT=$$GET1^DIQ(9000010,ABMVIEN,".05","I")
 ..I $$GET1^DIQ(2,ABMPT,1901,"I")'="Y" Q  ;not a Vet
 ..S ^TMP($J,"ABM-VET",ABMPT)=+$G(^TMP($J,"ABM-VET",ABMPT))+1  ;visit count
 ..S ABMNAME=$$GET1^DIQ(2,ABMPT,".01","E")
 ..S ^TMP($J,"ABM-VET","S",ABMNAME)=ABMPT
 ..;start new abm*2.6*21 IHS/SD/SDR HEAT134720
 ..S ABMVLOC=$$GET1^DIQ(9000010,ABMVIEN,".06","I")
 ..S ^TMP($J,"ABM-VET","VTOT",ABMVLOC)=+$G(^TMP($J,"ABM-VET","VTOT",ABMVLOC))+1  ;count visits by site
 ..Q:+$G(^TMP($J,"ABM-VET","UNQ PTS",ABMVLOC,ABMPT))=1  ;pt already counted for visit location
 ..Q:'$D(^AUPNPAT(ABMPT,41,ABMVLOC))  ;skip if pt isn't registered at location
 ..S ^TMP($J,"ABM-VET","UPTOT",ABMVLOC)=+$G(^TMP($J,"ABM-VET","UPTOT",ABMVLOC))+1  ;count how many unique registered pts
 ..S ^TMP($J,"ABM-VET","UNQ PTS",ABMVLOC,ABMPT)=1  ;track unique pts
 ;end new abm*2.6*21 IHS/SD/SDR HEAT134720
 Q
PRINT ;
 D HDR
 S ABMN=""
 S ABMQFLG=0
 F  S ABMN=$O(^TMP($J,"ABM-VET","S",ABMN)) Q:ABMN=""  D  Q:($D(DIRUT)!$D(DIROUT)!$D(DTOUT)!$D(DUOUT))
 .I $Y+5>IOSL D HDR Q:(IOST["C")&((+$G(Y)=0)!($D(DIRUT)!$D(DIROUT)!$D(DTOUT)!$D(DUOUT)))
 .S ABMPT=$G(^TMP($J,"ABM-VET","S",ABMN))
 .S ABMVCNT=$G(^TMP($J,"ABM-VET",ABMPT))
 .S ABMDOB=$$SDT^ABMDUTL($$GET1^DIQ(2,ABMPT,".03","I"))
 .S ABMSSN=$$GET1^DIQ(2,ABMPT,".09")
 .S ABMHRN=$P($G(^AUPNPAT(ABMPT,41,DUZ(2),0)),U,2)
 .W !,ABMN,?40,ABMHRN,?48,ABMDOB,?59,ABMSSN,?76,ABMVCNT
 ;start new abm*2.6*21 IHS/SD/SDR HEAT134720
 W !
 S ABMVLOC=0
 F  S ABMVLOC=$O(^TMP($J,"ABM-VET","VTOT",ABMVLOC)) Q:'ABMVLOC  D
 .W !?5,$$GET1^DIQ(9999999.06,ABMVLOC,".02","E"),?20,+$G(^TMP($J,"ABM-VET","VTOT",ABMVLOC))_" "_$S(+$G(^TMP($J,"ABM-VET","VTOT",ABMVLOC))=1:"visit",1:"visits")
 .W ?35,+$G(^TMP($J,"ABM-VET","UPTOT",ABMVLOC))_" registered"
 K ^TMP($J,"ABM-VET")
 ;end new abm*2.6*21 IHS/SD/SDR HEAT134720
 Q
HDR ;EP
 I +$G(ABM("PG"))'=0,$E(IOST)="C" S DIR(0)="E" D ^DIR K DIR Q:(IOST["C")&($G(Y)<0)!($D(DIRUT)!$D(DIROUT)!$D(DTOUT)!$D(DUOUT))
 S ABM("PG")=ABM("PG")+1
 D WHD^ABMDRHD
 W !,"PATIENT NAME",?40,"HRN",?48,"DOB",?59,"SSN",?69,"VISIT CNT"
 W !,ABMLINE
 Q

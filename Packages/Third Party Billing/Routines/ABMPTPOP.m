ABMPTPOP ; IHS/SD/SDR - Patient Population Report ;  
 ;;2.6;IHS Third Party Billing System;**21**;NOV 12, 2009;Build 379
 ;IHS/SD/SDR 2.6*21 - New routine
 ;
 K ABMY
 D PROMPTS
 I '$D(ABMY("RLOC"))!('$D(ABMY("DT")))!('$D(ABMY("PTSTAT"))) Q  ;no location or dates selected
SEL ;Select device
 S %ZIS="Q"
 S %ZIS("A")="Enter DEVICE: "
 D ^%ZIS Q:POP
 I IO'=IO(0) D QUE,HOME^%ZIS S DIR(0)="E" D ^DIR K DIR Q
 S IOP=ION D ^%ZIS
PRINT ;EP
 D COMPILE
 S ABM("HD",0)="PATIENT ELIGIBILITY STATUS REPORT"
 S ABM("PG")=1
 S ABMTYP="SUM" D WHD
 S ABMLSUF=""
 F  S ABMLSUF=$O(^XTMP("ABM-PTPOP",$J,"DATA",ABMLSUF)) Q:$G(ABMLSUF)=""  D
 .S ABMPDFN=0
 .F  S ABMPDFN=$O(^XTMP("ABM-PTPOP",$J,"DATA",ABMLSUF,ABMPDFN)) Q:'ABMPDFN  D
 ..W !,$G(^XTMP("ABM-PTPOP",$J,"DATA",ABMLSUF,ABMPDFN))
 W !?5,"PATIENT COUNT: ",+$G(ABMT("PT"))
 W !?7,"VISIT COUNT: ",+$G(ABMT("VST"))
 I $E(IOST)="C" S DIR(0)="E" D ^DIR K DIR
 I $E(IOST)="P" W $$EN^ABMVDF("IOF")
 D ^%ZISC
 K ABM
 Q
COMPILE ;EP
 K ^XTMP("ABM-PTPOP",$J)
 K ABMT
 S ABMSDT=ABMY("DT",1)-.5
 S ABMEDT=ABMY("DT",2)+.999999
 F  S ABMSDT=$O(^AUPNVSIT("B",ABMSDT)) Q:'ABMSDT!(ABMSDT>ABMEDT)  D
 .S ABMVDFN=0
 .F  S ABMVDFN=$O(^AUPNVSIT("B",ABMSDT,ABMVDFN)) Q:'ABMVDFN  D
 ..S ABMVLOC=+$P($G(^AUPNVSIT(ABMVDFN,0)),U,6)  ;visit location
 ..Q:'ABMVLOC
 ..I '$D(ABMY("RLOC",ABMVLOC)) Q  ;not selected location
 ..S ABMT("VST")=+$G(ABMT("VST"))+1  ;total visits for report
 ..S ABMPDFN=$P($G(^AUPNVSIT(ABMVDFN,0)),U,5)
 ..I $P($G(^AUPNPAT(ABMPDFN,41,ABMVLOC,0)),U,5)="I" Q
 ..;
 ..;if it gets here we want this visit
 ..S ABMLSUF=$P($G(^AUTTLOC(ABMVLOC,0)),U,7)
 ..I '$D(^XTMP("ABM-PTPOP",$J,"PT",ABMPDFN)) S ABMT("PT")=+$G(ABMT("PT"))+1  ;count unique patients
 ..S ^XTMP("ABM-PTPOP",$J,"PT",ABMPDFN)=""  ;keep track of patients
 ..I $G(^XTMP("ABM-PTPOP",$J,"DATA",ABMLSUF,ABMPDFN))="" D  ;if no data for visit location/patient yet
 ...S ABMHRN=$P($G(^AUPNPAT(ABMPDFN,41,ABMVLOC,0)),U,2)
 ...S ABMSEX=$P($G(^DPT(ABMPDFN,0)),U,2)
 ...S ABMDOB=$$SDT^ABMDUTL($P($G(^DPT(ABMPDFN,0)),U,3))
 ...S ABMPTNM=$P($G(^DPT(ABMPDFN,0)),U)
 ...S ABMDEC=""
 ...I +$P($G(^DPT(ABMPDFN,.35)),U)'=0 S ABMDEC="D"
 ...S ABMAGE=$$GET1^DIQ(2,ABMPDFN,".033","E")
 ...S ABMVET=$P($G(^DPT(ABMPDFN,"VET")),U)
 ...S ABMLUPDT=$$SDT^ABMDUTL($P($G(^AUPNPAT(ABMPDFN,0)),U,3))
 ...S ABMEMPLS=$$GET1^DIQ(9000001,ABMPDFN,".21","E")
 ...S ABMBEN=$S(+$P($G(^AUPNPAT(ABMPDFN,11)),U,11)'=0:$P($G(^AUTTBEN($P($G(^AUPNPAT(ABMPDFN,11)),U,11),0)),U,2),1:"")
 ...S ABMCHS=$P($G(^AUPNPAT(ABMPDFN,11)),U,12)  ;elig status
 ...;
 ...S ABMRES=""
 ...S ABMRDT=$O(^AUPNPAT(ABMPDFN,51,99999999),-1)
 ...I +ABMRDT'=0 S ABMRES=$S(+$P($G(^AUPNPAT(ABMPDFN,51,ABMRDT,0)),U,3)'=0:$$GET1^DIQ(9999999.05,$P($G(^AUPNPAT(ABMPDFN,51,ABMRDT,0)),U,3),".01","E"),1:"")
 ...;
 ...S ABMREC=ABMLSUF_U_ABMHRN_U_ABMPTNM_U_ABMDEC_U_ABMDOB_U_ABMSEX_U_ABMAGE_U_ABMBEN_U_U_U_U_U_ABMCHS_U_ABMRES_U_ABMVET_U_ABMLUPDT_U_ABMEMPLS
 ...S ^XTMP("ABM-PTPOP",$J,"DATA",ABMLSUF,ABMPDFN)=ABMREC
 ..D VSTCK  ;check if visit is billable/unbillable
 ..I ABMVFLG=1 S $P(^XTMP("ABM-PTPOP",$J,"DATA",ABMLSUF,ABMPDFN),U,18)=+$P($G(^XTMP("ABM-PTPOP",$J,"DATA",ABMLSUF,ABMPDFN)),U,18)+1
 ..I ABMVFLG=0 S $P(^XTMP("ABM-PTPOP",$J,"DATA",ABMLSUF,ABMPDFN),U,19)=+$P($G(^XTMP("ABM-PTPOP",$J,"DATA",ABMLSUF,ABMPDFN)),U,19)+1
 ..D ELGCK  ;see if patient had eligibility during the selected date range
 ..S $P(^XTMP("ABM-PTPOP",$J,"DATA",ABMLSUF,ABMPDFN),U,9)=ABMMCR
 ..S $P(^XTMP("ABM-PTPOP",$J,"DATA",ABMLSUF,ABMPDFN),U,10)=ABMMCD
 ..S $P(^XTMP("ABM-PTPOP",$J,"DATA",ABMLSUF,ABMPDFN),U,11)=ABMPI
 ..S $P(^XTMP("ABM-PTPOP",$J,"DATA",ABMLSUF,ABMPDFN),U,12)=ABMVET
 Q
QUE ;TASKMAN
 S ZTRTN="PRINT^ABMPTPOP"
 S ZTDESC="Patient Eligibility Report"
 S ZTSAVE("ABM*")=""
 K ZTSK
 D ^%ZTLOAD
 D ^%ZISC
 W:$G(ZTSK) !,"Task # ",ZTSK," queued.",!
 Q
 ;
PROMPTS ;EP
REGLOC ;EP - registration location
 ;location
 D GETFACS^ABMMUMUP  ;get list of facilities
 S ABMCNT=0,ABMDIR="",ABMFQHC=0
 F  S ABMCNT=$O(ABMFLIST(ABMCNT)) Q:'ABMCNT  D
 .S:ABMDIR'="" ABMDIR=ABMDIR_";"_ABMCNT_":"_$$GET1^DIQ(9999999.06,$G(ABMFLIST(ABMCNT)),.01,"E")
 .S:ABMDIR="" ABMDIR=ABMCNT_":"_$$GET1^DIQ(9999999.06,$G(ABMFLIST(ABMCNT)),.01,"E")
 .I $D(^ABMMUPRM(1,1,"B",ABMFLIST(ABMCNT))) S ABMFQHC=1
 S ABMCNT=$O(ABMFLIST(99999),-1)  ;get last entry#
 S (ABMCNT,ABMTOT)=ABMCNT+1
 I ABMFQHC=0!(ABMCNT<2) S ABMDIR=ABMDIR_";"_ABMCNT_":All facilities"
 W !!
 K ABMFANS,ABMF
 F  D  Q:+$G(Y)<0!(Y=ABMTOT)!$D(DTOUT)!$D(DUOUT)!$D(DIRUT)!$D(DIROUT)  ;they didn't answer or ALL was selected
 .D ^XBFMK
 .S DIR(0)="SO^"_$G(ABMDIR)
 .S:'$D(ABMF) DIR(0)="S^"_$G(ABMDIR)
 .S DIR("A")="Select one or more facilities"
 .D ^DIR K DIR
 .Q:$D(DTOUT)!$D(DUOUT)!$D(DIRUT)!$D(DIROUT)
 .S ABMFANS=Y
 .I ABMFANS'=(ABMTOT) S ABMF($G(ABMFLIST(ABMFANS)))=""
 .I ABMFANS=(ABMTOT) D
 ..S ABMCNT=0
 ..F  S ABMCNT=$O(ABMFLIST(ABMCNT)) Q:'ABMCNT  S ABMF($G(ABMFLIST(ABMCNT)))=""
 K ABMFQHC
 M ABMY("RLOC")=ABMF
 Q:'$D(ABMY)
DT ;EP visit dates for report
 W !!," ============ Entry of Visit Date Range =============",!
 S DIR("A")="Enter STARTING Visit Date for the Report"
 S DIR(0)="DO^::EP"
 D ^DIR
 Q:$D(DTOUT)!$D(DUOUT)!$D(DIRUT)!$D(DIROUT)
 S ABMY("DT",1)=Y
 W !
 S DIR("A")="Enter ENDING DATE for the Report"
 D ^DIR
 K DIR
 I $D(DIRUT) K ABMY("DT") G DT
 S ABMY("DT",2)=Y
 I ABMY("DT",1)>ABMY("DT",2) W !!,*7,"INPUT ERROR: Start Date is Greater than than the End Date, TRY AGAIN!",!! G DT
PTSTAT ;EP  patient status
 D ^XBFMK
 S DIR(0)="SO^C:Current patient;A:All-regardless"
 S DIR("A")="Current Patient or ALL"
 S DIR("B")="All"
 D ^DIR K DIR
 Q:$D(DTOUT)!$D(DUOUT)!$D(DIRUT)!$D(DIROUT)
 S ABMY("PTSTAT")=Y
 Q
VSTCK ;EP
 S ABMVFLG=0
 S ABML="",ABMELG=0
 ;check service category only for billable, unbillable
 S SERVCAT=$P($G(^AUPNVSIT(ABMVDFN,0)),U,7)
 I "^C^T^N^E^X^"[("^"_SERVCAT_"^") Q  ;these are unbillable visits
 S ABMVFLG=1  ;the visit is billable to someone, don't care who
 Q
ELGCK ;EP
 D MCR,RR
 D MCD
 D PI
 Q
MCR ;EP
 S ABMMCR=""
 S ABMI=0
 F  S ABMI=$O(^AUPNMCR(ABMPDFN,11,ABMI)) Q:'ABMI  D  Q:(ABMMCR="A")
 .S ABMISDT=$P($G(^AUPNMCR(ABMPDFN,11,ABMI,0)),U)
 .S ABMIEDT=$P($G(^AUPNMCR(ABMPDFN,11,ABMI,0)),U,2)
 .I ABMISDT=ABMIEDT Q  ;zero days coverage - skip
 .I ABMISDT>ABMY("DT",2) Q  ;elig started after end date
 .I (ABMIEDT'="")&(ABMIEDT>ABMY("DT",1))&(ABMIEDT<ABMY("DT",2)) S ABMMCR="T" Q  ;elig terminated during date range
 .I ABMIEDT'=""&(ABMIEDT<ABMY("DT",1)) Q  ;elig ended before start date
 .S ABMMCR="A"
 Q
RR ;EP
 Q:ABMMCR'=""  ;already found in MCR
 S ABMI=0
 F  S ABMI=$O(^AUPNRR(ABMPDFN,11,ABMI)) Q:'ABMI  D  Q:(ABMMCR="A")
 .S ABMISDT=$P($G(^AUPNRR(ABMPDFN,11,ABMI,0)),U)
 .S ABMIEDT=$P($G(^AUPNRR(ABMPDFN,11,ABMI,0)),U,2)
 .I ABMISDT=ABMIEDT Q  ;zero days coverage - skip
 .I ABMISDT>ABMY("DT",2) Q  ;elig started after end date
 .I (ABMIEDT'="")&(ABMIEDT>ABMY("DT",1))&(ABMIEDT<ABMY("DT",2)) S ABMRR="T" Q  ;elig terminated during date range
 .I ABMIEDT'=""&(ABMIEDT<ABMY("DT",1)) Q  ;elig ended before start date
 .S ABMMCR="A"
 Q
MCD ;EP
 S ABMMCD=""
 S ABMI=0
 F  S ABMI=$O(^AUPNMCD("B",ABMPDFN,ABMI)) Q:'ABMI  D  Q:(ABMMCD="A")
 .S ABMII=0
 .F  S ABMII=$O(^AUPNMCD(ABMI,11,ABMII)) Q:'ABMII  D  Q:(ABMMCD="A")
 ..S ABMISDT=$P($G(^AUPNMCD(ABMI,11,ABMII,0)),U)
 ..S ABMIEDT=$P($G(^AUPNMCD(ABMI,11,ABMII,0)),U,2)
 ..I ABMISDT=ABMIEDT Q  ;zero days coverage - skip
 ..I ABMISDT>ABMY("DT",2) Q  ;elig started after end date
 ..I (ABMIEDT'="")&(ABMIEDT>ABMY("DT",1))&(ABMIEDT<ABMY("DT",2)) S ABMMCD="T" Q  ;elig terminated during date range
 ..I ABMIEDT'=""&(ABMIEDT<ABMY("DT",1)) Q  ;elig ended before start date
 ..S ABMMCD="A"
 Q
PI ;EP
 S ABMPI="",ABMVET=""
 S ABMI=0
 F  S ABMI=$O(^AUPNPRVT(ABMPDFN,11,ABMI)) Q:'ABMI  D  Q:(ABMPI="A")
 .S ABMP("INS")=$P($G(^AUPNPRVT(ABMPDFN,11,ABMI,0)),U)
 .S ABMISDT=$P($G(^AUPNPRVT(ABMPDFN,11,ABMI,0)),U,6)
 .S ABMIEDT=$P($G(^AUPNPRVT(ABMPDFN,11,ABMI,0)),U,7)
 .I ABMISDT=ABMIEDT Q  ;zero days coverage - skip
 .I ABMISDT>ABMY("DT",2) Q  ;elig started after end date
 .I (ABMIEDT'="")&(ABMIEDT>ABMY("DT",1))&(ABMIEDT<ABMY("DT",2))&($$GET1^DIQ(9999999.181,$$GET1^DIQ(9999999.18,+ABMP("INS"),".211","I"),1,"I")="V") S ABMVET="T" Q  ;elig terminated during date range
 .I (ABMIEDT'="")&(ABMIEDT>ABMY("DT",1))&(ABMIEDT<ABMY("DT",2))&($$GET1^DIQ(9999999.181,$$GET1^DIQ(9999999.18,+ABMP("INS"),".211","I"),1,"I")'="V") S ABMPI="T" Q  ;elig terminated during date range
 .I ABMIEDT'=""&(ABMIEDT<ABMY("DT",1)) Q  ;elig ended before start date
 .I $$GET1^DIQ(9999999.181,$$GET1^DIQ(9999999.18,+ABMP("INS"),".211","I"),1,"I")="V" S ABMVET="A"
 .E  S ABMPI="A"
 Q
WHD ;EP
 W $$EN^ABMVDF("IOF"),!
 K ABM("LINE") S $P(ABM("LINE"),"=",$S($D(ABM(132)):132,1:80))="" W ABM("LINE"),!
 D NOW^%DTC
 W ABM("HD",0),?$S($D(ABM(132)):103,1:48) S Y=% X ^DD("DD") W Y
 S ABM("HD",1)="For Visit Dates from "_$$SDT^ABMDUTL(ABMY("DT",1))_" to "_$$SDT^ABMDUTL(ABMY("DT",2))
 W:$G(ABM("HD",1))]"" !,ABM("HD",1)
 W:$G(ABM("HD",2))]"" !,ABM("HD",2)
 ;
 W !,"Billing Location(s): "
 S ABMRL=0
 S ABMC=0
 F  S ABMRL=$O(ABMY("RLOC",ABMRL)) Q:'ABMRL  D
 .I ABMC'=0 W ", "
 .S ABMC=1
 .W $P($G(^DIC(4,ABMRL,0)),U)
 ;
 W !?40,"* - AGE AS OF REPORT DATE"
 W !,ABM("LINE") K ABM("LINE")
 ;W !,"REG"_U_U_U_"BIRTH"_U_U_U_U_"Eligibility"_U_U_U_U_U_"VET"_U_"DATE OF"_U_"EMPL"_U_"BILL"_U_"UNBIL"
 W !,"REG LOC"_U_"HRN"_U_"NAME"_U_"DEC"_U_"BIRTH DATE"_U_"SEX"_U_"AGE*"_U_"BEN"_U_"MCR"_U_"MCD"_U_"PVT"_U_"VET"_U_"CHS"_U_"RESIDENCE"_U_"VET Y/N"_U_"DATE OF LAST UPD"_U_"EMPL STATUS"_U_"BILL VISIT"_U_"UNBILL VISIT"
 Q

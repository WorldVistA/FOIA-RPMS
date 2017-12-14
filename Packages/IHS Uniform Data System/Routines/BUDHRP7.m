BUDHRP7 ;IHS/CMI/LAB - UDS REPORT DRIVER TABLE 7;
 ;;13.0;IHS/RPMS UNIFORM DATA SYSTEM;;OCT 12, 2018;Build 90
 ;
 ;
T7 ;
 D EOJ
EN ;
 S BUDNOLI=1,BUDZLIST=0,BUDTSCTC=1
 D GENI
 D T7I
 D PAUSE
 D PRENATT
 D PAUSE
 ;
EN1 ;
EN2 ;
 S BUDSITE=""
 S DIC="^BUDHSITE(",DIC(0)="AEMQ",DIC("A")="Enter your site: " D ^DIC
 I Y=-1 D EOJ Q
 S BUDSITE=+Y
 I '$O(^BUDHSITE(BUDSITE,11,0)) W !!,"Warning:  There are no locations defined in the site parameter file for this",!,"site.  Report will not be accurate!" G EN
 S BUDTAXT="7" D TAXCHK^BUDHXTCH
 S BUDYEAR=""
 D YEAR
 I BUDYEAR="" D EOJ Q
 W !!,"Your report will be run for the time period: ",$$FMTE^XLFDT(BUDBD)," to ",$$FMTE^XLFDT(BUDED)
 ;get indian or not
 S BUDBEN=""
 S DIR(0)="S^1:Indian/Alaskan Native (Classification 01);2:Not Indian Alaskan/Native (Not Classification 01);3:All (both Indian/Alaskan Natives and Non 01);4:Homeless Patients",DIR("A")="Select Beneficiary Population to include in this report"
 S DIR("B")="1" KILL DA D ^DIR KILL DIR
 I $D(DIRUT) W !!,"Beneficiary Population not entered." D EOJ Q
 S BUDBEN=Y
 I $G(BUDNOLI) S BUDROT="P",BUDDELT="" G ZIS
 D PT^BUDHRPTE
 I BUDROT="" G EN1
ZIS ;call to XBDBQUE
 K IOP,%ZIS I BUDROT="D",BUDDELT="F" D NODEV,EOJ Q
 W !! S %ZIS=$S(BUDDELT'="S":"PQM",1:"PM") D ^%ZIS
ZIS1 ;
 I POP W !,"Report Aborted" D EOJ Q
 I $D(IO("Q")) G TSKMN
DRIVER ;
 D PROC
 U IO
 D PRINT
 D ^%ZISC
 D EOJ
 Q
NODEV ;
 S XBRP="",XBRC="NODEV1^BUDHRP7",XBRX="EOJ^BUDHRP7",XBNS="BUD"
 D ^XBDBQUE
 Q
NODEV1 ;
 D PROC^BUDHRP7
 D PRINT^BUDHRP7
 D ^%ZISC
 D EOJ
 Q
TSKMN ;EP ENTRY POINT FROM TASKMAN
 S ZTIO=$S($D(ION):ION,1:IO) I $D(IOST)#2,IOST]"" S ZTIO=ZTIO_";"_IOST
 I $G(IO("DOC"))]"" S ZTIO=ZTIO_";"_$G(IO("DOC"))
 I $D(IOM)#2,IOM S ZTIO=ZTIO_";"_IOM I $D(IOSL)#2,IOSL S ZTIO=ZTIO_";"_IOSL
 K ZTSAVE S ZTSAVE("BUD*")=""
 S ZTCPU=$G(IOCPU),ZTRTN="DRIVER^BUDHRP7",ZTDTH="",ZTDESC="UDS 18 REPORT TABLE 7" D ^%ZTLOAD D EOJ Q
 Q
EOJ ;
 D EN^XBVK("BUD")
 Q
PRGHLIST ;EP
 D EOJ
 S BUDPRGHL=1,BUDTSCTC=2,BUDZLIST=1
 D PRGH^BUDHRP7I
 G EN1
 ;
PRGRLIST ;EP
 D EOJ
 S BUDPRGRL=1,BUDTSCTC=2,BUDZLIST=1
 D PRGR^BUDHRP7I
 G EN1
 ;
HTRLIST ;EP
 D EOJ
 S BUDHTRL=1,BUDTSCTC=2,BUDZLIST=1
 D HTR^BUDHRP7J
 G EN1
 ;
HTCRLIST ;EP
 D EOJ
 S BUDHTCRL=1,BUDTSCTC=2,BUDZLIST=1
 D HTCR^BUDHRP7J
 G EN1
 ;
HTURLIST ;EP
 D EOJ
 S BUDHTURL=1,BUDTSCTC=2,BUDZLIST=1
 D HTUR^BUDHRP7U
 G EN1
 ;
 ;
MHT ;EP
 D EOJ
 D GENI^BUDHRP7I
 S (BUDHTRL,BUDHTCRL,BUDHTURL,BUDHTEL,BUDHTCEL,BUDHTUEL)=0
 W !!,"UDS Table 7 Hypertension Patient List Selection"
 W !!?5,"1   All HTN Patients by Race and Hispanic or Latino Identity"
 W !?5,"2   All HTN Pts w/Controlled BP by Race and Hispanic or Latino Identity"
 W !?5,"3   All HTN Pts w/Uncontrolled BP by Race and Hispanic or Latino Identity"
 W !?5,"4   ALL Lists for HTN Patients"
 S DIR(0)="L^1:4",DIR("A")="Include which Tables",DIR("B")=1 KILL DA D ^DIR KILL DIR
 I $D(DIRUT) D EOJ Q
 I Y[4 S (BUDHTRL,BUDHTCRL,BUDHTURL)=1,BUDTSCTC=4,BUDZLIST=1 G EN1
 S BUDTSCTC=1
 I Y[1 S BUDHTRL=1,BUDTSCTC=BUDTSCTC+1,BUDZLIST=1
 I Y[2 S BUDHTCRL=1,BUDTSCTC=BUDTSCTC+1,BUDZLIST=1
 I Y[3 S BUDHTURL=1,BUDTSCTC=BUDTSCTC+1,BUDZLIST=1
 G EN1
LIST ;
DMRLIST ;EP
 D EOJ
 S BUDDMRL=1,BUDTSCTC=2,BUDZLIST=1
 D DMR^BUDHRP7L
 G EN1
 ;
DMR1LIST ;EP
 D EOJ
 S BUDDMR1L=1,BUDTSCTC=2,BUDZLIST=1
 D DMR1^BUDHRP7T
 G EN1
 ;
 ;
MDM ;EP
 D EOJ
 D GENI^BUDHRP7I
 S (BUDHTRL,BUDDMR1L,BUDHTURL,BUDHTEL,BUDHTCEL,BUDHTUEL)=0
 W !!,"UDS Table 7 Diabetes Patient List Selection"
 W !!?5,"1   All Patients w/DM by Race and Hispanic or Latino Identity"
 W !?5,"2   All Patients w/DM and A1c >9 or No Test by Race and Hispanic or Latino Identity"
 W !?5,"3   ALL Lists for DM Patients"
 S DIR(0)="L^1:3",DIR("A")="Include which Tables",DIR("B")=1 KILL DA D ^DIR KILL DIR
 I $D(DIRUT) D EOJ Q
 I Y[3 S (BUDDMRL,BUDDMR1L)=1,BUDZLIST=1,BUDTSCTC=3 G EN1
 S BUDTSCTC=1
 I Y[1 S BUDDMRL=1,BUDTSCTC=BUDTSCTC+1,BUDZLIST=1
 I Y[2 S BUDDMR1L=1,BUDTSCTC=BUDTSCTC+1,BUDZLIST=1
 G EN1
MPRG ;EP - called from option
 D EOJ
 D GENI^BUDHRP7I
 S (BUDPRGHL,BUDPRGRL,BUDPRGEL)=0
 W !!,"UDS Table 7 Pregnant Patient List Selection"
 W !!?5,"1   All Pregnant Patients w/HIV"
 W !?5,"2   All Pregnant Patients by Race"
 W !?5,"3   ALL Lists"
 S DIR(0)="L^1:3",DIR("A")="Include which Tables",DIR("B")=1 KILL DA D ^DIR KILL DIR
 I $D(DIRUT) D EOJ Q
 I Y[3 S (BUDPRGHL,BUDPRGRL)=1,BUDZLIST=1,BUDTSCTC=3 G EN1
 S BUDTSCTC=1
 I Y[1 S BUDPRGHL=1,BUDZLIST=1,BUDTSCTC=BUDTSCTC+1
 I Y[2 S BUDPRGRL=1,BUDZLIST=1,BUDTSCTC=BUDTSCTC+1
 G EN1
 ;
PROC ;EP - called from taskman
 D SETUP^BUDHUTL2
 S BUDJ=$J,BUDH=$H
 S ^XTMP("BUDHRP7B",0)=$$FMADD^XLFDT(DT,14)_"^"_DT_"^BUD TABLE 7 LISTS"
 ;NOW LOOP THROUGH PATIENT FILE  for imms and paps
 S DFN=0 F  S DFN=$O(^AUPNPAT(DFN)) Q:DFN'=+DFN  D
 .K ^TMP($J)
 .Q:'$D(^AUPNPAT(DFN,0))
 .Q:'$D(^DPT(DFN,0))
 .Q:$P(^DPT(DFN,0),U,19)  ;merged away
 .Q:$$DEMO^BUDHDU(DFN,"E")
 .;;I DUZ=2881,$$HRN^AUPNPAT(DFN,DUZ(2))'=142692 Q
LORIN .;DO NOT COUNT BASED ON CLASSIFICATION IN V6.0
 .I BUDBEN=1,$$BEN^AUPNPAT(DFN,"C")'="01" Q  ;must be Indian/Alaskan Native
 .I BUDBEN=2,$$BEN^AUPNPAT(DFN,"C")="01" Q  ;must not be I/A
 .I BUDBEN=4,'$$HL^BUDHUTL2(DFN,BUDBD,BUDED) Q
 .S BUDSEX=$P(^DPT(DFN,0),U,2)
 .I BUDSEX'="F",BUDSEX'="M" Q  ;valid gender
 .S BUDCCOM=$$COMMRES^AUPNPAT(DFN,"E") I BUDCCOM="" S BUDCCOM="UNKNOWN"
 .S BUDAGE=$$AGE^AUPNPAT(DFN,BUDED)  ;age at end of time period
 .S BUDAGEP=$$AGE^AUPNPAT(DFN,BUDCCAD)  ;age on june 30 for pregnancy 
 .D GETV^BUDHRPTD  ;get visits that meet criteria
 .I BUDUDSPT=0 Q  ;user doesn't have any countable visits and is not considered a user
 .D PRGHLST^BUDHRP7A
 .D PRGRLST^BUDHRP7A
 .D HTN^BUDHRP7B
 .D DM^BUDHRP7C
 Q
 ;
PRINT ;EP - called from taskman
 I '$G(BUDTPG) S BUDTPG=0
 D PRINT^BUDHRP71
 Q
 ;
T7H ;
 W !,$$CTR("TABLE 7 - HEALTH OUTCOMES AND DISPARITIES"),!,$$REPEAT^XLFSTR("_",79),!
 Q
LINE ;
 W $$REPEAT^XLFSTR("_",79),?79,"|",!
 Q
LINE1 ;
 W $$REPEAT^XLFSTR("_",29),?29,"|",$$REPEAT^XLFSTR("_",9),?39,"|",$$REPEAT^XLFSTR("_",9),?49,"|",$$REPEAT^XLFSTR("_",9),?59,"|",$$REPEAT^XLFSTR("_",9),?69,"|",$$REPEAT^XLFSTR("_",9),?79,"|",!
 Q
LINE2 ;
 W $$REPEAT^XLFSTR("_",29),?29,"|",$$REPEAT^XLFSTR("_",39),?69,"|_________",?79,"|",!
 Q
 ;
LINE3 ;
 W $$REPEAT^XLFSTR("_",29),?29,"|",$$REPEAT^XLFSTR("_",49),?79,"|",!
 Q
T7I ;EP
 W !!,"TABLE 7:  HEALTH OUTCOMES AND DISPARITIES"
 W !,"This report will produce UDS Table 7, health outcomes indicators by race"
 W !,"and Hispanic/Latino identity for deliveries and birth weights, controlled"
 W !,"hypertension, and controlled diabetes Glycemic control.  Patients must meet "
 W !,"additional criteria as specified for each indicator."
 W !
 Q
GENI ;general introductions
 W:$D(IOF) @(IOF)
 W !!,$$CTR($$LOC,80),!,$$CTR("UDS 2018",80),!
 W !,"UDS searches your database to find all patients reported for the quality"
 W !,"of care indicators during the time period January 1 - December 31, 2018."
 W !,"Based on the UDS definition, to be considered a patient, the patient must"
 W !,"have had at least one visit meeting the following criteria:"
 W !?4,"- must be to a location specified in your visit location setup"
 W !?4,"- must be to Service Category Ambulatory (A), Hospitalization (H), Day"
 W !?6,"Surgery (S), Observation (O), Telemedicine (M), Nursing home visit (R), "
 W !?6,"or In-Hospital (I) visit"
 W !?4,"- must NOT have an excluded clinic code (see User Manual for a list)"
 W !?4,"- must have a primary provider and a coded purpose of visit"
 W !?4,"- the patient must NOT have a gender of 'Unknown'"
 W !
 Q
 ;
PRENATT ;EP
 W !!,"UDS does not calculate the deliveries and birth weight indicators"
 W !,"in Section A.  However, you can run a list of patients identified "
 W !,"by UDS as pregnant to determine which of them received prenatal care at"
 W !,"your facility or were referred elsewhere by your facility for prenatal"
 W !,"and perinatal services to assist you with completing Table 7, Section A."
 W !,"The menu options you would select to run the patient list are:  LST, LST3,"
 W !,"PRG, PRGR (list by race and Hispanic or Latino identity)."
 W !
 Q
CTR(X,Y) ;EP - Center X in a field Y wide.
 Q $J("",$S($D(Y):Y,1:IOM)-$L(X)\2)_X
 ;----------
USR() ;EP - Return name of current user from ^VA(200.
 Q $S($G(DUZ):$S($D(^VA(200,DUZ,0)):$P(^(0),U),1:"UNKNOWN"),1:"DUZ UNDEFINED OR 0")
 ;----------
LOC() ;EP - Return location name from file 4 based on DUZ(2).
 Q $S($G(DUZ(2)):$S($D(^DIC(4,DUZ(2),0)):$P(^(0),U),1:"UNKNOWN"),1:"DUZ(2) UNDEFINED OR 0")
 ;----------
PAUSE ;EP
 K DIR S DIR(0)="E",DIR("A")="PRESS ENTER" KILL DA D ^DIR KILL DIR
 Q
C(X,Y) ;
 I $G(Y)=1,+X=0 Q ""
 I $G(Y)=2 Q "********"
 S X2=0,X3=8
 D COMMA^%DTC
 Q X
YEAR ;
 S BUDYEAR=""
 W !
 W !,"Enter the Calendar Year.  Use a 4 digit year, e.g. 2018"
 S DIR(0)="D^::EP"
 S DIR("A")="Enter Calendar Year"
 S DIR("?")="This report is compiled for a period.  Enter a valid date."
 D ^DIR KILL DIR
 K DIC
 I $D(DUOUT) S DIRUT=1 Q
 I $D(DIRUT) Q
 I $E(Y,4,7)'="0000" W !!,"Please enter a year only!",! G YEAR
 S BUDYEAR=Y,BUDBD=$E(BUDYEAR,1,3)_"0101",BUDED=$E(BUDYEAR,1,3)_"1231"
 S BUDCCAD=$E(BUDYEAR,1,3)_"0630"
 Q
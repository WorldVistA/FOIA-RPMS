BUDERP6B ;IHS/CMI/LAB - UDS TABLE 6B DRIVER;
 ;;12.0;IHS/RPMS UNIFORM DATA SYSTEM;;NOV 22, 2017;Build 75
 ;
 ;
T6B ;
 D EOJ
EN ;
 S BUDNOLI=1
 D GENI
 D T6BI
 D PAUSE
 D PRENATT
 D PAUSE
 ;
EN1 ;EP
PNC ;
 ;S BUDPREN=""
 ;S DIR(0)="Y",DIR("A")="Does your facility provide prenatal care",DIR("B")="N" KILL DA D ^DIR KILL DIR
 ;I $D(DIRUT) D EOJ Q
 ;S BUDPREN=Y
 ;
EN2 ;
 S BUDSITE=""
 S DIC="^BUDESITE(",DIC(0)="AEMQ",DIC("A")="Enter your site: " D ^DIC
 I Y=-1 D EOJ Q
 S BUDSITE=+Y
 I '$O(^BUDESITE(BUDSITE,11,0)) W !!,"Warning:  There are no locations defined in the site parameter file for this",!,"site.  Report will not be accurate!" G EN
 S BUDTAXT="B6" D TAXCHK^BUDEXTCH
 D YEAR
 I BUDYEAR="" D EOJ Q
 W !!,"Your report will be run for the time period: ",$$FMTE^XLFDT(BUDBD)," to ",$$FMTE^XLFDT(BUDED)
 ;get indian or not
 S BUDBEN=""
 S DIR(0)="S^1:Indian/Alaskan Native (Classification 01);2:Not Indian Alaskan/Native (Not Classification 01);3:All (both Indian/Alaskan Natives and Non 01)",DIR("A")="Select Beneficiary Population to include in this report"
 S DIR("B")="1" KILL DA D ^DIR KILL DIR
 I $D(DIRUT) W !!,"Classification not entered." D EOJ Q
 S BUDBEN=Y
 I $G(BUDNOLI) S BUDROT="P",BUDDELT="" G ZIS
 D PT^BUDERPTE
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
 S XBRP="",XBRC="NODEV1^BUDERP6B",XBRX="EOJ^BUDERP6B",XBNS="BUD"
 D ^XBDBQUE
 Q
NODEV1 ;
 D PROC^BUDERP6B
 D PRINT^BUDERP6B
 D ^%ZISC
 D EOJ
 Q
TSKMN ;EP ENTRY POINT FROM TASKMAN
 S ZTIO=$S($D(ION):ION,1:IO) I $D(IOST)#2,IOST]"" S ZTIO=ZTIO_";"_IOST
 I $G(IO("DOC"))]"" S ZTIO=ZTIO_";"_$G(IO("DOC"))
 I $D(IOM)#2,IOM S ZTIO=ZTIO_";"_IOM I $D(IOSL)#2,IOSL S ZTIO=ZTIO_";"_IOSL
 K ZTSAVE S ZTSAVE("BUD*")=""
 S ZTCPU=$G(IOCPU),ZTRTN="DRIVER^BUDERP6B",ZTDTH="",ZTDESC="UDS 17 REPORT TABLE 6B" D ^%ZTLOAD D EOJ Q
 Q
EOJ ;
 D EN^XBVK("BUD")
 Q
PAPLIST1 ;EP
 D EOJ
 S BUDPAP1L=1
 D PAP1^BUDERP6P
 G EN1
 ;
PAPLIST2 ;EP
 D EOJ
 S BUDPAP2L=1
 D PAP2^BUDERP6P
 G EN1
DSLIST1 ;EP
 D EOJ
 S BUDDS1L=1
 D DS1^BUDERP61
 G EN1
 ;
DSLIST2 ;EP
 D EOJ
 S BUDDS2L=1
 D DS2^BUDERP61
 G EN1
IMMLIST1 ;EP
 D EOJ
 S BUDIMM1L=1
 D IMM1^BUDERP6I
 G EN1
IMMLIST2 ;EP
 D EOJ
 S BUDIMM2L=1
 D IMM2^BUDERP6I
 G EN1
PRGA ;EP
 D EOJ
 S BUDPRGAL=1
 D PRGA^BUDERP6W
 G EN1
 ;
M ;EP - called from option
 D EOJ
 D GENI^BUDERP6I
 K BUDTIND,BUDIND
 D EN^BUDEDSI
 I '$D(BUDIND) W !,"No Lists Selected." H 2 D EOJ Q
 S X=0 F  S X=$O(BUDIND(X)) Q:X'=+X  X ^BUDELST2(X,1)
 G EN1
PROC ;EP - called from taskman
 S BUDJ=$J,BUDH=$H
 S ^XTMP("BUDERP6B",0)=$$FMADD^XLFDT(DT,14)_"^"_DT_"^BUD TABLE 6B LISTS"
 ;NOW LOOP PATS
 S DFN=0 F  S DFN=$O(^AUPNPAT(DFN)) Q:DFN'=+DFN  D
 .K ^TMP($J)
 .Q:'$D(^AUPNPAT(DFN,0))
 .Q:'$D(^DPT(DFN,0))
 .Q:$P(^DPT(DFN,0),U,19)  ;merged away
 .Q:$$DEMO^BUDEDU(DFN,"E")
N .;
 .I BUDBEN=1,$$BEN^AUPNPAT(DFN,"C")'="01" Q  ;must be Indian/Alaskan Native
 .I BUDBEN=2,$$BEN^AUPNPAT(DFN,"C")="01" Q  ;must not be I/A
 .S C=$$COMMRES^AUPNPAT(DFN,"E")
 .S BUDSEX=$P(^DPT(DFN,0),U,2)
 .I BUDSEX'="F",BUDSEX'="M" Q
 .S BUDCCOM=$$COMMRES^AUPNPAT(DFN,"E") I BUDCCOM="" S BUDCCOM="UNKNOWN"
 .S BUDAGE=$$AGE^AUPNPAT(DFN,BUDED)  ;age at end of time period
 .S BUDAGEP=$$AGE^AUPNPAT(DFN,BUDCCAD)  ;age on june 30 for pregnancy 
 .D GETV^BUDERPTD  ;get visits that meet criteria
 .I BUDUDSPT=0 Q  ;user doesn't have any countable visits
 .I $G(BUDPRGAL) D PRGALST
 .D IMM^BUDERP6C
 .D PAPD^BUDERP6D
 .D ADOLWT^BUDERP6V
 .D ADULT^BUDERP6V
 .D G^BUDERP6V  ;TOB
 .D H^BUDERP6U  ;AST
 .D I^BUDERP6O  ;CAD
 .D J^BUDERP6M  ;IVD
 .D K^BUDERP6N  ;CRC
 .D L^BUDERP6Q  ;HIV
 .D M^BUDERP6Q  ;DEPRESSION
 .D N^BUDERP6A  ;DENTAL
 Q
PRGALST ;EP - list of pregnant females
 ;is patient pregnant during the time period BUDDD and BUDED
 Q:BUDSEX'="F"
 S BUDP=$$PREG(DFN,$$FMADD^XLFDT(BUDED,-609),BUDED,BUDBD)
 I '$P(BUDP,U) Q  ;not pregnant
 S X=$$AGB(BUDAGEP)
 S ^XTMP("BUDERP6B",BUDJ,BUDH,"PRGA",X,BUDAGEP,$P(^DPT(DFN,0),U),BUDCCOM,DFN)=$P(BUDP,"*",2)
 Q
AGB(N) ;
 I N<15 Q "Less than 15 Years"
 I N>14,N<20 Q "Ages 15-19"
 I N>19,N<25 Q "Ages 20-24"
 I N>24,N<45 Q "Ages 25-44"
 Q "Ages 45 and Over"
PREG(P,BDATE,EDATE,RPBD) ;EP
 NEW BUDD,B,CNT,BUDALL,BUDG,DXT,PXT,CPTT,CTR,VIEN,D,C,Y,H,X,BUDV,BUDDX
 S BUDD=""
 D ALLV^APCLAPIU(P,BDATE,EDATE,"BUDV")
 I '$D(BUDV) G PROB
 S CNT=0,BUDD="",BUDALL=""
 K BUDG
 S DXT=$O(^ATXAX("B","BGP PREGNANCY DIAGNOSES 2",0))
 S PXT=$O(^ATXAX("B","BGP PREGNANCY ICD PROCEDURES",0))
 S CPTT=$O(^ATXAX("B","BGP PREGNANCY CPT CODES",0))
 ;CHECK DX, PROCS, CPTS for 2 separate visits
 S B=0,CTR=0 F  S CTR=$O(BUDV(CTR)) Q:CTR'=+CTR  D
 .;get visit into VIEN
 .S VIEN=$P(BUDV(CTR),U,5)
 .S D=$$VD^APCLV(VIEN)
 .;now check for dx
 .S Y=0,H="" F  S Y=$O(^AUPNVPOV("AD",VIEN,Y)) Q:Y'=+Y  D
 ..S %=+^AUPNVPOV(Y,0)
 ..I $$ICD^ATXCHK(%,DXT,9) I '$D(BUDDX(D)) S BUDDX(D)="",CNT=CNT+1,BUDALL=BUDALL_VIEN_"|"_$$VAL^XBDIQ1(9000010.07,Y,.01)_U,H=1 I D'<RPBD S B=1
 .Q:H
 .;NOW GO THROUGH CPTS
 .S Y=0,H="" F  S Y=$O(^AUPNVCPT("AD",VIEN,Y)) Q:Y'=+Y  D
 ..S %=+^AUPNVCPT(Y,0)
 ..I $$ICD^ATXCHK(%,CPTT,1) I '$D(BUDDX(D)) S BUDDX(D)="",CNT=CNT+1,BUDALL=BUDALL_VIEN_"|"_$$VAL^XBDIQ1(9000010.18,Y,.01)_U,H=1 I D'<RPBD S B=1
 .Q:H
 .;NOW PROCEDURES
 .S Y=0,H="" F  S Y=$O(^AUPNVPRC("AD",VIEN,Y)) Q:Y'=+Y  D
 ..S %=+^AUPNVPRC(Y,0)
 ..I $$ICD^ATXCHK(%,PXT,0)  I '$D(BUDDX(D)) S BUDDX(D)="",CNT=CNT+1,BUDALL=BUDALL_VIEN_"|"_$$VAL^XBDIQ1(9000010.08,Y,.01)_U,H=1 I D'<RPBD S B=1
 .Q:H
 .Q
 I CNT>1,B D  G MA
 .S X=0,C=0 F  S X=$O(BUDDX(X)) Q:X'=+X  S C=C+1 I C=2 S BUDD=X  ;second visit
 I 'B Q 0  ;no visit during time period
PROB S T=$O(^ATXAX("B","BGP PREGNANCY DIAGNOSES 2",0))
 S (X,G)=0,Z="" F  S X=$O(^AUPNPROB("AC",P,X)) Q:X'=+X!(G)  D
 .Q:$P(^AUPNPROB(X,0),U,12)="D"
 .Q:$P(^AUPNPROB(X,0),U,8)>EDATE
 .Q:$P(^AUPNPROB(X,0),U,8)<BDATE
 .S Y=$P(^AUPNPROB(X,0),U)
 .Q:'$$ICD^ATXCHK(Y,T,9)
 .S G=$P(^AUPNPROB(X,0),U,8),Z=X
 .Q
 I G=0,BUDD="" Q 0  ;no dxs and no problem list
 S BUDD=G,BUDALL=BUDALL_"Problem List: "_$$VAL^XBDIQ1(9000011,Z,.01)_" on "_$$DATE^BUDEUTL1(G)_U
MA ;now check for abortion or miscarriage
 ;abortion first
 K BUDG S Y="BUDG(" S X=P_"^LAST DX [BGP MISCARRIAGE/ABORTION DXS;DURING "_$$FMTE^XLFDT(BUDD)_"-"_$$FMTE^XLFDT(EDATE) S E=$$START1^APCLDF(X,Y)
 I $D(BUDG(1)) Q 0  ;HAD MIS/AB
 S BUDG=$$LASTPRC^BUDEUTL1(P,"BGP ABORTION PROCEDURES",BDATE,EDATE)
 I BUDG Q 0
 S T=$O(^ATXAX("B","BGP MISCARRIAGE/ABORTION DXS",0))
 S (X,G)=0 F  S X=$O(^AUPNPROB("AC",P,X)) Q:X'=+X!(G)  D
 .Q:$P(^AUPNPROB(X,0),U,12)="D"
 .Q:$P(^AUPNPROB(X,0),U,8)<BUDD
 .Q:$P(^AUPNPROB(X,0),U,8)>EDATE
 .S Y=$P(^AUPNPROB(X,0),U)
 .Q:'$$ICD^ATXCHK(Y,T,9)
 .S G=1
 .Q
 I G Q 0
 ;now check CPTs for Abortion and Miscarriage
 S T=$O(^ATXAX("B","BGP CPT ABORTION",0))
 S %=$$CPT^BUDEDU(P,BUDD,EDATE,T,3)
 I %]"" Q 0
 S T=$O(^ATXAX("B","BGP CPT MISCARRIAGE",0))
 S %=$$CPT^BUDEDU(P,BUDD,EDATE,T,3)
 I %]"" Q 0
 S T=$O(^ATXAX("B","BGP CPT ABORTION",0))
 S %=$$TRAN^BUDEDU(P,BUDD,EDATE,T,3)
 I %]"" Q 0
 S T=$O(^ATXAX("B","BGP CPT MISCARRIAGE",0))
 S %=$$TRAN^BUDEDU(P,BUDD,EDATE,T,3)
 I %]"" Q 0
 Q 1_"*"_BUDALL
 ;
PRINT ;EP - called from taskman
 S BUDPG=0
 S BUDQUIT=0
 S BUD80L="",$P(BUD80L,"_",79)="_"
 I BUDROT="D" D  G PL
 .D ^%ZISC ;close printer device
 .K ^TMP($J)
 .S ^TMP($J,"BUDDEL",0)=0
 .S BUDDECNT=0
 D HEADER^BUDERPTP Q:BUDQUIT  D T6BH
 W $$CTR("SECTION A:  AGE CATEGORIES FOR PRENATAL PATIENTS"),!
 D LINE
 W $$CTR("DEMOGRAPHIC CHARACTERISTICS OF PRENATAL CARE PATIENTS"),!
 D LINE
 W ?20,"AGE",?45,"|",?50,"NUMBER OF PATIENTS (a)",!
 D LINE1
 W ?2,"1",?5,"LESS THAN 15 YEARS",?45,"|",?58,"",!
 D LINE1
 W ?2,"2",?5,"AGES 15-19",?45,"|",?58,"",!
 D LINE1
 I $Y>(IOSL-3) D HEADER^BUDERPTP Q:BUDQUIT  D T6BH
 W ?2,"3",?5,"AGES 20-24",?45,"|",?58,"",! D LINE1
 I $Y>(IOSL-3) D HEADER^BUDERPTP Q:BUDQUIT  D T6BH
 W ?2,"4",?5,"AGES 25-44",?45,"|",?58,"",! D LINE1
 I $Y>(IOSL-3) D HEADER^BUDERPTP Q:BUDQUIT  D T6BH
 W ?2,"5",?5,"AGES 45 AND OVER",?45,"|","",! D LINE1
 I $Y>(IOSL-3) D HEADER^BUDERPTP Q:BUDQUIT  D T6BH
 W ?2,"6",?5,"TOTAL PATIENTS (SUM LINES 1-5)",?45,"|","",! D LINE1
 I $Y>(IOSL-12) D HEADER^BUDERPTP Q:BUDQUIT  D T6BH
 W !,$$CTR("SECTION B - EARLY ENTRY INTO PRENATAL CARE"),! D LINE
 W "EARLY ENTRY INTO",?37,"|",?40,"WOMEN HAVING",?60,"|",?63,"WOMEN HAVING",!
 W "PRENATAL CARE",?37,"|",?40,"FIRST VISIT WITH",?60,"|",?63,"FIRST VISIT WITH",!
 W "",?37,"|",?40,"HEALTH CENTER",?60,"|",?63,"ANOTHER PROVIDER",!
 W ?37,"|",?45,"(a)",?60,"|",?68,"(b)",!
 D LINE2
 W ?2,7,?5,"First Trimester",?37,"|",?45,"",?60,"|",?68,"",! D LINE2
 W ?2,8,?5,"Second Trimester",?37,"|",?45,"",?60,"|",?68,"",! D LINE2
 W ?2,9,?5,"Third Trimester",?37,"|",?45,"",?60,"|",?68,"",! D LINE2
 ;
 D HEADER^BUDERPTP Q:BUDQUIT  D T6BH
 W $$CTR("SECTION C - CHILDHOOD IMMUNIZATION STATUS"),!
 D LINE
 W "CHILDHOOD IMMUNIZATION",?23,"|",?26,"TOTAL PATIENTS",?45,"|",?47,"NUMBER CHARTS",?65,"|",?67,"NUMBER OF",!
 W "STATUS",?23,"|",?26,"WITH 2ND",?45,"|",?47,"SAMPLED OR EHR",?65,"|",?67,"PATIENTS",!
 W ?23,"|",?26,"BIRTHDAY",?45,"|",?47,"TOTAL",?65,"|",?67,"IMMUNIZED",!
 W ?23,"|",?26,"",?45,"|",?47,"",?65,"|",?67,"",!
 W ?23,"|",?30,"(a)",?45,"|",?50,"(b)",?65,"|",?70,"(c)",!
 D LINE3
 W ?1,"10",?5,"MEASURE: ",?23,"|",?45,"|",?65,"|",!
 W ?5,"Percentage of ",?23,"|",?45,"|",?65,"|",!
 W ?5,"children 2 years",?23,"|",?45,"|",?65,"|",!
 W ?5,"of age who",?23,"|",?45,"|",?65,"|",!
 W ?5,"received age",?23,"|",?30,$$C($G(BUDSECTC("PTS"))),?45,"|",?50,$$C($G(BUDSECTC("PTS"))),?65,"|",?70,$$C($G(BUDSECTC("IMM"))),!
 W ?5,"appropriate",?23,"|",?45,"|",?65,"|",!
 W ?5,"vaccines by their",?23,"|",?45,"|",?65,"|",!
 W ?5,"2nd birthday",?23,"|",?45,"|",?65,"|",!
 ;W ?5,"birthday",?23,"|",?45,"|",?65,"|",!
 D LINE
 I $Y>(IOSL-20) D HEADER^BUDERPTP Q:BUDQUIT  D T6BH
 W $$CTR("SECTION D - CERVICAL CANCER SCREENING"),!
 D LINE
 W "CERVICAL CANCER",?23,"|",?26,"TOTAL FEMALE",?45,"|",?47,"NUMBER CHARTS",?65,"|",?67,"NUMBER OF",!
 W "SCREENING",?23,"|",?26,"PATIENTS AGED",?45,"|",?47,"SAMPLED OR EHR",?65,"|",?67,"PATIENTS",!
 W ?23,"|",?26,"23 THROUGH 64",?45,"|",?47,"TOTAL",?65,"|",?67,"TESTED",!
 W ?23,"|",?30,"(a)",?45,"|",?50,"(b)",?65,"|",?70,"(c)",!
 D LINE3
 W ?1,"11",?5,"MEASURE: ",?23,"|",?45,"|",?65,"|",!
 W ?5,"Percentage of ",?23,"|",?45,"|",?65,"|",!
 W ?5,"women 21-64 ",?23,"|",?45,"|",?65,"|",!
 W ?5,"years of age who",?23,"|",?30,$$C($G(BUDSECTD("PTS"))),?45,"|",?50,$$C($G(BUDSECTD("PTS"))),?65,"|",?70,$$C($G(BUDSECTD("PAP"))),!
 W ?5,"received one or",?23,"|",?45,"|",?65,"|",!
 W ?5,"more Pap tests to",?23,"|",?45,"|",?65,"|",!
 W ?5,"screen for",?23,"|",?45,"|",?65,"|",!
 W ?5,"cervical cancer",?23,"|",?45,"|",?65,"|",!
 D LINE
 D REST6B^BUDERP6E
PL D LISTS^BUDERP6I
 D ^%ZISC
 I BUDROT="D" D SAVEDEL^BUDERPTD
 K ^XTMP("BUDERP6B",BUDJ,BUDH)
 Q
T6BH ;
 W !,$$CTR("TABLE 6B - QUALITY OF CARE MEASURES"),!,$$REPEAT^XLFSTR("_",79),!
 Q
LINE ;
 W $$REPEAT^XLFSTR("_",79),!
 Q
LINE1 ;
 W $$REPEAT^XLFSTR("_",45),"|",$$REPEAT^XLFSTR("_",33),!
 Q
LINE2 ;
 W $$REPEAT^XLFSTR("_",37),"|",$$REPEAT^XLFSTR("_",22),"|",$$REPEAT^XLFSTR("_",18),!
 Q
LINE3 ;
 W $$REPEAT^XLFSTR("_",23),"|",$$REPEAT^XLFSTR("_",21),"|",$$REPEAT^XLFSTR("_",19),"|",$$REPEAT^XLFSTR("_",13),!
 Q
T6BI ;
 W !!,"TABLE 6B:  QUALITY OF CARE MEASURES"
 W !,"This report will produce UDS Table 6B, quality of care measures."
 W !,"Patients must meet additional criteria as specified for each measure."
 Q
GENI ;general introductions
 W:$D(IOF) @(IOF)
 W !!,$$CTR($$LOC,80),!,$$CTR("UDS 2017",80),!
 W !,"UDS searches your database to find all patients reported for the quality"
 W !,"of care indicators during the time period January 1 - "
 W !,"December 31, 2017.  Based on the UDS definition, to be considered a"
 W !,"patient, the patient must have had at least one visit meeting the"
 W !,"following criteria:"
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
 D PRENATT^BUDERP6I
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
NRY ;
 W !!,"not developed yet....." H 3
 Q
PAUSE ;
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
 W !,"Enter the Calendar Year.  Use a 4 digit year, e.g. 2017"
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

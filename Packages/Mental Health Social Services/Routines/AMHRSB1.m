AMHRSB1 ; IHS/CMI/LAB - list sbirt 24 Aug 2009 6:21 PM ; 07 Jul 2017  9:59 AM
 ;;4.0;IHS BEHAVIORAL HEALTH;**8**;JUN 02, 2010;Build 7
 ;
 ;
INFORM ;
 W !,$$CTR("SCREENING, BRIEF INTERVENTION, AND REFERRAL TO TREATMENT (SBIRT)",80)
 W !,$$CTR("TALLY AND LISTING OF PATIENTS SCREENED POSITIVE FOR ALCOHOL USE W/RESULT ",80),!,$$CTR("AND TREATMENT FOR EACH SCREENING DONE",80)
 W !,"This report will tally and optionally list all patients who have had a positive"
 W !,"screening result for risky or harmful alcohol use in an Ambulatory Care setting"
 W !,"in the time frame specified by the user.  These tallies will also be further "
 W !,"defined to show if the patient recieved a Brief Negotiated Interview (BNI),"
 W !,"Brief Intervention (BI), and/or Referral to Treatment (RT) within 7 days of"
 W !,"the positive screen result.  Visits from PCC and AMH will be included."
 W !!,"A positive screening result for risky or harmful alcohol use is defined as"
 W !,"any of the following:"
 W !?2,"- Alcohol Screening Exam (Exam code 35)-positive result"
 W !?2,"- Measurements: AUDT result >=8, AUDC result >=4 (men), AUDC result >=3,"
 W !?2,"  (women), CRFT result >=2, and CRFT result <=6"
 W !?2,"- Health Factor (CAGE): result of 1/4, 2/4, 3/4, or 4/4"
 W !!,"BNI/BI documented by the following:"
 W !?2,"- CPT G0396, G0397, H0050, 99408 (old code), 99409 (old code), 96150 "
 W !?2,"  through 96155"
 W !?2,"- Patient education codes containing AOD-BNI, G0396, G0397, H0050, 99408,"
 W !?2,"  99409, 96150 through 96155"
 W !!,"Referral to Treatment documented by the following:"
 W !?2,"- Patient education code AOD-TX"
 W !
 D PAUSE^AMHLEA
 D DBHUSR^AMHUTIL
 D XIT
 ;
DATES K AMHRED,AMHRBD
 W !,"Please enter the date range for this report."
 K DIR W ! S DIR(0)="DO^::EXP",DIR("A")="Enter Beginning Date"
 D ^DIR Q:Y<1  S AMHRBD=Y
 K DIR S DIR(0)="DO^:DT:EXP",DIR("A")="Enter Ending Date"
 D ^DIR Q:Y<1  S AMHRED=Y
 ;
 I AMHRED<AMHRBD D  G DATES
 . W !!,$C(7),"Sorry, Ending Date MUST not be earlier than Beginning Date."
 ;
SEX ;
 S AMHRSEX=""
 S DIR(0)="S^F:FEMALES Only;M:MALES Only;A:All Genders",DIR("A")="Include which patients in the list",DIR("B")="A" KILL DA D ^DIR KILL DIR
 I $D(DIRUT) G DATES
 S AMHRSEX=Y
 I AMHRSEX="A" S AMHRSEX="MFU"
AGE ;Age Screening
 K AMHRAGE,AMHRAGET
 W ! S DIR(0)="YO",DIR("A")="Would you like to restrict the report by Patient age range",DIR("B")="NO"
 S DIR("?")="If you wish to include visits from ALL age ranges, anwser No.  If you wish to list visits for only patients within a particular age range, enter Yes."
 D ^DIR K DIR
 G:$D(DIRUT) SEX
 I 'Y G PRIMPRV
 ;
AGER ;Age Screening
 W !,"Please note: age is calculated as of the 1st day of the report date range.",!
 S DIR(0)="FO^1:7",DIR("A")="Enter an Age Range (e.g. 5-12,1-1)" D ^DIR
 I Y="" W !!,"No age range entered." G AGE
 I Y'?1.3N1"-"1.3N W !!,$C(7),$C(7),"Enter a numeric range in the format nnn-nnn. e.g. 0-5, 0-99, 5-20." G AGER
 S AMHRAGET=Y
PRIMPRV ;
 W !
 S (AMHRDISC,AMHRPSRT,AMHRPPUN)="" K AMHRPROV
 S DIR(0)="SO^O:One Provider Only;P:Any/All Providers"
 S DIR("A")="Include patients who were seen by which providers during the report period",DIR("B")="P"
 S DIR("?")="If you wish to count only one primary provider of service enter a 'O'.  To include ALL/ANY providers enter an 'A'." D ^DIR K DIR
 G:$D(DIRUT) XIT
 S AMHRPSRT=Y
 I Y="P" K AMHRPROV G LIST
PRV1 ;
 I $P(^DD(9000010.06,.01,0),U,2)[200 S DIC="^VA(200,",DIC(0)="AEMQ",D="AK.PROVIDER",DIC("A")="Enter PROVIDER (Lastname,Firstname): " D MIX^DIC1 K DIC,D
 I $P(^DD(9000010.06,.01,0),U,2)[6 S DIC="^DIC(6,",DIC(0)="AEMQ",DIC("A")="Enter PROVIDER (Lastname,Firstname): " D ^DIC K DIC
 I $D(DTOUT)!(Y=-1) G PRIMPRV
 S AMHRPROV=+Y
LIST ;
 K AMHRLIST
 W !!,"Patient Lists"
 W !?5,"1  Those with a Positive Alcohol Screening"
 W !?5,"2  Those with at least 1 Positive Alcohol Screening with BNI/BI or RT"
 W !?5,"3  Those with all Positive Alcohol Screenings without BNI/BI or RT"
 W !?5,"0  No Lists"
 S DIR(0)="L^0:3",DIR("A")="Which list(s) would you like to include",DIR("B")="0" KILL DA D ^DIR KILL DIR
 I $D(DIRUT) G DATES
 I Y[0 G DEMO
 S A=Y,C="" F I=1:1 S C=$P(A,",",I) Q:C=""  S AMHRLIST(C)=""
LIST1 ;
 S AMHRSORT=""
 W !
 S DIR(0)="S^H:Health Record Number;N:Patient Name;A:Age of Patient;G:Gender of Patient;T:Terminal Digit HRN"
 S DIR("A")="How would you like the list to be sorted",DIR("B")="H"
 KILL DA D ^DIR KILL DIR
 I $D(DIRUT) G LIST
 S AMHRSORT=Y
DEMO ;
 D DEMOCHK^AMHUTIL1(.AMHDEMO)
 I AMHDEMO=-1 G LIST
ZIS ;CALL TO XBDBQUE
 S DIR(0)="S^P:PRINT Output;B:BROWSE Output on Screen",DIR("A")="Do you wish to ",DIR("B")="P" K DA D ^DIR K DIR
 I $D(DIRUT) G XIT
 I $G(Y)="B" D BROWSE,XIT Q
 S XBRP="PRINT^AMHRSB1P",XBRC="PROC^AMHRSB1",XBRX="XIT^AMHRSB1",XBNS="AMH"
 D ^XBDBQUE
 D XIT
 Q
BROWSE ;
 S XBRP="VIEWR^XBLM(""^AMHRSB1P"")"
 S XBNS="AMH",XBRC="PROC^AMHRSB1",XBRX="XIT^AMHRSB1",XBIOP=0 D ^XBDBQUE
 Q
XIT ;
 D EN^XBVK("AMHR")
 D ^XBFMK
 Q
PROC ;
 S AMHRCNT=0
 S AMHRH=$H,AMHRJ=$J
 K ^XTMP("AMHRSB1",AMHRJ,AMHRH)
 D XTMP^AMHUTIL("AMHRSB1","SBIRT REPORT")
 S (AMHTPTSR,AMHTSCRS,AMHTPTPO,AMHTSCRP,AMHTSCR0,AMHTSCR1,AMHTSCR4,AMHTSCRB,AMHTPTB,AMHTPT0,AMHTPT1,AMHTPT4,AMHTPTT,AMHTSCRT)=0
 S DFN=0 F  S DFN=$O(^AUPNPAT(DFN)) Q:DFN'=+DFN  D
 .;I DUZ=2881 Q:DFN'=42
 .Q:'$D(^DPT(DFN,0))
 .Q:$P(^DPT(DFN,0),U,19)  ;merged away
 .Q:'$$ALLOWP^AMHUTIL(DUZ,DFN)  ;not allowed to see this patient
 .Q:$$DEMO^AMHUTIL1(DFN,$G(AMHDEMO))  ;demo patient
 .I AMHRSEX'[$P(^DPT(DFN,0),U,2) Q  ;not right gender
 .S X=$$AGE^AUPNPAT(DFN,AMHRBD)
 .I $D(AMHRAGET),X>$P(AMHRAGET,"-",2) Q
 .I $D(AMHRAGET),X<$P(AMHRAGET,"-",1) Q
 .K ^TMP($J),AMHAPRVS
 .D GATHER  ;gather up all visits and providers that were allowed to be looked at for this.
 .I $D(AMHRPROV),'$D(AMHAPRVS(AMHRPROV)) Q  ;quit if want only pts provider saw
 .;now we need to get all of the screenings, positive screenings and bni's for this patient and update counters
 .I '$D(^TMP($J)) Q  ;no visits
 .S (GPS,GPP,GPB,GP0,GP1,GP4,GPT)=0
 .D SCREENS
 .I GPS S AMHTPTSR=AMHTPTSR+1
 .I GPP S AMHTPTPO=AMHTPTPO+1
 .I GPB S AMHTPTB=AMHTPTB+1
 .I GP0 S AMHTPT0=AMHTPT0+1
 .I GP1 S AMHTPT1=AMHTPT1+1
 .I GP4 S AMHTPT4=AMHTPT4+1
 .I GPT S AMHTPTT=AMHTPTT+1
 .;LISTS
 .Q:'$D(AMHRLIST)  ;no lists wanted
 .D LISTS^AMHRSB2
 Q
GATHER ;
 K AMHAPRVS
 S AMHRSD=$$FMADD^XLFDT(AMHRBD,-1),AMHRSD=AMHRSD_".9999"
 F  S AMHRSD=$O(^AMHREC("AF",DFN,AMHRSD)) Q:AMHRSD'=+AMHRSD!($P(AMHRSD,".")>AMHRED)  D
 .S AMHRBIEN=0 F  S AMHRBIEN=$O(^AMHREC("AF",DFN,AMHRSD,AMHRBIEN)) Q:AMHRBIEN'=+AMHRBIEN  D
 ..S AMHRDATE=$P(AMHRSD,".")
 ..Q:'$D(^AMHREC(AMHRBIEN,0))
 ..Q:'$$ALLOWVI^AMHUTIL(DUZ,AMHRBIEN)
 ..S T=$$VAL^XBDIQ1(9002011,AMHRBIEN,.07)
 ..I T'="AFTERCARE",T'="OUTPATIENT",T'="INTENSIVE OUTPATIENT",T'="EMERGENCY ROOM",T'="TELE-BEHAVIORAL HEALTH" Q
 ..Q:AMHRDATE>AMHRED
 ..Q:AMHRDATE<AMHRBD
 ..S ^TMP($J,"BHV",DFN,AMHRBIEN)=""
 ..S X=0 S X=$O(^AMHRPROV("AD",AMHRBIEN,X)) Q:X'=+X  S AMHAPRVS($P(^AMHRPROV(X,0),U))=""
 ;NOW DO THE SAME WITH PCC VISITS
 K AMHPCCV
 D ALLV^APCLAPIU(DFN,AMHRBD,AMHRED,"AMHPCCV")
 I '$D(AMHPCCV) Q  ;NO PCC VISITS
 S X=0 F  S X=$O(AMHPCCV(X)) Q:X'=+X  D
 .S V=$P(AMHPCCV(X),U,5)
 .I '$D(^AUPNVSIT(V,0)) Q
 .I $P(^AUPNVSIT(V,0),U,7)'="A" Q
 .I '$$ALLOWPCC^AMHUTIL(DUZ,V) Q
 .S Y=0 S Y=$O(^AUPNVPRV("AD",V,Y)) Q:Y'=+Y  S AMHAPRVS($P(^AUPNVPRV(Y,0),U))=""
 .S ^TMP($J,"PCCV",DFN,V)=""
 K AMHPCCV
 Q
SCREENS ;
 K AMHASCR
 S AMHV=0 F  S AMHV=$O(^TMP($J,"BHV",DFN,AMHV)) Q:AMHV'=+AMHV  D
 .S (GVS,GVP,GVT,GV0,GV1,GV4,GVB)=0  ;CONTROLS VISIT
 .D CHECK
 .I GVS S AMHTSCRS=AMHTSCRS+1
 .I GVP S AMHTSCRP=AMHTSCRP+1
 .I GVT S AMHTSCRT=AMHTSCRT+1
 .I GV0 S AMHTSCR0=AMHTSCR0+1
 .I GV1 S AMHTSCR1=AMHTSCR1+1
 .I GV4 S AMHTSCR4=AMHTSCR4+1
 .I GVB S AMHTSCRB=AMHTSCRB+1
 .Q
 S AMHV=0 F  S AMHV=$O(^TMP($J,"PCCV",DFN,AMHV)) Q:AMHV'=+AMHV  D
 .S (GVS,GVP,GVT,GV0,GV1,GV4,GVB)=0
 .S AMHD=$$VD^APCLV(AMHV)
 .Q:$D(AMHASCR(AMHD))  ;ALREADY HAVE A POSITITVE ON THIS DATE
 .D CHECKPCC
 .I GVS S AMHTSCRS=AMHTSCRS+1
 .I GVP S AMHTSCRP=AMHTSCRP+1
 .I GVT S AMHTSCRT=AMHTSCRT+1
 .I GV0 S AMHTSCR0=AMHTSCR0+1
 .I GV1 S AMHTSCR1=AMHTSCR1+1
 .I GV4 S AMHTSCR4=AMHTSCR4+1
 .I GVB S AMHTSCRB=AMHTSCRB+1
 Q
CHECK ;
 S AMHD=$P($P(^AMHREC(AMHV,0),U),".")
 S S=$$VALI^XBDIQ1(9002011,AMHV,1403)
 I S]"" S GPS=1,GVS=1
 I S="P" S GPP=1,GVP=1,AMHASCR(AMHD)="Alc Scrn^POSITIVE" D GOTONE Q
 I GVP Q
 ;MEASUREMENTS
 S X=0 F  S X=$O(^AMHRMSR("AD",AMHV,X)) Q:X'=+X  D
 .S I=$$VAL^XBDIQ1(9002011.12,X,.01)
 .I I'="AUDT",I'="AUDC",I'="CRFT" Q
 .S GVS=1
 .S GPS=1
 .S R=$$VAL^XBDIQ1(9002011.12,X,.04)
 .S T=""
 .I I="AUDT",R>7 S T=1
 .I I="AUDC",$P(^DPT(DFN,0),U,2)="M",R>3 S T=1
 .I I="AUDC",$P(^DPT(DFN,0),U,2)="F",R>2 S T=1
 .I I="CRFT",R>1,R<7
 .I T=1 D
 ..S GVP=1,GPP=1,AMHASCR(AMHD)=I_U_R D GOTONE
 I GVP Q
BHCPT ;now add in CPT codes
 S AMHCTAX=$O(^ATXAX("B","BGP ALCOHOL SCREENING CPTS",0))
 S X=0 F  S X=$O(^AMHRPROC("AD",AMHV,X)) Q:X'=+X  D
 .S I=$P($G(^AMHRPROC(X,0)),U,1)
 .Q:'I
 .Q:'$$ICD^ATXAPI(I,$O(^ATXAX("B","BGP ALCOHOL SCREENING CPTS",0)),1)
 .S GVS=1
 .S GPS=1
 .S J=$P(^ICPT(I,0),U,1)
 .S R=$S($$ICD^ATXAPI(I,$O(^ATXAX("B","BGP ALCOHOL POSITIVE SCRN CPTS",0)),1):"POSITIVE",1:"")
 .I R="POSITIVE" S GVP=1,GPP=1,AMHASCR(AMHD)="CPT "_J_U_R D GOTONE
 I GVP=1 Q
BHHF ;
 S X=0 F  S X=$O(^AMHRHF("AD",AMHV,X)) Q:X'=+X  D
 .S I=$P($G(^AMHRHF(X,0)),U,1)
 .Q:'I
 .S I=$P($G(^AUTTHF(I,0)),U,1)
 .I I'="CAGE 0/4",I'="CAGE 1/4",I'="CAGE 2/4",I'="CAGE 3/4",I'="CAGE 4/4" Q  ;cage only
 .S R=$S(I["0":"NEGATIVE",1:"POSITIVE")
 .S GVS=1,GPS=1
 .I R="POSITIVE" S GVP=1,GPP=1,AMHASCR(AMHD)="HF^"_I_U_R D GOTONE
 .Q
 Q
CHECKPCC ;
 ;EXAMS
 S AMHD=$$VD^APCLV(AMHV)
 S X=0 F  S X=$O(^AUPNVXAM("AD",AMHV,X)) Q:X'=+X  D
 .S I=$P($G(^AUPNVXAM(X,0)),U,1)
 .Q:'I
 .Q:$P($G(^AUTTEXAM(I,0)),U,2)'=35
 .S S=$$VALI^XBDIQ1(9000010.13,X,.04)
 .I S]"" S GPS=1,GVS=1
 .I S="P" S GPP=1,GVP=1,AMHASCR(AMHD)="Alc Scrn^POSITIVE" D GOTONE Q
 I GVP Q
PCCHF ;
 S E=0 F  S E=$O(^AUPNVHF("AD",AMHV,E)) Q:E'=+E  D
 .S I=$P($G(^AUPNVHF(E,0)),U,1)
 .S I=$P($G(^AUTTHF(I,0)),U,1)
 .I I'="CAGE 0/4",I'="CAGE 1/4",I'="CAGE 2/4",I'="CAGE 3/4",I'="CAGE 4/4" Q  ;cage only
 .S R=$S(I["0":"NEGATIVE",1:"POSITIVE")
 .S GVS=1,GPS=1
 .I R="POSITIVE" S GVP=1,GPP=1,AMHASCR(AMHD)="HF^"_I_U_R D GOTONE
 I GVP Q
PCCCPT ;
 S E=0 F  S E=$O(^AUPNVCPT("AD",AMHV,E)) Q:E'=+E  D
 .S I=$P($G(^AUPNVCPT(E,0)),U,1)
 .Q:'I
 .Q:'$$ICD^ATXAPI(I,$O(^ATXAX("B","BGP ALCOHOL SCREENING CPTS",0)),1)
 .S GVS=1
 .S GPS=1
 .S J=$P(^ICPT(I,0),U,1)
 .S R=$S($$ICD^ATXAPI(I,$O(^ATXAX("B","BGP ALCOHOL POSITIVE SCRN CPTS",0)),1):"POSITIVE",1:"")
 .I R="POSITIVE" S GVP=1,GPP=1,AMHASCR(AMHD)="CPT "_J_U_R D GOTONE
 I GVP=1 Q
PCCMEAS ;now add in v measurements
 S E=0 F  S E=$O(^AUPNVMSR("AD",AMHV,E)) Q:E'=+E  D
 .S I=$$VAL^XBDIQ1(9000010.01,E,.01)
 .I I'="AUDT",I'="AUDC",I'="CRFT" Q
 .S R=$$VAL^XBDIQ1(9000010.01,E,.04)
 .S T=""
 .I I="AUDT",R>7 S T=1
 .I I="AUDC",$P(^DPT(DFN,0),U,2)="M",R>3 S T=1
 .I I="AUDC",$P(^DPT(DFN,0),U,2)="F",R>2 S T=1
 .I I="CRFT",R>1,R<7
 .I T=1 D
 ..S GVP=1,GPP=1,AMHASCR(AMHD)=I_U_R D GOTONE
 Q
 ;
GOTONE ;DO BNI STUFF
 ;AMHD is the date of the positive screen
 NEW X,Z,E
 K AMHABNI
 D BNI^AMHRSB2(DFN,AMHD,$$FMADD^XLFDT(AMHD,7),.AMHABNI)
 I '$D(AMHABNI) G TRT
 S D=$O(AMHABNI(0)) I D S Y=$O(AMHABNI(D,0)) S AMHBNID=AMHABNI(D,Y)_U_"BNI"
 S AMHTSCRB=AMHTSCRB+1,GPB=1,GVB=1  ;TOTAL SCREENS WITH A BNI
 S Z=$P(AMHBNID,U,5)
 I Z=0 S AMHTSCR0=AMHTSCR0+1,GP0=1,GV0=1  ;TOTAL SCREENS ON SAME DAY
 I Z>0,Z<4 S AMHTSCR1=AMHTSCR1+1,GP1=1,GV1=1  ;TOTAL SCREENS 1-3 DAYS
 I Z>3 S AMHTSCR4=AMHTSCR4+1,GP4=1,GV4=1   ;TOTAL SCREENS 4-7 DAYS
 S $P(AMHASCR(AMHD),U,4)="BNI"_U_$P(AMHBNID,U,2)_U_$P(AMHBNID,U,3)_U_$P(AMHBNID,U,4)_U_$P(AMHBNID,U,5)
 Q
TRT S AMHBNID=""
 S AMHBNID=$$TXPTED(DFN,AMHD,$$FMADD^XLFDT(AMHD,7))
 I AMHBNID S AMHTSCRT=AMHTSCRT+1,GPT=1,GVT=1,$P(AMHASCR(AMHD),U,4)="REF TX"_U_$P(AMHBNID,U,2)_U_$P(AMHBNID,U,3)_U_$P(AMHBNID,U,4)_U_$P(AMHBNID,U,5)
 Q
TXPTED(P,BDATE,EDATE) ;
 NEW AMHG
 S Y="AMHG("
 S X=P_"^FIRST EDUC AOD-TX;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE) S E=$$START1^APCLDF(X,Y)
 I '$D(AMHG(1)) G BHTX
 Q 1_U_"AOD-TX "_U_$$DATE^BGP7UTL($P(AMHG(1),U))_U_$P(AMHG(1),U,1)_U_$$FMDIFF^XLFDT($P(AMHG(1),U,1),BDATE)
BHTX ;
 NEW AMHV,AMHVD,X,I,T,G
 S G=""
 S AMHV=0 F  S AMHV=$O(^TMP($J,"BHV",AMHV)) Q:AMHV'=+AMHV  D
 .S X=0 F  S X=$O(^AMHREDU("AD",AMHV,X)) Q:X'=+X  D
 ..S I=$P($G(^AMHREDU(X,0)),U,1)
 ..Q:'I
 ..S T=$P($G(^AUTTEDT(I,0)),U,2)
 ..I T="AOD-TX" S G=1_U_"REFERRAL: AOD-TX "_U_$$DATE^BGP7UTL($P(AMHG(1),U))_U_$P(AMHG(1),U,1)_U_$$FMDIFF^XLFDT($P(AMHG(1),U,1),BDATE)
 Q G
CTR(X,Y) ;EP - Center X in a field Y wide.
 Q $J("",$S($D(Y):Y,1:IOM)-$L(X)\2)_X
 ;----------
EOP ;EP - End of page.
 Q:$E(IOST)'="C"
 Q:IO'=IO(0)
 Q:$D(ZTQUEUED)!'(IOT="TRM")!$D(IO("S"))
 NEW DIR
 K DIRUT,DFOUT,DLOUT,DTOUT,DUOUT
 W !
 S DIR("A")="End of Report.  Press Enter",DIR(0)="E" D ^DIR
 Q
 ;----------
USR() ;EP - Return name of current user from ^VA(200.
 Q $S($G(DUZ):$S($D(^VA(200,DUZ,0)):$P(^(0),U),1:"UNKNOWN"),1:"DUZ UNDEFINED OR 0")
 ;----------
LOC() ;EP - Return location name from file 4 based on DUZ(2).
 Q $S($G(DUZ(2)):$S($D(^DIC(4,DUZ(2),0)):$P(^(0),U),1:"UNKNOWN"),1:"DUZ(2) UNDEFINED OR 0")
 ;----------

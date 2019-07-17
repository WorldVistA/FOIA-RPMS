BUDHRP6A ;IHS/CMI/LAB - TABLE 6 MEASURES; 
 ;;13.0;IHS/RPMS UNIFORM DATA SYSTEM;;OCT 12, 2018;Build 90
 ;
 ;
S(V) ;
 S BUDDECNT=BUDDECNT+1
 S ^TMP($J,"BUDDEL",BUDDECNT)=$G(V)
 Q
 ;----------
HIVLIST1 ;EP
 D EOJ
 S BUDHIV1L=1
 D HIV1
 S BUDTSCTC=2,BUDZLIST=1 G EN1^BUDHRP6B
HIVLIST2 ;EP
 D EOJ
 S BUDHIV2L=1
 D HIV2
 S BUDTSCTC=2,BUDZLIST=1 G EN1^BUDHRP6B
PAUSE ;
 K DIR S DIR(0)="E",DIR("A")="PRESS ENTER" KILL DA D ^DIR KILL DIR
 Q
GENI ;EP
 D GENI^BUDHRP6I
 Q
 ;
EOJ ;
 D EN^XBVK("BUD")
 Q
CTR(X,Y) ;
 Q $J("",$S($D(Y):Y,1:IOM)-$L(X)\2)_X
LOC() ;
 Q $S($G(DUZ(2)):$S($D(^DIC(4,DUZ(2),0)):$P(^(0),U),1:"UNKNOWN"),1:"DUZ(2) UNDEFINED OR 0")
HIV1 ;EP
 D IN6B^BUDHDU("HIV1")
 Q
HIV1L ;EP
 S BUDP=0,BUDQUIT=0,BUDTOT=0
 D HIV1H Q:BUDQUIT
 I '$D(^XTMP("BUDHRP6B",BUDJ,BUDH,"HIV1")) W:BUDROT="P" !!,"No patients to report." D:BUDROT="D" S() D:BUDROT="D" S("No patients to report.") Q
 D HIV1L1
 I BUDROT="P",$Y>(IOSL-3) D HIV1H Q:BUDQUIT
 I BUDROT="P" W !,"TOTAL PATIENTS WITH FIRST HIV DX & TIMELY FOLLOW-UP:  ",BUDTOT,!
 I BUDROT="D" D S(),S("TOTAL PATIENTS WITH FIRST HIV DX & TIMELY FOLLOW-UP:  "_BUDTOT)
 Q
HIV1L1 ;
 I BUDROT="P",$Y>(IOSL-7) D HIV1H Q:BUDQUIT
 S BUDAGE="" F  S BUDAGE=$O(^XTMP("BUDHRP6B",BUDJ,BUDH,"HIV1",BUDAGE)) Q:BUDAGE=""!(BUDQUIT)  D
 .S BUDNAME="" F  S BUDNAME=$O(^XTMP("BUDHRP6B",BUDJ,BUDH,"HIV1",BUDAGE,BUDNAME)) Q:BUDNAME=""!(BUDQUIT)  D
 ..S BUDCCOM="" F  S BUDCCOM=$O(^XTMP("BUDHRP6B",BUDJ,BUDH,"HIV1",BUDAGE,BUDNAME,BUDCCOM)) Q:BUDCCOM=""!(BUDQUIT)  D
 ...S DFN=0 F  S DFN=$O(^XTMP("BUDHRP6B",BUDJ,BUDH,"HIV1",BUDAGE,BUDNAME,BUDCCOM,DFN)) Q:DFN'=+DFN!(BUDQUIT)  D
 ....I BUDROT="P",$Y>(IOSL-3) D HIV1H Q:BUDQUIT
 ....I BUDROT="P" W !,$E($P(^DPT(DFN,0),U,1),1,25),?29,$S($$HRN^AUPNPAT(DFN,BUDSITE)]"":$$HRN^AUPNPAT(DFN,BUDSITE,2),1:$$HRN^AUPNPAT(DFN,DUZ(2),2)),?41,$E(BUDCCOM,1,25),?70,$P(^DPT(DFN,0),U,2),?75,BUDAGE,!
 ....S BUDTOT=BUDTOT+1
 ....S BUDALL=^XTMP("BUDHRP6B",BUDJ,BUDH,"HIV1",BUDAGE,BUDNAME,BUDCCOM,DFN)
 ....I BUDROT="P" W ?5,$P(BUDALL,"|",1),?35,$S($P(BUDALL,"|",3)]"":$P(BUDALL,"|",3),1:"None"),?46,$P(BUDALL,"|",2)
 ....I BUDROT="D" S X=$P(^DPT(DFN,0),U,1)_U_$S($$HRN^AUPNPAT(DFN,BUDSITE)]"":$$HRN^AUPNPAT(DFN,BUDSITE,2),1:$$HRN^AUPNPAT(DFN,DUZ(2),2))_U_BUDCCOM_U_$P(^DPT(DFN,0),U,2)_U_$$AGE^AUPNPAT(DFN,BUDCCAD) D
 .....S X=X_U_$P(BUDALL,"|",1)_U_$S($P(BUDALL,"|",3)]"":$P(BUDALL,"|",3),1:"None")_U_$P(BUDALL,"|",2) D S(X)
 Q
HIV1HD ;
 D S(),S(),S()
 D S("***** SENSITIVE INFORMATION *****")
 D S($P(^VA(200,DUZ,0),U,2)_"    "_$$FMTE^XLFDT(DT))
 D S("***  RPMS Uniform Data System (UDS) "_$$VER^BUDHBAN()_"  ***")
 D S("Patient List for Table 6B, Section L")
 D S("Newly Identified HIV Cases with Timely Follow-Up")
 D S($P(^DIC(4,BUDSITE,0),U))
 S X="Reporting Period: "_$$FMTE^XLFDT(BUDBD)_" to "_$$FMTE^XLFDT(BUDED) D S(X)
 S X="Population:  "_$S($G(BUDBEN)=1:"Indian/Alaskan Native (Classification 01)",$G(BUDBEN)=2:"Not Indian Alaskan/Native (Not Classification 01)",$G(BUDBEN)=3:"All (both Indian/Alaskan Natives and Non 01)",1:"") D S(X)
 D S()
 D HT6B^BUDHDU("HIV1")
 D S("PATIENT NAME^HRN^COMMUNITY^SEX^AGE^First HIV DX: Date^Date of Onset^HIV Follow-up: Date")
 Q
HIV1H ;
 I BUDROT="D" D HIV1HD Q
 G:'BUDGPG HIV1H1
 K DIR I $E(IOST)="C",IO=IO(0),'$D(ZTQUEUED) W ! S DIR(0)="EO" D ^DIR K DIR I Y=0!(Y="^")!($D(DTOUT)) S BUDQUIT=1 Q
HIV1H1 ;
 W:$D(IOF) @IOF S BUDGPG=BUDGPG+1
 W !,$$CTR("***** SENSITIVE INFORMATION *****",IOM)
 W !?3,$P(^VA(200,DUZ,0),U,2),?35,$$FMTE^XLFDT(DT),?55,"Section "_BUDSCTC_" of "_BUDTSCTC_", Page "_BUDGPG,!
 W !,$$CTR("***  RPMS Uniform Data System (UDS) "_$$VER^BUDHBAN()_"  ***",80)
 W !,$$CTR("Patient List for Table 6B, Section L,",80),!,$$CTR("Newly Identified HIV Cases with Timely Follow-Up",80),!
 W $$CTR($P(^DIC(4,BUDSITE,0),U),80),!
 S X="Reporting Period: "_$$FMTE^XLFDT(BUDBD)_" to "_$$FMTE^XLFDT(BUDED) W $$CTR(X,80),!
 S X="Population:  "_$S($G(BUDBEN)=1:"Indian/Alaskan Native (Classification 01)",$G(BUDBEN)=2:"Not Indian Alaskan/Native (Not Classification 01)",$G(BUDBEN)=3:"All (both Indian/Alaskan Natives and Non 01)",1:"") W $$CTR(X,80),!
 W $TR($J("",80)," ","-")
 I BUDP=0 D
 .D HT6B^BUDHDU("HIV1")
 W !!,"PATIENT NAME",?34,"HRN",?41,"COMMUNITY",?70,"SEX",?75,"AGE"
 W !?5,"First HIV DX: Date",?35,"Date of Onset",?50,"HIV Follow-up: Date"
 W !,$TR($J("",80)," ","-"),!
 S BUDP=1
 Q
 ;----------
HIV2 ;EP
 D IN6B^BUDHDU("HIV2")
 Q
HIV2L ;EP
 S BUDP=0,BUDQUIT=0,BUDTOT=0
 D HIV2H Q:BUDQUIT
 I '$D(^XTMP("BUDHRP6B",BUDJ,BUDH,"HIV2")) W:BUDROT="P" !!,"No patients to report." D:BUDROT="D" S() D:BUDROT="D" S("No patients to report.") Q
 D HIV2L1
 I BUDROT="P",$Y>(IOSL-3) D HIV2H Q:BUDQUIT
 I BUDROT="P" W !,"TOTAL PATIENTS WITH FIRST HIV DX & TIMELY FOLLOW-UP:  ",BUDTOT,!
 I BUDROT="D" D S(),S("TOTAL PATIENTS WITH FIRST HIV DX & TIMELY FOLLOW-UP:  "_BUDTOT)
 Q
HIV2L1 ;
 I BUDROT="P",$Y>(IOSL-7) D HIV2H Q:BUDQUIT
 S BUDAGE="" F  S BUDAGE=$O(^XTMP("BUDHRP6B",BUDJ,BUDH,"HIV2",BUDAGE)) Q:BUDAGE=""!(BUDQUIT)  D
 .S BUDNAME="" F  S BUDNAME=$O(^XTMP("BUDHRP6B",BUDJ,BUDH,"HIV2",BUDAGE,BUDNAME)) Q:BUDNAME=""!(BUDQUIT)  D
 ..S BUDCCOM="" F  S BUDCCOM=$O(^XTMP("BUDHRP6B",BUDJ,BUDH,"HIV2",BUDAGE,BUDNAME,BUDCCOM)) Q:BUDCCOM=""!(BUDQUIT)  D
 ...S DFN=0 F  S DFN=$O(^XTMP("BUDHRP6B",BUDJ,BUDH,"HIV2",BUDAGE,BUDNAME,BUDCCOM,DFN)) Q:DFN'=+DFN!(BUDQUIT)  D
 ....I BUDROT="P",$Y>(IOSL-3) D HIV2H Q:BUDQUIT
 ....I BUDROT="P" W !,$E($P(^DPT(DFN,0),U,1),1,25),?29,$S($$HRN^AUPNPAT(DFN,BUDSITE)]"":$$HRN^AUPNPAT(DFN,BUDSITE,2),1:$$HRN^AUPNPAT(DFN,DUZ(2),2)),?41,$E(BUDCCOM,1,25),?70,$P(^DPT(DFN,0),U,2),?75,BUDAGE,!
 ....S BUDTOT=BUDTOT+1
 ....S BUDALL=^XTMP("BUDHRP6B",BUDJ,BUDH,"HIV2",BUDAGE,BUDNAME,BUDCCOM,DFN)
 ....I BUDROT="P" W ?5,$P(BUDALL,"|",1),?35,$S($P(BUDALL,"|",3)]"":$P(BUDALL,"|",3),1:"None"),?46,$P(BUDALL,"|",2)
 ....I BUDROT="D" S X=$P(^DPT(DFN,0),U,1)_U_$S($$HRN^AUPNPAT(DFN,BUDSITE)]"":$$HRN^AUPNPAT(DFN,BUDSITE,2),1:$$HRN^AUPNPAT(DFN,DUZ(2),2))_U_BUDCCOM_U_$P(^DPT(DFN,0),U,2)_U_$$AGE^AUPNPAT(DFN,BUDCCAD) D
 .....S X=X_U_$P(BUDALL,"|",1)_U_$S($P(BUDALL,"|",3)]"":$P(BUDALL,"|",3),1:"None")_U_$P(BUDALL,"|",2) D S(X)
 Q
HIV2HD ;
 D S(),S(),S()
 D S("***** SENSITIVE INFORMATION *****")
 D S($P(^VA(200,DUZ,0),U,2)_"    "_$$FMTE^XLFDT(DT))
 D S("***  RPMS Uniform Data System (UDS) "_$$VER^BUDHBAN()_"  ***")
 D S("Patient List for Table 6B, Section L")
 D S("Newly Identified HIV Cases without Timely Follow-Up")
 D S($P(^DIC(4,BUDSITE,0),U))
 S X="Reporting Period: "_$$FMTE^XLFDT(BUDBD)_" to "_$$FMTE^XLFDT(BUDED) D S(X)
 S X="Population:  "_$S($G(BUDBEN)=1:"Indian/Alaskan Native (Classification 01)",$G(BUDBEN)=2:"Not Indian Alaskan/Native (Not Classification 01)",$G(BUDBEN)=3:"All (both Indian/Alaskan Natives and Non 01)",1:"") D S(X)
 D HT6B^BUDHDU("HIV2")
 D S("PATIENT NAME^HRN^COMMUNITY^SEX^AGE^First HIV DX: Date^Date of Onset^HIV Follow-up: Date")
 Q
HIV2H ;
 I BUDROT="D" D HIV2HD Q
 G:'BUDGPG HIV2H1
 K DIR I $E(IOST)="C",IO=IO(0),'$D(ZTQUEUED) W ! S DIR(0)="EO" D ^DIR K DIR I Y=0!(Y="^")!($D(DTOUT)) S BUDQUIT=1 Q
HIV2H1 ;
 W:$D(IOF) @IOF S BUDGPG=BUDGPG+1
 W !,$$CTR("***** SENSITIVE INFORMATION *****",IOM)
 W !?3,$P(^VA(200,DUZ,0),U,2),?35,$$FMTE^XLFDT(DT),?55,"Section "_BUDSCTC_" of "_BUDTSCTC_", Page "_BUDGPG,!
 W !,$$CTR("***  RPMS Uniform Data System (UDS) "_$$VER^BUDHBAN()_"  ***",80)
 W !,$$CTR("Patient List for Table 6B, Section L,",80),!,$$CTR("Newly Identified HIV Cases without Timely Follow-Up",80),!
 W $$CTR($P(^DIC(4,BUDSITE,0),U),80),!
 S X="Reporting Period: "_$$FMTE^XLFDT(BUDBD)_" to "_$$FMTE^XLFDT(BUDED) W $$CTR(X,80),!
 S X="Population:  "_$S($G(BUDBEN)=1:"Indian/Alaskan Native (Classification 01)",$G(BUDBEN)=2:"Not Indian Alaskan/Native (Not Classification 01)",$G(BUDBEN)=3:"All (both Indian/Alaskan Natives and Non 01)",1:"") W $$CTR(X,80),!
 W $TR($J("",80)," ","-")
 I BUDP=0 D
 .D HT6B^BUDHDU("HIV2")
 W !!,"PATIENT NAME",?34,"HRN",?41,"COMMUNITY",?70,"SEX",?75,"AGE"
 W !?5,"First HIV DX: Date",?35,"Date of Onset",?50,"HIV Follow-up: Date"
 W !,$TR($J("",80)," ","-"),!
 S BUDP=1
 Q
N ;EP - DENTAL SEALANT
 ;must Be 6-9 yrs old
 NEW BUDADA,BUDX9YRB,BUDX6YRE
 S BUDX9YRB=($E(BUDBD,1,3)-9)_"0101"
 S BUDX6YRE=($E(BUDED,1,3)-7)_"1231"
 S BUDDOB=$P(^DPT(DFN,0),U,3)
 Q:BUDDOB<BUDX9YRB
 Q:BUDDOB>BUDX6YRE
 Q:$$NOSEAL(DFN,BUDED)  ;
 S BUDADA=$$DENTALVS(DFN,BUDBD,BUDED)  ;
 I $P(BUDADA,U,1)="" Q  ;no dental visit
 I $P(BUDADA,U,2)="" Q  ;no oral assessment
 I $P(BUDADA,U,3)="" Q  ;no high risk
 ;
 S BUDSECTN("PTS")=$G(BUDSECTN("PTS"))+1
 S BUDDTA=$P(BUDADA,U,4)  ;did they have a sealant in the report period?
 I BUDDTA]"" D  Q
 .S BUDSECTN("SEAL")=$G(BUDSECTN("SEAL"))+1 D  Q
 ..I $G(BUDDS1L) D
 ...S ^XTMP("BUDHRP6B",BUDJ,BUDH,"DS1",BUDAGE,$P(^DPT(DFN,0),U),BUDCCOM,DFN)=BUDADA
 ..Q
 I $G(BUDDS2L) D
 .S ^XTMP("BUDHRP6B",BUDJ,BUDH,"DS2",BUDAGE,$P(^DPT(DFN,0),U),BUDCCOM,DFN)=BUDADA
 Q
DENTALVS(P,BDATE,EDATE) ;
 NEW BUDVS,TIEN,CTR,VIEN,VDATE,X,Y,Z,BUDAST,TIEN1
 S BUDAST=""
 D ALLV^APCLAPIU(P,BDATE,EDATE,"BUDVS")
 S TIEN=$O(^BUDHTSSC("B","T6B DENTAL VISIT CODES",0))
 S TIEN1=$O(^BUDHTSSC("B","T6B DENTAL ORAL ASSESSMENT",0))
 S TIEN2=$O(^BUDHTSSC("B","T6B DENTAL HIGH RISK",0))
 S CTR=0 F  S CTR=$O(BUDVS(CTR)) Q:CTR'=+CTR  D
 .S VIEN=$P(BUDVS(CTR),U,5)
 .S VDATE=$P(BUDVS(CTR),U,1)
 .S X=0 F  S X=$O(^AUPNVDEN("AD",VIEN,X)) Q:X'=+X  D
 ..Q:'$D(^AUPNVDEN(X,0))
 ..S Y=$$VAL^XBDIQ1(9000010.05,X,.01)
 ..I $D(^BUDHTSSC(TIEN,21,"B",Y)) S $P(BUDAST,U,1)=Y_" on "_$$DATE^BUDHUTL1(VDATE)
 ..S %=$E(Y) I %=3!(%=4)!(%=5)!(%=6)!(%=7)!(%=8) S $P(BUDAST,U,1)=Y_" on "_$$DATE^BUDHUTL1(VDATE)
 ..S %=$E(Y,1,2) I %=21!(%=22)!(%=23)!(%=24)!(%=25)!(%=26)!(%=27)!(%=28)!(%=29) S $P(BUDAST,U,1)=Y_" on "_$$DATE^BUDHUTL1(VDATE)
 ..I $D(^BUDHTSSC(TIEN1,21,"B",Y)) S $P(BUDAST,U,2)=Y_" on "_$$DATE^BUDHUTL1(VDATE)
 ..I $D(^BUDHTSSC(TIEN2,21,"B",Y)) S $P(BUDAST,U,3)=Y_" on "_$$DATE^BUDHUTL1(VDATE)
 ..I Y=1351!(Y=1350) S $P(BUDAST,U,4)="Sealant: ADA "_Y_" on "_$$DATE^BUDHUTL1(VDATE)
 .;CPT
 .S X=0 F  S X=$O(^AUPNVCPT("AD",VIEN,X)) Q:X'=+X  D
 ..Q:'$D(^AUPNVCPT(X,0))
 ..S Y=$$VAL^XBDIQ1(9000010.18,X,.01)
 ..Q:Y=""
 ..I $D(^BUDHTSSC("AC",Y,TIEN)) S $P(BUDAST,U,1)=Y_" on "_$$DATE^BUDHUTL1(VDATE)
 ..S %=$E(Y,1,2) I %="D3"!(%="D4")!(%="D5")!(%="D6")!(%="D7")!(%="D8") S $P(BUDAST,U,1)=Y_" on "_$$DATE^BUDHUTL1(VDATE)
 ..S %=$E(Y,1,3) I %="D21"!(%="D22")!(%="D23")!(%="D24")!(%="D25")!(%="D26")!(%="D27")!(%="D28")!(%="D29") S $P(BUDAST,U,1)=Y_" on "_$$DATE^BUDHUTL1(VDATE)
 ..I $D(^BUDHTSSC("AC",Y,TIEN1)) S $P(BUDAST,U,2)=Y_" on "_$$DATE^BUDHUTL1(VDATE)
 ..I $D(^BUDHTSSC("AC",Y,TIEN2)) S $P(BUDAST,U,3)=Y_" on "_$$DATE^BUDHUTL1(VDATE)
 ..I Y="D1351" S $P(BUDAST,U,4)="Sealant: CPT "_Y_" on "_$$DATE^BUDHUTL1(VDATE)
 .;V TRANS
 .S X=0 F  S X=$O(^AUPNVTC("AD",VIEN,X)) Q:X'=+X  D
 ..Q:'$D(^AUPNVTC(X,0))
 ..S Y=$$VAL^XBDIQ1(9000010.33,X,.07)
 ..Q:Y=""
 ..I $D(^BUDHTSSC("AC",Y,TIEN)) S $P(BUDAST,U,1)=Y_" on "_$$DATE^BUDHUTL1(VDATE)
 ..S %=$E(Y,1,2) I %="D3"!(%="D4")!(%="D5")!(%="D6")!(%="D7")!(%="D8") S $P(BUDAST,U,1)=Y_" on "_$$DATE^BUDHUTL1(VDATE)
 ..S %=$E(Y,1,3) I %="D21"!(%="D22")!(%="D23")!(%="D24")!(%="D25")!(%="D26")!(%="D27")!(%="D28")!(%="D29") S $P(BUDAST,U,1)=Y_" on "_$$DATE^BUDHUTL1(VDATE)
 ..I $D(^BUDHTSSC("AC",Y,TIEN1)) S $P(BUDAST,U,2)=Y_" on "_$$DATE^BUDHUTL1(VDATE)
 ..I $D(^BUDHTSSC("AC",Y,TIEN2)) S $P(BUDAST,U,3)=Y_" on "_$$DATE^BUDHUTL1(VDATE)
 ..I Y="D1351" S $P(BUDAST,U,4)="Sealant: CPT "_Y_" on "_$$DATE^BUDHUTL1(VDATE)
 Q BUDAST
NOSEAL(P,EDATE) ;
 ;V11.0 ICD10
 NEW BUDG,%,E,T,X,G,Y
 K BUDG S %=P_"^ALL DX;DURING "_$$DOB^AUPNPAT(P)_"-"_EDATE,E=$$START1^APCLDF(%,"BUDG(")
 S T=$O(^BUDHTSSC("B","NOSEAL DIAGNOSES",0))
 S X=0,G="" F  S X=$O(BUDG(X)) Q:X'=+X!(G]"")  D
 .S Y=+$P(BUDG(X),U,4)
 .S Y=$P($G(^AUPNVPOV(Y,0)),U,1)
 .I $D(^BUDHTSSC("AD",Y,T)) S G=1
 I G]"" Q G
 S X=$$PLCL^BUDHDU(P,"NOSEAL DIAGNOSES",EDATE,1) I X Q 1
 Q G
SEAL(P,BDATE,EDATE) ;
 ;get all ada from v dental
 ;get all cpts from v cpt
 NEW BUDG,%,E,G,D,A,T
 S G=""
 S %=P_"^ALL ADA;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE),E=$$START1^APCLDF(%,"BUDG(")
 S E=0 F  S E=$O(BUDG(E)) Q:E'=+E!(G)  D
 .S D=+$P(BUDG(E),U,4)
 .S A=$$VAL^XBDIQ1(9000010.05,D,.01)
 .S T=$$VALI^XBDIQ1(9000010.05,D,.05)
 .Q:'T
 .S T=$P($G(^ADEOPS(T,88)),U,1)
 .I A'=1350,A'=1351,A'=1352 Q
 .I T'=3,T'=14,T'=19,T'=30 Q  ;not first molar
 .S G=1_U_"ADA "_A_" on "_$$FMTE^XLFDT($P(BUDG(E),U))
 I G Q G
 ;cpts
 S Y=$$CPTI^BUDHDU(P,BDATE,EDATE,$P($$CPT^ICPTCOD("D1350"),U,1))
 I Y Q 1_U_"CPT D1350 on "_$$FMTE^XLFDT($P(Y,U,2))
 S Y=$$CPTI^BUDHDU(P,BDATE,EDATE,$P($$CPT^ICPTCOD("D1351"),U,1))
 I Y Q 1_U_"CPT D1351 on "_$$FMTE^XLFDT($P(Y,U,2))
 S Y=$$CPTI^BUDHDU(P,BDATE,EDATE,$P($$CPT^ICPTCOD("D1352"),U,1))
 I Y Q 1_U_"CPT D1352 on "_$$FMTE^XLFDT($P(Y,U,2))
 ;
 Q ""
 ;

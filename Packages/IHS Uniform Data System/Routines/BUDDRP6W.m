BUDDRP6W ; IHS/CMI/LAB - UDS REPORT PROCESSOR 01 Dec 2016 4:03 PM ;
 ;;11.0;IHS/RPMS UNIFORM DATA SYSTEM;;JAN 18, 2017;Build 66
 ;
 ;
 ;
ROTACONT(P,C,ED) ;EP - ANALPHYLAXIS/IMMUNE DEF
 NEW X
 S X=0,G="",Y=$O(^AUTTIMM("C",C,0)) I Y F  S X=$O(^BIPC("AC",P,Y,X)) Q:X'=+X!(G)  D
 .S R=$P(^BIPC(X,0),U,3)
 .Q:R=""
 .Q:'$D(^BICONT(R,0))
 .S D=$P(^BIPC(X,0),U,4)
 .Q:D=""
 .I $P(^BICONT(R,0),U,1)="Anaphylaxis" S G=D_U_"Anaphylaxis"
 .I $P(^BICONT(R,0),U,1)["Immune" S G=D_U_$P(^BICONT(R,0),U,1)
 .I $P(^BICONT(R,0),U,1)="Neomycin Allergy" S G=D_U_"Neomycin Allergy"
 Q G
 ;
PRGA ;EP
 W:$D(IOF) @IOF
 W !,$$CTR($$LOC,80)
 W !,$$CTR("UDS 2016",80)
 W !!,"Prenatal Patients by Age (Table 6B)",!
 D GENI^BUDDRP6I
 D PAUSE^BUDDRP6I
 W !!,"This report provides a list of patients by age that had pregnancy-related"
 W !,"visits during the past 20 months, with at least one pregnancy-related visit"
 W !,"during the report period."
 W !
 Q
PRGAL ;EP
 S BUDP=0,BUDQUIT=0,BUDTOT=0
 D PRGAH Q:BUDQUIT
 I '$D(^XTMP("BUDDRP6B",BUDJ,BUDH,"PRGA")) W:BUDROT="P" !!,"No patients to report." D:BUDROT="D" S() D:BUDROT="D" S("No patients to report.") Q
 S BUDAB="Less than 15 Years" D PRGAL1
 I BUDQUIT G PRGALX
 S BUDAB="Ages 15-19" D PRGAL1
 I BUDQUIT G PRGALX
 S BUDAB="Ages 20-24" D PRGAL1
 I BUDQUIT G PRGALX
 S BUDAB="Ages 25-44" D PRGAL1
 I BUDQUIT G PRGALX
 S BUDAB="Ages 45 and Over" D PRGAL1
 I BUDQUIT G PRGALX
 I BUDROT="P",$Y>(IOSL-3) D PRGAH G:BUDQUIT PRGALX
 I BUDROT="P" W !!,"TOTAL PREGNANT PATIENTS: ",BUDTOT,!
 I BUDROT="D" D S(),S("TOTAL PREGNANT PATIENTS: "_BUDTOT)
PRGALX ;
 Q
PRGAL1 ;
 I BUDROT="P" I $Y>(IOSL-7) D PRGAH Q:BUDQUIT
 I BUDROT="P" W !,BUDAB,!
 I BUDROT="D" D S(),S(BUDAB),S()
 S BUDSTOT=0
 S BUDA=0 F  S BUDA=$O(^XTMP("BUDDRP6B",BUDJ,BUDH,"PRGA",BUDAB,BUDA)) Q:BUDA'=+BUDA!(BUDQUIT)  D
 .S BUDNAME="" F  S BUDNAME=$O(^XTMP("BUDDRP6B",BUDJ,BUDH,"PRGA",BUDAB,BUDA,BUDNAME)) Q:BUDNAME=""!(BUDQUIT)  D
 ..S BUDCCOM="" F  S BUDCCOM=$O(^XTMP("BUDDRP6B",BUDJ,BUDH,"PRGA",BUDAB,BUDA,BUDNAME,BUDCCOM)) Q:BUDCCOM=""!(BUDQUIT)  D
 ...S DFN=0 F  S DFN=$O(^XTMP("BUDDRP6B",BUDJ,BUDH,"PRGA",BUDAB,BUDA,BUDNAME,BUDCCOM,DFN)) Q:DFN'=+DFN!(BUDQUIT)  D
 ....I BUDROT="P" I $Y>(IOSL-3) D PRGAH Q:BUDQUIT
 ....I BUDROT="P" W !?2,$E($P(^DPT(DFN,0),U,1),1,25),?29,$S($$HRN^AUPNPAT(DFN,BUDSITE)]"":$$HRN^AUPNPAT(DFN,BUDSITE,2),1:$$HRN^AUPNPAT(DFN,DUZ(2),2)),?41,$E(BUDCCOM,1,25),?70,$$AGE^AUPNPAT(DFN,BUDCCAD),!
 ....S BUDSTOT=BUDSTOT+1,BUDTOT=BUDTOT+1
 ....S BUDALL=^XTMP("BUDDRP6B",BUDJ,BUDH,"PRGA",BUDAB,BUDA,BUDNAME,BUDCCOM,DFN)
 ....F BUDX=1:1 S BUDV=$P(BUDALL,U,BUDX) Q:BUDV=""!(BUDQUIT)  D
 .....I BUDROT="P" I $Y>(IOSL-3) D PRGAH Q:BUDQUIT
 .....I $E(BUDV)="P",BUDROT="P" W ?5,BUDV,! Q  ;PROB LIST
 .....I $E(BUDV)="P",BUDROT="D" S X=$P(^DPT(DFN,0),U,1)_U_$S($$HRN^AUPNPAT(DFN,BUDSITE)]"":$$HRN^AUPNPAT(DFN,BUDSITE,2),1:$$HRN^AUPNPAT(DFN,DUZ(2),2))_U_BUDCCOM_U_$$AGE^AUPNPAT(DFN,BUDCCAD)_U_BUDV D S(X) Q  ;PROBLEM LIST
 .....S V=$P(BUDV,"|"),C=$P(BUDV,"|",2) S T=$$TRIM(V)
 .....I BUDROT="P" W ?5,$$FMTE^XLFDT($P($P(^AUPNVSIT(V,0),U),".")),?20,C,?30,T,?41,$P(^AUPNVSIT(V,0),U,7),?49,$E($$CLINIC^APCLV(V,"E"),1,15),?65,$E($$VAL^XBDIQ1(9000010,V,.06),1,15),!
 .....I BUDROT="D" S X=$P(^DPT(DFN,0),U,1)_U_$S($$HRN^AUPNPAT(DFN,BUDSITE)]"":$$HRN^AUPNPAT(DFN,BUDSITE,2),1:$$HRN^AUPNPAT(DFN,DUZ(2),2))_U_BUDCCOM_U_$$AGE^AUPNPAT(DFN,BUDCCAD) D
 ......S X=X_U_$$FMTE^XLFDT($P($P(^AUPNVSIT(V,0),U),"."))_U_C_U_T_U_$P(^AUPNVSIT(V,0),U,7)_U_$$CLINIC^APCLV(V,"E")_U_$$VAL^XBDIQ1(9000010,V,.06) D S(X)
 I BUDROT="P" W !,"Sub-Total ",BUDAB,":  ",BUDSTOT,!
 I BUDROT="D" D S("Sub-Total "_BUDAB_":  "_BUDSTOT),S()
 Q
PRGAHD ;delimited header
 D S(),S(),S()
 D S("***** CONFIDENTIAL PATIENT INFORMATION, COVERED BY THE PRIVACY ACT *****")
 D S($P(^VA(200,DUZ,0),U,2)_"    "_$$FMTE^XLFDT(DT))
 D S("***  RPMS Uniform Data System (UDS)  ***")
 D S("Patient List for Table 6B, Sections A & B, Pregnant Patients")
 D S($P(^DIC(4,BUDSITE,0),U))
 S X="Reporting Period: "_$$FMTE^XLFDT(BUDBD)_" to "_$$FMTE^XLFDT(BUDED) D S(X)
 S X="Population:  "_$S($G(BUDBEN)=1:"Indian/Alaskan Native (Classification 01)",$G(BUDBEN)=2:"Not Indian Alaskan/Native (Not Classification 01)",$G(BUDBEN)=3:"All (both Indian/Alaskan Natives and Non 01)",1:"") D S(X)
 D S()
 D S("List of all patients with pregnancy-related visits during the past 20")
 D S("months, with at least one pregnancy-related visit during the report")
 D S("period, with age and visit information.  Displays community, age, and")
 D S("visit data, and codes.")
 D S("Age is calculated as of June 30.")
 D S()
 D S("PATIENT NAME^HRN^COMMUNITY^AGE^VISIT DATE^DX/SVC CD^TRIMESTER^SVC CAT^CLINIC^LOCATION")
 Q
PRGAH ;
 I BUDROT="D" D PRGAHD Q
 G:'BUDGPG PRGAH1
 K DIR I $E(IOST)="C",IO=IO(0),'$D(ZTQUEUED) W ! S DIR(0)="EO" D ^DIR K DIR I Y=0!(Y="^")!($D(DTOUT)) S BUDQUIT=1 Q
PRGAH1 ;
 W:$D(IOF) @IOF S BUDGPG=BUDGPG+1
 W !,"***** CONFIDENTIAL PATIENT INFORMATION, COVERED BY THE PRIVACY ACT *****"
 W !?3,$P(^VA(200,DUZ,0),U,2),?35,$$FMTE^XLFDT(DT),?70,"Page ",BUDGPG,!
 W !,$$CTR("***  RPMS Uniform Data System (UDS)  ***",80)
 W !,$$CTR("Patient List for Table 6B, Sections A & B, Pregnant Patients",80),!
 W $$CTR($P(^DIC(4,BUDSITE,0),U),80),!
 S X="Reporting Period: "_$$FMTE^XLFDT(BUDBD)_" to "_$$FMTE^XLFDT(BUDED) W $$CTR(X,80),!
 S X="Population:  "_$S($G(BUDBEN)=1:"Indian/Alaskan Native (Classification 01)",$G(BUDBEN)=2:"Not Indian Alaskan/Native (Not Classification 01)",$G(BUDBEN)=3:"All (both Indian/Alaskan Natives and Non 01)",1:"") W $$CTR(X,80),!
 W $TR($J("",80)," ","-")
 I BUDP=0 D
 .W !,"List of all patients with pregnancy-related visits during the past 20"
 .W !,"months, with at least one pregnancy-related visit during the report"
 .W !,"period, with age and visit information.  Displays community, age, and"
 .W !,"visit data, and codes."
 .W !,"Age is calculated as of June 30."
 W !!,"PATIENT NAME",?34,"HRN",?41,"COMMUNITY",?70,"AGE"
 W !?5,"VISIT DATE",?20,"DX/SVC CD",?30,"TRIMESTER",?41,"SRV CAT",?49,"CLINIC",?65,"LOCATION"
 W !,$TR($J("",80)," ","-"),!
 S BUDP=1
 Q
 ;
S(V) ;
 S BUDDECNT=BUDDECNT+1
 S ^TMP($J,"BUDDEL",BUDDECNT)=$G(V)
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
TRIM(V) ;any trimester code on this visit?
 NEW X,Y,Z,T1,T2,T3
 S Z=""
 S T1=$O(^ATXAX("B","BGP PREGNANCY TRI 1 DXS",0))
 S T2=$O(^ATXAX("B","BGP PREGNANCY TRI 2 DXS",0))
 S T3=$O(^ATXAX("B","BGP PREGNANCY TRI 3 DXS",0))
 S X=0 F  S X=$O(^AUPNVPOV("AD",V,X)) Q:X'=+X!(Z]"")  D
 .S Y=$$VALI^XBDIQ1(9000010.07,X,.01)
 .I $$ICD^ATXCHK(Y,T1,9) S Z="1ST" Q
 .I $$ICD^ATXCHK(Y,T2,9) S Z="2ND" Q
 .I $$ICD^ATXCHK(Y,T3,9) S Z="3RD" Q
 I Z]"" Q Z
 Q "UNK"

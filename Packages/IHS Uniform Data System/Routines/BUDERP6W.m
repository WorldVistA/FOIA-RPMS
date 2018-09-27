BUDERP6W ;IHS/CMI/LAB - UDS REPORT T6B PROCESS;
 ;;12.0;IHS/RPMS UNIFORM DATA SYSTEM;;NOV 22, 2017;Build 75
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
 W !,$$CTR("UDS 2017",80)
 W !!,"Prenatal Patients by Age (Table 6B)",!
 D GENI^BUDERP6I
 D PAUSE^BUDERP6I
 W !!,"This report provides a list of patients by age that had pregnancy-related"
 W !,"visits during the past 20 months, with at least one pregnancy-related visit"
 W !,"during the report period."
 W !
 Q
PRGAL ;EP
 S BUDP=0,BUDQUIT=0,BUDTOT=0
 D PRGAH Q:BUDQUIT
 I '$D(^XTMP("BUDERP6B",BUDJ,BUDH,"PRGA")) W:BUDROT="P" !!,"No patients to report." D:BUDROT="D" S() D:BUDROT="D" S("No patients to report.") Q
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
 S BUDA=0 F  S BUDA=$O(^XTMP("BUDERP6B",BUDJ,BUDH,"PRGA",BUDAB,BUDA)) Q:BUDA'=+BUDA!(BUDQUIT)  D
 .S BUDNAME="" F  S BUDNAME=$O(^XTMP("BUDERP6B",BUDJ,BUDH,"PRGA",BUDAB,BUDA,BUDNAME)) Q:BUDNAME=""!(BUDQUIT)  D
 ..S BUDCCOM="" F  S BUDCCOM=$O(^XTMP("BUDERP6B",BUDJ,BUDH,"PRGA",BUDAB,BUDA,BUDNAME,BUDCCOM)) Q:BUDCCOM=""!(BUDQUIT)  D
 ...S DFN=0 F  S DFN=$O(^XTMP("BUDERP6B",BUDJ,BUDH,"PRGA",BUDAB,BUDA,BUDNAME,BUDCCOM,DFN)) Q:DFN'=+DFN!(BUDQUIT)  D
 ....I BUDROT="P" I $Y>(IOSL-3) D PRGAH Q:BUDQUIT
 ....I BUDROT="P" W !?2,$E($P(^DPT(DFN,0),U,1),1,25),?29,$S($$HRN^AUPNPAT(DFN,BUDSITE)]"":$$HRN^AUPNPAT(DFN,BUDSITE,2),1:$$HRN^AUPNPAT(DFN,DUZ(2),2)),?41,$E(BUDCCOM,1,25),?70,$$AGE^AUPNPAT(DFN,BUDCCAD),!
 ....S BUDSTOT=BUDSTOT+1,BUDTOT=BUDTOT+1
 ....S BUDALL=^XTMP("BUDERP6B",BUDJ,BUDH,"PRGA",BUDAB,BUDA,BUDNAME,BUDCCOM,DFN)
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
PRES(P,TAX,BD,ED,NDC) ;EP
 ;GO THROUGH 52 FOR PATIENT
 S NDC=$G(NDC)
 NEW BDMD,G,Z,R,D,E,T,F,I,BDMMEDS1,Y,%,K,V,N,A,NDCT
 ;S BDMD=$$FMADD^XLFDT(ED,-(6*31)) ;DATE OF EXPIRATION NEEDS TO BE GREATER THAN THIS AND DAYS SUPPLY * REFILLS NEEDS TO BE GREATER THAN THIS ADDED TO ISSUE DATE
 S Z=0,G="" F  S Z=$O(^PS(55,P,"P",Z)) Q:Z'=+Z!(G="X")  D
 .S R=$P(^PS(55,P,"P",Z,0),U,1)
 .Q:'$D(^PSRX(R,0))  ;bad xref
 .Q:$E($P(^PSRX(R,0),U,1))'="X"  ;not an E-PRES
 .S D=$P(^PSRX(R,0),U,6)
 .Q:'D  ;no drug??
 .S N=$P($G(^PSDRUG(D,2)),U,4)
 .S A=0
 .I $D(^ATXAX(TAX,21,"B",D)) S A=1 ;a drug we care about
 .I 'A,N]"",NDC,$D(^ATXAX(NDC,21,"B",N)) S A=1
 .Q:'A
 .S E=$P($G(^PSRX(R,2)),U,6)
 .I E,E<BD Q  ;expires too soon
 .S Y=$P(^PSRX(R,0),U,8)  ;DAYS SUPPLY
 .S F=$P(^PSRX(R,0),U,9)  ;# REFILLS
 .S T=Y*(F+1)  ;total days supply
 .S I=$P(^PSRX(R,0),U,13)  ;ISSUE DATE
 .Q:I>ED  ;issued after report period
 .Q:$$FMADD^XLFDT(I,T)<BD  ;days supply doesn't get to date
 .S G=$P(^PSDRUG(D,0),U,1)_U_$$DATE^BUDEUTL1(I)_U_I
 I G]"" Q G
 ;NOW CHECK FOR E H R OUTSIDE MED IN V MED IN PAST 10 YEARS
EHROUT ;
 ;any EHR outside meds?
 K BUDMEDS1 S K=0,R=""
 S BD=$$FMADD^XLFDT(BD,-(10*365))
 ;S X=P_"^ALL MEDS ["_$P(^ATXAX(TAX,0),U,1)_";DURING "_$$FMADD^XLFDT(ED,-3650)_"-"_ED S E=$$START1^APCLDF(X,"BDMMEDS1(")
 S NDCT=""
 I NDC S NDCT=$P(^ATXAX(NDC,0),U,1)
 D GETMEDS^BUDEUTL2(P,BD,ED,$P(^ATXAX(TAX,0),U),NDCT,,,.BUDMEDS1)
 I '$D(BUDMEDS1) Q ""
 S X=0 F  S X=$O(BUDMEDS1(X)) Q:X'=+X!(R]"")  S Y=+$P(BUDMEDS1(X),U,4) D
 .Q:'$D(^AUPNVMED(Y,0))
 .Q:$P($G(^AUPNVMED(Y,11)),U,8)=""  ;NOT AN EHR OUTSIDE MED
 .Q:$$UP^XLFSTR($P($G(^AUPNVMED(Y,11)),U))["RETURNED TO STOCK"
 .S %=$P(^AUPNVMED(Y,0),U,8)  ;discontinued date
 .I %]"",%<BD Q  ;if discontinued before 6M of report period
 .S V=$P(^AUPNVMED(Y,0),U,3)
 .Q:'V
 .Q:'$D(^AUPNVSIT(V,0))
 .S R=$$VAL^XBDIQ1(9000010.14,Y,.01)_" (EHR OUTSIDE)"_U_$$DATE^BUDEUTL1($P($P(^AUPNVSIT(V,0),U),"."))_U_$$VD^APCLV(V)
 Q R

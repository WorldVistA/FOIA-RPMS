BUDHRP7U ;IHS/CMI/LAB - UDS REPORT T7 PROCESS;
 ;;13.0;IHS/RPMS UNIFORM DATA SYSTEM;;OCT 12, 2018;Build 90
 ;
 ;
S(V) ;
 S BUDDECNT=BUDDECNT+1
 S ^TMP($J,"BUDDEL",BUDDECNT)=$G(V)
 Q
 ;----------
PAUSE ;
 K DIR S DIR(0)="E",DIR("A")="PRESS ENTER" KILL DA D ^DIR KILL DIR
 Q
GENI ;general introductions
 D GENI^BUDHRP7I
 Q
 ;
CTR(X,Y) ;EP - Center X in a field Y wide.
 Q $J("",$S($D(Y):Y,1:IOM)-$L(X)\2)_X
 ;----------
USR() ;EP - Return name of current user from ^VA(200.
 Q $S($G(DUZ):$S($D(^VA(200,DUZ,0)):$P(^(0),U),1:"UNKNOWN"),1:"DUZ UNDEFINED OR 0")
 ;----------
LOC() ;EP - Return location name from file 4 based on DUZ(2).
 Q $S($G(DUZ(2)):$S($D(^DIC(4,DUZ(2),0)):$P(^(0),U),1:"UNKNOWN"),1:"DUZ(2) UNDEFINED OR 0")
 ;----------
 ;
HTUR ;EP
 W:$D(IOF) @IOF
 W !,$$CTR($$LOC,80)
 W !,$$CTR("UDS 2015",80)
 W !!,"Hypertension w/Uncontrolled BP by Race and Hispanic or Latino Identity",!
 D GENI
 D PAUSE
 W !!,"This report provides a list by race and Hispanic or Latino Identity"
 W !,"of patients 18 to 85 years old who have had at least one medical visit"
 W !,"during the report period, were diagnosed with hypertension before"
 W !,"June 30 of the report period, and who do not have controlled blood"
 W !,"pressure (<140/90 mm HG) during the report period."
 W !
 Q
HTURL ;EP
 S BUDP=0,BUDQUIT=0,BUDTOT=0
 D HTURH Q:BUDQUIT
 I '$D(^XTMP("BUDHRP7",BUDJ,BUDH,"HTUR")) S X="No patients to report." W:BUDROT="P" !!,X D:BUDROT="D" S(),S(X) Q
 D HTURL1
 I BUDROT="P",$Y>(IOSL-4) D HTURH G:BUDQUIT HTURLX
 I BUDROT="P" W !,"TOTAL HYPERTENSION PATIENTS 18-85 W/UNCONTROLLED BP BY RACE AND HISPANIC",!,"OR LATINO IDENTITY: "_BUDTOT,!
 I BUDROT="D" D S(),S("TOTAL HYPERTENSION PATIENTS 18-85 W/UNCONTROLLED BP BY RACE AND HISPANIC OR LATINO IDENTITY: "_BUDTOT)
HTURLX ;
 Q
HTURL1 ;
 I BUDROT="P",$Y>(IOSL-7) D HTURH Q:BUDQUIT
 S BUDTOT=0
 S BUDRACE="" F  S BUDRACE=$O(^XTMP("BUDHRP7",BUDJ,BUDH,"HTUR",BUDRACE)) Q:BUDRACE=""!(BUDQUIT)  D
 .S BUDHTH="" F  S BUDHTH=$O(^XTMP("BUDHRP7",BUDJ,BUDH,"HTUR",BUDRACE,BUDHTH)) Q:BUDHTH=""!(BUDQUIT)  D HTURL2
 Q
HTURL2 ;
 S BUDSTOT=0
 S BUDRACEL=$$RACEL^BUDHRP7I(BUDRACE,BUDHTH)
 I BUDROT="P" W !,BUDRACEL
 I BUDROT="D" D S(BUDRACEL)
 S BUDCCOM="" F  S BUDCCOM=$O(^XTMP("BUDHRP7",BUDJ,BUDH,"HTUR",BUDRACE,BUDHTH,BUDCCOM)) Q:BUDCCOM=""!(BUDQUIT)  D
 .S BUDA="" F  S BUDA=$O(^XTMP("BUDHRP7",BUDJ,BUDH,"HTUR",BUDRACE,BUDHTH,BUDCCOM,BUDA)) Q:BUDA=""!(BUDQUIT)  D
 ..S BUDNAME="" F  S BUDNAME=$O(^XTMP("BUDHRP7",BUDJ,BUDH,"HTUR",BUDRACE,BUDHTH,BUDCCOM,BUDA,BUDNAME)) Q:BUDNAME=""!(BUDQUIT)  D
 ...S DFN=0 F  S DFN=$O(^XTMP("BUDHRP7",BUDJ,BUDH,"HTUR",BUDRACE,BUDHTH,BUDCCOM,BUDA,BUDNAME,DFN)) Q:DFN'=+DFN!(BUDQUIT)  D
 ....I BUDROT="P",$Y>(IOSL-3) D HTURH Q:BUDQUIT  W !,BUDRACEL,!
 ....I BUDROT="P" W !?2,$E($P(^DPT(DFN,0),U,1),1,20),?24,$S($$HRN^AUPNPAT(DFN,BUDSITE)]"":$$HRN^AUPNPAT(DFN,BUDSITE,2),1:$$HRN^AUPNPAT(DFN,DUZ(2),2)),?36,$E(BUDCCOM,1,10),?47,$P(^DPT(DFN,0),U,2),?51,BUDA,!  ;
 ....I BUDROT="D" S BUDPV="",BUDPV=$E($P(^DPT(DFN,0),U,1),1,30)_U_$S($$HRN^AUPNPAT(DFN,BUDSITE)]"":$$HRN^AUPNPAT(DFN,BUDSITE,2),1:$$HRN^AUPNPAT(DFN,DUZ(2),2))_U_$E(BUDCCOM,1,12)_U_$P(^DPT(DFN,0),U,2)_U_BUDA
 ....S BUDTOT=BUDTOT+1,BUDSTOT=BUDSTOT+1
 ....S BUDRACV=$$RACE^BUDHRPTC(DFN)
 ....I BUDROT="P" W ?2,$E($P(BUDRACV,U,4),1,16)_" ("_$P(BUDRACV,U,3),")"  ;,?60,$E($P($$RACE^BUDHRPTC(DFN),U,3)_"-"_$P($$RACE^BUDHRPTC(DFN),U,4),1,19)
 ....I BUDROT="D" S BUDPV=BUDPV_U_$E($P(BUDRACV,U,4),1,16)_" ("_$P(BUDRACV,U,3)_")"
 ....S BUDHISV=$$HISP^BUDHRPTC(DFN)
 ....I BUDROT="P" W ?24,$P(BUDHISV,U,3)," (",$P(BUDHISV,U,2),")",!
 ....I BUDROT="D" S BUDPV=BUDPV_U_$P(BUDHISV,U,3)_" ("_$P(BUDHISV,U,2)_")"
 ....S BUDALL=^XTMP("BUDHRP7",BUDJ,BUDH,"HTUR",BUDRACE,BUDHTH,BUDCCOM,BUDA,BUDNAME,DFN)
 ....S BUDPPV=$P(BUDALL,"#",1)
 ....I BUDROT="P" W ?5,$P(BUDALL,"#",2),!
 ....I BUDROT="D" S BUDPV=BUDPV_U_$P(BUDALL,"#",2)
 ....F BUDX=1:1 S BUDV=$P(BUDPPV,U,BUDX) Q:BUDV=""!(BUDQUIT)  D
 .....I BUDROT="P",$Y>(IOSL-3) D HTURH Q:BUDQUIT  W !,BUDRACEL,!
 .....I BUDROT="P" I $E(BUDV)="P" W ?5,BUDV,! Q
 .....I BUDROT="D",$E(BUDV)="P" S BUDPV=BUDPV_U_BUDV D S(BUDPV) Q
 .....S V=$P(BUDV,"|"),C=$P(BUDV,"|",2),C=$P(C,"^",1)
 .....I BUDROT="P" W ?5,$$FMTE^XLFDT($P($P(^AUPNVSIT(V,0),U),".")),?19,C,?35,$$PRIMPROV^APCLV(V,"D"),?45,$P(^AUPNVSIT(V,0),U,7),?53,$$CLINIC^APCLV(V,"C"),?65,$E($$VAL^XBDIQ1(9000010,V,.06),1,15),!
 .....I BUDROT="D" S X=BUDPV_U_$$FMTE^XLFDT($P($P(^AUPNVSIT(V,0),U),"."))_U_C_U_$$PRIMPROV^APCLV(V,"D")_U_$P(^AUPNVSIT(V,0),U,7)_U_$$CLINIC^APCLV(V,"C")_U_$$VAL^XBDIQ1(9000010,V,.06) D S(X)
 I BUDROT="P",$Y>(IOSL-4) D HTURH Q:BUDQUIT  W !,BUDRACEL,!
 I BUDROT="P" W !,"Sub-Total ",BUDRACEL,":  ",BUDSTOT,!
 I BUDROT="D" D S("Sub-Total "_BUDRACEL_":  "_BUDSTOT)
 Q
HTURHD ;
 D S("***** SENSITIVE INFORMATION *****")
 D S($P(^VA(200,DUZ,0),U,2)_"    "_$$FMTE^XLFDT(DT))
 D S("***  RPMS Uniform Data System (UDS) "_$$VER^BUDHBAN()_"  ***")
 D S("Patient List for Table 7, Section B, Hypertension w/Uncontrolled BP by Race and Hispanic or Latino Identity")
 D S($P(^DIC(4,BUDSITE,0),U))
 S X="Reporting Period: "_$$FMTE^XLFDT(BUDBD)_" to "_$$FMTE^XLFDT(BUDED) D S(X)
 S X="Population:  "_$S($G(BUDDEN)=1:"Indian/Alaskan Native (Classification 01)",$G(BUDDEN)=2:"Not Indian Alaskan/Native (Not Classification 01)",$G(BUDDEN)=3:"All (both Indian/Alaskan Natives and Non 01)",1:"") D S(X)
 D S()
 D S("List by race and Hispanic or Latino Identity of all patients 18 to 85")
 D S("years old who have had at least one medical visit during the report period,")
 D S("who were diagnosed with hypertension before June 30 of the report")
 D S("period, and do not have controlled blood pressure (BP <140/90 mm Hg).")
 D S("Age on the patient list is calculated as of December 31.")
 D S("* E - denotes the value was obtained from the Ethnicity field.")
 D S("  R - denotes the value was obtained from the Race field")
 D S("  C - denotes the value was obtained from the Classification/Beneficiary field")
 D S()
 D S("PATIENT NAME^HRN^COMMUNITY^AGE^RACE*^HISPANIC OR LATINO IDENTITY^LAST BP VALUE DATE^LAST HTN DATE^DX OR SVC CD^PROV TYPE^SVC CAT^CLINIC^LOCATION")
 Q
HTURH ;
 I BUDROT="D" D HTURHD Q
 G:'BUDGPG HTURH1
 K DIR I $E(IOST)="C",IO=IO(0),'$D(ZTQUEUED) W ! S DIR(0)="EO" D ^DIR K DIR I Y=0!(Y="^")!($D(DTOUT)) S BUDQUIT=1 Q
HTURH1 ;
 W:$D(IOF) @IOF S BUDGPG=BUDGPG+1
 W !,$$CTR("***** SENSITIVE INFORMATION *****",IOM)
 W !?3,$P(^VA(200,DUZ,0),U,2),?35,$$FMTE^XLFDT(DT),?55,"Section "_BUDSCTC_" of "_BUDTSCTC_", Page "_BUDGPG,!
 W !,$$CTR("***  RPMS Uniform Data System (UDS) "_$$VER^BUDHBAN()_"  ***",80)
 W !,$$CTR("Patient List for Table 7, Section B",80)
 W !,$$CTR("Hypertension w/Uncontrolled BP by Race and Hispanic or Latino Identity",80),!
 W $$CTR($P(^DIC(4,BUDSITE,0),U),80),!
 S X="Reporting Period: "_$$FMTE^XLFDT(BUDBD)_" to "_$$FMTE^XLFDT(BUDED) W $$CTR(X,80),!
 W $TR($J("",80)," ","-")
 I BUDP=0 D
 .W !,"List by race and Hispanic or Latino Identity of all patients 18 to 85"
 .W !,"years old who have had at least one medical visit during the report period,"
 .W !,"who were diagnosed with hypertension before June 30 of the report"
 .W !,"period, and do not have controlled blood pressure (BP <140/90 mm Hg)."
 .W !,"Age on the patient list is calculated as of December 31."
 .W !,"* E - denotes the value was obtained from the Ethnicity field."
 .W !,"  R - denotes the value was obtained from the Race field"
 .W !,"  C - denotes the value was obtained from the Classification/Beneficiary field"
 .W !
 W !?2,"PATIENT NAME",?24,"HRN",?36,"COMMUNITY",?47,"SEX",?51,"AGE"
 W !?2,"RACE*",?24,"HISPANIC OR LATINO IDENTITY*"
 W !?5,"LAST BP VALUE & DATE"
 W !?5,"LAST HTN DATE",?19,"DX OR SVC CD",?35,"PROV TYPE",?45,"SVC CAT",?53,"CLINIC",?65,"LOCATION"
 W !,$TR($J("",80)," ","-"),!
 S BUDP=1
 Q
 ;
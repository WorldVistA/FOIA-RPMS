BUDHRP61 ; IHS/CMI/LAB - UDS REPORT PROCESSOR ;
 ;;13.0;IHS/RPMS UNIFORM DATA SYSTEM;;OCT 12, 2018;Build 90
 ;
 ;
DSLIST1 ;EP
 D EOJ
 S BUDDS1L=1
 D DS1
 S BUDTSCTC=2,BUDZLIST=1 G EN1^BUDHRP6B
DSLIST2 ;EP
 D EOJ
 S BUDDS2L=1
 D DS2
 S BUDTSCTC=2,BUDZLIST=1 G EN1^BUDHRP6B
DS1 ;EP
 D IN6B^BUDHDU("DS1L")
 Q
DS1L ;EP
 S BUDP=0,BUDQUIT=0,BUDTOT=0
 D DS1H Q:BUDQUIT
 I '$D(^XTMP("BUDHRP6B",BUDJ,BUDH,"DS1")) W:BUDROT="P" !!,"No patients to report." D:BUDROT="D" S() D:BUDROT="D" S("No patients to report.") Q
 D DS1L1
 I BUDROT="P",$Y>(IOSL-3) D DS1H Q:BUDQUIT
 I BUDROT="P" W !,"TOTAL PATIENTS WITH SEALANT:  ",BUDTOT,!
 I BUDROT="D" D S(),S("TOTAL PATIENTS WITH SEALANT:  "_BUDTOT)
 Q
DS1L1 ;
 I BUDROT="P",$Y>(IOSL-7) D DS1H Q:BUDQUIT
 S BUDAGE="" F  S BUDAGE=$O(^XTMP("BUDHRP6B",BUDJ,BUDH,"DS1",BUDAGE)) Q:BUDAGE=""!(BUDQUIT)  D
 .S BUDNAME="" F  S BUDNAME=$O(^XTMP("BUDHRP6B",BUDJ,BUDH,"DS1",BUDAGE,BUDNAME)) Q:BUDNAME=""!(BUDQUIT)  D
 ..S BUDCCOM="" F  S BUDCCOM=$O(^XTMP("BUDHRP6B",BUDJ,BUDH,"DS1",BUDAGE,BUDNAME,BUDCCOM)) Q:BUDCCOM=""!(BUDQUIT)  D
 ...S DFN=0 F  S DFN=$O(^XTMP("BUDHRP6B",BUDJ,BUDH,"DS1",BUDAGE,BUDNAME,BUDCCOM,DFN)) Q:DFN'=+DFN!(BUDQUIT)  D
 ....I BUDROT="P",$Y>(IOSL-3) D DS1H Q:BUDQUIT
 ....I BUDROT="P" W !,$E($P(^DPT(DFN,0),U,1),1,25),?29,$S($$HRN^AUPNPAT(DFN,BUDSITE)]"":$$HRN^AUPNPAT(DFN,BUDSITE,2),1:$$HRN^AUPNPAT(DFN,DUZ(2),2)),?41,$E(BUDCCOM,1,25),?70,$P(^DPT(DFN,0),U,2),?75,BUDAGE,!
 ....S BUDTOT=BUDTOT+1
 ....S BUDALL=^XTMP("BUDHRP6B",BUDJ,BUDH,"DS1",BUDAGE,BUDNAME,BUDCCOM,DFN)
 ....I BUDROT="P" W ?2,$P(BUDALL,U,2),?30,$P(BUDALL,U,3),?50,$P(BUDALL,U,4)
 ....I BUDROT="D" S X=$P(^DPT(DFN,0),U,1)_U_$S($$HRN^AUPNPAT(DFN,BUDSITE)]"":$$HRN^AUPNPAT(DFN,BUDSITE,2),1:$$HRN^AUPNPAT(DFN,DUZ(2),2))_U_BUDCCOM_U_$P(^DPT(DFN,0),U,2)_U_$$AGE^AUPNPAT(DFN,BUDCCAD) D
 .....S X=X_U_$P(BUDALL,U,2)_U_$P(BUDALL,U,3)_U_$P(BUDALL,U,4) D S(X)
 Q
DS1HD ;
 D S(),S(),S()
 D S("***** SENSITIVE INFORMATION *****")
 D S($P(^VA(200,DUZ,0),U,2)_"    "_$$FMTE^XLFDT(DT))
 D S("***  RPMS Uniform Data System (UDS) "_$$VER^BUDHBAN()_"  ***")
 D S("Patient List for Table 6B, Section N, With Dental Sealants")
 D S($P(^DIC(4,BUDSITE,0),U))
 S X="Reporting Period: "_$$FMTE^XLFDT(BUDBD)_" to "_$$FMTE^XLFDT(BUDED) D S(X)
 S X="Population:  "_$S($G(BUDDEN)=1:"Indian/Alaskan Native (Classification 01)",$G(BUDDEN)=2:"Not Indian Alaskan/Native (Not Classification 01)",$G(BUDDEN)=3:"All (both Indian/Alaskan Natives and Non 01)",1:"") D S(X)
 D HT6B^BUDHDU("DS1L")
 D S("PATIENT NAME^HRN^COMMUNITY^SEX^AGE^ORAL ASSESSMENT^RISK^SEALANT and DATE")
 Q
DS1H ;
 I BUDROT="D" D DS1HD Q
 G:'BUDGPG DS1H1
 K DIR I $E(IOST)="C",IO=IO(0),'$D(ZTQUEUED) W ! S DIR(0)="EO" D ^DIR K DIR I Y=0!(Y="^")!($D(DTOUT)) S BUDQUIT=1 Q
DS1H1 ;
 W:$D(IOF) @IOF S BUDGPG=BUDGPG+1
 W !,$$CTR("***** SENSITIVE INFORMATION *****",IOM)
 W !?3,$P(^VA(200,DUZ,0),U,2),?35,$$FMTE^XLFDT(DT),?55,"Section "_BUDSCTC_" of "_BUDTSCTC_", Page "_BUDGPG,!
 W !,$$CTR("***  RPMS Uniform Data System (UDS) "_$$VER^BUDHBAN()_"  ***",80)
 W !,$$CTR("Patient List for Table 6B, Section N, With Dental Sealants,",80)
 W $$CTR($P(^DIC(4,BUDSITE,0),U),80),!
 S X="Reporting Period: "_$$FMTE^XLFDT(BUDBD)_" to "_$$FMTE^XLFDT(BUDED) W $$CTR(X,80),!
 S X="Population:  "_$S($G(BUDDEN)=1:"Indian/Alaskan Native (Classification 01)",$G(BUDDEN)=2:"Not Indian Alaskan/Native (Not Classification 01)",$G(BUDDEN)=3:"All (both Indian/Alaskan Natives and Non 01)",1:"") W $$CTR(X,80),!
 W $TR($J("",80)," ","-")
 I BUDP=0 D
 .D HT6B^BUDHDU("DS1L")
 W !!,"PATIENT NAME",?34,"HRN",?41,"COMMUNITY",?70,"SEX",?75,"AGE"
 W !?2,"Oral Assess and Date",?30,"Risk",?50,"Sealant and Date"
 W !,$TR($J("",80)," ","-"),!
 S BUDP=1
 Q
DS2 ;EP
 D IN6B^BUDHDU("DS2L")
 Q
DS2L ;EP
 S BUDP=0,BUDQUIT=0,BUDTOT=0
 D DS2H Q:BUDQUIT
 I '$D(^XTMP("BUDHRP6B",BUDJ,BUDH,"DS2")) W:BUDROT="P" !!,"No patients to report." D:BUDROT="D" S() D:BUDROT="D" S("No patients to report.") Q
 D DS2L1
 I BUDROT="P",$Y>(IOSL-3) D DS2H Q:BUDQUIT
 I BUDROT="P" W !,"TOTAL PATIENTS AT RISK W/O SEALANT:  ",BUDTOT,!
 I BUDROT="D" D S(),S("TOTAL PATIENTS AT RISK W/O SEALANT  "_BUDTOT)
 Q
DS2L1 ;
 I BUDROT="P",$Y>(IOSL-7) D DS2H Q:BUDQUIT
 S BUDAGE="" F  S BUDAGE=$O(^XTMP("BUDHRP6B",BUDJ,BUDH,"DS2",BUDAGE)) Q:BUDAGE=""!(BUDQUIT)  D
 .S BUDNAME="" F  S BUDNAME=$O(^XTMP("BUDHRP6B",BUDJ,BUDH,"DS2",BUDAGE,BUDNAME)) Q:BUDNAME=""!(BUDQUIT)  D
 ..S BUDCCOM="" F  S BUDCCOM=$O(^XTMP("BUDHRP6B",BUDJ,BUDH,"DS2",BUDAGE,BUDNAME,BUDCCOM)) Q:BUDCCOM=""!(BUDQUIT)  D
 ...S DFN=0 F  S DFN=$O(^XTMP("BUDHRP6B",BUDJ,BUDH,"DS2",BUDAGE,BUDNAME,BUDCCOM,DFN)) Q:DFN'=+DFN!(BUDQUIT)  D
 ....I BUDROT="P",$Y>(IOSL-3) D DS2H Q:BUDQUIT
 ....I BUDROT="P" W !,$E($P(^DPT(DFN,0),U,1),1,25),?29,$S($$HRN^AUPNPAT(DFN,BUDSITE)]"":$$HRN^AUPNPAT(DFN,BUDSITE,2),1:$$HRN^AUPNPAT(DFN,DUZ(2),2)),?41,$E(BUDCCOM,1,25),?70,$P(^DPT(DFN,0),U,2),?75,BUDAGE,!
 ....S BUDTOT=BUDTOT+1
 ....S BUDALL=^XTMP("BUDHRP6B",BUDJ,BUDH,"DS2",BUDAGE,BUDNAME,BUDCCOM,DFN)
 ....W ?2,$P(BUDALL,U,2),?30,$P(BUDALL,U,3),?50,$P(BUDALL,U,4)
 ....I BUDROT="D" S X=$P(^DPT(DFN,0),U,1)_U_$S($$HRN^AUPNPAT(DFN,BUDSITE)]"":$$HRN^AUPNPAT(DFN,BUDSITE,2),1:$$HRN^AUPNPAT(DFN,DUZ(2),2))_U_BUDCCOM_U_$P(^DPT(DFN,0),U,2)_U_$$AGE^AUPNPAT(DFN,BUDCCAD) D
 .....S X=X_U_$P(BUDALL,U,2)_U_$P(BUDALL,U,3)_U_$P(BUDALL,U,4) D S(X)
 Q
DS2HD ;
 D S(),S(),S()
 D S("***** SENSITIVE INFORMATION *****")
 D S($P(^VA(200,DUZ,0),U,2)_"    "_$$FMTE^XLFDT(DT))
 D S("***  RPMS Uniform Data System (UDS) "_$$VER^BUDHBAN()_"  ***")
 D S("Patient List for Table 6B, Section N, Without Dental Sealants")
 ;D S("Patients 6-9 at Risk without dental sealant on first molar")
 D S($P(^DIC(4,BUDSITE,0),U))
 S X="Reporting Period: "_$$FMTE^XLFDT(BUDBD)_" to "_$$FMTE^XLFDT(BUDED) D S(X)
 S X="Population:  "_$S($G(BUDDEN)=1:"Indian/Alaskan Native (Classification 01)",$G(BUDDEN)=2:"Not Indian Alaskan/Native (Not Classification 01)",$G(BUDDEN)=3:"All (both Indian/Alaskan Natives and Non 01)",1:"") D S(X)
 D HT6B^BUDHDU("DS2L")
 D S("PATIENT NAME^HRN^COMMUNITY^SEX^AGE^ASSESSMENT AND DATE^RISK^")
 Q
DS2H ;
 I BUDROT="D" D DS2HD Q
 G:'BUDGPG DS2H1
 K DIR I $E(IOST)="C",IO=IO(0),'$D(ZTQUEUED) W ! S DIR(0)="EO" D ^DIR K DIR I Y=0!(Y="^")!($D(DTOUT)) S BUDQUIT=1 Q
DS2H1 ;
 W:$D(IOF) @IOF S BUDGPG=BUDGPG+1
 W !,$$CTR("***** SENSITIVE INFORMATION *****",IOM)
 W !?3,$P(^VA(200,DUZ,0),U,2),?35,$$FMTE^XLFDT(DT),?55,"Section "_BUDSCTC_" of "_BUDTSCTC_", Page "_BUDGPG,!
 W !,$$CTR("***  RPMS Uniform Data System (UDS) "_$$VER^BUDHBAN()_"  ***",80)
 W !,$$CTR("Patient List for Table 6B, Section N,",80),!,$$CTR("Patients 6-9 at Risk without dental sealant on first molar",80),!
 W $$CTR($P(^DIC(4,BUDSITE,0),U),80),!
 S X="Reporting Period: "_$$FMTE^XLFDT(BUDBD)_" to "_$$FMTE^XLFDT(BUDED) W $$CTR(X,80),!
 S X="Population:  "_$S($G(BUDDEN)=1:"Indian/Alaskan Native (Classification 01)",$G(BUDDEN)=2:"Not Indian Alaskan/Native (Not Classification 01)",$G(BUDDEN)=3:"All (both Indian/Alaskan Natives and Non 01)",1:"") W $$CTR(X,80),!
 W $TR($J("",80)," ","-")
 I BUDP=0 D
 .D HT6B^BUDHDU("DS2L")
 W !!,"PATIENT NAME",?34,"HRN",?41,"COMMUNITY",?70,"SEX",?75,"AGE"
 W !?2,"Assessment and Date",?30,"Risk"
 W !,$TR($J("",80)," ","-"),!
 S BUDP=1
 Q
S(V) ;
 S BUDDECNT=BUDDECNT+1
 S ^TMP($J,"BUDDEL",BUDDECNT)=$G(V)
 Q
PAUSE ;
 K DIR S DIR(0)="E",DIR("A")="PRESS ENTER" KILL DA D ^DIR KILL DIR
 Q
GENI ;EP
 D GENI^BUDHRP6I
 Q
 ;
CTR(X,Y) ;
 Q $J("",$S($D(Y):Y,1:IOM)-$L(X)\2)_X
EOJ ;
 D EN^XBVK("BUD")
 Q

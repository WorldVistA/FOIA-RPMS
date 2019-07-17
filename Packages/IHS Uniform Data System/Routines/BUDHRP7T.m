BUDHRP7T ; IHS/CMI/LAB - UDS REPORT DRIVER TABLE 7 ;
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
 W !,"NOTE: Patient lists may be hundreds of pages long, depending on the size of your"
 W !,"patient population.  It is recommended that you run these reports at night and"
 W !,"print to an electronic file, not directly to a printer.",!
 K DIR S DIR(0)="E",DIR("A")="Press Enter to Continue" D ^DIR K DIR
 W !!,"This Patient List option documents the individual patients and visits"
 W !,"that are counted and summarized on each Table report (main menu"
 W !,"option REP).  The summary Table report is included at the beginning of each"
 W !,"List report."
 W !,"UDS searches your database to find all visits and related patients"
 W !,"during the time period selected. Based on the UDS definition, to be counted"
 W !,"as a patient, the patient must have had at least one visit meeting the "
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
 ;
DMR1 ;EP
 W:$D(IOF) @IOF
 W !,$$CTR($$LOC,80)
 W !,$$CTR("UDS 2018",80)
 W !!,"All Patients w/DM and A1c >9 by Race and Hispanic or Latino Identity (Table 7)",!
 D GENI
 D PAUSE
 W !!,"This report provides a list by race and Hispanic or Latino Identity of "
 W !,"patients age 18 to 75 years old who have had at least one medical visit during"
 W !,"the report period, with a diagnosis of Type I or Type II diabetes anytime"
 W !,"through the end of the report period, and without a diagnosis of "
 W !,"polycystic ovaries, gestational diabetes, or steroid-induced diabetes"
 W !,"and with a most recent hemoglobin A1c greater than 9%, or with an A1c"
 W !,"with no result, or with no A1c test during the report period."
 W !
 Q
DMR1L ;EP
 S BUDP=0,BUDQUIT=0,BUDTOT=0
 D DMR1H Q:BUDQUIT
 I '$D(^XTMP("BUDHRP7",BUDJ,BUDH,"DMR1")) S X="No patients to report." W:BUDROT="P" !!,X D:BUDROT="D" S(),S(X) Q
 D DMR1L1
 I BUDROT="P",$Y>(IOSL-3) D DMR1H G:BUDQUIT DMR1LX
 I BUDROT="P" W !,"TOTAL DIABETES PATIENTS 18-75 W/A1C >9% BY RACE AND HISPANIC ",!,"OR LATINO IDENTITY: ",BUDTOT,!
 I BUDROT="D" D S(),S("TOTAL DIABETES PATIENTS 18-75 W/A1C >9% BY RACE AND HISPANIC OR LATINO IDENTITY: "_BUDTOT)
DMR1LX ;
 Q
DMR1L1 ;
 I BUDROT="P",$Y>(IOSL-7) D DMR1H Q:BUDQUIT
 S BUDTOT=0
 S BUDRACE="" F  S BUDRACE=$O(^XTMP("BUDHRP7",BUDJ,BUDH,"DMR1",BUDRACE)) Q:BUDRACE=""!(BUDQUIT)  D
 .S BUDHTH="" F  S BUDHTH=$O(^XTMP("BUDHRP7",BUDJ,BUDH,"DMR1",BUDRACE,BUDHTH)) Q:BUDHTH=""!(BUDQUIT)  D DMR1L2
 Q
DMR1L2 ;
 S BUDSTOT=0
 S BUDRACEL=$$RACEL^BUDHRP7I(BUDRACE,BUDHTH)
 I BUDROT="P" W !,BUDRACEL
 I BUDROT="D" D S(BUDRACEL)
 S BUDCCOM="" F  S BUDCCOM=$O(^XTMP("BUDHRP7",BUDJ,BUDH,"DMR1",BUDRACE,BUDHTH,BUDCCOM)) Q:BUDCCOM=""!(BUDQUIT)  D
 .S BUDA="" F  S BUDA=$O(^XTMP("BUDHRP7",BUDJ,BUDH,"DMR1",BUDRACE,BUDHTH,BUDCCOM,BUDA)) Q:BUDA=""!(BUDQUIT)  D
 ..S BUDNAME="" F  S BUDNAME=$O(^XTMP("BUDHRP7",BUDJ,BUDH,"DMR1",BUDRACE,BUDHTH,BUDCCOM,BUDA,BUDNAME)) Q:BUDNAME=""!(BUDQUIT)  D
 ...S DFN=0 F  S DFN=$O(^XTMP("BUDHRP7",BUDJ,BUDH,"DMR1",BUDRACE,BUDHTH,BUDCCOM,BUDA,BUDNAME,DFN)) Q:DFN'=+DFN!(BUDQUIT)  D
 ....I BUDROT="P",$Y>(IOSL-3) D DMR1H Q:BUDQUIT  W !,BUDRACEL,!
 ....I BUDROT="P" W !?2,$E($P(^DPT(DFN,0),U,1),1,20),?24,$S($$HRN^AUPNPAT(DFN,BUDSITE)]"":$$HRN^AUPNPAT(DFN,BUDSITE,2),1:$$HRN^AUPNPAT(DFN,DUZ(2),2)),?36,$E(BUDCCOM,1,10),?47,$P(^DPT(DFN,0),U,2),?51,BUDA,!  ;
 ....I BUDROT="D" S BUDPV="",BUDPV=$E($P(^DPT(DFN,0),U,1),1,30)_U_$S($$HRN^AUPNPAT(DFN,BUDSITE)]"":$$HRN^AUPNPAT(DFN,BUDSITE,2),1:$$HRN^AUPNPAT(DFN,DUZ(2),2))_U_$E(BUDCCOM,1,12)_U_$P(^DPT(DFN,0),U,2)_U_BUDA
 ....S BUDTOT=BUDTOT+1,BUDSTOT=BUDSTOT+1
 ....S BUDRACV=$$RACE^BUDHRPTC(DFN)
 ....I BUDROT="P" W ?2,$E($P(BUDRACV,U,4),1,16)_" ("_$P(BUDRACV,U,3),")"  ;,?60,$E($P($$RACE^BUDHRPTC(DFN),U,3)_"-"_$P($$RACE^BUDHRPTC(DFN),U,4),1,19)
 ....I BUDROT="D" S BUDPV=BUDPV_U_$E($P(BUDRACV,U,4),1,16)_" ("_$P(BUDRACV,U,3)_")"
 ....S BUDHISV=$$HISP^BUDHRPTC(DFN)
 ....I BUDROT="P" W ?24,$P(BUDHISV,U,3)," (",$P(BUDHISV,U,2),")",!
 ....I BUDROT="D" S BUDPV=BUDPV_U_$P(BUDHISV,U,3)_" ("_$P(BUDHISV,U,2)_")"
 ....S BUDALL=^XTMP("BUDHRP7",BUDJ,BUDH,"DMR1",BUDRACE,BUDHTH,BUDCCOM,BUDA,BUDNAME,DFN)
 ....S BUDPPV=$P(BUDALL,"^",1)
 ....I BUDROT="P" W ?5,$P(BUDALL,"^",2),!
 ....I BUDROT="D" S BUDPV=BUDPV_U_$P(BUDALL,"^",2)
 ....F BUDX=1:1 S BUDV=$P(BUDPPV,U,BUDX) Q:BUDV=""!(BUDQUIT)  D
 .....I BUDROT="P",$Y>(IOSL-3) D DMR1H Q:BUDQUIT  W !,BUDRACEL,!
 .....I BUDROT="P",$E(BUDV)="P" W ?5,BUDV,! Q
 .....I BUDROT="D",$E(BUDV)="P" S BUDPV=BUDPV_U_BUDV D S(BUDPV) Q
 .....S V=$P(BUDV,"|"),C=$P(BUDV,"|",2)
 .....I BUDROT="P" W ?5,$$FMTE^XLFDT($P($P(^AUPNVSIT(V,0),U),".")),?19,C,?35,$$PRIMPROV^APCLV(V,"D"),?45,$P(^AUPNVSIT(V,0),U,7),?53,$$CLINIC^APCLV(V,"C"),?65,$E($$VAL^XBDIQ1(9000010,V,.06),1,15),!
 .....I BUDROT="D" S X=BUDPV_U_$$FMTE^XLFDT($P($P(^AUPNVSIT(V,0),U),"."))_U_C_U_$$PRIMPROV^APCLV(V,"D")_U_$P(^AUPNVSIT(V,0),U,7)_U_$$CLINIC^APCLV(V,"C")_U_$$VAL^XBDIQ1(9000010,V,.06) D S(X)
 I BUDROT="P",$Y>(IOSL-4) D DMR1H Q:BUDQUIT  W !,BUDRACEL,!
 I BUDROT="P" W !,"Sub-Total ",BUDRACEL,":  ",BUDSTOT,!
 I BUDROT="D" D S("Sub-Total "_BUDRACEL_":  "_BUDSTOT)
 Q
DMR1H ;
 I BUDROT="D" D DMR1HD Q
 G:'BUDGPG DMR1H1
 K DIR I $E(IOST)="C",IO=IO(0),'$D(ZTQUEUED) W ! S DIR(0)="EO" D ^DIR K DIR I Y=0!(Y="^")!($D(DTOUT)) S BUDQUIT=1 Q
DMR1H1 ;
 W:$D(IOF) @IOF S BUDGPG=BUDGPG+1
 W !,$$CTR("***** SENSITIVE INFORMATION *****",IOM)
 W !?3,$P(^VA(200,DUZ,0),U,2),?35,$$FMTE^XLFDT(DT),?55,"Section "_BUDSCTC_" of "_BUDTSCTC_", Page "_BUDGPG,!
 W !,$$CTR("***  RPMS Uniform Data System (UDS) "_$$VER^BUDHBAN()_"  ***",80)
 W !,$$CTR("Patient List for Table 7, Section C",80)
 W !,$$CTR("Diabetes w/o A1c or >9 by Race and Hispanic or Latino Identity ",80),!
 W $$CTR($P(^DIC(4,BUDSITE,0),U),80),!
 S X="Reporting Period: "_$$FMTE^XLFDT(BUDBD)_" to "_$$FMTE^XLFDT(BUDED) W $$CTR(X,80),!
 W $TR($J("",80)," ","-")
 I BUDP=0 D
 .W !,"List by race and Hispanic or Latino identity of patients age 18 to 75 years "
 .W !,"old who have had at least one medical visit during the report period and"
 .W !,"were diagnosed with Type I or Type II diabetes anytime through the end of the"
 .W !,"report period and whose most recent hemoglobin A1c is >9%, or did not have "
 .W !,"a result, or the patient did not have an A1c test during the report period."
 .W !,"Age on the patient list is calculated as of December 31."
 .W !,"* E - denotes the value was obtained from the Ethnicity field."
 .W !,"  R - denotes the value was obtained from the Race field"
 .W !,"  C - denotes the value was obtained from the Classification/Beneficiary field"
 .W !
 W !?2,"PATIENT NAME",?24,"HRN",?36,"COMMUNITY",?47,"SEX",?51,"AGE"
 W !?2,"RACE*",?24,"HISPANIC OR LATINO IDENTITY*"
 W !?5,"LAST A1C VALUE OR CD & DATE"
 W !?5,"LAST DM DATE",?19,"DX OR SVC CD",?35,"PROV TYPE",?45,"SVC CAT",?53,"CLINIC",?65,"LOCATION"
 W !,$TR($J("",80)," ","-"),!
 S BUDP=1
 Q
DMR1HD ;
 D S("***** SENSITIVE INFORMATION *****")
 D S($P(^VA(200,DUZ,0),U,2)_"    "_$$FMTE^XLFDT(DT))
 D S("***  RPMS Uniform Data System (UDS) "_$$VER^BUDHBAN()_"  ***")
 D S("Patient List for Table 7, Section C, Diabetes w/o A1c or >9 by Race and Hispanic or Latino Identity ")
 D S($P(^DIC(4,BUDSITE,0),U))
 S X="Reporting Period: "_$$FMTE^XLFDT(BUDBD)_" to "_$$FMTE^XLFDT(BUDED) D S(X)
 S X="Population:  "_$S($G(BUDBEN)=1:"Indian/Alaskan Native (Classification 01)",$G(BUDBEN)=2:"Not Indian Alaskan/Native (Not Classification 01)",$G(BUDBEN)=3:"All (both Indian/Alaskan Natives and Non 01)",1:"") D S(X)
 D S()
 D S("List by race and Hispanic or Latino identity of patients age 18 to 75 years ")
 D S("old who have had at least one medical visit during the report period and were ")
 D S("diagnosed with Type I or Type II diabetes anytime through the end of the ")
 D S("report period and whose most recent hemoglobin A1c is >9%, or did not have ")
 D S("a result, or the patient did not have an A1c test during the report period.")
 D S("Age on the patient list is calculated as of December 31.")
 D S("* E - denotes the value was obtained from the Ethnicity field.")
 D S("  R - denotes the value was obtained from the Race field")
 D S("  C - denotes the value was obtained from the Classification/Beneficiary field")
 D S()
 D S("PATIENT NAME^HRN^COMMUNITY^SEX^AGE^RACE*^HISPANIC OR LATINO IDENTITY^LAST A1C VALUE OR CD & DATE^LAST DM DATE^DX OR SVC CD^PROV TYPE^SVC CAT^CLINIC^LOCATION")
 Q

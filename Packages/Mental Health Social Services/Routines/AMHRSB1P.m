AMHRSB1P ; IHS/CMI/LAB - list refusals ;
 ;;4.0;IHS BEHAVIORAL HEALTH;**8**;JUN 02, 2010;Build 7
 ;
 ;
PRINT ;EP - called from xbdbque
 D PRINT1
 D DONE
 Q
PRINT1 ;
 S AMHRPG=0 K AMHRQUIT
 K AMHRLSTP
 ;I '$D(^XTMP("AMHRSB1",AMHRJ,AMHRH)) D HEADER W !!,"No data to report.",! G DONE
 D HEADER W "COUNT OF PATIENTS",!?40,"Number",?60,"Percent",!?40,"------",?60,"-------",!
 W !,"Patients screened for alcohol use",?40,$J($$COM(AMHTPTSR,0),8),!
 W !,"Patients screened Positive",!,"  (at least once)",?40,$J($$COM(AMHTPTPO,0),8),?60,$J($$PER(AMHTPTPO,AMHTPTSR),7),!
 W !,"Patients Screened Positive w/",!
 W "  BNI/BI on same day as screen",?40,$J($$COM(AMHTPT0,0),8),?60,$J($$PER(AMHTPT0,AMHTPTPO),7),!
 W !,"Patients Screened Positive w/",!
 W "  BNI/BI 1-3 days after screen",?40,$J($$COM(AMHTPT1,0),8),?60,$J($$PER(AMHTPT1,AMHTPTPO),7),!
 W !,"Patients Screened Positive w/",!
 W "  BNI/BI 4-7 days after screen",?40,$J($$COM(AMHTPT4,0),8),?60,$J($$PER(AMHTPT4,AMHTPTPO),7),!
 W !,"Patients Screened Positive referred",!
 W "  for treatment w/in 7 days",?40,$J($$COM(AMHTPTT,0),8),?60,$J($$PER(AMHTPTT,AMHTPTPO),7),!
 I $D(AMHRLIST) D LIST
 Q
SCRC I $Y>(IOSL-5) D HEADER Q:$D(AMHRQUIT)
 W !,"COUNT OF SCREENS",!?40,"Number",?60,"Percent",!?40,"------",?60,"-------",!
 W !,"Screenings for alcohol use",?40,$J($$COM(AMHTSCRS,0),8),!
 W !,"Positive Screens",?40,$J($$COM(AMHTSCRP,0),8),?60,$J($$PER(AMHTSCRP,AMHTSCRS),7),!
 W !,"Patients Screened Positive w/",!
 W "  BNI/BI on same day as screen",?40,$J($$COM(AMHTSCR0,0),8),?60,$J($$PER(AMHTSCR0,AMHTSCRP),7),!
 W !,"Patients Screened Positive w/",!
 W "  BNI/BI 1-3 days after screen",?40,$J($$COM(AMHTSCR1,0),8),?60,$J($$PER(AMHTSCR1,AMHTSCRP),7),!
 W !,"Patients Screened Positive w/",!
 W "  BNI/BI 4-7 days after screen",?40,$J($$COM(AMHTSCR4,0),8),?60,$J($$PER(AMHTSCR4,AMHTSCRP),7),!
 W !,"Patients Screened Positive referred",!
 W "  for treatment w/in 7 days",?40,$J($$COM(AMHTSCRT,0),8),?60,$J($$PER(AMHTSCRT,AMHTSCRP),7),!
 I $D(AMHRLIST) D LIST
 Q
PER(N,D) ;return % of n/d
 I 'D Q "0%"
 NEW Z
 S Z=N/D,Z=Z*100,Z=$J(Z,5,1)
 Q $$STRIP^XLFSTR(Z," ")_"%"
COM(X,X2,X3) ;
 D COMMA^%DTC
 Q $$STRIP^XLFSTR(X," ")
END() ;
 I $Y<(IOSL-3) Q 0
 D HEADER
 I $D(AMHRQUIT) Q 1
 Q 0
ENDL() ;
 I $Y<(IOSL-8) Q 0
 D HEADER
 I $D(AMHRQUIT) Q 1
 Q 0
HEADER ;EP
 G:'AMHRPG HEADER1
 K DIR I $E(IOST)="C",IO=IO(0) W ! S DIR(0)="EO" D ^DIR K DIR I Y=0!(Y="^")!($D(DTOUT)) S AMHRQUIT="" Q
HEADER1 ;
 W:$D(IOF) @IOF S AMHRPG=AMHRPG+1
 W !?3,$P(^VA(200,DUZ,0),U,2),?35,$$FMTE^XLFDT(DT),?70,"Page ",AMHRPG,!
 W !,$$CTR("SCREENING, BRIEF INTERVENTION, AND REFERRAL TO TREATMENT (SBIRT)",80),!
 S X="Screening Dates: "_$$FMTE^XLFDT(AMHRBD)_" to "_$$FMTE^XLFDT(AMHRED) W $$CTR(X,80),!
 I $G(AMHRLSTP) W !,$$CTR(AMHRSHD),!,"PATIENT NAME",?32,"HRN",?40,"DOB",?55,"GENDER",!,?2,"DATE SCREEN",?15,"SCREEN",?38,"DATE BNI/RT",?51,"BNI/RT",?75,"#DAYS"
 W !,$TR($J("",80)," ","-")
 Q
DONE ;
 K ^TMP($J)
 K ^XTMP("AMHRSB1",AMHRJ,AMHRH)
 D EOP
 Q
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
LIST ;EP - called from xbdbque
 S AMHRPG=0 K AMHRQUIT
 S AMHRLSTP=1
 I $D(AMHRLIST(1)) D LIST1 Q:$D(AMHRQUIT)
 I $D(AMHRLIST(2)) D LIST2 Q:$D(AMHRQUIT)
 I $D(AMHRLIST(3)) D LIST3 Q:$D(AMHRQUIT)
 Q
LIST1 ;
 S AMHRSHD="PATIENTS WITH POSITIVE ALCOHOL SCREEN DURING THE REPORT TIME FRAME",AMHZZ="LIST1"
 D PLIST
 Q
LIST2 ;
 S AMHRSHD="PATIENTS WITH POSITIVE ALCOHOL SCREEN W/BNI OR REFERRAL FOR TX",AMHZZ="LIST2"
 D PLIST
 Q
LIST3 ;
 S AMHRSHD="PATIENTS WITH POSITIVE ALCOHOL WITHOUT BNI OR REFERRAL FOR TX",AMHZZ="LIST3"
 D PLIST
 Q
PLIST ;
 D HEADER Q:$D(AMHRQUIT)
 ;resort by sort item
 S AMHRSORV="" F  S AMHRSORV=$O(^XTMP("AMHRSB1",AMHRJ,AMHRH,AMHZZ,AMHRSORV)) Q:AMHRSORV=""!($D(AMHRQUIT))  D
 .S DFN=0 F  S DFN=$O(^XTMP("AMHRSB1",AMHRJ,AMHRH,AMHZZ,AMHRSORV,DFN)) Q:DFN'=+DFN!($D(AMHRQUIT))  D
 ..Q:$$ENDL
 ..W !,$E($P(^DPT(DFN,0),U),1,30),?32,$$HRN^AUPNPAT(DFN,DUZ(2)),?40,$$FMTE^XLFDT($$DOB^AUPNPAT(DFN)),?55,$$VAL^XBDIQ1(2,DFN,.02),!
 ..S AMHD=0 F  S AMHD=$O(^XTMP("AMHRSB1",AMHRJ,AMHRH,AMHZZ,AMHRSORV,DFN,AMHD)) Q:AMHD=""!($D(AMHRQUIT))  D
 ...S AMHRY=^XTMP("AMHRSB1",AMHRJ,AMHRH,AMHZZ,AMHRSORV,DFN,AMHD)
 ...W ?2,$P(AMHRY,U,1),?15,$P(AMHRY,U,2),": ",$P(AMHRY,U,3),?38,$P(AMHRY,U,6) I $P(AMHRY,U,5)]"" W ?51,$P(AMHRY,U,5),": ",$P(AMHRY,U,7),?74,$P(AMHRY,U,8)
 ...W !
 Q
H ;
 S AMHRSORV=$$HRN^AUPNPAT(DFN,DUZ(2))
 Q
N ;
 S AMHRSORV=$P(^DPT(DFN,0),U)
 Q
P ;
 S AMHRSORV=$P(AMHRY,U,2)
 Q
R ;
 S AMHRSORV=$P(AMHRY,U,3)
 Q
D ;
 S AMHRSORV=$P(AMHRY,U,7)
 Q
A S AMHRSORV=$P(AMHRY,U,5)
 Q
G ;
 S AMHRSORV=$P(AMHRY,U,6)
 Q
C ;
 S AMHRSORV=$P(AMHRY,U,9)
 Q
T ;
 S %=$$HRN^AUPNPAT(DFN,DUZ(2))
 S %=%+10000000,%=$E(%,7,8)_"-"_+$E(%,2,8)
 S AMHRSORV=%
 Q
DT(D) ;EP
 I D="" Q ""
 Q $E(D,4,5)_"/"_$E(D,6,7)_"/"_$E(D,2,3)
 ;

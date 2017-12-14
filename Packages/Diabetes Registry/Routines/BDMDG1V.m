BDMDG1V ; IHS/CMI/LAB -IHS -CUMULATIVE REPORT 22 Feb 2014 3:43 PM ; 
 ;;2.0;DIABETES MANAGEMENT SYSTEM;**12**;JUN 14, 2007;Build 51
 ;
 ;
QUALCHK ;EP
 ;print QUALITY DATA CHECK
 ;
 ;
PRINT ;
 ;S BDMPG=0
 S BDMQUIT=0
 K BDMSUM
 D HEADER
 I '$D(^XTMP("BDMDM19 ERRORS",BDMJOB,BDMBTH,"PATS")) W !,"No Errors to Report." Q
 D PRINT1 ;print each indicator
 D EXIT
 Q
 ;
PRINT1 ;
 S BDMS1="" F  S BDMS1=$O(^XTMP("BDMDM19 ERRORS",BDMJOB,BDMBTH,"PATS",BDMS1)) Q:BDMS1=""!(BDMQUIT)  D
 .S DFN="" F  S DFN=$O(^XTMP("BDMDM19 ERRORS",BDMJOB,BDMBTH,"PATS",BDMS1,DFN)) Q:DFN=""!(BDMQUIT)  D PRINT2
 ;NOW PRINT SUMMARY
 I $Y>IOSL-11 D HEADER Q:BDMQUIT
 W !!!,$$CTR("SUMMARY OF POTENTIAL ERRORS",80),!
 W !,"ERROR MESSAGE",?40,"# OF POTENTIAL ERRORS",!
 S BDMX="" F  S BDMX=$O(BDMSUM(BDMX)) Q:BDMX=""  D
 .W !,BDMX,?40,BDMSUM(BDMX)
 W !
 Q
PRINT2 ;
 S BDME=0 F  S BDME=$O(^XTMP("BDMDM19 ERRORS",BDMJOB,BDMBTH,"PATS",BDMS1,DFN,BDME)) Q:BDME'=+BDME!(BDMQUIT)  D
 .I $Y>(BDMIOSL-4) D HEADER Q:BDMQUIT
 .S T=^XTMP("BDMDM19 ERRORS",BDMJOB,BDMBTH,"PATS",BDMS1,DFN,BDME)
 .W $E($P(^DPT(DFN,0),U,1),1,20),?22,$$HRN^AUPNPAT(DFN,DUZ(2)),?34,$$DATE^BDMS9B1($$DOB^AUPNPAT(DFN)),?46,$P(^DPT(DFN,0),U,2),?50,$$AGE^AUPNPAT(DFN,BDMADAT),?59,$P(T,U,4),?71,$P(T,U,2),! ;,!?5,"ERROR:  ",$P(T,U,1),!
 .;FMWP
 .S X="ERROR: "_$P(T,U,1)_"-"_$P(T,U,3)
 .K ^UTILITY($J,"W") S DIWL=0,DIWR=72 D ^DIWP
 .W ?5,$G(^UTILITY($J,"W",0,1,0)),!
 .S Y=1 F  S Y=$O(^UTILITY($J,"W",0,Y)) Q:Y'=+Y  W ?5,$G(^UTILITY($J,"W",0,Y,0)),!
 .K ^UTILITY($J,"W")
 .S BDMSUM($P(T,U,1))=$G(BDMSUM($P(T,U,1)))+1
 Q
EXIT ;
 I '$G(BDMGUI) I $E(IOST)="C",IO=IO(0) W ! S DIR(0)="EO",DIR("A")="End of report.  Press ENTER" D ^DIR K DIR S:$D(DUOUT) DIRUT=1
 Q
HEADER ;EP
 G:'BDMPG HEADER1
 W !
 K DIR I $E(IOST)="C",IO=IO(0) W ! S DIR(0)="EO" D ^DIR K DIR I Y=0!(Y="^")!($D(DTOUT)) S BDMQUIT=1 Q
HEADER1 ;
 I BDMPG W:$D(IOF) @IOF
 S BDMPG=BDMPG+1
 I $G(BDMGUI),BDMPG'=1 W !,"ZZZZZZZ"
 I $G(BDMGUI) W !!
 W !?3,$P(^VA(200,DUZ,0),U,2),?35,$$FMTE^XLFDT(DT),?70,"Page ",BDMPG,!
 W !,$$CTR("DIABETES AUDIT EXPORT DATA QUALITY CHECK REPORT",80),!
 N BDMDHDR
 S BDMDHDR="Audit Date "_$$DATE^BDMS9B1(BDMADAT)_" ("_$$DATE^BDMS9B1(BDMBDAT)_" to "_$$DATE^BDMS9B1(BDMADAT)_")"
 W $$CTR(BDMDHDR,80),!
 ;W $$CTR("AUDIT REPORT FOR 2019 (Audit Period "_$$DATE^BDMS9B1(BDMBDAT)_" to "_$$DATE^BDMS9B1(BDMADAT)_")"),!
 S X="Facility: "_$P(^DIC(4,$S($G(BDMDUZ2):BDMDUZ2,1:DUZ(2)),0),U) W $$CTR(X,80),!
 W !,"PATIENT NAME",?22,"HRN",?34,"DOB",?46,"SEX",?50,"AGE",?59,"VALUE",?71,"ERR TYPE",!
 W $TR($J("",80)," ","-"),!
 Q
CTR(X,Y) ;EP - Center X in a field Y wide.
 Q $J("",$S($D(Y):Y,1:IOM)-$L(X)\2)_X
 ;----------
EOP ;EP - End of page.
 Q:$E(IOST)'="C"
 Q:$D(ZTQUEUED)!'(IOT="TRM")!$D(IO("S"))
 NEW DIR
 K DIRUT,DFOUT,DLOUT,DTOUT,DUOUT
 S DIR(0)="E" D ^DIR
 Q
 ;----------
USR() ;EP - Return name of current user from ^VA(200.
 Q $S($G(DUZ):$S($D(^VA(200,DUZ,0)):$P(^(0),U),1:"UNKNOWN"),1:"DUZ UNDEFINED OR 0")
 ;----------
LOC() ;EP - Return location name from file 4 based on DUZ(2).
 Q $S($G(DUZ(2)):$S($D(^DIC(4,DUZ(2),0)):$P(^(0),U),1:"UNKNOWN"),1:"DUZ(2) UNDEFINED OR 0")
 ;----------
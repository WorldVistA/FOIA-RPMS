BDMDR6 ; IHS/CMI/LAB - patients w/o dm on problem list ;
 ;;2.0;DIABETES MANAGEMENT SYSTEM;**2,3,8,9,10**;JUN 14, 2007;Build 12
 ;
 ;
START ;
 D INFORM
 D EXIT
R ;
 K BDMREG
R1 ;
 S DIC="^ACM(41.1,",DIC(0)="AEMQ",DIC("A")="Enter "_$S($D(BDMREG):"Another ",1:"")_"Register Name: " D ^DIC
 I Y=-1,$D(BDMREG) G GETDATES
 I Y=-1,'$D(BDMREG) W !,"No register selected." D EXIT Q
 S BDMREG(+Y)=""
 G R1
GETDATES ;
BD ;
 W !!!,"Enter the time frame to look for visits with a diabetes diagnosis.",!
 S DIR(0)="D^::EP",DIR("A")="Enter Beginning Visit Date",DIR("?")="Enter the beginning visit date for the search." D ^DIR K DIR S:$D(DUOUT) DIRUT=1
 G:$D(DIRUT) R
 S BDMBD=Y
ED ;
 S DIR(0)="DA^::EP",DIR("A")="Enter Ending Visit Date:  " D ^DIR K DIR S:$D(DUOUT) DIRUT=1
 G:$D(DIRUT) GETDATES
 I Y<BDMBD W !,"Ending date must be greater than or equal to beginning date!" G ED
 S BDMED=Y
 S X1=BDMBD,X2=-1 D C^%DTC S BDMSD=X
D ;
 ;how many
 S BDMND=""
 S DIR(0)="N^1:99:0",DIR("A")="How many diagnoses must the patient have had in that time period",DIR("B")="3" KILL DA D ^DIR KILL DIR
 I $D(DIRUT) G GETDATES
 S BDMND=Y
ZIS ;
 S BDMTEMP=""
 S DIR(0)="S^P:PRINT the List;B:BROWSE the List on the Screen;S:Create Search Template;D:Create Delimited Output file",DIR("A")="Output Type",DIR("B")="P" KILL DA D ^DIR KILL DIR
 I $D(DIRUT) G GETDATES
 S BDMTEMP=Y
 I BDMTEMP="P"!(BDMTEMP="B") G DEMO
 I BDMTEMP="S" D  G:BDMSTMP="" ZIS G DEMO
 .D EN2^BDMRML
 ;get file name
 D PT G:BDMDELT="" ZIS I BDMDELT="F",BDMDELF="" G ZIS
 ;call to XBDBQUE
DEMO ;
 D DEMOCHK^BDMUTL(.BDMDEMO)
 I BDMDEMO=-1 D EXIT Q
 I BDMTEMP="B" D BROWSE,EXIT Q
 S XBRP="PRINT^BDMDR6",XBRC="PROC^BDMDR6",XBRX="EXIT^BDMDR6",XBNS="BDM"
 D ^XBDBQUE
 D EXIT
 Q
ST ;
BROWSE ;
 S XBRP="VIEWR^XBLM(""PRINT^BDMDR6"")"
 S XBRC="PROC^BDMDR6",XBRX="EXIT^BDMDR6",XBIOP=0 D ^XBDBQUE
 Q
EXIT ;clean up and exit
 I '$D(BDMGUI) D EN^XBVK("BDM")
 D ^XBFMK
 D KILL^AUPNPAT
 Q
INFORM ;
 W:$D(IOF) @IOF
 W !,$$CTR($$LOC)
 W !,$$CTR($$USR)
 W !!,"This report will list patients who are not on any diabetes register ",!
 W "but who have had a visit with a diagnosis of diabetes in a date range",!
 W "specified by the user.  If you are multi-divisional with multiple registers",!
 W "you can enter all of the register names.  Only patients who are not on ANY",!
 W "of the registers will be displayed on the list.",!
 W !
 Q
PROC ;EP - called from XBDBQUE
 S BDMJOB=$J,BDMBTH=$H
 K ^XTMP("BDMDR6",BDMJOB,BDMBTH)
 D XTMP^BDMOSUT("BDMDR6","DM NOT ON REGISTER")
 S DFN=0 F  S DFN=$O(^AUPNPAT(DFN)) Q:DFN'=+DFN  D
 .Q:$P($G(^DPT(DFN,0)),U,19)
 .Q:$D(^DPT(DFN,-9))
 .Q:$$DEMO^BDMUTL(DFN,$G(BDMDEMO))
 .Q:$$DOD^AUPNPAT(DFN)]""
 .Q:$P($G(^AUPNPAT(DFN,41,$S($G(BDMDUZ2):BDMDUZ2,1:DUZ(2)),0)),U,5)]""  ;IHS/CMI/GRL
 .Q:$P($G(^AUPNPAT(DFN,41,$S($G(BDMDUZ2):BDMDUZ2,1:DUZ(2)),0)),U,2)=""  ;IHS/CMI/GRL
 .Q:$$ONREG(DFN,.BDMREG)  ;I $D(^ACM(41,"AC",DFN,BDMREG)) Q  ;on register
 .S X=$$LASTDMDX(DFN,BDMBD,BDMED,BDMND)
 .I X S ^XTMP("BDMDR6",BDMJOB,BDMBTH,"PATIENTS",$$GET1^DIQ(2,DFN,.01),DFN)=""
 Q
ONREG(P,R) ;
 NEW X,G
 S G=""
 S X=0 F  S X=$O(BDMREG(X)) Q:X'=+X!(G)  I $D(^ACM(41,"AC",DFN,X)) S G=1
 Q G
PRINT ;EP - called from xbdbque
 S BDMIOSL=$S($G(BDMGUI):55,1:IOSL)
 S BDM80D="-------------------------------------------------------------------------------"
 S BDMPG=0 D HEAD
 K ^TMP($J)
 I BDMTEMP'="D" I '$D(^XTMP("BDMDR6",BDMJOB,BDMBTH)) W !!,"NO PATIENTS TO REPORT" G DONE
 S BDMNAME="" K BDMQ
 S BDMDCNT=0
 F  S BDMNAME=$O(^XTMP("BDMDR6",BDMJOB,BDMBTH,"PATIENTS",BDMNAME)) Q:BDMNAME=""!($D(BDMQ))  D
 .S DFN="" F  S DFN=$O(^XTMP("BDMDR6",BDMJOB,BDMBTH,"PATIENTS",BDMNAME,DFN)) Q:DFN=""!($D(BDMQ))  S BDMX=^XTMP("BDMDR6",BDMJOB,BDMBTH,"PATIENTS",BDMNAME,DFN) D
 ..I BDMTEMP="S" S ^DIBT(BDMSTMP,1,DFN)="" Q
 ..I BDMTEMP="D" D DELR Q
 ..I $Y>(BDMIOSL-4) D HEAD Q:$D(BDMQ)
 ..W !,$E(BDMNAME,1,20),?22,$$HRN^AUPNPAT(DFN,$S($G(BDMDUZ2):BDMDUZ2,1:DUZ(2))),?29,$$DATE^BDMS9B1($$DOB^AUPNPAT(DFN))
 ..W ?40,$E($$COMMRES^AUPNPAT(DFN,"E"),1,10)
 ..S V=$$LASTV(DFN)
 ..W ?53,$$DATE($P(V,U,1))
 ..W ?63,$$LBLK^BDMUTL($$NUMDXS(DFN,BDMBD,BDMED),5)
 ..W ?70,$$DATE($$LASTDMDX(DFN,$$DOB^AUPNPAT(DFN),DT)),!
 ..W ?5,"Seen at: ",$$VLOCS(DFN,BDMBD,BDMED)
DONE ;
 I BDMTEMP="S" W !!,"Search Template ",$P(^DIBT(BDMSTMP,0),U,1)," has been created.",!
 I BDMTEMP="D" D WRITEF Q
 I $E(IOST)="C",IO=IO(0) S DIR(0)="EO",DIR("A")="End of report.  HIT RETURN" D ^DIR K DIR S:$D(DUOUT) DIRUT=1
 W:$D(IOF) @IOF
 K ^XTMP("BDMDR6",BDMJOB,BDMBTH),BDMJOB,BDMBTH
 Q
DELR ;
 S BDMDCNT=BDMDCNT+1
 S BDMREC=""
 S $P(BDMREC,U)=BDMNAME
 S $P(BDMREC,U,2)=$$HRN^AUPNPAT(DFN,$S($G(BDMDUZ2):BDMDUZ2,1:DUZ(2)))
 S $P(BDMREC,U,3)=$$DATE^BDMS9B1($$DOB^AUPNPAT(DFN))
 S $P(BDMREC,U,4)=$$COMMRES^AUPNPAT(DFN,"E")
 S V=$$LASTV(DFN)
 S $P(BDMREC,U,5)=$$DATE($P(V,U,1))
 S $P(BDMREC,U,6)=$$NUMDXS(DFN,BDMBD,BDMED)
 S $P(BDMREC,U,7)=$$DATE($$LASTDMDX(DFN,$$DOB^AUPNPAT(DFN),DT))
 S $P(BDMREC,U,8)=$$VLOCS(DFN,BDMBD,BDMED)
 S ^TMP($J,"DELIMITED",BDMDCNT)=BDMREC
 Q
HEAD I BDMTEMP="D" Q
 I 'BDMPG G HEAD1
 I $E(IOST)="C",IO=IO(0) W ! S DIR(0)="EO" D ^DIR K DIR I Y=0!(Y="^")!($D(DTOUT)) S BDMQ="" Q
HEAD1 ;
 W:$D(IOF) @IOF S BDMPG=BDMPG+1
 I $G(BDMGUI),BDMPG'=1 W !,"ZZZZZZZ"
 W !?13,"********** CONFIDENTIAL PATIENT INFORMATION **********"
 W !,$P(^VA(200,DUZ,0),U,2),?72,"Page ",BDMPG,!
 W ?(80-$L($P(^DIC(4,$S($G(BDMDUZ2):BDMDUZ2,1:DUZ(2)),0),U))/2),$P(^DIC(4,$S($G(BDMDUZ2):BDMDUZ2,1:DUZ(2)),0),U),!
 W $$CTR("Patients NOT on any of the following Registers:"),!
 S X=0 F  S X=$O(BDMREG(X)) Q:X'=+X  D
 .W $$CTR($P(^ACM(41.1,X,0),U)_" Register",80),!
 W $$CTR("with at least "_BDMND_" visits with a DX of Diabetes between ",80),!
 W $$CTR($$FMTE^XLFDT(BDMBD)_" and "_$$FMTE^XLFDT(BDMED),80),!
PIH W !,"PATIENT NAME",?22,"HRN",?29,"DOB",?40,"COMMUNITY",?53,"LAST VISIT",?64,"# DM",?70,"LAST DM",!,?64,"DXS",?70,"DX",!,BDM80D
 Q
NUMDXS(P,BD,ED) ;
 I '$G(P) Q ""
 NEW X,E,BDM,Y
 S Y="BDM("
 S X=P_"^ALL DX [SURVEILLANCE DIABETES;DURING "_BD_"-"_ED S E=$$START1^APCLDF(X,Y)
 S (X,Y)=0
 F  S X=$O(BDM(X)) Q:X'=+X  S Y=Y+1
 Q Y
LASTV(P) ;
 NEW X,Y,Z,V,D
 S V=""
 S D=0 F  S D=$O(^AUPNVSIT("AA",P,D)) Q:D'=+D!(V)  D
 .S X=0 F  S X=$O(^AUPNVSIT("AA",P,D,X)) Q:X'=+X!(V)  D
 ..Q:'$D(^AUPNVSIT(X,0))
 ..Q:$P(^AUPNVSIT(X,0),U,11)  ;deleted
 ..Q:'$P(^AUPNVSIT(X,0),U,9)  ;ZERO DEP
 ..Q:"CTNEDX"[$P(^AUPNVSIT(X,0),U,7)
 ..S V=X
 I V="" Q ""
 Q $$GET1^DIQ(9000010,V,.01,"I")_U_$$GET1^DIQ(9000010,V,.08,"I")
LASTDMDX(P,BDATE,EDATE,N) ;
 I '$G(P) Q ""
 I '$G(N) S N=1
 NEW X,E,BDM,Y
 S Y="BDM("
 S X=P_"^LAST "_N_" DX [SURVEILLANCE DIABETES;DURING "_BDATE_"-"_EDATE S E=$$START1^APCLDF(X,Y)
 I $D(BDM(N)) Q $P(BDM(N),U)
 Q ""
VLOCS(P,BDATE,EDATE) ;
 NEW X,V,BDMVS,BDMLOCS,L
 D ALLV^APCLAPIU(P,BDATE,EDATE,"BDMVS")
 S X=0 F  S X=$O(BDMVS(X)) Q:X'=+X  D
 .S V=$P(BDMVS(X),U,5)
 .S L=$$VALI^XBDIQ1(9000010,V,.06)
 .Q:'$D(^AUTTLOC(L,0))
 .;S L=$P(^AUTTLOC(L,0),U,7)
 .S L=$E($P(^DIC(4,L,0),U,1),1,15)
 .S BDMLOCS(L)=""
 S L="",V=""
 F  S L=$O(BDMLOCS(L)) Q:L=""  S V=V_$S(V]"":";",1:""),V=V_L
 Q V
CM(REG,PAT) ;
 NEW X
 S X=$G(^ACM(41,"AC",PAT,REG))
 I X="" Q ""
 Q $$GET1^DIQ(9002241,X,6)
RSTAT(REG,PAT) ;
 NEW X
 S X=$G(^ACM(41,"AC",PAT,REG))
 I X="" Q ""
 Q $$GET1^DIQ(9002241,X,1)
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
TEST ;
 D BDMG("R",1,"A")
 Q
BDMG(BDMTR,BDMREG,BDMSTAT,BDMND,BDMLDAT) ;EP - GUI DMS Entry Point
 S BDMND=$G(BDMND)
 S BDMGUI=1
 S BDMLDAT=$G(BDMLDAT)
 NEW BDMNOW,BDMOPT,BDMIEN
 S BDMOPT="Patients w/no Diagnosis of DM on Problem Lis"
 D NOW^%DTC
 S BDMNOW=$G(%)
 K DD,DO,DIC
 S X=DUZ_BDMNOW
 S DIC("DR")=".02////"_DUZ_";.03////"_BDMNOW_";.06///"_$G(BDMOPT)_";.07////R"
 S DIC="^BDMGUI(",DIC(0)="L",DIADD=1,DLAYGO=9003201.4
 D FILE^DICN
 K DIADD,DLAYGO,DIC,DA
 I Y=-1 S BDMIEN=-1 Q
 S BDMIEN=+Y
 S BDMGIEN=BDMIEN  ;cmi/maw added
 D ^XBFMK
 K ZTSAVE S ZTSAVE("*")=""
 ;D GUIEP for interactive testing
 S ZTIO="",ZTDTH=$$NOW^XLFDT,ZTRTN="GUIEP^BDMDR6",ZTDESC="GUI DM PTS NO DX PL" D ^%ZTLOAD
 D EXIT
 Q
GUIEP ;EP
 D PROC
 K ^TMP($J,"BDMDR6")
 S IOM=80
 D GUIR^XBLM("PRINT^BDMDR6","^TMP($J,""BDMDR6"",")
  S X=0,C=0 F  S X=$O(^TMP($J,"BDMDR6",X)) Q:X'=+X  D
 .S BDMDATA=^TMP($J,"BDMDR6",X)
 .;I BDMDATA="ZZZZZZZ" ;S BDMDATA=$C(12)
 .S ^BDMGUI(BDMIEN,11,X,0)=BDMDATA,C=C+1
 S ^BDMGUI(BDMIEN,11,0)="^^"_C_"^"_C_"^"_DT_"^"
 S DA=BDMIEN,DIK="^BDMGUI(" D IX1^DIK
 D ENDLOG
 K ^TMP($J,"BDMDR6")
 D EXIT
 S ZTREQ="@"
 Q
 ;
ENDLOG ;-- write the end of the log
 D NOW^%DTC
 S BDMNOW=$G(%)
 S DIE="^BDMGUI(",DA=BDMIEN,DR=".04////"_BDMNOW_";.07////C"
 D ^DIE
 K DIE,DR,DA
 Q
DATE(D) ;EP
 I D="" Q ""
 Q $E(D,4,5)_"/"_$E(D,6,7)_"/"_$E(D,2,3)
PT ;EP
 S (BDMROT,BDMDELT,BDMDELF)=""
 S BDMDELF="",BDMDELT=""
 W !!,"You have selected to create a delimited output file.  You can have this",!,"output file created as a text file in the pub directory, ",!,"OR you can have the delimited output display on your screen so that"
 W !,"you can do a file capture.  Keep in mind that if you choose to",!,"do a screen capture you CANNOT Queue your report to run in the background!!",!!
 S DIR(0)="S^S:SCREEN-delimited output will display on screen for capture;F:FILE-delimited output will be written to a file in pub",DIR("A")="Select output type",DIR("B")="S" KILL DA D ^DIR KILL DIR
 I $D(DIRUT) G PT
 S BDMDELT=Y
 Q:BDMDELT="S"
 S DIR(0)="F^1:40",DIR("A")="Enter a filename for the delimited output (no more than 40 characters)" KILL DA D ^DIR KILL DIR
 I $D(DIRUT) G PT
 S BDMDELF=Y
 S BDMHDIR=$S($P($G(^AUTTSITE(1,1)),U,2)]"":$P(^AUTTSITE(1,1),U,2),1:$G(^XTV(8989.3,1,"DEV")))
 I $G(BDMHDIR)="" S BDMHDIR="/usr/spool/uucppublic/"
 W !!,"When the report is finished your delimited output will be found in the",!,BDMHDIR," directory.  The filename will be ",BDMDELF,".txt",!
 Q
WRITEF ;
 I BDMDELT="S" D SCREEN Q
 S Y=$$OPEN^%ZISH(BDMHDIR,BDMDELF,"W")
 I Y=1 W:'$D(ZTQUEUED) !!,"Cannot open host file to write out DELIMITED data.  Notify programmer." Q
 U IO
 W !,"NAME^HRN^DOB^COMMUNITY^LAST VISIT^# DM DXS^LAST DM DXS^LOCATIONS WHERE SEEN"
 S X=0 F  S X=$O(^TMP($J,"DELIMITED",X)) Q:X'=+X  W !,^TMP($J,"DELIMITED",X)
 W !
 D ^%ZISC
 Q
SCREEN ;
 W !,"NAME^HRN^DOB^COMMUNITY^LAST VISIT^# DM DXS^LAST DM DXS^LOCATIONS WHERE SEEN"
 S X=0 F  S X=$O(^TMP($J,"DELIMITED",X)) Q:X'=+X  W !,^TMP($J,"DELIMITED",X)
 W !
 Q

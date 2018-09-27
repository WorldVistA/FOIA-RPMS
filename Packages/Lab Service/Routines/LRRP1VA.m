LRRP1VA ;DALOI/RWF/BA - PRINT THE DATA FOR INTERIM REPORTS, VA code ; 13-Oct-2017 14:04 ;  MKK
 ;;5.2;LAB SERVICE;**1041**;NOV 01, 1997;Build 23
 ;
 ; Code moved from LRRP1 to hear due to LRRP1 becoming too large
 ;
TEST ; EP -- Original VA Code -- IHS/OIT/MKK LR*5.2*1027
 S LRIDT=+^TMP("LR",$J,"TP",LRAAO,LRCDT,-2)
 S LRSS=$P(^TMP("LR",$J,"TP",LRAAO),U,2)
 S LR0=$S($D(^(LRAAO,LRCDT))#2:^(LRCDT),1:""),LRTC=$P(LR0,U,12)
 I LRSS="MI" D  Q
 . S LRH=1 D:LRFOOT FOOT Q:LRSTOP
 . D EN1^LRMIPC
 . S LRHF=1,LRFOOT=0
 . K A,Z,LRH
 . S:LREND LREND=0,LRSTOP=1
 ;
 Q:'$G(LRCAN)&('$P(LR0,U,3))  D @$S(LRHF:"HDR",1:"CHECK") Q:LRSTOP
 S LRSPEC=+$P(LR0,U,5),X=$P(LR0,U,10) D DOC^LRX
 ;
 W !!,?7,"Provider: ",LRDOC
 W !,?7,"Specimen: ",$P(^LAB(61,LRSPEC,0),U)
 D ORU^LRRP1
 W !!,?30,"Specimen Collection Date: ",$$FMTE^XLFDT(LRCDT,"M")
 W !?5,"Test name",?30,"Result    units",?51,"Ref.   range",?66,"Site Code"
 S LRPO=0
 F  S LRPO=$O(^TMP("LR",$J,"TP",LRAAO,LRCDT,LRPO)) Q:LRPO'>0  S LRDATA=^(LRPO) D DATA Q:LRSTOP
 Q:LRSTOP
 ;
 I $D(^TMP("LR",$J,"TP",LRAAO,LRCDT,"C")) D
 . W !,"Comment: " S LRCMNT=0
 . F  S LRCMNT=+$O(^TMP("LR",$J,"TP",LRAAO,LRCDT,"C",LRCMNT)) Q:LRCMNT<1  D  Q:LRSTOP
 . . W ^TMP("LR",$J,"TP",LRAAO,LRCDT,"C",LRCMNT)
 . . D CONT Q:LRSTOP
 . . W:$O(^TMP("LR",$J,"TP",LRAAO,LRCDT,"C",LRCMNT)) !?9
 Q:LRSTOP  D EQUALS^LRX
 W !?7,"KEY: ""L""=Abnormal low, ""H""=Abnormal high, ""*""=Critical value"
 S LRFOOT=1
 Q
 ;
DATA ; EP-- Original VA Code -- IHS/OIT/MKK LR*5.2*1027
 N LR63DATA
 ;
 S LRTSTS=+LRDATA,LRPC=$P(LRDATA,U,5),LRSUB=$P(LRDATA,U,6)
 S X=$P(LRDATA,U,7) Q:X=""
 S LR63DATA=$$TSTRES^LRRPU(LRDFN,LRSS,LRIDT,$P(LRDATA,U,10),LRTSTS)
 S LRLO=$P(LR63DATA,"^",3),LRHI=$P(LR63DATA,"^",4),LRREFS=$$EN^LRLRRVF(LRLO,LRHI),LRPLS=$P(LR63DATA,"^",6),LRTHER=$P(LR63DATA,"^",7)
 I LRPLS S LRPLS(LRPLS)=LRPLS
 ;
 W !?5,$S($L($P(LRDATA,U,2))>20:$P(LRDATA,U,3),1:$P(LRDATA,U,2))
 S X=$P(LR63DATA,"^")
 W ?27,@$S(LRPC="":"$J(X,LRCW)",1:LRPC)," ",$P(LR63DATA,"^",2)
 I $X>39 W !
 W ?40,$P(LR63DATA,U,5)
 I $X>50 W !
 W ?51,LRREFS K LRREFS
 ;
 I LRPLS'="" D
 . I $X>67 W !
 . W ?68,"[",LRPLS,"]"
 D CONT Q:LRSTOP
 ;
 I $O(^TMP("LR",$J,"TP",LRAAO,LRCDT,LRPO,0))>0 D  Q:LRSTOP
 . S LRINTP=0
 . F  S LRINTP=+$O(^TMP("LR",$J,"TP",LRAAO,LRCDT,LRPO,LRINTP)) Q:LRINTP<1  W !?7,"Eval: ",^(LRINTP) D CONT Q:LRSTOP
 ;
 Q
 ;
CONT ; EP -- Original VA Code -- IHS/OIT/MKK LR*5.2*1027
 I $Y+5>IOSL D FOOT Q:LRSTOP  D HDR W !?20,">> CONTINUATION OF ",$P(LR0,U,6)," <<",!
 Q   ; End CONT Original Code
 ;
FOOT ;from LRRP, LRRP2, LRRP3  -- Original VA Code -- IHS/OIT/MKK LR*5.2*1027
 Q:LRSTOP  F I=$Y:1:IOSL-4 W !
 I $E(IOST,1,2)'="C-" W !,PNM,?40,"  ",SSN,"  ",$$HTE^XLFDT($H,"M"),! Q
 W !,PNM,?25,"  ",SSN,"  ",$$HTE^XLFDT($H,"MP"),?59," PRESS '^' TO STOP "
 R X:DTIME S:X="" X=1 S:(".^"[X)!('$T) LRSTOP=1
 Q
HDR ; Add Printed at, page #, change age to dob 7/2002 cka  -- Original VA Code -- IHS/OIT/MKK LR*5.2*1027
 W:($G(LRJ02))!($G(LRJ0))!($E(IOST,1,2)="C-") @IOF
 S LRHF=0,LRJ02=1
 I '$D(LRPG) S LRPG=0
 S LRPG=LRPG+1
 I $E(IOST,1)="P" D
 .W !!!!
 .S X="CLINICAL LABORATORY REPORT"
 .W ?(80-$L(X)\2),X,!
 I $D(DUZ("AG")),$L(DUZ("AG")),"ARMYAFN"[DUZ("AG") D ^LRAIPRIV W !
 W "Printed at: ",?65,"page ",LRPG
 W !,$$NAME^XUAF4(DUZ(2))," (",DUZ(2),")"
 S X=$$PADD^XUAF4(DUZ(2))
 W !,$P(X,U)," ",$P(X,U,2),", ",$P(X,U,3)," ",$P(X,U,4)
 W !!,PNM,?44,"Report date: ",$$HTE^XLFDT($H,"M")
 W !?5,"SSN: ",SSN,"    SEX: ",SEX,"    DOB: ",$$FMTE^XLFDT(DOB),"    LOC: ",LROC
 Q

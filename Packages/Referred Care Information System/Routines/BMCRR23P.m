BMCRR23P ; IHS/OIT/FCJ - REPORT FOR CALL IN REFERRALS (2/2)  
 ;;4.0;REFERRED CARE INFO SYSTEM;**12**;JAN 09, 2006;Build 101
 ;4.0*12;IHS/ITSC/FCJ NEW ROUTINE
 ;
START ;
 S BMC80E="==============================================================================="
 S BMC80D="-------------------------------------------------------------------------------"
 S BMCSRTH=""
 S BMCPG=0 D @("HEAD"_(2-($E(IOST,1,2)="C-"))) I '$D(^XTMP(BMCJOB,"BMCRR23",BMCBT)) W:BMCRTYP="S" !,BMC80D W !,"No referrals to report",! G DONE
SORT ;
 S BMCSORT="",BMCQUIT=""
 S (BMCRCTOT,BMCRRTOT,BMCRTOT,BMCCPO,BMCRPO,BMCRCDAY,BMCRRDAY,BMCTAVG)=0
 F  S BMCSORT=$O(^XTMP(BMCJOB,"BMCRR23",BMCBT,"DATA HITS",DUZ(2),BMCSORT)) Q:BMCSORT=""!BMCQUIT  D PRINT
 G:BMCQUIT DONE
 I BMCRTYP="S" D SUM K ^XTMP(BMCJOB,"BMCRR23",BMCBTH,"FIL","R"),^XTMP(BMCJOB,"BMCRR23",BMCBTH,"FIL","C")
 I BMCRTYP="D" D DETAIL S BMCRTYP="S" D HEAD1,SUM
 D:$Y>(IOSL-6) HEAD D DONE
 Q
DONE ;
 D DONE^BMCRLP1
 Q
PRINT ;
 S BMCCFC="" D CHSFAC
 S BMCREF=0
 F  S BMCREF=$O(^XTMP(BMCJOB,"BMCRR23",BMCBT,"DATA HITS",DUZ(2),BMCSORT,BMCREF)) Q:BMCREF'=+BMCREF!BMCQUIT  D
 .S BMCRREC=^BMCREF(BMCREF,0),DFN=$P(BMCRREC,U,3)
 .S:BMCSORT="C" BMCRCTOT=BMCRCTOT+1
 .S:BMCSORT="R" BMCRRTOT=BMCRRTOT+1
 .S BMCRTOT=BMCRTOT+1 D PRINT1
 Q
PRINT1 ;
 S ^XTMP(BMCJOB,"BMCRR23",BMCBTH,"FIL",BMCSORT,BMCRTOT,0)=$P($G(^BMCREF(BMCREF,0)),U,2)_$P($G(^BMCREF(BMCREF,1)),U) ;Ref number
 S Y=$P($G(^BMCREF(BMCREF,1)),U,3) I Y?1N.N D DT^BMCRUTL   ;call-in date
 S ^XTMP(BMCJOB,"BMCRR23",BMCBTH,"FIL",BMCSORT,BMCRTOT,0)=^XTMP(BMCJOB,"BMCRR23",BMCBTH,"FIL",BMCSORT,BMCRTOT,0)_"^"_Y
 S Y=$P($G(^BMCREF(BMCREF,0)),U) I Y?1N.N D DT^BMCRUTL     ;Ref initiated
 S ^XTMP(BMCJOB,"BMCRR23",BMCBTH,"FIL",BMCSORT,BMCRTOT,0)=^XTMP(BMCJOB,"BMCRR23",BMCBTH,"FIL",BMCSORT,BMCRTOT,0)_"^"_Y
 S Y=$P($G(^BMCREF(BMCREF,11)),U,13) I Y?1N.N D DT^BMCRUTL  ;CHS APPROVAL DATE
 S ^XTMP(BMCJOB,"BMCRR23",BMCBTH,"FIL",BMCSORT,BMCRTOT,0)=^XTMP(BMCJOB,"BMCRR23",BMCBTH,"FIL",BMCSORT,BMCRTOT,0)_"^"_Y
 ;MAYBE MORE THEN ONE PO, but only using the first PO, as it should be the primary visit.
 S BMCPOC=0,L=0
 S L=$O(^BMCREF(BMCREF,41,L)) Q:L'?1N.N  D
 .S BMCCHS=$P(^BMCREF(BMCREF,41,L,0),U)
 .Q:$P($G(^ACHSF(DUZ(2),"D",BMCCHS,"PA")),U,4)'="F"
 .Q:$P($G(^ACHSF(DUZ(2),"D",BMCCHS,"PA")),U,5)>0
 .;PO ISSUED-BMCPOIS;PO PAID-BMCPOPD;PO NUMBER-BMCPO;DAYS TO PAY
 .S BMCCHS0=^ACHSF(DUZ(2),"D",BMCCHS,0)
 .S Y=$P(BMCCHS0,U,2) D DT^BMCRUTL         ;PO ISSUED
 .I BMCPOC>0 S ^XTMP(BMCJOB,"BMCRR23",BMCBTH,"FIL",BMCSORT,BMCRTOT,BMCPOC)="^^^"
 .S ^XTMP(BMCJOB,"BMCRR23",BMCBTH,"FIL",BMCSORT,BMCRTOT,BMCPOC)=^XTMP(BMCJOB,"BMCRR23",BMCBTH,"FIL",BMCSORT,BMCRTOT,BMCPOC)_"^"_Y
 .S ^XTMP(BMCJOB,"BMCRR23",BMCBTH,"FIL",BMCSORT,BMCRTOT,BMCPOC)=^XTMP(BMCJOB,"BMCRR23",BMCBTH,"FIL",BMCSORT,BMCRTOT,BMCPOC)_"^"_$E($P(BMCCHS0,U,27),3,4)_"-"_BMCCFC_"-"_$P(BMCCHS0,U)         ;PO NUMBER
 .S (X1,Y)=$P(^ACHSF(DUZ(2),"D",BMCCHS,"PA"),U,3) D DT^BMCRUTL    ;DATE PAID
 .S ^XTMP(BMCJOB,"BMCRR23",BMCBTH,"FIL",BMCSORT,BMCRTOT,BMCPOC)=^XTMP(BMCJOB,"BMCRR23",BMCBTH,"FIL",BMCSORT,BMCRTOT,BMCPOC)_"^"_Y
 .;S X2=$S(BMCSORT="C":$P($G(^BMCREF(BMCREF,11)),U,13),1:$P(BMCCHS0,U,2)) D ^%DTC  ;NO LONGER USING DATE APPROVED
 .S X2=$P(BMCCHS0,U,2) D ^%DTC
 .S ^XTMP(BMCJOB,"BMCRR23",BMCBTH,"FIL",BMCSORT,BMCRTOT,BMCPOC)=^XTMP(BMCJOB,"BMCRR23",BMCBTH,"FIL",BMCSORT,BMCRTOT,BMCPOC)_"^"_X
 .S:BMCSORT="C" BMCRCDAY=BMCRCDAY+X S:BMCSORT="R" BMCRRDAY=BMCRRDAY+X
 .S BMCPOC=BMCPOC+1 S:BMCSORT="C" BMCCPO=BMCCPO+1 S:BMCSORT="R" BMCRPO=BMCRPO+1
 I (BMCCPO+BMCRPO)>0 S BMCTAVG=(BMCRCDAY+BMCRRDAY)/(BMCCPO+BMCRPO)
 Q
DETAIL ;
 S BMCTST=""
 F BMCSORT="C","R" D:$D(^XTMP(BMCJOB,"BMCRR23",BMCBTH,"FIL",BMCSORT))  Q:BMCQUIT
 .S BMCSRTH=$S(BMCSORT="C":"CHS CALL-IN REFERRAL",1:"CHS NON-CALL-IN REFERRAL")
 .W:BMCTST'=BMCSORT !,BMCSRTH S BMCTST=BMCSORT
 .S BMCR="" F  S BMCR=$O(^XTMP(BMCJOB,"BMCRR23",BMCBTH,"FIL",BMCSORT,BMCR)) Q:BMCR'?1N.N  D  Q:BMCQUIT
 ..S BMCREC=^XTMP(BMCJOB,"BMCRR23",BMCBTH,"FIL",BMCSORT,BMCR,0)
 ..W !,$P(BMCREC,U),?16,$E($P(BMCREC,U,2),1,6)_$E($P(BMCREC,U,2),9,10),?25,$E($P(BMCREC,U,3),1,6)_$E($P(BMCREC,U,3),9,10),?34,$E($P(BMCREC,U,4),1,6)_$E($P(BMCREC,U,4),9,10)
 ..W ?43,$E($P(BMCREC,U,5),1,6)_$E($P(BMCREC,U,5),9,10),?52,$P(BMCREC,U,6),?65,$E($P(BMCREC,U,7),1,6)_$E($P(BMCREC,U,7),9,10),?74,$P(BMCREC,U,8)
 ..I $Y>(IOSL-5) D HEAD Q:BMCQUIT
 ..S BMCPOC=0 F  S BMCPOC=$O(^XTMP(BMCJOB,"BMCRR23",BMCBTH,"FIL",BMCSORT,BMCR,BMCPOC)) Q:BMCPOC'?1N.N  D  Q:BMCQUIT
 ...S BMCREC=^XTMP(BMCJOB,"BMCRR23",BMCBTH,"FIL",BMCSORT,BMCR,BMCPOC)
 ...W !?43,$E($P(BMCREC,U,5),1,6)_$E($P(BMCREC,U,5),9,10),?52,$P(BMCREC,U,6),?65,$E($P(BMCREC,U,7),1,6)_$E($P(BMCREC,U,7),9,10),?74,$P(BMCREC,U,8)
 ...I $Y>(IOSL-5) D HEAD Q:BMCQUIT
 .I $E(IOST)="C",IO=IO(0),'BMCQUIT W ! S DIR(0)="EO" D ^DIR K DIR W ! I Y=0!(Y="^")!($D(DTOUT)) S BMCQUIT=1
 Q
CHSFAC ;
 S BMCCFC=$P($G(^AUTTAREA($P($G(^AUTTLOC(DUZ(2),0)),U,4),0)),U,3)_$E($P($G(^AUTTLOC(DUZ(2),0)),U,17),2,3)
 Q
HEAD ;ENTRY POINT
 I $E(IOST)="C",IO=IO(0) W ! S DIR(0)="EO" D ^DIR K DIR I Y=0!(Y="^")!($D(DTOUT)) S BMCQUIT=1 Q
HEAD1 ;
 W:$D(IOF) @IOF
HEAD2 ;
 S BMCPG=BMCPG+1
 W !?12,"*********** CONFIDENTIAL PATIENT INFORMATION ***********"
 W !?(80-$L($P(^DIC(4,DUZ(2),0),U))/2),$P(^DIC(4,DUZ(2),0),U),?72,"Page ",BMCPG
 W !?14,"CHS TYPE REFERRAL REPORT SORTED BY CALL-IN REFERRALS"
 S Y=BMCBD D DD^%DT W !?17,"BEG DATE: "_Y
 S Y=BMCED D DD^%DT W ?40,"END DATE: "_Y
 I BMCRTYP="S" W !,BMC80D Q
HEAD3 ;
 W !!,?3,"REFERRAL",?16,"CALL-IN",?25,"REFERRAL",?36,"CHS",?46,"PO",?74,"DAYS"
 W !,?4,"NUMBER",?18,"DATE",?24,"INITIATED",?34,"APPROVAL",?44,"ISSUED",?53,"PO NUMBER",?65,"PO PAID",?73,"TO PAY"
 W !,BMC80D
 W !,BMCSRTH
 Q
SUM ;
 G:BMCRPT="C" SUMC
 G:BMCRPT="N" SUMN
 W !,"TOTAL CHS Referrals: ",BMCRTOT
 W !,"TOTAL PO'S: ",BMCCPO+BMCRPO
 W !,"TOTAL Days to Pay: ",BMCRCDAY+BMCRRDAY
 W !,"Average Days to Pay: ",$FN(BMCTAVG,"",2)   ;total days/total PO's
SUMC ;
 W !!,"CHS Call-In Referrals from PO issue date to paid date"
 W !,"TOTAL CHS Call-In Referrals: ",BMCRCTOT
 W !,"TOTAL CHS Call-In Referral Days: ",BMCRCDAY
 W !,"TOTAL CHS Call-In Referral Average Days: " W $S(BMCCPO>0:$FN((BMCRCDAY/BMCCPO),"",2),1:0)
 Q:BMCRPT="C"
SUMN ;
 W !!,"CHS Non-Call-In Referrals from PO issue date to paid date"
 W !,"TOTAL CHS Non-Call-In Referrals: ",BMCRRTOT
 W !,"TOTAL CHS Non-Call-In Referral Days: ",BMCRRDAY
 W !,"TOTAL CHS Non-Call-In Referral Average Days: " W $S(BMCRPO>0:$FN((BMCRRDAY/BMCRPO),"",2),1:0)
 Q
FILHDR ;
 I BMCFIL="Y" D
 .S ^XTMP(BMCJOB,"BMCRR23",BMCBTH,"FIL",1,"HDR1")="********** CONFIDENTIAL PATIENT INFORMATION **********"
 .S ^XTMP(BMCJOB,"BMCRR23",BMCBTH,"FIL",1,"HDR2")=$P(^DIC(4,DUZ(2),0),U)
 .S ^XTMP(BMCJOB,"BMCRR23",BMCBTH,"FIL",1,"HDR3")="CHS TYPE REFERRAL REPORT SORTED BY CALL-IN REFERRALS"
 .S Y=BMCBD D DD^%DT S ^XTMP(BMCJOB,"BMCRR23",BMCBTH,"FIL",1,"HDR4")="BEG DATE: "_Y
 .S Y=BMCED D DD^%DT S ^XTMP(BMCJOB,"BMCRR23",BMCBTH,"FIL",1,"HDR4")=^XTMP(BMCJOB,"BMCRR23",BMCBTH,"FIL",1,"HDR4")_"  END DATE: "_Y
 .I $D(^XTMP(BMCJOB,"BMCRR23",BMCBTH,"FIL","R")) S ^XTMP(BMCJOB,"BMCRR23",BMCBTH,"FIL","R",0)="CHS NON-CALL-IN REFERRAL"
 .I $D(^XTMP(BMCJOB,"BMCRR23",BMCBTH,"FIL","C")) S ^XTMP(BMCJOB,"BMCRR23",BMCBTH,"FIL","C",0)="CHS CALL-IN REFERRAL"
 .I ($D(^XTMP(BMCJOB,"BMCRR23",BMCBTH,"FIL","R")))!($D(^XTMP(BMCJOB,"BMCRR23",BMCBTH,"FIL","C"))) D
 ..S ^XTMP(BMCJOB,"BMCRR23",BMCBTH,"FIL",1,"HDR5")="REFERRAL NUMBER^CALL-IN DATE^REFERRAL INITIATED^CHS APPROVAL^PO ISSUED^PO NUMBER^PO PAID^DAYS TO PAY"
 Q
FILSUM ;
 G:BMCRPT="C" FILSUMC
 G:BMCRPT="N" FILSUMN
 S ^XTMP(BMCJOB,"BMCRR23",BMCBTH,"FIL","S",1)="TOTAL CHS Referrals: "_BMCRTOT
 S ^XTMP(BMCJOB,"BMCRR23",BMCBTH,"FIL","S",2)="TOTAL PO'S: "_(BMCCPO+BMCRPO)
 S ^XTMP(BMCJOB,"BMCRR23",BMCBTH,"FIL","S",3)="TOTAL Days to Pay: "_(BMCRCDAY+BMCRRDAY)
 S ^XTMP(BMCJOB,"BMCRR23",BMCBTH,"FIL","S",4)="Average Days to Pay: "_$FN(BMCTAVG,"",2)   ;total days/total PO's
FILSUMC ;
 S ^XTMP(BMCJOB,"BMCRR23",BMCBTH,"FIL","S",5)="CHS Call-In Referrals from PO issue date to paid date"
 S ^XTMP(BMCJOB,"BMCRR23",BMCBTH,"FIL","S",6)="TOTAL CHS Call-In Referrals: "_BMCRCTOT
 S ^XTMP(BMCJOB,"BMCRR23",BMCBTH,"FIL","S",7)="TOTAL CHS Call-In Referral Days: "_BMCRCDAY
 S ^XTMP(BMCJOB,"BMCRR23",BMCBTH,"FIL","S",8)="TOTAL CHS Call-In Referral Average Days: "_$S(BMCCPO>0:$FN((BMCRCDAY/BMCCPO),"",2),1:0)
 Q:BMCRPT="C"
FILSUMN ;
 S ^XTMP(BMCJOB,"BMCRR23",BMCBTH,"FIL","S",9)="CHS Non-Call-In Referrals from PO issue date to paid date"
 S ^XTMP(BMCJOB,"BMCRR23",BMCBTH,"FIL","S",10)="TOTAL CHS Non-Call-In Referrals: "_BMCRRTOT
 S ^XTMP(BMCJOB,"BMCRR23",BMCBTH,"FIL","S",11)="TOTAL CHS Non-Call-In Referral Days: "_BMCRRDAY
 S ^XTMP(BMCJOB,"BMCRR23",BMCBTH,"FIL","S",12)="TOTAL CHS Non-Call-In Referral Average Days: "_$S(BMCRPO>0:$FN((BMCRRDAY/BMCRPO),"",2),1:0)
 Q
FILSAV ;SAVE FILE
 ;
 K ^XTMP(BMCJOB,"BMCRR23",BMCBTH,"DATA HITS")
 N XBFN,XBE,XBJ,XBUF,XBQ,XBMED,XBFLT,XBS1,XBIO,XBF,XBGL
 S X=$E(DT,4,7)_$E(DT,2,3)
 D NOW^%DTC S X=(%I(3)+1700)_$E(%,4,7)_"_"_$P(%,".",2)
 S:$L(X)'=15 X=X_0
 S X1=$P(^AUTTLOC(DUZ(2),0),U,10),XBE=$J
 S XBFN="REFERRAL-REPORT-"_X1_"."_X
 S XBMED="F",XBFLT=1
 S XBQ="N"
 S XBUF=$P(^BMCPARM(DUZ(2),4100),U,13)
 I XBUF="" S XBUF=$P(^AUTTSITE(1,1),U,2)
 S XBS1="BMC RCIS REPORTS"
 S XBIO=51,XBF=$J,XBGL="^XTMP(" D ^ZIBGSVEM
 ;S XBGL="TMP("_$J_",""ACHSVUR2"","D ^XBGSAVE
 Q
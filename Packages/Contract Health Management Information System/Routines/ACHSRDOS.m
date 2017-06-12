ACHSRDOS ;IHS/OIT/FCJ - ESTIMATED DATE OF SERVICE REPORT FOR CHS [ 07/24/2000  10:57 AM ]
 ;;3.1;CONTRACT HEALTH MGMT SYSTEM;;JUN 11, 2001;Build 37
 ;
 S ACHSIO=IO,ACHSPG=0
 D BM^ACHSFU
 W !,"Report for Actual or Estimated DOS with Issue Date"
DOCS ; Select type of docs to print.
 S ACHSRPT=$$DIR^XBDIR("S^1:Actual Date of Service;2:Estimated Date of Service","Print which documents","1","","","^D HELP^ACHS(""H1"",""ACHSRDOS"")",2)
 G EXT:$D(DUOUT)!$D(DTOUT)
 S ACHSRPT1=$S(ACHSRPT=1:"Actual Date of Service",1:"Estimated Date of Service")
BDT ; Enter beginning date.
 S ACHSBDT=$$DATE^ACHS("B",ACHSRPT1,"")
 G EXT:$D(DUOUT)!$D(DTOUT)!(ACHSBDT<1)
EDT ; Enter the ending date.
 S ACHSEDT=$$DATE^ACHS("E",ACHSRPT1,"")
 G BDT:$D(DUOUT),EXT:$D(DTOUT)!(ACHSEDT<1),EDT:$$EBB^ACHS(ACHSBDT,ACHSEDT)
DEV ; Select device for report.
 W !
 S %=$$PB^ACHS
 I %=U!$D(DTOUT)!$D(DUOUT) D EXT Q
 I %="B" D VIEWR^XBLM("TRNS^ACHSRDOS"),EN^XBVK("VALM") D EXT Q
 K IOP,%ZIS
 S %ZIS="PQ"
 D ^%ZIS,SLV^ACHSFU:$D(IO("S"))
 K %ZIS
 I POP W !,*7,"No device specified." D HOME^%ZIS G EXT
 G:'$D(IO("Q")) TRNS
 K IO("Q")
 I $E(IOST)'="P" W *7,!,"Please queue to printers only." G DEV
 S ZTIO="",ACHSQIO=ION_";"_IOST_";"_IOM_";"_IOSL,ZTRTN="TRNS^ACHSRDOS",ZTDESC="CHS "_ACHSRPT1_", "_$$FMTE^XLFDT(ACHSBDT)_" to "_$$FMTE^XLFDT(ACHSEDT)
 F %="ACHSQIO","ACHSBDT","ACHSRPT","ACHSEDT","ACHSRPT1" S ZTSAVE(%)=""
 D ^%ZTLOAD
 G:'$D(ZTSK) DEV
 ;
 ;end of interactive portion.  The rest performed by Taskman
 ;
TRNS ;START OF TRANSACTIONS 
 W !
 S ACHSQUIT=0,ACHSBDT1=ACHSBDT-1
 I ACHSRPT=1  F  S ACHSBDT1=$O(^ACHSF(DUZ(2),"PDOS",ACHSBDT1)) Q:(ACHSBDT1>ACHSEDT)!(ACHSBDT1="")  D  Q:ACHSQUIT
 .S ACHSDIEN=0 F  S ACHSDIEN=$O(^ACHSF(DUZ(2),"PDOS",ACHSBDT1,ACHSDIEN)) Q:ACHSDIEN=""  D  Q:ACHSQUIT
 ..S ACHSTIEN=0 F  S ACHSTIEN=$O(^ACHSF(DUZ(2),"PDOS",ACHSBDT1,ACHSDIEN,ACHSTIEN)) Q:(ACHSTIEN=ACHSTIEN+1)!(ACHSTIEN="")
 ..D TRNS2
 E  F  S ACHSBDT1=$O(^ACHSF(DUZ(2),"ES",ACHSBDT1)) Q:(ACHSBDT1>ACHSEDT)!(ACHSBDT1="")  D  Q:ACHSQUIT
 .S ACHSDIEN=0 F  S ACHSDIEN=$O(^ACHSF(DUZ(2),"ES",ACHSBDT1,ACHSDIEN)) Q:ACHSDIEN=""  D TRNS2 Q:ACHSQUIT
 I '$D(ZTSK),'ACHSQUIT D RTRN^ACHS
 G EXT
 ;
TRNS2 ;
 S (ACHSPAT,ACHSDOS,ACHSORDT,ACHSCLRK)=""
 S ACHSREC=^ACHSF(DUZ(2),"D",ACHSDIEN,0)
 S ACHSDOC=$P(ACHSREC,"^",14)_"-"_$P(ACHSREC,"^",1)
 I $P(ACHSREC,"^",22)="" S ACHSPAT="NONE SPECIFIED"
 E  S ACHSPAT=$E($P(^DPT($P(ACHSREC,"^",22),0),"^",1),1,23)
 S ACHSORDT=$$FMTE^XLFDT($P(ACHSREC,"^",2),"2D")
 S ACHSCLRK=$E($P(^VA(200,($P(ACHSREC,"^",18)),0),"^",1),1,15)
 I ACHSRPT1=1 S ACHSDOS=$$FMTE^XLFDT($P($G(^ACHSF(DUZ(2),"D",ACHSDIEN,"T",ACHSTIEN,0)),"^",10),"2D")
 E  S ACHSDOS=$$FMTE^XLFDT($P($G(^ACHSF(DUZ(2),"D",ACHSDIEN,3)),"^",9),"2D")
 D PRINT
 Q
PRINT ;
 I '$D(ZTSK),$Y>ACHSBM D RTRN^ACHS Q:$D(DUOUT)!$D(DTOUT)  D HDR
 I ACHSPG=0 D HDR
 W !,ACHSDOC,?10,ACHSPAT,?36,ACHSDOS,?48,ACHSORDT,?60,ACHSCLRK
 Q
HDR ;
 S ACHSPG=ACHSPG+1
 W @IOF
 I ACHSRPT=1 W !,"DOCUMENT LISTING BY PAID DATE OF SERVICE",?68,"PAGE: ",ACHSPG
 E  W "DOCUMENT LISTING BY ESTIMATE DATE OF SERVICE",?68,"PAGE: ",ACHSPG
 W !!,"P.O. NO.      PATIENT NAME        "_$S(ACHSRPT=1:"ACT",1:"EST")_" D.O.S.   DATE ISSUED     ISSUED BY",!
 F I=1:1:76 W "-"
 Q
EXT ;
 K ACHSREC,ACHSDIEN,ACHSTIEN,ACHSPAT,ACHSORDT,ACHSCLRK,ACHSBDT1,ACHSDOC,ACHSDOS
 K ACHSQUIT,ACHSRPT1,ACHSDOS
 D ERPT^ACHS
 Q
H1 ;EP - From HELP^ACHS() via ^DIR.
 ;;@;!
 ;;Enter a '1' if you want Actual Date of Service to be listed.
 ;;Enter a '2' if you want Estimated Date of Service to be listed.
 ;;###
 ;
 
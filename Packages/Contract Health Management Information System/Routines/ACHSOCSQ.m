ACHSOCSQ ; IHS/ITSC/PMF - QUEUE CHS SERVICE CLASS CODES SUMMARY ;
 ;;3.1;CONTRACT HEALTH MGMT SYSTEM;**11,13**;JUN 11,2001
 ;ITSC/SET/JVK ACHS*3.1*11 ADD OPTION TO SORT BY FY & FINAL PAY END DATE
 ;ITSC/SET/JVK ACHS*3.1*13 FIXED QUEUE PROBLEM AND GO TO PROBLEM
 ;
TITLE ;;SERVICE CLASS SUMMARY
 ;
 S ACHSUSR=$$USR^ACHS,ACHSFAC=DUZ(2),(ACHSBDT,ACHSEDT,ACHSFY)=0
 ;
SELFAC ;
 ;ITSC/SET/JVK ACHS*3.1*11 LINE BELOW
 S ACHSRTY=""
 W !!!!,$$C^XBFUNC("***** Object Class Code Summary for "_$$LOC^ACHS_" *****",80)
METHOD ;
 D H1
 ;S %=$$DIR^XBDIR("N^1:2","Select report method",2,"","Produce report by FY or Dates","^D HELP^ACHSOCSQ",2)
 S %=$$DIR^XBDIR("N^1:3","Select report method",3,"","Produce report by FY or Dates","^D HELP^ACHSOCSQ",3)
 Q:'%
 I %=1 G FISYR
 ;ITSC/SET/JVK ACHS*3.1*11 LINE BELOW
 I %=3 S ACHSRTY=3 G FISYR
BDT ;
 S ACHSBDT=$$DATE^ACHS("B",$P($T(TITLE),";",3))
 G END:ACHSBDT<1
EDT ;     
 S ACHSEDT=$$DATE^ACHS("E",$P($T(TITLE),";",3))
 G END:ACHSEDT<1
 I $$EBB^ACHS(ACHSBDT,ACHSEDT) G BDT
 G DEVICE
 ;
FISYR ;Select Fiscal Year 
 W !!!
 D SB1^ACHSFU
 W !!
 S ACHSFY=$$DIR^XBDIR("NO","Object Class Code Summary for FISCAL YEAR ",ACHSCFY,"","Enter a FOUR DIGIT FISCAL YEAR","^D SB1^ACHSFU")
 G END:$D(DTOUT),SELFAC:$D(DUOUT),END:$D(DIRUT)
 I '$D(ACHSFYWK(DUZ(2),ACHSFY)) W *7,! G FISYR
 ;ITSC/SET/JVK ACHS*3.1*11 ADDED 2 LINES BELOW
 ;ITSC/SET/JVK ACHS*3.1*13 5/9/05 COMBINED TWO LINES BELOW
 ;I ACHSRTY=3 S ACHSEDT=$$DATE^ACHS("E",$P($T(TITLE),";",3))
 ;G END:ACHSEDT<1
 I ACHSRTY=3 S ACHSEDT=$$DATE^ACHS("E",$P($T(TITLE),";",3)) G END:ACHSEDT<1
DEVICE ;Device Selection
 W *7,!!?20,"This report may take awhile to compile.",!?15," It is recommended that you QUEUE to a PRINTER.",!
 S %=$$PB^ACHS
 I %=U!$D(DTOUT)!$D(DUOUT) D END Q
 I %="B" D VIEWR^XBLM("^ACHSOCSC"),EN^XBVK("VALM"),END Q
 S %ZIS="PQ"
 D ^%ZIS
 I POP W !,"NO DEVICE SELECTED - REQUEST ABORTED" D HOME^%ZIS S Y=$$DIR^XBDIR("E") G END:Y=0,SELFAC:Y=1
 I '$D(IO("Q")) W:'$D(IO("S")) ! D:'$D(IO("S")) WAIT^DICD G ^ACHSOCSC
 I $D(IO("S"))!($E(IOST)'="P") G DEVICE
ZTLOAD ;Loads Taskman
 S ZTRTN="^ACHSOCSC",ZTIO="",ZTDESC="SERVICE CLASSIFICATION REPORT",ACHSQIO=ION_";"_IOST_";"_IOM_";"_IOSL
 ;ITSC/SET/JVK ACHS*3.1*13 5/9/2005
 ;F %="ACHSBDT","ACHSEDT","ACHSFAC","ACHSFY","ACHSUSR","ACHSQIO","ACHSFYWK","ACHSCFY" S ZTSAVE(%)=""
 F %="ACHSBDT","ACHSEDT","ACHSFAC","ACHSFY","ACHSUSR","ACHSQIO","ACHSFYWK","ACHSCFY","ACHSRTY" S ZTSAVE(%)=""
 D ^%ZTLOAD
 K IO("Q"),ZTSK
 D HOME^%ZIS
END ;
 D EN^XBVK("ACHS"),^ACHSVAR,HOME^%ZIS
 K DIR,DIC,DIRUT,DTOUT,DUOUT
 Q
 ;
HELP ;EP - From DIR
 W !!?3,"You can produce this report by selecting a Fiscal Year, OR",!?3,"by entering a beginning and ending Date of Issue.",!!
H1 ;
 ;ITSC/SET/JVK ACHS*3.1*11 LINE BELOW
 ;W !,"Report by",!?5,"1) FY, or",!?5,"2) Issue dates",!
 W !,"Report by",!?5,"1) FY, or",!?5,"2) Issue dates",!,?5,"3) FY with Ending Payment Date",!
 Q
 ;

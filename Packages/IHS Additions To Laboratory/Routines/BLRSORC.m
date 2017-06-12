BLRSORC ; IHS/DIR/FJE - CRITICAL VALUE TASKED REPORT 8/30/87 17:25 ;
 ;;5.2;LR;**1038**;NOV 01, 1997;Build 6
 ;
EEP ; EP - Ersatz EP
 D EEP^BLRGMENU
 Q
 ;
 ; Cloned from the VA Patch LR*5.2*84 LRSORC routine.
 ;
BEGIN ; EP - Beginning
 I $D(ZTQUEUED)<1 D  Q
 . W !!,?4,"This report can only be run from TASKMAN."
 . D PRESSKEY^BLRGMENU(9)
 ;
GETPARAM ; EP - Get the parameters from the IHS LAB SUPERVISOR TASKED REPORTS PARAMETERS (#90475.7) file
 S (GPD0,GPD1)=1
 D OPTIONS
 D DEVICE
 I LREND D END^LRSORC1A Q
 Q
 ;
OPTIONS ;
 D GDR,GAA,SORTBY,SELPAT,SELLOC
 Q
 ;
GDR ; EP - Get Date Range from 90475.7
 NEW DTRANGE,GOBACK
 ;
 S DTRANGE=+$$GET1^DIQ(90475.73,GPD1_","_GPD0,"Date Range","I")
 S GOBACK=$S(DTRANGE=1:7,DTRANGE=2:30,DTRANGE=3:365,1:1)
 S LREDT=$$HTFM^XLFDT(+$H-GOBACK)
 S LRSDT=$$DT^XLFDT_".5"
 Q
 ;
GAA ; EP - Get Accession Areas from 90475.7, if they exist
 NEW GAAD2,GLRAA,GLRAAAB
 ;
 S LRAA=0
 Q:$D(^BLRLSRP(GPD0,3,GPD1,1,0))<1
 ;
 S GAAD2=0
 F  S GAAD2=$O(^BLRLSRP(GPD0,3,GPD1,1,GAAD2))  Q:GAAD2<1  D
 . S GLRAA=$G(^BLRLSRP(GPD0,3,GPD1,1,GAAD2,0))
 . S GLRAAAB=$$GET1^DIQ(68,GLRAA,"ABBREVIATION")
 . Q:$L(GLRAAAB)<1
 . ;
 . S LRAA(GLRAAAB)=GLRAA
 . S LRAA=GLRAA
 ;
 Q
 ;
SORTBY ; EP - Determine SORT BY parameter
 NEW SORTBY
 ;
 S SORTBY=$P($G(^BLRLSRP(GPD0,3,GPD1,3)),U)
 S LRSRT=$S($L(SORTBY):SORTBY,1:"P")
 Q
 ;
SELPAT ; EP - ALL Patients by default
 S LRPTS=0
 Q
 ;
SELLOC ; EP - Get Locations from 90475.7, if they exist
 S LRLCS=0
 Q:$D(^BLRLSRP(GPD0,3,GPD1,2,0))<1     ; Retrun if no entries
 ;
 NEW LOCIEN,LOCSUB,LOCSUBAB,CNTLOC
 ;
 S (CNTLOC,LOCSUB)=0
 F  S LOCSUB=$O(^BLRLSRP(GPD0,3,GPD1,2,LOCSUB))  Q:LOCSUB<1  D
 . S LOCIEN=(^BLRLSRP(GPD0,3,GPD1,2,LOCSUB,0))
 . S LOCSUBAB=$$GET1^DIQ(44,LOCIEN,"ABBREVIATION")
 . Q:$L(LOCSUBAB)<1
 . ;
 . S CNTLOC=CNTLOC+1
 . S LRLCS=CNTLOC
 . S LRLCS(LOCSUBAB)=LOCIEN
 I $G(LRLCS) S LRLCS("NO ABRV")=""
 Q
 ;
DEVICE ;
 S IOP="`"_$P($G(^BLRLSRP(GPD0,3,GPD1,3)),U,2)
 S %ZIS="Q"
 S ZTSAVE("LR*")=""
 D EN^XUTMDEVQ("DQ^BLRSORC","TASKED IHS LAB CRITICAL VALUE REPORT",.ZTSAVE,.%ZIS)
 S LREND=1
 Q
 ;
DQ ;
 K ^TMP("LR",$J)
 S:$D(ZTQUEUED) ZTREQ="@" U IO
 S (LRPAG,LREND)=0,$P(LRDASH,"-",IOM)="-"
 K %DT S X="N",%DT="T" D ^%DT,DD^LRX S LRDATE=Y
 K %DT S X=$P(LRSDT,"."),%DT="X" D ^%DT,DD^LRX S LRSDAT=Y
 K %DT S X=LREDT,%DT="X" D ^%DT,DD^LRX S LREDAT=Y
 S LRHDR2="For date range: "_LREDAT_" to "_LRSDAT
 D BUILD^LRSORC1
 D ^LRSORC1A
 QUIT
BLROLOR ; IHS/MSC/MKK - Open Lab Orders Report ; 13-Oct-2017 14:04 ; MKK
 ;;5.2;LAB SERVICE;**1041**;NOV 1, 1997;Build 23
 ;
EEP ; Ersatz EP
 D EEP^BLRGMENU
 Q
 ;
 ;
EP ; EP
PEP ; EP
 NEW (DILOCKTM,DISYS,DT,DTIME,DUZ,IO,IOBS,IOF,IOM,ION,IOS,IOSL,IOST,IOT,IOXY,U,XPARSYS,XQXFLG)
 ;
 D SETBLRVS
 ;
 D ADDTMENU^BLRGMENU("REPORT^BLROLOR","Report by Order Number")
 D ADDTMENU^BLRGMENU("PROVRPT^BLROLOR","Report by Ordering Provider")
 ;
 D MENUDRVR^BLRGMENU("RPMS Lab","Open Lab Orders Reports")
 Q
 ;
 ;
REPORT ; EP - Main Report
 NEW (DILOCKTM,DISYS,DT,DTIME,DUZ,IO,IOBS,IOF,IOM,ION,IOS,IOSL,IOST,IOT,IOXY,U,XPARSYS,XQXFLG)
 ;
 Q:$$REPORTI("Order Number Sort")="Q"
 ;
 F  S ORDERN=$O(^LRO(69,"C",ORDERN))  Q:ORDERN<1!(QFLG="Q")  D
 . S CNTORD=CNTORD+1
 . S (ACTUSER,LRASFND,LRODT)=0
 . F  S LRODT=$O(^LRO(69,"C",ORDERN,LRODT))  Q:LRODT<1!(QFLG="Q")!(LRASFND)!(ACTUSER)  D
 .. S LRSP=0
 .. F  S LRSP=$O(^LRO(69,"C",ORDERN,LRODT,LRSP))  Q:LRSP<1!(QFLG="Q")!(LRASFND)!(ACTUSER)  D
 ... S LROIEN=LRSP_","_LRODT
 ... S ORDPROVI=$$GET1^DIQ(69.01,LROIEN,7,"I")
 ... I ORDPROVI="" S ACTUSER=1  Q
 ... ;
 ... S ACTUSER=$$ACTIVE^XUSER(ORDPROVI)
 ... Q:ACTUSER  ; Skip if Active User
 ... ;
 ... S LROT=0
 ... F  S LROT=$O(^LRO(69,LRODT,1,LRSP,2,LROT))  Q:LROT<1!(QFLG="Q")!(LRASFND)  S LRASFND=$$LRASFND()
 . ;
 . Q:ACTUSER!(LRASFND)    ; Skip if Active Provider OR Accession Number tied to Order
 . ;
 . S LRODT=0
 . F  S LRODT=$O(^LRO(69,"C",ORDERN,LRODT))  Q:LRODT<1!(QFLG="Q")!(ACTUSER)  D
 .. S LRSP=0
 .. F  S LRSP=$O(^LRO(69,"C",ORDERN,LRODT,LRSP))  Q:LRSP<1!(QFLG="Q")!(ACTUSER)  D REPORTL
 ;
 W !!,?4,CNTORD," Orders analyzed."
 W !!,?9,CNT," Order",$$PLURAL(CNT)," with Non-Active Provider",$$PLURAL(CNT),"."
 ;
 D ^%ZISC
 ;
 I WOTDEV'["VT" D
 . W !!,?4,CNTORD," Orders analyzed."
 . W !!,?9,CNT," Orders with Non-Active Providers."
 ;
 D PRESSKEY^BLRGMENU(4)
 Q
 ;
REPORTI(HEDSUB2) ; EP - Initialization
 D SETBLRVS
 ;
 S HEADER(1)="Non-Accessioned Orders"
 S HEADER(2)="With Non-Active Providers"
 S HEADER(3)=$$CJ^XLFSTR(HEDSUB2,IOM)
 ;
 D HEADERDT^BLRGMENU
 D HEADONE^BLRGMENU(.HDRONE)
 D HEADERDT^BLRGMENU
 ;
 I HEDSUB2="Order Number Sort" D ^%ZIS  D:'POP HEADERDT^BLRGMENU  I POP Q $$BADSTUFQ("%ZIS Call Issue.")
 ;
 D HEADERDT^BLRGMENU
 ;
 S WOTDEV=IOST
 ;
 S HEADER(4)=" "
 S $E(HEADER(5),20)=$TR($$CJ^XLFSTR("@Ordering@Provider@",28)," @","= ")
 S $E(HEADER(5),50)=$TR($$CJ^XLFSTR("@Patient@",31)," @","= ")
 S HEADER(6)="Order #"
 S $E(HEADER(6),10)="Ord Dt"
 S $E(HEADER(6),20)="IEN"
 S $E(HEADER(6),30)="Name"
 S $E(HEADER(6),50)="IEN"
 S $E(HEADER(6),60)="Name"
 ;
 S MAXLINES=IOSL-4,LINES=MAXLINES+10
 S (CNT,CNTORD,ORDERN,PG)=0,QFLG="NO"
 U IO
 Q "OK"
 ;
REPORTL ; EP - Line of Data
 I LINES>MAXLINES D HEADERPG^BLRGMENU(.PG,.QFLG,HDRONE)  Q:QFLG="Q"
 ;
 D REPORTB
 ;
 W ORDERN
 W ?9,$$FMTE^XLFDT(ORDTT,"2DZ")
 W ?19,ORDPROVI
 W ?29,$E(ORDPROVN,1,18)
 W ?49,DFN
 W ?59,$E(PATNAME,1,21)
 W !
 S LINES=LINES+1
 S CNT=CNT+1
 Q
 ;
REPORTB ; EP - Break out Data
 S LROIEN=LRSP_","_LRODT
 S LRDFN=$$GET1^DIQ(69.01,LROIEN,.01,"I")      ; Patient's Lab Number
 S DFN=$$GET1^DIQ(63,LRDFN,.03,"I")            ; Patient's File 2 IEN
 S PATNAME=$$GET1^DIQ(2,DFN,.01)               ; Patient's Name
 S ORDTT=$$GET1^DIQ(69.01,LROIEN,5,"I")        ; Ordering Date/Time
 S ORDPROVI=$$GET1^DIQ(69.01,LROIEN,7,"I")
 S ORDPROVN=$$GET1^DIQ(69.01,LROIEN,7)         ; Ordering Provider
 S ORDLOCI=$$GET1^DIQ(69.01,LROIEN,23,"I")
 S ORDLOCN=$$GET1^DIQ(69.01,LROIEN,23)         ; Ordering Location
 Q
 ;
 ;
PROVRPT ; EP - Report by Ordering Provider
 NEW (DILOCKTM,DISYS,DT,DTIME,DUZ,IO,IOBS,IOF,IOM,ION,IOS,IOSL,IOST,IOT,IOXY,U,XPARSYS,XQXFLG)
 ;
 Q:$$REPORTI("Ordering Provider Sort")="Q"
 ;
 K ^TMP("BLROLOR",$J)
 ;
 W ?4,"Compiling"
 F  S ORDERN=$O(^LRO(69,"C",ORDERN))  Q:ORDERN<1!(QFLG="Q")  D
 . S CNTORD=CNTORD+1
 . I (CNTORD#100)=0 W "."  W:$X>74 !,?4
 . S (ACTUSER,LRASFND,LRODT)=0
 . K ORDPROV
 . F  S LRODT=$O(^LRO(69,"C",ORDERN,LRODT))  Q:LRODT<1!(QFLG="Q")!(LRASFND)!(ACTUSER)  D
 .. S LRSP=0
 .. F  S LRSP=$O(^LRO(69,"C",ORDERN,LRODT,LRSP))  Q:LRSP<1!(QFLG="Q")!(LRASFND)!(ACTUSER)  D
 ... S LROIEN=LRSP_","_LRODT
 ... S ORDPROVI=$$GET1^DIQ(69.01,LROIEN,7,"I")     ; Ordering Provider
 ... I ORDPROVI="" S ACTUSER=1  Q
 ... ;
 ... S ACTUSER=$$ACTIVE^XUSER(ORDPROVI)
 ... Q:ACTUSER  ; Skip if Active User
 ... ;
 ... S ORDPROV($$GET1^DIQ(69.01,LROIEN,7),ORDPROVI,LRODT,LRSP)=ORDERN
 ... S LROT=0
 ... F  S LROT=$O(^LRO(69,LRODT,1,LRSP,2,LROT))  Q:LROT<1!(QFLG="Q")!(LRASFND)  S LRASFND=$$LRASFND()
 . ;
 . Q:ACTUSER!(LRASFND)    ; Skip if Active Provider OR Accession Number tied to Order
 . ;
 . M ^TMP("BLROLOR",$J,"PROV")=ORDPROV
 ;
 W !,?4,"Compilation Complete."
 ;
 I $D(^TMP("BLROLOR",$J))<1 D ^%ZISC  D BADSTUFF("No Open Lab Orders.")  Q
 ;
 D PRESSKEY^BLRGMENU(9)
 ;
 D ^%ZIS
 Q:POP $$BADSTUFQ("%ZIS Call Issue.")
 S WOTDEV=IOST
 U IO
 S MAXLINES=IOSL-4,LINES=MAXLINES+10
 ;
 S ORDPROVN=""
 F  S ORDPROVN=$O(^TMP("BLROLOR",$J,"PROV",ORDPROVN))  Q:ORDPROVN=""!(QFLG="Q")  D
 . S ORDPROVI=0
 . F  S ORDPROVI=$O(^TMP("BLROLOR",$J,"PROV",ORDPROVN,ORDPROVI))  Q:ORDPROVI<1!(QFLG="Q")  D
 .. S LRODT=0
 .. F  S LRODT=$O(^TMP("BLROLOR",$J,"PROV",ORDPROVN,ORDPROVI,LRODT))  Q:LRODT<1!(QFLG="Q")  D
 ... S LRSP=0
 ... F  S LRSP=$O(^TMP("BLROLOR",$J,"PROV",ORDPROVN,ORDPROVI,LRODT,LRSP))  Q:LRSP<1!(QFLG="Q")  D
 .... S ORDERN=$G(^TMP("BLROLOR",$J,"PROV",ORDPROVN,ORDPROVI,LRODT,LRSP))
 .... D REPORTL
 ;
 W !!,?4,CNTORD," Orders analyzed."
 W !!,?9,CNT," Order",$$PLURAL(CNT)," with Non-Active Provider",$$PLURAL(CNT),"."
 ;
 D ^%ZISC
 ;
 I WOTDEV'["VT" D
 . W !!,?4,CNTORD," Orders analyzed."
 . W !!,?9,CNT," Order",$$PLURAL(CNT)," with Non-Active Provider",$$PLURAL(CNT),"."
 ;
 D PRESSKEY^BLRGMENU(4)
 Q
 ;
 ;
 ; ***************************** Utilities *****************************
 ;
JUSTNEW ; EP - Generic RPMS EXCLUSIVE NEW
 NEW (DILOCKTM,DISYS,DT,DTIME,DUZ,IO,IOBS,IOF,IOM,ION,IOS,IOSL,IOST,IOT,IOXY,U,XPARSYS,XQXFLG)
 ;
 Q
 ;
SETBLRVS(TWO) ; EP - Set the BLRVERN variable(s)
 K BLRVERN,BLRVERN2
 ;
 S BLRVERN=$P($P($T(+1),";")," ")
 S:$L($G(TWO)) BLRVERN2=$G(TWO)
 Q
 ;
BADSTUFF(STR,TAB) ; EP - BADSTUFF error message
 S TAB=$S($L($G(TAB))<1:4,1:TAB)
 W !!,?TAB,STR,"  Routine Ends."
 D PRESSKEY^BLRGMENU(TAB+5)
 Q
 ;
BADSTUFQ(STR,TAB) ; EP - BADSTUFF error message.  Ends with Q "Q"uit
 D BADSTUFF(STR,$G(TAB))
 Q "Q"
 ;
PLURAL(CNT) ; EP - If CNT'=1, return S else return ""
 Q $S(CNT=1:"",1:"s")
 ;
PLURALI(CNT) ; EP - If CNT'=1, return IES else return Y
 Q $S(CNT=1:"y",1:"ies")
 ;
LRASFND() ; EP - Determine if order's Test has an accession attached to it
 S LROTIEN=LROT_","_LRSP_","_LRODT
 S LRAD=$$GET1^DIQ(69.03,LROTIEN,2,"I")
 S LRAA=$$GET1^DIQ(69.03,LROTIEN,3,"I")
 S LRAN=$$GET1^DIQ(69.03,LROTIEN,4,"I")
 I LRAA!(LRAD)!(LRAN) Q 1
 E  Q 0

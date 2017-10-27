BLRMANP3 ; IHS/MSC/MKK - Multiple Accession Not Performed utility, part 3 ; 22-Apr-2016 15:12 ; MKK
 ;;5.2;IHS LABORATORY;**1039**;NOV 01, 1997;Build 38
 ;
EEP ; Ersatz EP
 D EEP^BLRGMENU
 Q
 ;
 ; The following cloned from BLRRLTDU
XTMPRPT ; EP - ^XTMP Issues node - Interactive Report
 NEW (DILOCKTM,DISYS,DT,DTIME,DUZ,IO,IOBS,IOF,IOM,ION,IOS,IOSL,IOST,IOT,IOXY,U,XPARSYS,XQXFLG)
 ;
 D SETBLRVS("XTMPRPT")
 S HEADER(1)="^XTMP Global"
 ;
 I $D(^XTMP("BLRMANPU","UID"))<1 D  Q
 . D HEADERDT^BLRGMENU
 . W !,?4,"^XTMP Global has no Data for 'Multiple Accession Not Performed' Errors."
 . D PRESSKEY^BLRGMENU(9)
 ;
 S HEADER(2)="Accession (UID)"
 S HEADER(3)=$$CJ^XLFSTR("Could *NOT* Mark 'Not Performed' Report",80)
 S HEADER(4)=" "
 S HEADER(5)="UID"
 S $E(HEADER(5),13)="Date/Time"
 S $E(HEADER(5),29)="DUZ"
 S $E(HEADER(5),36)="Error Message"
 ;
 S MAXLINES=IOSL-4,LINES=MAXLINES+10
 S (CNT,PG)=0
 S QFLG="NO"
 ;
 S UID=0,MSGL=5
 F  S UID=$O(^XTMP("BLRMANPU","UID",UID))  Q:UID<1!(QFLG="Q")  D
 . S MSGDUZ=0
 . F  S MSGDUZ=$O(^XTMP("BLRMANPU","UID",UID,"DUZ",MSGDUZ))  Q:MSGDUZ<1!(QFLG="Q")  D
 .. S NAMEDUZ=$$GET1^DIQ(200,MSGDUZ,"NAME")
 .. S HDATE=""
 .. F  S HDATE=$O(^XTMP("BLRMANPU","UID",UID,"DUZ",MSGDUZ,HDATE))  Q:HDATE=""!(QFLG="Q")  D
 ... S STR=$G(^XTMP("BLRMANPU","UID",UID,"DUZ",MSGDUZ,HDATE))
 ... I LINES>MAXLINES D HEADERPG^BLRGMENU(.PG,.QFLG,"NO")  Q:QFLG="Q"
 ... W UID
 ... W ?12,$$HTE^XLFDT(HDATE,"2MZ")
 ... W ?28,MSGDUZ
 ... D LINEWRAP^BLRGMENU(35,$P(STR,"^"),45)
 ... W !
 ... S LINES=LINES+1
 ;
 D PRESSKEY^BLRGMENU(9)
 Q
 ;
XTMPKILL ; EP - Purge the ^XTMP("BLRMANPU") Node
 NEW (DILOCKTM,DISYS,DT,DTIME,DUZ,IO,IOBS,IOF,IOM,ION,IOS,IOSL,IOST,IOT,IOXY,U,XPARSYS,XQXFLG)
 ;
 S HEADER(1)="^XTMP Global"
 S HEADER(2)="Purge"
 D HEADERDT^BLRGMENU
 W ?9,"This option will purge the ^XTMP(""BLRMANPU"") global.",!!
 W ?9,"That global contains any error messages created during the",!!
 W ?14,"Mark Multiple Accessions as Not Performed",!!
 W ?9,"process."
 S TAB=$J("",5)
 D ^XBFMK
 S DIR(0)="YO"
 S DIR("A")=TAB_"Are you Sure"
 D ^DIR
 Q:+Y<1 $$BADSTUFN^BLRUTIL7("No/Quit/Invalid Response.")
 ;
 D ^XBFMK
 S DIR(0)="YO"
 S DIR("A")=TAB_"Second Chance: Are you Really sure"
 D ^DIR
 Q:+Y<1 $$BADSTUFN^BLRUTIL7("No/Quit/Invalid Response.")
 ;
 D ^XBFMK
 S DIR(0)="Y"
 S DIR("A")=TAB_"FINAL CHANCE: Are you Absolutely sure"
 D ^DIR
 Q:+Y<1 $$BADSTUFN^BLRUTIL7("No/Quit/Invalid Response.")
 ;
 W !!,TAB_TAB_"^XTMP(""BLRMANPU"") Global Purged."
 K ^XTMP("BLRMANPU")
 ;
 D PRESSKEY^BLRGMENU(4)
 Q
 ;
DETAIL68 ; EP - Accession (#68) File Data Detail
 NEW (DILOCKTM,DISYS,DT,DTIME,DUZ,IO,IOBS,IOF,IOM,ION,IOS,IOSL,IOST,IOT,IOXY,U,XPARSYS,XQXFLG)
 ;
 Q:$$DETAILIN("ACDETAIL")="Q"
 ;
 D NODEZERO,NODE3,ACCTESTS
 ;
 I $O(^LRO(69,"C",ORDERNUM,0))<1  W !,?6,"**Order #:",ORDERNUM," is **NOT** in the Lab Order Entry (#69) File."
 ;
 D PRESSKEY^BLRGMENU(4)
 Q
 ;
DETAILIN(SUBRTN) ; EP - Initialize variables
 NEW COL,COL2
 D SETBLRVS($G(SUBRTN))
 ;
 S HEADER(1)="Accession Detail"
 ;
 D HEADERDT^BLRGMENU
 ;
 D ^LRWU4
 ;
 I $D(^LRO(68,LRAA,1,LRAD,1,LRAN,0))<1 Q $$ENDERQ("Accession does not Exist.")
 ;
 S LRSS=$P($G(^LRO(68,LRAA,0)),U,2)
 S LRASIEN=LRAN_","_LRAD_","_LRAA
 S ORDERNUM=$$GET1^DIQ(68.02,LRASIEN,14)
 S LRAS=$$GET1^DIQ(68.02,LRASIEN,15)
 S UID=$$GET1^DIQ(68.02,LRASIEN,16)
 S DIV=$$GET1^DIQ(68.02,LRASIEN,26)
 ;
 S HEADER(2)="Accession #:"_LRAS
 S HEADER(3)=$$CENTER("LRAA:"_LRAA_"     LRAD:"_LRAD_"     LRAN:"_LRAN)
 ;
 D ^%ZIS
 I POP Q $$ENDERQ("Invalid %ZIS call.")
 ;
 S MAXLINES=IOSL-4
 S LINES=MAXLINES+10
 S PG=0,RESULTDT="",QFLG="OK"
 Q "OK"
 ;
NODEZERO() ; EP - Display Accession Node Zero
 D HEADERDT^BLRGMENU
 ;
 ; D LINEMSG("Accession (#68) file Data","=",5)
 ;
 S STR=$G(^LRO(68,LRAA,1,LRAD,1,LRAN,0))
 ;
 W ?5,"Order #:",ORDERNUM
 W:$O(^LRO(69,"C",ORDERNUM,0))<1 "**"
 W ?23,"UID:",UID
 W ?43,"Order Dt:"
 S ORDERDT=$$GET1^DIQ(68.02,LRASIEN,3,"I")
 W:ORDERDT $$FMTE^XLFDT(ORDERDT,"5DZ")
 W !
 ;
 S LRDFN=$$GET1^DIQ(68.02,LRASIEN,.01,"I")
 W ?7,"LRDFN:",LRDFN
 W ?23,"DFN:",$$GET1^DIQ(63,LRDFN,.03,"I")
 W ?44,"PT NAME:",$$GET1^DIQ(63,LRDFN,.03)
 W !
 ;
 W ?4,"Provider:",$E($$GET1^DIQ(68.02,LRASIEN,6.5),1,36)
 W ?42,"Rpt R Loc:",$$GET1^DIQ(68.02,LRASIEN,6)
 W !
 ;
 W ?5,"Ord Loc:",$E($$GET1^DIQ(68.02,LRASIEN,94),1,27)
 W ?48,"Div:",$E(DIV,1,28)
 W !
 W ?4,"Log-In Person:",$E($$GET1^DIQ(68.02,LRASIEN,6.7),1,19)
 W ?39,"File 200 IEN:",$$GET1^DIQ(68.02,LRASIEN,6.7,"I")
 W !!
 Q
 ;
NODE3 ;  EP - Display Accession Node Three
 S STR=$G(^LRO(68,LRAA,1,LRAD,1,LRAN,3))
 ;
 W ?4,"Draw Time:"
 S DRAWTIME=$$GET1^DIQ(68.02,LRASIEN,9,"I")
 W $TR($$UP^XLFSTR($$FMTE^XLFDT(DRAWTIME,"5MPZ")),"@"," ")
 W ?39,"Lab Arr Time:"
 S LARRTIME=$$GET1^DIQ(68.02,LRASIEN,12,"I")
 W $TR($$UP^XLFSTR($$FMTE^XLFDT(LARRTIME,"5MPZ")),"@"," ")
 W !
 ;
 W ?14,DRAWTIME,?52,LARRTIME,!
 ;
 W ?4,"Result Dt:"
 S RESULTDT=$$GET1^DIQ(68.02,LRASIEN,13,"I")
 I RESULTDT D
 . S TEMP=$$UP^XLFSTR($$FMTE^XLFDT(RESULTDT,"5MPZ"))
 . W $P(TEMP," "),$$RJ^XLFSTR($P(TEMP," ",2,3),9)
 W ?39,"Inverse Date:",$$GET1^DIQ(68.02,LRASIEN,13.5,"I")
 W !
 Q
 ;
ACCTESTS ; EP - Display the Tests
 NEW TECH
 ;
 S LRAT=.9999999
 F  S LRAT=$O(^LRO(68,LRAA,1,LRAD,1,LRAN,4,LRAT))  Q:LRAT<1  D
 . S LRATIEN=LRAT_","_LRASIEN
 . S TESTIEN=$P(STR,U)
 . W !,?4,"Test:",$$GET1^DIQ(68.04,LRATIEN,.01)
 . W ?40,"File 60 IEN:",$$GET1^DIQ(68.04,LRATIEN,.01,"I")
 . W !
 . S TECH=+$P(STR,U,4)
 . W ?4,"Tech:",$$GET1^DIQ(68.04,LRATIEN,3)
 . S DATETIME=$$GET1^DIQ(68.04,LRATIEN,4,"I")
 . I DATETIME D
 .. W ?44,"Comp Dt:"
 .. S TEMP=$$UP^XLFSTR($$FMTE^XLFDT(DATETIME,"5MPZ"))
 .. W $P(TEMP," "),$$RJ^XLFSTR($P(TEMP," ",2,3),9)
 . W !
 . S STR=$$GET1^DIQ(68.04,LRATIEN,5)
 . I $L(STR) D
 .. W ?8,"Disp:",$E(STR,1,67)
 .. W !
 ;
 W !
 ;
 S LRASP=0
 F  S LRASP=$O(^LRO(68,LRAA,1,LRAD,1,LRAN,5,LRASP))  Q:LRASP<1  D
 . S LRASPIEN=LRASP_","_LRASIEN
 . W ?5,"Specimen:",$E($$GET1^DIQ(68.05,LRASPIEN,.01),1,32)
 . W ?40,"File 61 IEN:",$$GET1^DIQ(68.05,LRASPIEN,.01,"I")
 . W !
 . W ?4,"Coll Samp:",$E($$GET1^DIQ(68.05,LRASPIEN,1),1,32)
 . W ?40,"File 62 IEN:",$$GET1^DIQ(68.05,LRASPIEN,1,"I")
 . W !
 Q
 ;
 ; ============================= UTILITIES =============================
 ;
VARSNEW ; EP - NEW put here to facilitate adding new routines.
 NEW (DILOCKTM,DISYS,DT,DTIME,DUZ,IO,IOBS,IOF,IOM,ION,IOS,IOSL,IOST,IOT,IOXY,U,XPARSYS,XQXFLG)
 Q
 ;
SETBLRVS(TWO) ; EP - Set the BLRVERN variables
 K BLRVERN,BLRVERN2
 S BLRVERN=$TR($P($T(+1),";")," ")
 S:$L($G(TWO)) BLRVERN2=TWO
 Q
ENDMESG ; EP -- Display the message
 W !!,?5,MESSAGE,"  Routine Ends."
 D PRESSKEY^BLRGMENU(10)
 Q
 ;
ENDERQ(MESSAGE) ; EP - Function to state why routine ending.  Quits with "Q"
 D ENDMESG
 Q "Q"
 ;
CENTER(STR) ; EP - Center a string using IOM
 Q $$CJ^XLFSTR(STR,$G(IOM,80))
 ;
LINEMSG(MSG,FILLER,TAB) ; EP - Demarcation line, Version 2
 S MSG="@"_$TR(MSG," ","@")_"@"
 S MSG=$TR($$CJ^XLFSTR(MSG,(IOM-$S(+$G(TAB):TAB*2,1:0)))," @",FILLER_" ")
 W ?($S(+$G(TAB):TAB-1,1:0)),MSG,!
 Q
 ;
NAMEPRT(DFN,CONVERT) ;EP; return printable name
 ;CONVERT=1 means convert to mixed case letters
 NEW VADM,X
 D DEM^VADPT
 S X=$P($P(VADM(1),",",2)," ")_" "_$P(VADM(1),",")
 I $G(CONVERT) X ^DD("FUNC",14,1)
 Q X

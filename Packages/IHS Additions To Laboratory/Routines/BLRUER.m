BLRUER ;IHS/MSC/MKK - ERROR TRACKING TASKED REPORT ;2/18/98  07:03 ;
 ;;5.2;LAB SERVICE;**1038**;NOV 1, 1997;Build 6
 ;
EEP ; EP - Ersatz EP
 D EEP^BLRGMENU
 Q
 ;
 ; Cloned from the LR*5.2*1031 version of LRUER 
 ;
 ; This version is designed to be tasked.  It will REJECT interactive reporting.
 ;
BEGIN ; EP - Beginning
 I $D(ZTQUEUED)<1 D  Q
 . W !!,?4,"This report can only be run from TASKMAN."
 . D PRESSKEY^BLRGMENU(9)
 S:$D(ZTQUEUED) ZTREQ="@"
 ;
GETPARAM ; EP - Get the parameters from the IHS LAB SUPERVISOR TASKED REPORTS PARAMETERS (#90475.7) file
 NEW ACCDELC,D1,D1IEN,DEVICE,DEVDESC,GPD0,GPD1,TRANGE,DUZ2,DUZ2DESC,LISTTEST,NEWPAGE,PREVREPT,SPECREJ
 ;
 ; Parameters for LRUER report are in 90475.71
 S (GPD0,GPD1)=1
 ;
 S D1IEN=GPD1_","_GPD0
 S DUZ2=$$GET1^DIQ(90475.71,D1IEN,.01,"I")
 S DUZ2=$$GET1^DIQ(90475.71,D1IEN,.01,"I")
 S DUZ2DESC=$$GET1^DIQ(90475.71,D1IEN,.01)
 S PREVREPT=+$$GET1^DIQ(90475.71,D1IEN,1,"I")
 S SPECREJ=+$$GET1^DIQ(90475.71,D1IEN,2,"I")
 S ACCDELC=+$$GET1^DIQ(90475.71,D1IEN,3,"I")
 S LISTTEST=+$$GET1^DIQ(90475.71,D1IEN,4,"I")
 S NEWPAGE=+$$GET1^DIQ(90475.71,D1IEN,5,"I")
 S DTRANGE=+$$GET1^DIQ(90475.71,D1IEN,6,"I")
 S DEVICE=+$$GET1^DIQ(90475.71,D1IEN,7,"I")
 ;
 ; IF and ONLY IF the DEVICE variable is zero, then quit.
 ; Can Only happen if user up-hatted (^) out of the setup process.
 Q:DEVICE<1
 ;
 D DONTASK    ; Do the report
 ;
 G END
 Q
 ;
DONTASK ; EP
 S LRC(1)=$S(PREVREPT:"reported incorrectly as",SPECREJ:"specimen rejected",1:"")
 S LRC(2)=$S(ACCDELC:1,1:"")
 S LRC(3)="DUMMYZZZZ"
 S LRSDT=$S(DTRANGE=1:$$HTFM^XLFDT(+$H-7),DTRANGE=2:$$HTFM^XLFDT(+$H-30),DTRANGE=3:$$HTFM^XLFDT(+$H-365),1:$$HTFM^XLFDT(+$H-1))
 S LRLDT=$$DT^XLFDT
 S LRSTR=$$FMTE^XLFDT(LRSDT,"5DZ")
 S LRLST=$$FMTE^XLFDT(LRLDT,"5DZ")
 S LRS=LRSDT-.01,LRE=LRLDT+.99,LRLDT=9999998-LRLDT,LRSDT=9999999-LRSDT
 S LRF=LISTTEST
 S LRL=NEWPAGE
 K IOP,ZTSK,%ZIS
 S ZTSAVE("*")=""
 S %ZIS="Q"
 ; S IOP="`"_$$FIND1^DIC(3.5,,,"BLRUER TASKED")
 S IOP="`"_DEVICE
 D ENTRYAUD^BLRUTIL("DONTASK^BLRUER")
 D EN^XUTMDEVQ("QUE^BLRUER","TASKED IHS LAB ERROR TRACKING REPORT",.ZTSAVE,.%ZIS)
 G END
 Q
 ;
QUE ; EP
 S:$D(ZTQUEUED) ZTREQ="@"
 U IO
 N A,B,C,D,E,G,J,LRDFN,LRX,V,X,Y,Z
 K ^TMP($J),^TMP("LRDFN",$J)
 S LRQ(1)=^DD("SITE"),(LRQ,LR("Q"))=0
 D L^LRU,H S LR("F")=1
 F B=LRS:0 S B=$O(^LRO(69,B)) Q:'B!(B>LRE)  D
 . N X,I
 . S I=0 F  S I=$O(^LRO(69,B,1,I)) Q:'I  S X=+$G(^(I,0)) I X D
 .. S ^TMP("LRDFN",$J,X)=""
 I $$GET1^DIQ(9009029,+$G(DUZ(2)),"TAKE SNAPSHOTS","I") D
 . NEW SHOTMP
 . M SHOTMP("LRDFN",$J)=^TMP("LRDFN",$J)
 . D ENTRYAUD^BLRUTIL("QUE^BLRUER")
 F LRDFN=0:0 S LRDFN=$O(^TMP("LRDFN",$J,LRDFN)) Q:'LRDFN  S LRI=LRLDT F A=0:0 S LRI=$O(^LR(LRDFN,"CH",LRI)) Q:'LRI!(LRI>LRSDT)  D A
 K ^TMP("LRDFN",$J) D W,END^LRUTL,END
 Q
 ;
A ; EP
 I LRC(2),$O(^LR(LRDFN,"CH",LRI,1,"AC",0)) D SET Q
 F B=0:0 S B=$O(^LR(LRDFN,"CH",LRI,1,B)) Q:'B  I $G(^LR(LRDFN,"CH",LRI,1,B,0))[LRC(1)!($G(^LR(LRDFN,"CH",LRI,1,B,0))[LRC(3)) D SET Q     ; IHS/OIT/MKK - LR*5.2*1030 - Get rid of Naked References
 Q
 ;
SET ; EP
 S X=^LR(LRDFN,"CH",LRI,0),Y=$P(X,"^",6) S:Y="" Y="?? ?? ??" S ^TMP($J,$P(Y," "),$P(Y," ",2,3),+X,LRDFN,LRI)=$P(X,"^",5) Q
 Q
 ;
W ; EP
 S (LRA,LRC)="" F A=0:0 S LRA=$O(^TMP($J,LRA)) Q:LRA=""!(LR("Q"))  S LRC=LRC+1 D:LRL&(LRC>1) H Q:LR("Q")  S LRB="" F B=0:0 S LRB=$O(^TMP($J,LRA,LRB)) Q:LRB=""!(LR("Q"))  D W1
 Q
 ;
W1 ; EP
 F LRT=0:0 S LRT=$O(^TMP($J,LRA,LRB,LRT)) Q:'LRT!(LR("Q"))  F LRDFN=0:0 S LRDFN=$O(^TMP($J,LRA,LRB,LRT,LRDFN)) Q:'LRDFN!(LR("Q"))  D X
 Q
 ;
X ; EP
 F LRI=0:0 S LRI=$O(^TMP($J,LRA,LRB,LRT,LRDFN,LRI)) Q:'LRI!(LR("Q"))  S X=+^(LRI),LRS=$P($G(^LAB(61,X,0)),"^") D P
 Q
 ;
P ; EP
 S LRDATE=$$FMTE^XLFDT(LRT,"M")
 S X=^LR(LRDFN,0),(DFN,Y)=$P(X,"^",3),(LRDPF,X)=$P(X,"^",2),X=^DIC(X,0,"GL"),V=@(X_Y_",0)"),LRP=$P(V,"^"),SSN=$P(V,"^",9) D SSN^LRU  ;IHS/ANMC/CLS 08/18/96
 D:$Y>(IOSL-6) H W !!,LRA_" "_LRB,?14,LRDATE,?34,LRP," ",HRCN,?67,LRS D:LRF TST Q:LR("Q")  ;IHS/ANMC/CLS 08/18/96
 F B=0:0 S B=$O(^LR(LRDFN,"CH",LRI,1,B)) Q:'B!(LR("Q"))  S B(1)=^(B,0) D:$Y>(IOSL-6) H1 Q:LR("Q")  W !?5,B(1)
 F B=0:0 S B=$O(^LR(LRDFN,"CH",LRI,1,"AC",B)) Q:'B!(LR("Q"))  S C="" F E=0:0 S C=$O(^LR(LRDFN,"CH",LRI,1,"AC",B,C)) Q:C=""  D:$Y>(IOSL-6) H1 Q:LR("Q")  D P1
 Q
 ;
P1 ; EP
 S X=$G(^VA(200,B,0)) W !?5,$P(^LR(LRDFN,"CH",LRI,1,"AC",B,C),"^",3) W:$X>60 ! W " (deleted by ",$S($P(X,"^",2)]"":$P(X,"^",2),1:$P(X,",")),")"
 Q
 ;
TST ; EP
 S:'$D(LR(LRA)) LR(LRA)=+$O(^LRO(68,"B",LRA,0)) S X=$P(^LRO(68,LR(LRA),0),"^",3),Z=$P(LRB," ",2),G=$E(LRT,1,3) S:X="D" G=G_$P(LRB," ")
 E  S G=$S(X="Y":G_"0000",X="M":G_$E($P(LRB," "),1,2)_"00",1:G)
 S (C,E,E(1))=0 F E(1)=0:0 S C=$O(^LRO(68,LR(LRA),1,G,1,Z,4,C)) Q:'C!(LR("Q"))  S LRX=^(C,0) I $P(^LAB(60,C,0),U,4)'="WK" D B
 Q
 ;
B ; EP
 S E=E+1,J=$P(LRX,U,4),J=$S(J:$P($G(^VA(200,J,0)),"^",2),1:J) D:$Y>(IOSL-6) H2 Q:LR("Q")  W ! W:E=1 "Test(s) ordered:" W ?18,$P($G(^LAB(60,C,0)),"^"),?49,"Tech: ",J
 Q
 ;
H ; EP
 I $D(LR("F")),IOST?1"C".E D M^LRU Q:LR("Q")
 D F^LRU W !,LRC(1) W:$L(LRC(1))>44 ! W " From: ",LRSTR," To: ",LRLST,!,"Acc #",?14,"Date/Time",?34,"Name/HRCN",?67,"Specimen",!,LR("%")
 Q
H1 ; EP
 D H Q:LR("Q")  W !,LRA," ",LRB,?14,LRDATE,?34,LRP," ",HRCN," ",LRS
 Q
 ;
H2 ; EP
 D H1 Q:LR("Q")  W !,"Test(s) ordered:" S E=2
 Q
END ; EP
 D V^LRU
 Q
 ;
DEBUGFOR ; EP - Check the FOR loop
 NEW ACCDELC,D1,D1IEN,DEVICE,DEVDESC,TRANGE,DUZ2,DUZ2DESC,LISTTEST,NEWPAGE,PREVREPT,SPECREJ
 ;
 ; Parameters for LRUER report are in 90475.71
 S GPD1=.9999999
 F  S GPD1=$O(^BLRLSRP(1,1,GPD1))  Q:GPD1<1  D
 . S D1IEN=GPD1_","_1
 . S DUZ2=$$GET1^DIQ(90475.71,D1IEN,.01,"I")
 . S DUZ2=$$GET1^DIQ(90475.71,D1IEN,.01,"I")
 . S DUZ2DESC=$$GET1^DIQ(90475.71,D1IEN,.01)
 . S PREVREPT=+$$GET1^DIQ(90475.71,D1IEN,1,"I")
 . S SPECREJ=+$$GET1^DIQ(90475.71,D1IEN,2,"I")
 . S ACCDELC=+$$GET1^DIQ(90475.71,D1IEN,3,"I")
 . S LISTTEST=+$$GET1^DIQ(90475.71,D1IEN,4,"I")
 . S NEWPAGE=+$$GET1^DIQ(90475.71,D1IEN,5,"I")
 . S DTRANGE=+$$GET1^DIQ(90475.71,D1IEN,6,"I")
 . ;
 . S LRSDT=$S(DTRANGE=1:$$HTFM^XLFDT(+$H-7),DTRANGE=2:$$HTFM^XLFDT(+$H-30),DTRANGE=3:$$HTFM^XLFDT(+$H-365),1:$$HTFM^XLFDT(+$H-1))
 . S LRLDT=$$DT^XLFDT
 . S LRSTR=$$FMTE^XLFDT(LRSDT,"5DZ")
 . S LRLST=$$FMTE^XLFDT(LRLDT,"5DZ")
 . S LRS=LRSDT-.01,LRE=LRLDT+.99,LRLDT=9999998-LRLDT,LRSDT=9999999-LRSDT
 . ;
 . S DEVICE=+$$GET1^DIQ(90475.71,D1IEN,7,"I")
 . I DEVICE=0 D      ; Default device is LABLABEL
 .. S DEVICE=+$$FIND1^DIC(3.5,,,"LABLABEL")
 .. S DEVDESC=$$GET1^DIQ(3.5,DEVICE,.01)
 . ;
 . W ?4,"GPD1:",GPD1," -- ",$$GET1^DIQ(4,GPD1,.01),!
 . W ?9,"DUZ2:",DUZ2,"; DUZ2DESC:",DUZ2DESC,!
 . W ?9,"PREVREPT:",PREVREPT,!
 . W ?9,"SPECREJ:",SPECREJ,!
 . W ?9,"ACCDELC:",ACCDELC,!
 . W ?9,"LISTTEST:",LISTTEST,!
 . W ?9,"NEWPAGE:",NEWPAGE,!
 . W ?9,"DTRANGE:",DTRANGE,!
 . ;
 . S LRSDT=$S(DTRANGE=1:$$HTFM^XLFDT(+$H-7),DTRANGE=2:$$HTFM^XLFDT(+$H-30),DTRANGE=3:$$HTFM^XLFDT(+$H-365),1:$$HTFM^XLFDT(+$H-1))
 . S LRLDT=$$DT^XLFDT
 . W ?9,"LRSDT:",LRSDT,?29,"LRLDT:",LRLDT,!
 . S LRSTR=$$FMTE^XLFDT(LRSDT,"5DZ")
 . S LRLST=$$FMTE^XLFDT(LRLDT,"5DZ")
 . W ?9,"LRSTR:",LRSTR,?29,"LRLST:",LRLST,!
 . S LRS=LRSDT-.01,LRE=LRLDT+.99,LRLDT=9999998-LRLDT,LRSDT=9999999-LRSDT
 . W ?9,"LRS:",LRS,?29,"LRE:",LRE,!
 . W ?9,"LRSDT:",LRSDT,?29,"LRLDT:",LRLDT,!
 Q
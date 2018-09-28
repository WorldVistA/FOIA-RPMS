AUPN9926 ; IHS/OIT/FBD&NKD - AUPN V99.1 PATCH 26 ENVIRONMENT CHECKS AND POST-INIT PROCESS ; 11/07/2017
 ;;99.1;IHS DICTIONARIES (PATIENT);**26**;MAR 9, 1999;Build 11
 ;
 ;
 D:'$D(IOM) HOME^%ZIS
 ;
 ; The following line prevents the "Disable Options..." and "Move Routines..."
 ;  questions from being asked during the install.
 I $G(XPDENV)=1 S (XPDDIQ("XPZ1"),XPDDIQ("XPZ2"))=0
 F X="XPO1","XPZ1","XPZ2","XPI1" S XPDDIQ(X)=0
 ;
 I '$G(DUZ) W !,"DUZ UNDEFINED OR 0." D SORRY(2) Q
 ;
 I '$L($G(DUZ(0))) W !,"DUZ(0) UNDEFINED OR NULL." D SORRY(2) Q
 ;
 S X=$P(^VA(200,DUZ,0),U)
 W !!,$$CJ^XLFSTR("Hello, "_$P(X,",",2)_" "_$P(X,","),IOM)
 W !!,$$CJ^XLFSTR("Checking Environment for "_$P($T(+2),";",4)_" V "_$P($T(+2),";",3)_$S($L($P($T(+2),";",5))>4:" Patch "_$P($T(+2),";",5),1:"")_".",IOM),!
 ;
 ; REQUIRED VERSION/PATCH CHECKS
 S:'$$VCHK("XU","8.0") XPDQUIT=2          ; KERNEL
 S:'$$VCHK("DI","22.0") XPDQUIT=2         ; FILEMAN
 S:'$$VCHK("AUPN","99.1","25") XPDQUIT=2  ; AUPN
 ; END OF REQUIRED VERSION/PATCH CHECKS
 ;
 ; REQUIRED UPDATE GLOBALS
 ;
 ; ADDITIONAL CHECKS IF RE-INSTALLING
 ;
 I $G(XPDQUIT) W !,$$CJ^XLFSTR("FIX IT! Before Proceeding.",IOM),!!,*7,*7,*7 Q
 ;
 I +$G(XPDQUIT) D SORRY(XPDQUIT)
 ;
 ; END OF ENVIRONMENT CHECK RUN LOGIC
 Q
 ;
SORRY(X) ; Environment check failure message
 KILL DIFQ
 S XPDQUIT=X
 W *7,!,$$CJ^XLFSTR("Sorry....FIX IT!",IOM)
 Q
 ;
VCHK(PRE,VER,PAT) ; Check patch level
 N V,P
 S V=$$VERSION^XPDUTL(PRE)
 I (V<VER) K DIFQ D DISP(PRE,VER,$G(PAT),V,$G(P),0) Q 0
 I '$D(PAT) D DISP(PRE,VER,$G(PAT),V,$G(P),1) Q 1
 S P=+$$LAST(PRE,VER)
 I (P<PAT) K DIFQ D DISP(PRE,VER,$G(PAT),VER,$G(P),0) Q 0
 D DISP(PRE,VER,$G(PAT),VER,$G(P),1)
 Q 1
 ;
GCHK(GL,MSG) ; Check for global
 Q:'$L($G(GL)) 0
 N S
 S S="Requires "_$S('$L($G(MSG)):GL,1:$G(MSG))_"....."
 S S=S_$S($D(@GL):"Present",1:"Not found ***FIX IT***")
 W !,$$CJ^XLFSTR(S,IOM)
 Q $S($D(@GL):1,1:0)
 ;
PCHK(PKG,VER,PAT) ; Check specific patch
 N PKGIEN,VERIEN,PATIEN,S
 S PKG=$G(PKG),VER=$G(VER),PAT=$G(PAT)
 S S="Requires "_PKG_" v"_VER_" p"_PAT_"....."
 D
 . S PKGIEN=+$O(^DIC(9.4,"C",PKG,"")) Q:'PKGIEN
 . S VERIEN=+$O(^DIC(9.4,PKGIEN,22,"B",VER,"")) Q:'VERIEN
 . S PATIEN=+$O(^DIC(9.4,PKGIEN,22,VERIEN,"PAH","B",PAT,""))
 S S=S_$S(+$G(PATIEN):"Present",1:"Not found ***FIX IT***")
 W !,$$CJ^XLFSTR(S,IOM)
 Q $S(+$G(PATIEN):1,1:0)
 ;
DISP(PRE,VER,PAT,V,P,R) ; Display requirement checking results
 N S
 S S="Need at least "_$G(PRE)_" v"_$G(VER)_$S($G(PAT)]"":" p"_$G(PAT),1:"")_"....."
 S S=S_$G(PRE)_" v"_$G(V)_$S($G(P)]"":" p"_$G(P),1:"")_" Present"
 S S=S_$S('R:" ***FIX IT***",1:"")
 W !,$$CJ^XLFSTR(S,IOM)
 Q
LAST(PKG,VER) ; EP - returns last patch applied for a Package, PATCH^DATE
 ;        Patch includes Seq # if Released
 N PKGIEN,VERIEN,LATEST,PATCH,SUBIEN
 I $G(VER)="" S VER=$$VERSION^XPDUTL(PKG) Q:'VER -1
 S PKGIEN=$O(^DIC(9.4,"C",PKG,"")) Q:'PKGIEN -1
 S VERIEN=$O(^DIC(9.4,PKGIEN,22,"B",VER,"")) Q:'VERIEN -1
 S LATEST=-1,PATCH=-1,SUBIEN=0
 F  S SUBIEN=$O(^DIC(9.4,PKGIEN,22,VERIEN,"PAH",SUBIEN)) Q:SUBIEN'>0  D
 . I $P(^DIC(9.4,PKGIEN,22,VERIEN,"PAH",SUBIEN,0),U,2)>LATEST S LATEST=$P(^(0),U,2),PATCH=$P(^(0),U)
 . I $P(^DIC(9.4,PKGIEN,22,VERIEN,"PAH",SUBIEN,0),U,2)=LATEST,$P(^(0),U)>PATCH S PATCH=$P(^(0),U)
 Q PATCH_U_LATEST
 ;
PRE ; EP FR KIDS
 Q
 ;
POST ; EP FR KIDS
 D BMES^XPDUTL("Delivering "_$G(XPDNM)_" install message to select users...")
 D MAIL
 Q
 ;
MAIL ;----- SEND INSTALL MAIL MESSAGE 
 ;
 NEW DIFROM,XMSUB,XMDUZ,XMTEXT,XMY
 KILL ^TMP("AUPN9926",$J)
 S ^TMP("AUPN9926",$J,1)=" --- AUPN v 99.1, Patch 26, has been installed into this uci ---"
 S %=0
 F  S %=$O(^XTMP("XPDI",XPDA,"BLD",XPDBLD,1,%)) Q:'%   S ^TMP("AUPN9926",$J,(%+1))=" "_^(%,0)
 S XMSUB=$P($P($T(+1),";",2)," ",3,99),XMDUZ=$S($G(DUZ):DUZ,1:.5),XMTEXT="^TMP(""AUPN9926"",$J,",XMY(1)="",XMY(DUZ)=""
 F %="XUMGR","XUPROG","XUPROGMODE" D SINGLE(%)
 D ^XMD
 KILL ^TMP("AUPN9926",$J)
 Q
 ;
SINGLE(K) ;----- GET HOLDERS OF A SINGLE KEY K.
 Q:'$D(^XUSEC(K))
 N Y S Y=0 F  S Y=$O(^XUSEC(K,Y)) Q:'Y  S XMY(Y)=""
 Q
 ;

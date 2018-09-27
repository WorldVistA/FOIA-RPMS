AG71A12 ;IHS/OIT/NKD - PATIENT REGISTRATION 7.1 PATCH 12 CHECK/PRE/POST INSTALL ;
 ;;7.1;PATIENT REGISTRATION;**12**;AUG 25, 2005;Build 1
 ;
 I '$G(DUZ) W !,"DUZ UNDEFINED OR 0." D SORRY(2) Q
 ;
 I '$L($G(DUZ(0))) W !,"DUZ(0) UNDEFINED OR NULL." D SORRY(2) Q
 ;
 S X=$P(^VA(200,DUZ,0),U)
 W !!,$$CJ^XLFSTR("Hello, "_$P(X,",",2)_" "_$P(X,","),IOM)
 W !!,$$CJ^XLFSTR("Checking Environment for "_$P($T(+2),";",4)_" V "_$P($T(+2),";",3)_$S($L($P($T(+2),";",5))>4:" Patch "_$P($T(+2),";",5),1:"")_".",IOM),!
 ;
 S:'$$VCHK("XU","8.0") XPDQUIT=2
 S:'$$VCHK("DI","22.0") XPDQUIT=2
 S:'$$PCHK("AG","7.1","11") XPDQUIT=2
 S:'$$VCHK("AUT","98.1","28") XPDQUIT=2
 S:'$$VCHK("AUPN","99.1","25") XPDQUIT=2
 ;
 NEW DA,DIC
 S X="AG",DIC="^DIC(9.4,",DIC(0)="",D="C"
 D IX^DIC
 I Y<0,$D(^DIC(9.4,"C","AG")) D
 . W !!,*7,*7,$$CJ^XLFSTR("You Have More Than One Entry In The",IOM),!,$$CJ^XLFSTR("PACKAGE File with an ""AG"" prefix.",IOM)
 . W !,$$CJ^XLFSTR("One entry needs to be deleted.",IOM)
 . D SORRY(2)
 .Q
 ;
 I $G(XPDQUIT) W !,$$CJ^XLFSTR("FIX IT! Before Proceeding.",IOM),!!,*7,*7,*7 Q
 ;
 W !!,$$CJ^XLFSTR("ENVIRONMENT OK.",IOM)
 ;
 I $G(XPDENV)=1 D
 . ; The following line prevents the "Disable Options..." and "Move
 . ; Routines..." questions from being asked during the install.
 . S (XPDDIQ("XPZ1"),XPDDIQ("XPZ2"))=0
 .Q
 ;
 I '$$DIR^XBDIR("E","","","","","",1) D SORRY(2)
 Q
 ;
SORRY(X) ;
 KILL DIFQ
 S XPDQUIT=X
 W *7,!,$$CJ^XLFSTR("Sorry....FIX IT!",IOM)
 Q
 ;
VCHK(AGPRE,AGVER,AGPAT) ; Check patch level
 N AGV,AGP
 S AGV=$$VERSION^XPDUTL(AGPRE)
 I (AGV<AGVER) K DIFQ D DISP(AGPRE,AGVER,$G(AGPAT),AGV,$G(AGP),0) Q 0
 I '$D(AGPAT) D DISP(AGPRE,AGVER,$G(AGPAT),AGV,$G(AGP),1) Q 1
 S AGP=+$$LAST(AGPRE,AGVER)
 I (AGP<AGPAT) K DIFQ D DISP(AGPRE,AGVER,$G(AGPAT),AGVER,$G(AGP),0) Q 0
 D DISP(AGPRE,AGVER,$G(AGPAT),AGVER,$G(AGP),1)
 Q 1
 ;
PCHK(PKG,VER,PAT) ; Check specific patch
 N PKGIEN,VERIEN,PATIEN,AGS
 S PKG=$G(PKG),VER=$G(VER),PAT=$G(PAT)
 S AGS="Requires "_PKG_" v"_VER_" p"_PAT_"....."
 D
 . S PKGIEN=+$O(^DIC(9.4,"C",PKG,"")) Q:'PKGIEN
 . S VERIEN=+$O(^DIC(9.4,PKGIEN,22,"B",VER,"")) Q:'VERIEN
 . S PATIEN=+$O(^DIC(9.4,PKGIEN,22,VERIEN,"PAH","B",PAT,""))
 S AGS=AGS_$S(+$G(PATIEN):"Present",1:"Not found ***FIX IT***")
 W !,$$CJ^XLFSTR(AGS,IOM)
 Q $S(+$G(PATIEN):1,1:0)
 ;
DISP(AGPRE,AGVER,AGPAT,AGV,AGP,AGR) ; Display requirement checking results
 ;
 N AGS
 S AGS="Need at least "_$G(AGPRE)_" v"_$G(AGVER)_$S($G(AGPAT)]"":" p"_$G(AGPAT),1:"")_"....."
 S AGS=AGS_$G(AGPRE)_" v"_$G(AGV)_$S($G(AGP)]"":" p"_$G(AGP),1:"")_" Present"
 S AGS=AGS_$S('AGR:" ***FIX IT***",1:"")
 W !,$$CJ^XLFSTR(AGS,IOM)
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
 Q
 ;

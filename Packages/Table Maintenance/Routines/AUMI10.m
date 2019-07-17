AUMI10 ;IHS/OIT/NKD - ENVIRONMENT CHECK/PRE/POST-INSTALL FOR ICD10 - 09/04/2018 ;
 ;;19.0;ICD UPDATE;;SEP 04,2018;Build 1
 ;
 I '$G(DUZ) W !,"DUZ UNDEFINED OR 0." D SORRY(2) Q
 ;
 I '$L($G(DUZ(0))) W !,"DUZ(0) UNDEFINED OR NULL." D SORRY(2) Q
 ;
 S X=$P(^VA(200,DUZ,0),U)
 W !!,$$CJ^XLFSTR("Hello, "_$P(X,",",2)_" "_$P(X,","),IOM)
 W !!,$$CJ^XLFSTR("Checking Environment for "_$P($T(+2),";",4)_" V "_$P($T(+2),";",3)_$S($L($P($T(+2),";",5))>4:" Patch "_$P($T(+2),";",5),1:"")_".",IOM),!
 ;
 S:'$$VCHK("AICD","4.0") XPDQUIT=2
 S:'$$VCHK("AUM","18.0") XPDQUIT=2
 ;
 NEW DA,DIC
 S X="AUM",DIC="^DIC(9.4,",DIC(0)="",D="C"
 D IX^DIC
 I Y<0,$D(^DIC(9.4,"C","AUM")) D
 . W !!,*7,*7,$$CJ^XLFSTR("You Have More Than One Entry In The",IOM),!,$$CJ^XLFSTR("PACKAGE File with an ""AUM"" prefix.",IOM)
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
VCHK(AUMPRE,AUMVER,AUMPAT) ; Check patch level
 N AUMV,AUMP
 S AUMV=$$VERSION^XPDUTL(AUMPRE)
 I (AUMV<AUMVER) K DIFQ D DISP(AUMPRE,AUMVER,$G(AUMPAT),AUMV,$G(AUMP),0) Q 0
 I '$D(AUMPAT) D DISP(AUMPRE,AUMVER,$G(AUMPAT),AUMV,$G(AUMP),1) Q 1
 S AUMP=+$$LAST(AUMPRE,AUMVER)
 I (AUMP<AUMPAT) K DIFQ D DISP(AUMPRE,AUMVER,$G(AUMPAT),AUMVER,$G(AUMP),0) Q 0
 D DISP(AUMPRE,AUMVER,$G(AUMPAT),AUMVER,$G(AUMP),1)
 Q 1
 ;
GCHK(AUMGL,AUMMSG) ; Check for global
 Q:'$L($G(AUMGL)) 0
 N AUMS
 S AUMS="Requires "_$S('$L($G(AUMMSG)):AUMGL,1:$G(AUMMSG))_"....."
 S AUMS=AUMS_$S($D(@AUMGL):"Present",1:"Not found ***FIX IT***")
 W !,$$CJ^XLFSTR(AUMS,IOM)
 Q $S($D(@AUMGL):1,1:0)
 ;
PCHK(PKG,VER,PAT) ; Check specific patch
 N PKGIEN,VERIEN,PATIEN,AUMS
 S PKG=$G(PKG),VER=$G(VER),PAT=$G(PAT)
 S AUMS="Requires "_PKG_" v"_VER_" p"_PAT_"....."
 D
 . S PKGIEN=+$O(^DIC(9.4,"C",PKG,"")) Q:'PKGIEN
 . S VERIEN=+$O(^DIC(9.4,PKGIEN,22,"B",VER,"")) Q:'VERIEN
 . S PATIEN=+$O(^DIC(9.4,PKGIEN,22,VERIEN,"PAH","B",PAT,""))
 S AUMS=AUMS_$S(+$G(PATIEN):"Present",1:"Not found ***FIX IT***")
 W !,$$CJ^XLFSTR(AUMS,IOM)
 Q $S(+$G(PATIEN):1,1:0)
 ;
DISP(AUMPRE,AUMVER,AUMPAT,AUMV,AUMP,AUMR) ; Display requirement checking results
 ;
 N AUMS
 S AUMS="Need at least "_$G(AUMPRE)_" v"_$G(AUMVER)_$S($G(AUMPAT)]"":" p"_$G(AUMPAT),1:"")_"....."
 S AUMS=AUMS_$G(AUMPRE)_" v"_$G(AUMV)_$S($G(AUMP)]"":" p"_$G(AUMP),1:"")_" Present"
 S AUMS=AUMS_$S('AUMR:" ***FIX IT***",1:"")
 W !,$$CJ^XLFSTR(AUMS,IOM)
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
 N AUMI
 S AUMI=0 F  S AUMI=$O(^AUMDATA(AUMI)) Q:'AUMI  K ^AUMDATA(AUMI)
 F AUMI=3,4 S $P(^AUMDATA(0),"^",AUMI)=0
 Q
 ;
POST ; EP FR KIDS
 K ^TMP("AUM",$J)
 S ^TMP("AUM",$J,"AUMDT")="3"_(+$P($G(XPDNM)," ",2)-1)_"1001"
 D POST^AUMI10D
 K ^TMP("AUM",$J)
 Q
 ;

BMC4E ;IHS/OIT/FCJ - BMC 4.0 PATCH 12 -ENV INSTALL ; 16 Feb 2011  2:54 PM
 ;;4.0;REFERRED CARE INFO SYSTEM;**12**;JAN 09, 2006;Build 92
 ;
 ;
 I '$G(IOM) D HOME^%ZIS
 I '$G(DUZ) W !,"DUZ UNDEFINED OR 0." D SORRY(2) Q
 I '$L($G(DUZ(0))) W !,"DUZ(0) UNDEFINED OR NULL." D SORRY(2) Q
 I '(DUZ(0)["@") W:'$D(ZTQUEUED) !,"DUZ(0) DOES NOT CONTAIN AN '@'." D SORRY(2) Q
 ;
 S X=$$GET1^DIQ(200,DUZ,.01)
 W !!,$$CJ^XLFSTR("Hello, "_$P(X,",",2)_" "_$P(X,","),IOM)
 W !!,$$CJ^XLFSTR("Checking Environment for "_$P($T(+2),";",4)_" V "_$P($T(+2),";",3)_".",IOM),!
 ;
 NEW IORVON,IORVOFF
 S X="IORVON;IORVOFF"
 D ENDR^%ZISS
 ;
 I $$VCHK("BMC","4.0",2,"'=")
 I $$VCHK("DI","22.0",2,"<")
 I $$VCHK("XU","8.0",2,"<")
 I $$VCHK("AICD","4.0",2,"<")
 I '$$INSTALLD("AG*7.1*11") S BMCQUIT=2 D SORRY(BMCQUIT)
 I '$$INSTALLD("AUPN*99.1*16") S BMCQUIT=2 D SORRY(BMCQUIT)
 I '$$INSTALLD("ATX*5.1*5") S BMCQUIT=2 D SORRY(BMCQUIT)
 I '$$INSTALLD("AUT*98.1*26") S BMCQUIT=2 D SORRY(BMCQUIT)
 I '$$INSTALLD("LEX*2.0*1003") S BMCQUIT=2 D SORRY(BMCQUIT)
 I '$$INSTALLD("OR*3.0*190") S BMCQUIT=2 D SORRY(BMCQUIT)
 I '$$INSTALLD("OR*3.0*190") S BMCQUIT=2 D SORRY(BMCQUIT)
 I $$VCHK("BSTS","1.0",2,"<")
 W !!
 S DIR(0)="Y0",DIR("A")="Is the Facility using PCC" D ^DIR
 I +Y>0,'$$INSTALLD("BJPC*2.0*10") S BMCQUIT=2 D SORRY(BMCQUIT)
 W !
 S DIR(0)="Y0",DIR("A")="Is the Facility using EHR" D ^DIR
 I +Y>0,'$$INSTALLD("BGO*1.1*13") S BMCQUIT=2 D SORRY(BMCQUIT) W !
 ;
 NEW DA,DIC
 S X="BMC",DIC="^DIC(9.4,",DIC(0)="",D="C"
 D IX^DIC
 I Y<0,$D(^DIC(9.4,"C","BMC")) D
 . W !!,*7,*7,$$CJ^XLFSTR("You Have More Than One Entry In The",IOM),!,$$CJ^XLFSTR("PACKAGE File with an ""BMC"" prefix.",IOM)
 . W !,$$CJ^XLFSTR(IORVON_"One entry needs to be deleted."_IORVOFF,IOM)
 . D SORRY(2)
 ;
 I $G(XPDQUIT) W !,$$CJ^XLFSTR(IORVON_"You will need to update package(s) before proceeding."_IORVOFF,IOM),!!,*7,*7,*7 Q
 W !!,$$CJ^XLFSTR("ENVIRONMENT OK.",IOM)
 D HELP^XBHELP("INTROE","BMC4E")
 I '$$DIR^XBDIR("E","","","","","",1) D SORRY(2) Q
 I $G(XPDENV)=1 S (XPDDIQ("XPZ1"),XPDDIQ("XPZ2"))=0 D HELP^XBHELP("INTROI","BMC4E") I '$$DIR^XBDIR("E","","","","","",1) D SORRY(2)
 Q
 ;
SORRY(X) ;
 KILL DIFQ
 S XPDQUIT=X
 W *7,!,$$CJ^XLFSTR("Sorry....Need to update package!",IOM)
 Q
 ;
VCHK(BMCPRE,BMCVER,BMCQUIT,BMCCOMP) ; Check versions needed.
 ;  
 NEW BMCV
 S BMCV=$$VERSION^XPDUTL(BMCPRE)
 I BMCV="" D  Q 0
 .W !,$$CJ^XLFSTR("Need "_$S(BMCCOMP="<":"at least ",1:"")_BMCPRE_" v "_BMCVER_"....."_BMCPRE_" v "_BMCV_" Not Present",IOM)
 .D SORRY(BMCQUIT)
 W !,$$CJ^XLFSTR("Need "_$S(BMCCOMP="<":"at least ",1:"")_BMCPRE_" v "_BMCVER_"....."_BMCPRE_" v "_BMCV_" Present",IOM)
 I @(BMCV_BMCCOMP_BMCVER) D SORRY(BMCQUIT) Q 0
 Q 1
 ;
INSTALLD(BMC) ; Determine if patch BMC was installed, where BMC is
 ; the name of the INSTALL.  E.g "AVA*93.2*12".
 ;
 NEW DIC,X,Y,P
 ;  lookup package.
 S X=$P(BMC,"*",1)
 S DIC="^DIC(9.4,",DIC(0)="FM",D="C"
 D IX^DIC
 I Y<1 Q 0
 ;  lookup version.
 S DIC=DIC_+Y_",22,",X=$P(BMC,"*",2)
 D ^DIC
 I Y<1 Q 0
 ;  lookup patch.
 S DIC=DIC_+Y_",""PAH"",",X=$P(BMC,"*",3)
 D ^DIC
 I Y<1 S P=DIC_"""B"","_X_")" I $O(@P)'="" S Y=1
 I Y>0 W !,$$CJ^XLFSTR("Need at least "_BMC_"....."_BMC_" Present",IOM)
 I Y<0 W !,$$CJ^XLFSTR("Need at least "_BMC_".....",IOM)
 Q $S(Y<1:0,1:1)
 ; -----------------------------------------------------
MAIL ; EP
 D BMES^XPDUTL("BEGIN Delivering MailMan message to select users.")
 NEW DIFROM,XMSUB,XMDUZ,XMTEXT,XMY
 KILL ^TMP("BMC4P12",$J)
 D RSLT(" --- BMC v 4.0 Patch 12, has been installed into this namespace ---")
 F %=1:1 D RSLT($P($T(GREET+%),";",3)) Q:$P($T(GREET+%+1),";",3)="###"
 S %=0
 F  S %=$O(^XTMP("XPDI",XPDA,"BLD",XPDBLD,1,%)) Q:'%   D RSLT(^(%,0))
 S XMSUB=$P($P($T(+1),";",2)," ",3,99),XMDUZ=$S($G(DUZ):DUZ,1:.5),XMTEXT="^TMP(""BMC4P12"",$J,",XMY(1)="",XMY(DUZ)=""
 F %="BMCZMENU","XUMGR","XUPROG","XUPROGMODE" D SINGLE(%)
 D ^XMD
 KILL ^TMP("BMC4P12",$J)
 D MES^XPDUTL("END Delivering MailMan message to select users.")
 Q
 ;
RSLT(%) S ^(0)=$G(^TMP("BMC4P12",$J,0))+1,^(^(0))=%
 Q
 ;
SINGLE(K) ; Get holders of a single key K.
 NEW Y
 S Y=0
 Q:'$D(^XUSEC(K))
 F  S Y=$O(^XUSEC(K,Y)) Q:'Y  S XMY(Y)=""
 Q
 ;
INTROE ; Intro text during KIDS Environment check.
 ;;In this distribution:
 ;;
 ;;    Changes include
 ;;      1. General Retrieval Report
 ;;         a. Added new option for site specific report:
 ;;             Site Created by
 ;;      2. Local Snomed lookup if STS server is unavailable
 ;;      3. Update TOC Report to recognize printed/transmitted
 ;;      4. Fix for "|" in Reports
 ;;         a. Referral Review Report - By Facility/Time Period
 ;;         b. Referral Review Report - By Time Period
 ;;      5. Removed displaying SSN on Secondary Referral letter
 ;;      6. Changed URMD option to allow prior year referrals
 ;;      7. Alphabetized the Snomed terms during adding/editing referrals
 ;;      8. Fixed TOCR Report error on IHS to IHS referrals
 ;;      9. Callin Primary and Secondary Referrals-
 ;;         a. Added New Callin Notification field
 ;;         b. Added prompt/display on Add/Edit referral options
 ;;         c. Added New Supervisory option: Call in Referral edit
 ;;         d. Added field to Display Referral option
 ;;     10. New CHS Paid Report to calculate number of days to
 ;;         pay and sorted by Callin Referrals
 ;;     11. Fix for Secondary Referrals not printing Site Specific
 ;;         Text
 ;;     12. EHR-New Option to Print a Referral
 ;;     13. EHR-Filter inactive vendors
 ;;     14. EHR-Audit log capturing incorrect option on displaying
 ;;         referrals
 ;;     15. EHR-Fix for setting correct providers in V referral file
 ;;
 ;;###
 ;
INTROI ; Intro text during KIDS Install.
 ;;A standard message will be produced by this update.
 ;;  
 ;;If you run interactively, results will be displayed on your screen,
 ;;as well as in the mail message and the entry in the INSTALL file.
 ;;If you queue to TaskMan, please read the mail message for results of
 ;;this update, and remember not to Q to the HOME device.
 ;;###
 ;
GREET ;;To add to mail message.
 ;;  
 ;;Greetings.
 ;;  
 ;;The RCIS package on your RPMS system has been updated.
 ;;  
 ;;You are receiving this message because of the particular RPMS
 ;;security keys that you hold.  This is for your information, only.
 ;;You need do nothing in response to this message.
 ;;  
 ;;Questions about this patch, which is a product of the RPMS applications
 ;;can be directed to the OIT Support Center, at 505-248-4371,
 ;;or via e-mail to support@ihs.gov.
 ;;Please refer to patch "bmc*4.0*12".
 ;;  
 ;;###;NOTE: This line indicates the end of text in this message.
 ;
 ; -----------------------------------------------------
 ; The global location for dictionary audit is:
 ;           ^DD(FILE,0,"DDA")
 ; If the valuey is "Y", dd audit is on.  Any other value, or the
 ; absence of the node, means dd audit is off.
 ; -----------------------------------------------------
AUDS ;EP - From KIDS.
 D BMES^XPDUTL("Saving current DD AUDIT settings for files in this patch")
 D MES^XPDUTL("and turning DD AUDIT to 'Y'.")
 S ^XTMP("BMC4P12",0)=$$FMADD^XLFDT(DT,10)_"^"_DT_"^"_$P($P($T(+1),";",2)," ",3,99)
 NEW BMC
 S BMC=0
 F  S BMC=$O(^XTMP("XPDI",XPDA,"FIA",BMC)) Q:'BMC  D
 . I '$D(^XTMP("BMC4P12",BMC,"DDA")) S ^XTMP("BMC4P12",BMC,"DDA")=$G(^DD(BMC,0,"DDA"))
 . D MES^XPDUTL(" File "_$$RJ^XLFSTR(BMC,12)_" - "_$$LJ^XLFSTR(^XTMP("XPDI",XPDA,"FIA",BMC),30)_"- DD audit was '"_$G(^XTMP("BMC4P12",BMC,"DDA"))_"'"),MES^XPDUTL($$RJ^XLFSTR("Set to 'Y'",69))
 . S ^DD(BMC,0,"DDA")="Y"
 .Q
 D MES^XPDUTL("DD AUDIT settings saved in ^XTMP(.")
 Q
 ; -----------------------------------------------------
AUDR ; EP- KIDS ;Restore the file data audit values to their original values.
 D BMES^XPDUTL("Restoring DD AUDIT settings for files in this patch.")
 NEW BMC
 S BMC=0
 F  S BMC=$O(^XTMP("BMC4P12",BMC)) Q:'BMC  D
 . S ^DD(BMC,0,"DDA")=^XTMP("BMC4P12",BMC,"DDA")
 . D MES^XPDUTL(" File "_$$RJ^XLFSTR(BMC,12)_" - "_$$LJ^XLFSTR($$GET1^DID(BMC,"","","NAME"),30)_"- DD AUDIT Set to '"_^DD(BMC,0,"DDA")_"'")
 .Q
 KILL ^XTMP("BMC4P12")
 D MES^XPDUTL("DD AUDIT settings restored.")
 Q
 ; -----------------------------------------------------

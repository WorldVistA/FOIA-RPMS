BRNP04 ; IHS/OIT/GAB - PRE & POST INIT CODE FOR PATCH 4
 ;;2.0;IHS RELEASE OF INFORMATION;**4**;APR 10, 2003;Build 15
 ;IHS/OIT/GAB 09/07/16 PATCH 4 - ENVIRONMENT CHECK ROUTINE
 ;
 ;
 I '$G(IOM) D HOME^%ZIS
 I '$G(DUZ) W !,"DUZ UNDEFINED OR 0." S XPDQUIT=2 Q
 I '$L($G(DUZ(0))) W !,"DUZ(0) UNDEFINED OR NULL." S XPDQUIT=2 Q
 ;
 S X=$$GET1^DIQ(200,DUZ,.01)
 W !!,$$CJ^XLFSTR("Hello, "_$P(X,",",2)_" "_$P(X,","),IOM)
 W !!,$$CJ^XLFSTR("Checking Environment...",IOM)
 ;
 ;Prevents "Disable Options..." and "Move Routines..." questions
 S XPDDIQ("XPZ1")=0,XPPDIQ("XPZ2")=0
 S PKG="IHS RELEASE OF INFORMATION"
 ;
 ;CHECKS FOR REQUIRED VERSION AND PATCHES
 S VERS=$$VERSION^XPDUTL(PKG)
 W !," Checking for current version ..."
 I VERS<2 D
 . W !,"You must first install IHS RELEASE OF INFORMATION V2.0." S XPDQUIT=2
 I VERS="2.0" W !," You have version 2.0 ... "
 Q:(VERS<"2.0")
 ; CHECKS FOR CURRENT PATCH
 S PAT=$$LAST^XPDUTL(PKG,VERS)
 I PAT S PAT=$P(PAT,"^",1)
 W !!,"Checking for patch information ...."
 I PAT<3 D
 . W !, "You must first install IHS RELEASE OF INFORMATION v 2.0 patch 3" S XPDQUIT=2
 I (PAT>3)!(PAT=3) W !,"Last patch installed: ",PAT,!
 Q
 ;
 ;
POST ;EP; post init code from KIDS
 ;ADD ACCOUNTING OF DISCLOSURES OPTION (ACT);
 D BMES^XPDUTL("BEGIN Attaching Accounting of Disclosures option.")
 I $$ADD^XPDMENU("BRN MENU RPT","BRN ACCOUNTING OF DISCLOSURES","ACT") D MES^XPDUTL($J("",5)_"ACT Report added to ROI Report menu.") I 1
 E  D MES^XPDUTL($J("",5)_"ERROR: ACT option FAILED.")
 D MES^XPDUTL("END Attaching ACT menu.")
 Q

ADE60P33 ;IHS/OIT/GAB - ADE V 6.0 PATCH 33 [ 10/12/2018  2:35 PM ]
 ;;6.0;ADE*6.0*33;;March 25, 1999;Build 53
 ;;This patch contains calls to 4 ADE PATCH update routines and contains the
 ;;2019 ADA-CDT Code Updates /IHS/OIT/GAB 10/2018
ENV ;Environment check
 I '$G(IOM) D HOME^%ZIS
 ;
 I '$G(DUZ) W !,"YOUR DUZ VARIABLE IS UNDEFINED!! Please login with your Access & Verify." D SORRY(2) Q
 ;
 I '$L($G(DUZ(0))) W !,"Your DUZ(0) VARIABLE IS UNDEFINED OR NULL." D SORRY(2) Q
 ;
 I '(DUZ(0)["@") W:'$D(ZTQUEUED) !,"YOUR DUZ(0) VARIABLE DOES NOT CONTAIN AN '@'." D SORRY(2)
 Q
POST ;EP Post-Install
 ; only post for patch 33 - /IHS/OIT/GAB *33* 10/2018
 ; Add new, modify and delete ADA Codes
 N ADED,ADECNT,ADEVALUE
 D BMES^XPDUTL("Adding 2019 ADA-CDT Codes...")
 D ADDCDT33^ADE6P331
 D BMES^XPDUTL(" ...DONE")
 D BMES^XPDUTL("Adding 2019 ADA-CDT Description mods ...")
 D MODCDT33^ADE6P332
 D BMES^XPDUTL(" ...DONE")
 D BMES^XPDUTL("Inactivating ADA-CDT Dental Codes for 2019 ...")
 D DELCDT33^ADE6P333
 D BMES^XPDUTL("...DONE")
 Q
 ; ********************************************************************
SORRY(X) ;
 K DIFQ
 S XPDQUIT=X
 W *7,!,$$CJ^XLFSTR("Sorry....Please fix it.",40)
 Q

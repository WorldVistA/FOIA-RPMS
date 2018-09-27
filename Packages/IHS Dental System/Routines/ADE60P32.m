ADE60P32 ;IHS/OIT/GAB - ADE V 6.0 PATCH 32 [ 10/12/2017  2:35 PM ]
 ;;6.0;ADE*6.0*32;;March 25, 1999;Build 42
 ;;This patch contains calls to 4 ADE PATCH update routines and contains the
 ;;2018 ADA-CDT Code Updates /IHS/OIT/GAB 10/2017
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
 ; only post for patch 32 - /IHS/OIT/GAB *32* 10/2017
 ; Add new, modify and delete ADA Codes
 N ADED,ADECNT,ADEVALUE
 D BMES^XPDUTL("Adding 2018 ADA-CDT Codes...")
 D ADDCDT32^ADE6P321
 D BMES^XPDUTL(" ...DONE")
 D BMES^XPDUTL("Adding 2018 ADA-CDT Description mods ...")
 D MODCDT32^ADE6P322
 D BMES^XPDUTL(" ...DONE")
 D BMES^XPDUTL("Inactivating ADA-CDT Dental Codes for 2018 ...")
 D DELCDT32^ADE6P323
 D BMES^XPDUTL("...DONE")
 Q
 ; ********************************************************************
SORRY(X) ;
 K DIFQ
 S XPDQUIT=X
 W *7,!,$$CJ^XLFSTR("Sorry....Please fix it.",40)
 Q

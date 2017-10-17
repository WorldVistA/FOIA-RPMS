ADE60P31 ;IHS/OIT/GAB - ADE 6.0 PATCH 31 [ 09/09/2016  2:35 PM ]
 ;;6.0;ADE*6.0*31;;March 25, 1999;Build 28
 ;;This patch contains calls to 3 ADE PATCH 31 routines and contains the
 ;;2017 Dental Code Updates
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
 ; only post for patch 31 - /IHS/OIT/GAB 9/2016
 ; Add new, modify and delete ADA Codes
 N ADED,ADECNT,ADEVALUE
 D BMES^XPDUTL("Adding 2017 ADA-CDT Codes...")
 D ADDCDT5^ADE6P311
 D BMES^XPDUTL(" ...DONE")
 D BMES^XPDUTL("Adding 2017 ADA-CDT Mods ...")
 D MODCDT5^ADE6P312
 D BMES^XPDUTL(" ...DONE")
 D BMES^XPDUTL("Inactivating 2017 ADA-CDT Dental Codes ...")
 D DELCDT5^ADE6P313
 D BMES^XPDUTL("...DONE")
 Q
 ; ********************************************************************
SORRY(X) ;
 K DIFQ
 S XPDQUIT=X
 W *7,!,$$CJ^XLFSTR("Sorry....Please fix it.",40)
 Q

BJPC2P22 ; IHS/CMI/LAB - PCC Suite v2.0 
 ;;2.0;IHS PCC SUITE;**22**;MAY 14, 2009;Build 6
 ;
 ;
 ; The following line prevents the "Disable Options..." and "Move Routines..." questions from being asked during the install.
 I $G(XPDENV)=1 S (XPDDIQ("XPZ1"),XPDDIQ("XPZ2"))=0
 F X="XPO1","XPZ1","XPZ2","XPI1" S XPDDIQ(X)=0
 ;KERNEL
 I +$$VERSION^XPDUTL("XU")<8 D MES^XPDUTL($$CJ^XLFSTR("Version 8.0 of KERNEL is required.  Not installed",80)) D SORRY(2) I 1
 E  D MES^XPDUTL($$CJ^XLFSTR("Requires Kernel Version 8.0....Present.",80))
 ;FILEMAN
 I +$$VERSION^XPDUTL("DI")<22 D MES^XPDUTL($$CJ^XLFSTR("Version 22.0 of FILEMAN is required.  Not installed.",80)) D SORRY(2) I 1
 E  D MES^XPDUTL($$CJ^XLFSTR("Requires Fileman v22....Present.",80))
 I '$$INSTALLD("BJPC*2.0*21") D MES^XPDUTL($$CJ^XLFSTR("Requires bjpc V2.0 patch 21.  Not installed.",80)) D SORRY(2)
 I '$$INSTALLD("BCQM*1.0*4") D MES^XPDUTL($$CJ^XLFSTR("Requires BCQM V1.0 patch 4.  Not installed.",80)) D SORRY(2)
 ;
 Q
 ;
PRE ;
 Q
POST ;
 ;kill and reindex "AA" on patent refusals for service
 D MES^XPDUTL($$CJ^XLFSTR("Reindexing AA index on Patient Refusals file",80))
 K ^AUPNPREF("AA")
 S DIK="^AUPNPREF(",DIK(1)=".02^AA" D ENALL^DIK K DIK
 D CPTPROC
 Q
CPTPROC ;
 ;backfill snomed for updated/reviewed/exam and meas for 1 year
 S ZTIO=""
 S ZTRTN="CPTPROC1^BJPC2P22",ZTDTH=$$NOW^XLFDT,ZTDESC="BACKFILL V CPT/PROCEDURE SNOMED" D ^%ZTLOAD
 Q
CPTPROC1 ;
 ;D MES^XPDUTL($$CJ^XLFSTR("Backfilling SNOMED in V CPT and V Procedure..this may take up to 10 minutes..",80))
 S BJPCD=$$FMADD^XLFDT(DT,-(2*366)) ;go back about 2 year
 I BJPCD>3161231 S BJPCD=3161231.9999
 F  S BJPCD=$O(^AUPNVSIT("B",BJPCD)) Q:BJPCD=""  D
 .S BJPCV=0 F  S BJPCV=$O(^AUPNVSIT("B",BJPCD,BJPCV)) Q:BJPCV'=+BJPCV  D
 ..S BJPCX=0
 ..F  S BJPCX=$O(^AUPNVCPT("AD",BJPCV,BJPCX)) Q:BJPCX'=+BJPCX  D
 ...Q:'$D(^AUPNVCPT(BJPCX,0))
 ...S DA=BJPCX
 ...D CPT^AUPNMAP
 ...Q
 ..S BJPCX=0
 ..F  S BJPCX=$O(^AUPNVPRC("AD",BJPCV,BJPCX)) Q:BJPCX'=+BJPCX  D
 ...Q:'$D(^AUPNVPRC(BJPCX,0))
 ...S DA=BJPCX
 ...D PRC^AUPNMAP
 ..S BJPCX=0
 ..F  S BJPCX=$O(^AUPNVXAM("AD",BJPCV,BJPCX)) Q:BJPCX'=+BJPCX  D
 ...Q:'$D(^AUPNVXAM(BJPCX,0))
 ...S DA=BJPCX
 ...D EXAM^AUPNMAP
 Q
 ;
INSTALLD(BJPCSTAL) ;EP - Determine if patch BJPCSTAL was installed, where
 ; APCLSTAL is the name of the INSTALL.  E.g "AG*6.0*11".
 ;
 NEW BJPCY,DIC,X,Y
 S X=$P(BJPCSTAL,"*",1)
 S DIC="^DIC(9.4,",DIC(0)="FM",D="C"
 D IX^DIC
 I Y<1 D IMES Q 0
 S DIC=DIC_+Y_",22,",X=$P(BJPCSTAL,"*",2)
 D ^DIC
 I Y<1 D IMES Q 0
 S DIC=DIC_+Y_",""PAH"",",X=$P(BJPCSTAL,"*",3)
 D ^DIC
 S BJPCY=Y
 D IMES
 Q $S(BJPCY<1:0,1:1)
IMES ;
 D MES^XPDUTL($$CJ^XLFSTR("Patch """_BJPCSTAL_""" is"_$S(Y<1:" *NOT*",1:"")_" installed.",IOM))
 Q
SORRY(X) ;
 KILL DIFQ
 I X=3 S XPDQUIT=2 Q
 S XPDQUIT=X
 W *7,!,$$CJ^XLFSTR("Sorry....FIX IT!",IOM)
 Q
 ;

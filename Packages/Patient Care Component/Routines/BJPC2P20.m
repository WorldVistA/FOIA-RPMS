BJPC2P20 ; IHS/CMI/LAB - PCC Suite v2.0 P15 ; 31 Jan 2017  11:18 AM
 ;;2.0;IHS PCC SUITE;**20**;MAY 14, 2009;Build 25
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
 I '$$INSTALLD("BJPC*2.0*19") D MES^XPDUTL($$CJ^XLFSTR("Requires bjpc V2.0 patch 19.  Not installed.",80)) D SORRY(2)
 Q
 ;
PRE ;
 S DIU=9000010.16,DIU(0)="" D EN^DIU2 K DIU
 Q
POST ;
 D ADDMSR  ;add measurement to PCC MAN REPORTS VGEN MEASUREMENT TYPE
 S X=$$ADD^XPDMENU("APCDSUPER","APCD DELETE DUPE PT ED","DDPE",35)
 I 'X W !,"Attempt to add DUPLICATE PATIENT ED option failed.." H 3
 ;
 S DA=$O(^APCLACTG("B","PHN",0)) I DA S DIE="^APCLACTG(",DR=".04///1" D ^DIE K DA,DIE,DR
 ;FIX MEAS PANEL VU OR VC, TRANSFORM AND LENGTH
 NEW BJPCDA,BJPCDA1,X,M
 S BJPCDA=0 F  S BJPCDA=$O(^APCHSMPN(BJPCDA)) Q:BJPCDA'=+BJPCDA  D
 .S BJPCDA1=0 F  S BJPCDA1=$O(^APCHSMPN(BJPCDA,1,BJPCDA1)) Q:BJPCDA1'=+BJPCDA1  D
 ..S X=$P($G(^APCHSMPN(BJPCDA,1,BJPCDA1,0)),U,2)
 ..Q:'X
 ..S M=$P($G(^AUTTMSR(X,0)),U,1)
 ..I M'="VU",M'="VC" Q  ;VISION ONLY
 ..S $P(^APCHSMPN(BJPCDA,1,BJPCDA1,0),U,3)=17
 ..S ^APCHSMPN(BJPCDA,1,BJPCDA1,1)="S X=$$VCVU^AUPNVMSR(X,APCHSVNM)"
 ;
ER ;MOVE V ER .16 TO 1.01
 D MES^XPDUTL($$CJ^XLFSTR("Moving .16 of V ER to 1.01",80))
 S BJPCDA=0 F  S BJPCDA=$O(^AUPNVER(BJPCDA)) Q:BJPCDA'=+BJPCDA  D
 .S BJPCX=$$VAL^XBDIQ1(9000010.29,BJPCDA,.16)
 .Q:BJPCX=""
 .S DIE="^AUPNVER(",DA=BJPCDA,DR="1.01///"_BJPCX D ^DIE K DA,DIE,DR
 .Q
VPED ;REINDEX APRB, APRV ON V PATIENT ED
 D MES^XPDUTL($$CJ^XLFSTR("Reindexing APRB and APRV on V Patient ED",80))
 K ^AUPNVPED("APRB")
 K ^AUPNVPED("APRV")
 S DIK="^AUPNVPED(",DIK(1)="1103^APRB^APRV" D ENALL^DIK K DIK
 Q
ADDMSR ;-add the measurement type
 N I
 F I="BMI","BMIP" D ADDM(I)
 Q
 ;
ADDM(MSR) ;-- add it here
 N FDA,FIENS,FERR,MSRI,MIEN
 N WFIENS,WFERR,WFROOT,WP
 S MSRI=$O(^AUTTMSR("B",MSR,0))
 Q:'MSRI
 Q:$O(^APCLVGMS("B",MSRI,0))
 S FIENS="+1,"
 S FDA(9001003.71,FIENS,.01)=MSRI
 S FDA(9001003.71,FIENS,.02)=1
 D UPDATE^DIE("","FDA","FIENS","FERR(1)")
 I $D(FERR(1)) Q
 S MIEN=$G(FIENS(1))
 S ^APCLVGMS(MIEN,2)="K:X'[""-"" X I $D(X) D NUMIP^APCLVL03"
 S WFIENS=MIEN_","
 I MSR="BMI" D BMIH
 I MSR="BMIP" D BMIPH
 D WP^DIE(9001003.71,WFIENS,1,,"BJPCH")
 K BJPCH
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
BMIH ;-bmi help
 K BJPCH
 S BJPCH(1)="Enter a range of BMI  values to search for.  Enter the range in the "
 S BJPCH(2)="format nnn-nnn.  For example, to search for all BMI measurements with "
 S BJPCH(3)="a value of 20-30 enter 20-30."
 Q
 ;
BMIPH ;-bmip help
 K BJPCH
 S BJPCH(1)="Enter a range of BMIP values to search for.  Enter the range in the "
 S BJPCH(2)="format nnn-nnn (decimal digits are allowed)."
 S BJPCH(3)=" For example, to search for all BMIP measurements with"
 S BJPCH(4)="a value of 50-60 enter 50-60."
 Q
 ;

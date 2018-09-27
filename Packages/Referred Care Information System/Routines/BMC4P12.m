BMC4P12 ;IHS/OIT/FCJ - BMC 4.0 PATCH 12 ; 16 Feb 2011  2:54 PM
 ;;4.0;REFERRED CARE INFO SYSTEM;**12**;JAN 09, 2006;Build 92
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
 I $$VCHK^BMC4P12("AICD","4.0",2,"<")
 I '$$INSTALLD("AG*7.1*11") S BMCQUIT=2 D SORRY(BMCQUIT)
 I '$$INSTALLD("AUPN*99.1*16") S BMCQUIT=2 D SORRY(BMCQUIT)
 I '$$INSTALLD("ATX*5.1*5") S BMCQUIT=2 D SORRY(BMCQUIT)
 I '$$INSTALLD("AUT*98.1*26") S BMCQUIT=2 D SORRY(BMCQUIT)
 I '$$INSTALLD("LEX*2.0*1003") S BMCQUIT=2 D SORRY(BMCQUIT)
 I '$$INSTALLD("OR*3.0*190") S BMCQUIT=2 D SORRY(BMCQUIT)
 I $$VCHK("BSTS","1.0",2,"'=")
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
 ;
PRE ;EP - From KIDS.
 I $$NEWCP^XPDUTL("PRE1","AUDS^BMC4E")
 ; The following line prevents the "Disable Options..." and "Move
 ; Routines..." questions from being asked during the install.
 I $G(XPDENV)=1 S (XPDDIQ("XPZ1"),XPDDIQ("XPZ2"))=0
 Q
 ;
POST ;EP - From KIDS.
 ;Add BUSA entries
 I $D(^BUSA(9002319.03,0)) D
 . ;BMC ADD REFERRAL
 . I $O(^BUSA(9002319.03,"B","BMC ADD REFERRAL",""))="" D
 .. NEW DIC,X,DLAYGO,Y,DTOUT,DIRUT,DUOUT,BUSAUPD,DA,ERROR
 .. S DIC(0)="L",DIC="^BUSA(9002319.03,"
 .. L +^BUSA(9002319.03,0):1 E  Q
 .. S X="BMC ADD REFERRAL",DLAYGO=9002319.03
 .. K DO,DD D FILE^DICN
 .. L -^BUSA(9002319.03,0)
 .. I +Y<0 Q
 .. S DA=+Y
 .. S BUSAUPD(9002319.03,DA_",",.02)="P",BUSAUPD(9002319.03,DA_",",.03)="A"
 .. S BUSAUPD(9002319.03,DA_",",.06)="S X=""BMC: Created patient referral"""
 .. S BUSAUPD(9002319.03,DA_",",1.01)="I~2",BUSAUPD(9002319.03,DA_",",2.01)="I~32"
 .. D FILE^DIE("","BUSAUPD","ERROR")
 . ;BMC UPDATE REFERRAL
 . I $O(^BUSA(9002319.03,"B","BMC UPDATE REFERRAL",""))="" D
 .. NEW DIC,X,DLAYGO,Y,DTOUT,DIRUT,DUOUT,BUSAUPD,DA,ERROR
 .. S DIC(0)="L",DIC="^BUSA(9002319.03,"
 .. L +^BUSA(9002319.03,0):1 E  Q
 .. S X="BMC UPDATE REFERRAL",DLAYGO=9002319.03
 .. K DO,DD D FILE^DICN
 .. L -^BUSA(9002319.03,0)
 .. I +Y<0 Q
 .. S DA=+Y
 .. S BUSAUPD(9002319.03,DA_",",.02)="P",BUSAUPD(9002319.03,DA_",",.03)="E"
 .. S BUSAUPD(9002319.03,DA_",",.06)="S X=""BMC: Update patient referral"""
 .. S BUSAUPD(9002319.03,DA_",",1.01)="I~1"
 .. S BUSAUPD(9002319.03,DA_",",1.02)="S X=$$GET1~DIQ(90001,X_"","",.03,""I"")"
 .. S BUSAUPD(9002319.03,DA_",",2.01)="I~1"
 .. S BUSAUPD(9002319.03,DA_",",2.02)="S X=$$GET1~DIQ(90001,X_"","",1309,""I"")"
 .. D FILE^DIE("","BUSAUPD","ERROR")
 ;
 ; --- Restore dd audit settings.
 S %="AUDR^BMC4E"
 I $$NEWCP^XPDUTL("POS1-"_%,%)
 ; --- Set new Index "BA" and "BB"
 S %="INDX^BMC4P12"
 I $$NEWCP^XPDUTL("POS2-"_%,%)
 ; --- Add Provider/Vendor Option
 S %="P5^BMC4P12"
 I $$NEWCP^XPDUTL("POS3-"_%,%)
 ; --- Add MED HX Opt and fx CHS 2010 PO #'s
 S %="P6^BMC4P12"
 I $$NEWCP^XPDUTL("POS4-"_%,%)
 ; --- Add Opt-printing C32s for Active referrals
 S %="P7^BMC4P12"
 I $$NEWCP^XPDUTL("POS5-"_%,%)
 ; --- Add Opt-TOC and Edit option for TOC
 S %="P8^BMC4P12"
 I $$NEWCP^XPDUTL("POS6-"_%,%)
 ; ---Re-Add Options, removed because a parent opt sent
 S %="P9^BMC4P12"
 I $$NEWCP^XPDUTL("POS8-"_%,%)
 ; ---Remove CHS PAID from GEN RET
 S %="P10^BMC4P12"
 I $$NEWCP^XPDUTL("POS9-"_%,%)
 ; ---Remove clinic field from V ref file
 S %="P10VR^BMC4P12"
 I $$NEWCP^XPDUTL("POS10-"_%,%)
 ; ---Reformat comments to 80 char in RCIS Comments file
 S %="P10COM^BMC4P12"
 I $$NEWCP^XPDUTL("POS11-"_%,%)
 ; ---New Opt and fix of V Ref file
 S %="P12^BMC4P12"
 I $$NEWCP^XPDUTL("POS12-"_%,%)
 ; --- Send mail message of install.
 S %="MAIL^BMC4E"
 I $$NEWCP^XPDUTL("POS13-"_%,%)
 Q
 ;
INDX ;INDEX NEW INDECIES "BA", "BB" AND "CD" ;Patch 2
 S BMC="BMC*4.0*2" Q:$$INSTALLD^BMC4P0(BMC)
 D BMES^XPDUTL("BEGIN Indexing Expected Begining Date of Service.")
 S DIK="^BMCREF("
 S DIK(1)="1105^BA"
 D ENALL^DIK
 D BMES^XPDUTL("BEGIN Indexing Appointment/begin DOS.")
 S DIK(1)="1106^BB"
 D ENALL^DIK
 D BMES^XPDUTL("BEGIN Indexing CHS Denial Number.")
 S DIK(1)="1128^CD"
 D ENALL^DIK
 D BMES^XPDUTL("Completed updating new indexes.")
 K DA,DIC,DIK,X
 Q
P5 ;Add Opt for Vendor
 S BMC="BMC*4.0*5" Q:$$INSTALLD^BMC4P0(BMC)
 D BMES^XPDUTL("Begin adding new Provider/Vendor option.")
 I $$ADD^XPDMENU("BMCMENU","BMCVEN","VEN") D MES^XPDUTL($J("",5)_"Provider/Vendor add/edit Menu added to RCIS Main Menu")
 D MES^XPDUTL("END updating option.")
 Q
P6 ;FX CHS PO'S WITH FY 00 INSTEAD OF FY 10
 S BMC="BMC*4.0*6" Q:$$INSTALLD^BMC4P0(BMC)
 D MES^XPDUTL("Updating CHS 2010 PO Numbers.")
 S BMC=3090900 F  S BMC=$O(^BMCREF("B",BMC)) Q:BMC'?1N.N  D
 .S BMC1="" F  S BMC1=$O(^BMCREF("B",BMC,BMC1)) Q:BMC1'?1N.N  D
 ..I $D(^BMCREF(BMC1,41)) S BMC2=0 F  S BMC2=$O(^BMCREF(BMC1,41,BMC2)) Q:BMC2'?1N.N  D
 ...S BMCPO=$P(^BMCREF(BMC1,41,BMC2,0),U,8)
 ...I $E(BMCPO,1,2)="00",$L(BMCPO)=12 D
 ....S $P(^BMCREF(BMC1,41,BMC2,0),U,8)="10"_$E(BMCPO,3,12)
 ....S $P(^BMCREF(BMC1,41,BMC2,11),U)=10
 D BMES^XPDUTL("Begin adding option for Adding Med Hx comments.")
 I $$ADD^XPDMENU("BMC MENU EDIT REFERRAL","BMC MED HX COMMENTS","MED") D MES^XPDUTL($J("",5)_"Enter Medical Hx Comments Menu added to RCIS Edit Menu")
 D MES^XPDUTL("END updating option.")
 Q
P7 ;Add Report opt for the printed C32
 S BMC="BMC*4.0*7" Q:$$INSTALLD^BMC4P0(BMC)
 D BMES^XPDUTL("Begin adding option for Active referrals without a printed C32.")
 I $$ADD^XPDMENU("BMC MENU-RPTS ADMINISTRATIVE","BMC RPT-ACTIVE REFERRALS-C32","ARC") D MES^XPDUTL($J("",5)_"Report for Active ref w/o a C32 Menu added to Adm Report option")
 D MES^XPDUTL("END updating option.")
 Q
P8 ;Add Report TOC Opt and Edit TOC Opt
 S BMC="BMC*4.0*8" Q:$$INSTALLD^BMC4P0(BMC)
 D BMES^XPDUTL("Begin adding option for TOC Report for Approved referrals pending a TOC document.")
 I $$ADD^XPDMENU("BMC MENU-RPTS ADMINISTRATIVE","BMC RPT-APPRV REF TOC PENDING","TOCR") D MES^XPDUTL($J("",5)_"Report for Approved ref w/o a TOC option added to Adm Report option")
 D BMES^XPDUTL("Begin adding Edit option for TOC Information.")
 I $$ADD^XPDMENU("BMC MENU EDIT REFERRAL","BMC MOD TOC","TOC") D MES^XPDUTL($J("",5)_"Edit Option for TOC information for Approved Referrals.")
 D MES^XPDUTL("END updating option.")
 ;
PCCLNK  ;Add RCIS to PCC Visit Merge Utility
 ;NEW INDEX NEED TO REINDEX FOR BETA SITES
 S DIK="^BMCREF(",DIK(1)="1309^VSTR" D ENALL^DIK K DIK
 I $D(^APCDLINK("B","REFERRED CARE INFORMATION SYST")) D  ;already exists
 .S DA=0,DA=$O(^APCDLINK("B","REFERRED CARE INFORMATION SYST",DA))
 .S DIE="^APCDLINK(",DR=".01///REFERRED CARE INFORMATION SYS;1///I $L($T(MRG^BMCPCCV))"
 .D ^DIE K DIE,DA,DR
 Q:$D(^APCDLINK("B","REFERRED CARE INFORMATION SYS"))  ;already exists
 D BMES^XPDUTL("Adding RCIS to PCC Visit Merge Utility . . .")
 NEW DD,DO,DIC,DLAYGO,X,Y
 S DIC="^APCDLINK(",DIC(0)="LE",DLAYGO=9001002
 S DIC("DR")=".02///BMC;1///I $L($T(MRG^BMCPCCV)) D MRG^BMCPCCV;3///I $L($T(DEL^BMCPCCV)) D DEL^BMCPCCV"
 S X="REFERRED CARE INFORMATION SYS" D FILE^DICN
 Q
P9 ;Add Report Opt
 S BMC="BMC*4.0*9" ;Q:$$INSTALLD^BMC4P0(BMC)
 D MES^XPDUTL("Begin updating Special Print Menu option.")
 I $$ADD^XPDMENU("BMC MENU SPECIAL","BMC DISPLAY REFERRAL RECORD","DSP")
 I $$ADD^XPDMENU("BMC MENU SPECIAL","BMC PRINT REFERRAL FORMS","PRF")
 I $$ADD^XPDMENU("BMC MENU SPECIAL","BMC PRINT ROUTING SLIP","PRS")
 I $$ADD^XPDMENU("BMC MENU SPECIAL","BMC MENU-PRINT REPORTS","RPT")
 D MES^XPDUTL("END updating Special Print Menu option.")
 Q
P10 ;Patch 10
 ;S BMC="BMC*4.0*10" Q:$$INSTALLD^BMC4P0(BMC)
 ;Delete GEN RET option 99.1 CHS Paid To Date
 NEW DA,DIE,DIC,DR
 S X="CHS Paid To Date",(DIC,DIE)="^BMCTSORT(",DR=".01////"_"@"
 D ^DIC
 I +Y<0 D BMES^XPDUTL("Unable to remove CHS Paid To Date from Gen Ret items . . .")
 S DA=+Y
 D ^DIE
 D BMES^XPDUTL("CHS Paid To Date removed from Gen Ret items . . .")
 Q
 ;
P10VR ;Clean up clinic stop in V Referral file
 S BMC="BMC*4.0*10" Q:$$INSTALLD^BMC4P0(BMC)
 NEW DA,DIE,DIC,DR
 S DA=0
 S DIE="^AUPNVREF(",DR="1203////"_"@"
 F  S DA=$O(^AUPNVREF(DA)) Q:DA'?1N.N  D:$P($G(^AUPNVREF(DA,12)),U,3)'=""
 .D ^DIE
 D BMES^XPDUTL("Completed clean up of clinic stop field in V Referral file . . .")
 Q
P10COM ;Clean up of comments file
 S BMC="BMC*4.0*10" Q:$$INSTALLD^BMC4P0(BMC)
 NEW DA,DIE,DIC,DR
 S BEGDT=3130100
 F  S BEGDT=$O(^BMCCOM("B",BEGDT)) Q:BEGDT'?1N.N  D
 .S DA=0
 .F  S DA=$O(^BMCCOM("B",BEGDT,DA)) Q:DA'?1N.N  D
 ..Q:'$D(^BMCCOM(DA,1,0))
 ..S DA(1)=0,FLG=0 F  S DA(1)=$O(^BMCCOM(DA,1,DA(1))) Q:DA(1)'?1N.N  I $L(^BMCCOM(DA,1,DA(1),0))>80 S FLG=1
 ..Q:FLG'=1
 ..S DA(1)=0 F  S DA(1)=$O(^BMCCOM(DA,1,DA(1))) Q:DA(1)'?1N.N  D
 ...S ^BMCCOMT(DA,1,DA(1),0)=^BMCCOM(DA,1,DA(1),0)
 ..S ^BMCCOMT(DA,1,0)=^BMCCOM(DA,1,0),BMCDA=(DA(1)-1)
 ..K ^BMCCOM(DA,1)
 ..S BMCDA=0,BMCDA2=0
 ..F  S BMCDA=$O(^BMCCOMT(DA,1,BMCDA)) Q:BMCDA'?1N.N  D
 ...S BMCCOM=^BMCCOMT(DA,1,BMCDA,0)
 ...S L=($L(BMCCOM)/80) I L#1>0 S L=L+1
 ...S (LGTH,LGTH2)=0 F I=1:1:L D
 ....S LGTH=LGTH2+1,BMCDA2=BMCDA2+1,LGTH2=80*BMCDA2 S ^BMCCOM(DA,1,BMCDA2,0)=$E(BMCCOM,LGTH,LGTH2)
 ...S ^BMCCOM(DA,1,0)=^BMCCOMT(DA,1,0),$P(^BMCCOM(DA,1,0),U,2,4)="90001.031"_U_BMCDA2_U_BMCDA2
 K L,LGTH,LGHT2,BMCDA,BMCDA2,BMCCOM,FLG,BEGDT,CT
 D BMES^XPDUTL("Completed clean up RCIS Comments file . . .")
 Q
 ;
P12 ;Add Report Opt and Call-in options 
 ;S BMC="BMC*4.0*12" Q:$$INSTALLD^BMC4P0(BMC)
 D BMES^XPDUTL("Begin adding option for CHS Paid Report.")
 I $$ADD^XPDMENU("BMC MENU-RPTS ADMINISTRATIVE","BMC RPT-CHS ONLY PAID","CHSP") D MES^XPDUTL($J("",5)_"Report for CHS Paid Referrals option added to Adm Report option")
 D BMES^XPDUTL("Begin adding Edit option for Call-in Referrals.")
 I $$ADD^XPDMENU("BMC MENU REFERRAL MANAGEMENT","BMC CALL-IN REFERRAL EDIT","CIN") D MES^XPDUTL($J("",5)_"Edit Call in Referrals added to Referral Management Menu.")
 D MES^XPDUTL("END updating option.")
VREF ;CLEAN UP V REF FILE
 G:$G(^AUPNVREF(0)) ZPAR
 D BMES^XPDUTL("Updating V Referral file.")
 ;FIX TO STUFF 1202 OF V REFERRAL WITH REQUESTING PROVIDER FROM RCIS REFERRAL ENTRY
 ;NULL OUT 1210 FIELD VALUE
 ;MOVE AND CORRECT V REFERRAL INFO BASED ON REFERRAL ENTRY
 NEW APCDVREF,APCDREF,APCDRP,BMCVDFN,BMCVPRV
 S APCDVREF=0 F  S APCDVREF=$O(^AUPNVREF(APCDVREF)) Q:APCDVREF'=+APCDVREF  D
 .S APCDREF=$$VALI^XBDIQ1(9000010.59,APCDVREF,.06)
 .Q:APCDREF=""  ;NO REFERRAL IEN
 .Q:'$D(^BMCREF(APCDREF,0))  ;no referral??
 .S APCDRP=$$VALI^XBDIQ1(90001,APCDREF,.06)  ;REQUESTING PROVIDER IEN
 .S (BMCVDFN,BMCVPRV)="",BMCVDFN=$$VALI^XBDIQ1(90001,APCDREF,1309) I BMCVDFN S BMCVPRV=$$PRIMPROV^APCLV(BMCVDFN,"I")
 .S DIE="^AUPNVREF(",DA=APCDVREF
 .I APCDRP S DR="1210///@;1202////"_APCDRP
 .I 'APCDRP S DR="1210///@;1202///@"
 .I BMCVPRV S DR=DR_";1204////"_BMCVPRV     ;SET PROV ENCOUNTER
 .D ^DIE
 .I $D(Y) D EN^DDIOL("failure to update v referral "_APCDVREF)
 .K DIE,DA,DR
 D BMES^XPDUTL("Completed Updating V Referral file.")
ZPAR ;ADD ENTRY TO ZISH PARAMETER FILE
 D BMES^XPDUTL("Adding entry to Zish Send Parameter file.")
 S X="BMC RCIS REPORTS",DIC="^%ZIB(9888888.93,",DIC(0)="L"
 D ^DIC
 I Y<0 W !,"ZISH SEND PARAMETER FOR THE BMC RCIS REPORTS ENTRY COULD NOT BE ADDED, YOU WILL NEED ADD THROUGH FILEMAN" G GENRET
 S DA=+Y,DIE=DIC
 S DR=".07////"_"B"_";.08////"_"sendto"
 D ^DIE
 K D,D0,D1,DI,DIADD,DIC,DICR,DIE,DLAYGO,DQ,DR,DINUM,DA
 D BMES^XPDUTL("Completed adding Entry to Zish Send Parameter file.")
 ;
GENRET ;UPDATE GEN RET OPTIONS
 D BMES^XPDUTL("Updating items for the Gen Ret Report option.")
 NEW DA,DIE,DIC,DR
 S X="Service Category (CPT)",(DIC,DIE)="^BMCTSORT(",DR=".01////Service Cat HCPCS/CPT"
 D ^DIC I +Y>0 S DA=+Y D ^DIE K DR
 S X="Util Review Committee",DR=".09////952"
 D ^DIC I +Y>0 S DA=+Y D ^DIE K DR
 S X="Mgd Care Committee",DR=".09////950"
 D ^DIC I +Y>0 S DA=+Y D ^DIE K DR
 S X="DT Mgd Care Action",DR=".09////951"
 D ^DIC I +Y>0 S DA=+Y D ^DIE K DR
 S X="Site Created by" D ^DIC I +Y<0 S DIC(0)="L" D
 .D ^DIC S DA=+Y
 .S DR=".02////R;.04////90001.31,.01;.05////S;.06////Site Created by;.07////20;.09////999;.11////R;"
 .S DR=DR_"1////S X=$$FACREQ^BMCRLU1(BMCREF);2////S X=$P(^DIC(4,BMCY,0),U)"
 .D ^DIE
 D BMES^XPDUTL("Completed updating items for the Gen Ret option . . .")
 K DA,DIE,DIC,DR
 Q

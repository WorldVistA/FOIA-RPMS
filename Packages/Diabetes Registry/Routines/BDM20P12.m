BDM20P12 ; IHS/CMI/LAB - BDM V2.0 patch 11 environment check 
 ;;2.0;DIABETES MANAGEMENT SYSTEM;**12**;JUN 14, 2007;Build 51
 ;
 ;
 ; The following line prevents the "Disable Options..." and "Move
 ; Routines..." questions from being asked during the install.
 I $G(XPDENV)=1 S (XPDDIQ("XPZ1"),XPDDIQ("XPZ2"))=0
 F X="XPO1","XPZ1","XPZ2","XPI1" S XPDDIQ(X)=0
 I '$$INSTALLD("BDM*2.0*11") D SORRY(2)
 I +$$VERSION^XPDUTL("BGP")<18.1 D MES^XPDUTL($$CJ^XLFSTR("Version 18.1 of the IHS CLINICAL REPORTING is required.  Not installed.",80)) D SORRY(2) I 1
 I '$$INSTALLD("ATX*5.1*26") D SORRY(2)
 ;
 Q
 ;
PRE ;
 S BDMX=0 F  S BDMX=$O(^BDMRECD(BDMX)) Q:BDMX'=+BDMX  S DA=BDMX,DIK="^BDMRECD(" D ^DIK
 S BDMX=0 F  S BDMX=$O(^BDMDMTX(BDMX)) Q:BDMX'=+BDMX  S DA=BDMX,DIK="^BDMDMTX(" D ^DIK
 S BDMX=0 F  S BDMX=$O(^BDMTAXS(BDMX)) Q:BDMX'=+BDMX  S DA=BDMX,DIK="^BDMTAXS(" D ^DIK
 S BDMX=0 F  S BDMX=$O(^BDMSNME(BDMX)) Q:BDMX'=+BDMX  S DA=BDMX,DIK="^BDMSMME(" D ^DIK
 Q
POST ;
 D ^BDMDGZ
 NEW DA,DIE
 S DA=$O(^ACM(58.1,"B","Private Insurance Eligibility",0))
 I DA S DIE="^ACM(58.1,",DR=".12///Prvt Ins Eligibility" D ^DIE K DA,DIE,DR
 D BMXPO
 ;CREATE DM AUDIT ANTIPLT/ANTICOAG RX taxonomy, copy DM AUDIT ANTIPLATELET THERAPY
 D MEDTAX
 ;D TBHLTH
 D BUILDSML^BDMUTL(2019)
 Q
 ;
INSTALLD(BDMSTAL) ;EP - Determine if patch BDMSTAL was installed, where
 ; APCLSTAL is the name of the INSTALL.  E.g "AG*6.0*11".
 ;
 NEW BDMY,DIC,X,Y
 S X=$P(BDMSTAL,"*",1)
 S DIC="^DIC(9.4,",DIC(0)="FM",D="C"
 D IX^DIC
 I Y<1 D IMES Q 0
 S DIC=DIC_+Y_",22,",X=$P(BDMSTAL,"*",2)
 D ^DIC
 I Y<1 D IMES Q 0
 I $P(BDMSTAL,"*",3)="" D IMES Q 1
 S DIC=DIC_+Y_",""PAH"",",X=$P(BDMSTAL,"*",3)
 D ^DIC
 S BDMY=Y
 D IMES
 Q $S(BDMY<1:0,1:1)
IMES ;
 D MES^XPDUTL($$CJ^XLFSTR("Patch """_BDMSTAL_""" is"_$S(Y<1:" *NOT*",1:"")_" installed.",IOM))
 Q
SORRY(X) ;
 KILL DIFQ
 I X=3 S XPDQUIT=2 Q
 S XPDQUIT=X
 W *7,!,$$CJ^XLFSTR("Sorry....FIX IT!",IOM)
 Q
 ;
MEDTAX ;EP set up drug taxonomies
 S ATXFLG=1
 S BDMNDCT="",BDMTAX=""
 S BDMX="DM AUDIT ANTIPLT/ANTICOAG RX",BDMPG="BDM,APCH,APCL" D DRUG1
 NEW BDMN,BDMO
 S BDMN=$O(^ATXAX("B","DM AUDIT ANTIPLT/ANTICOAG RX",0))
 S BDMO=$O(^ATXAX("B","DM AUDIT ANTI-PLATELET DRUGS",0))
 I 'BDMO!('BDMN) Q
 M ^ATXAX(BDMN,21)=^ATXAX(BDMO,21)
 S DA=BDMN,DIK="^ATXAX(" D IX1^DIK
 Q
 ;
DRUG1 ;
 S BDMTX=$O(^ATXAX("B",BDMX,0))
 I 'BDMTX D  Q:Y=-1
 .D MES^XPDUTL("Creating "_BDMX_" taxonomy")
 .S X=BDMX,DIC="^ATXAX(",DIC(0)="L",DIADD=1,DLAYGO=9002226 D ^DIC K DIC,DA,DIADD,DLAYGO,I
 .I Y=-1 W !!,"ERROR IN CREATING ",BDMX," TAX" Q
 .S BDMTX=+Y,$P(^ATXAX(BDMTX,0),U,2)=BDMX,$P(^(0),U,8)=0,$P(^(0),U,9)=DT,$P(^(0),U,12)=173,$P(^(0),U,13)=0,$P(^(0),U,15)=50,$P(^(0),U,22)=0,$P(^(0),U,4)="n",^ATXAX(BDMTX,21,0)="^9002226.02101A^0^0"
 S DA=BDMTX,DIK="^ATXAX(" D IX1^DIK
 D MES^XPDUTL("Updating "_BDMX_" taxonomy")
 I $G(BDMTAX)]"" D
 .S A=0,B="" F  S A=$O(^ATXAX(BDMTX,21,A)) Q:A'=+A  S B=A
 .S BDMC=B
 .S ^ATXAX(BDMTX,21,0)="^9002226.02101A^"_B_U_B
 .S Z=$O(^ATXAX("B",BDMTAX,0))
 .S J=0 F  S J=$O(^PSDRUG(J)) Q:J'=+J  S C=$P($G(^PSDRUG(J,0)),U,2) I C]"",$D(^ATXAX(Z,21,"B",C)) D
 ..Q:$D(^ATXAX(BDMTX,21,"B",J))
 ..S BDMC=BDMC+1,^ATXAX(BDMTX,21,BDMC,0)=J_U_J
 I $G(BDMNDCT)]"" D
 .S A=0,B="" F  S A=$O(^ATXAX(BDMTX,21,A)) Q:A'=+A  S B=A
 .S BDMC=B
 .S ^ATXAX(BDMTX,21,0)="^9002226.02101A^"_B_U_B
 .S Z=$O(^ATXAX("B",BDMNDCT,0))
 .S J=0 F  S J=$O(^PSDRUG(J)) Q:J'=+J  S C=$P($G(^PSDRUG(J,2)),U,4) I C]"",$D(^ATXAX(Z,21,"B",C)) D
 ..Q:$D(^ATXAX(BDMTX,21,"B",J))
 ..S BDMC=BDMC+1,^ATXAX(BDMTX,21,BDMC,0)=J_U_J
 S DA=BDMTX,DIK="^ATXAX(" D IX1^DIK
 Q
 ;
LABTAX ;EP
 S BDMX="DM AUDIT 2 HR GTT TAX",BDMPG="BDM,APCL,APCH",BDMAP=0 D LAB1
 S BDMX="DM AUDIT 75GM 2HR GLUCOSE",BDMPG="BDM,APCL,APCH",BDMAP=0 D LAB1
 S BDMX="DM AUDIT A/C RATIO TAX",BDMPG="BDM,APCL,BGP,APCH",BDMAP=0 D LAB1
 S BDMX="DM AUDIT AST TAX",BDMPG="BDM,APCL,BGP,APCH",BDMAP=0 D LAB1
 S BDMX="DM AUDIT ALT TAX",BDMPG="BDM,APCL,BGP,APCH",BDMAP=0 D LAB1
 S BDMX="DM AUDIT CHOLESTEROL TAX",BDMPG="BDM,APCL,BGP,APCH",BDMAP=0 D LAB1
 S BDMX="DM AUDIT CREATININE TAX",BDMPG="BDM,APCL,BGP,APCH",BDMAP=0 D LAB1
 S BDMX="DM AUDIT FASTING GLUCOSE TESTS",BDMPG="BDM,APCL,BGP,APCH",BDMAP=0 D LAB1
 S BDMX="DM AUDIT GLUCOSE TESTS TAX",BDMPG="BDM,APCL,BGP,APCH",BDMAP=0 D LAB1
 S BDMX="DM AUDIT HDL TAX",BDMPG="BDM,APCL,BGP,APCH",BDMAP=0 D LAB1
 S BDMX="DM AUDIT HGB A1C TAX",BDMPG="BDM,APCL,BGP,APCH",BDMAP=0 D LAB1
 S BDMX="DM AUDIT LDL CHOLESTEROL TAX",BDMPG="BDM,APCL,BGP,APCH",BDMAP=0 D LAB1
 S BDMX="DM AUDIT MICROALBUMINURIA TAX",BDMPG="BDM,APCL,BGP,APCH",BDMAP=0 D LAB1
 S BDMX="DM AUDIT P/C RATIO TAX",BDMPG="BDM,APCL,APCH",BDMAP=0 D LAB1
 S BDMX="DM AUDIT TRIGLYCERIDE TAX",BDMPG="BDM,APCL,BGP,APCH",BDMAP=0 D LAB1
 S BDMX="DM AUDIT URINALYSIS TAX",BDMPG="BDM,APCL,BGP,APCH",BDMAP=1 D LAB1
 S BDMX="DM AUDIT URINE PROTEIN TAX",BDMPG="BDM,APCL,BGP,APCH",BDMAP=0 D LAB1
 S BDMX="DM AUDIT SEMI QUANT UACR",BDMPG="BDM,APCL,APCH",BDMAP=0 D LAB1
 S BDMX="DM AUDIT TB LAB TESTS",BDMPG="BDM",BDMAP=0 D LAB1
 S BDMX="DM AUDIT 24HR URINE PROTEIN",BDMPG="BDM",BDMAP=0 D LAB1
 S BDMX="DM AUDIT NON-HDL TESTS",BDMPG="BDM",BDMAP=0 D LAB1
 S BDMX="DM AUDIT QUANT UACR",BDMPG="BDM",BDMAP=0 D LAB1
 Q
 ;
BMXPO ;-- update the RPC file
 N BDMRPC
 S BDMRPC=$O(^DIC(19,"B","BDMGRPC",0))
 Q:'BDMRPC
 D CLEAN(BDMRPC)
 D GUIEP^BMXPO(.RETVAL,BDMRPC_"|BDM")
 D GUIEP^BMXPO(.RETVAL,BDMRPC_"|ATX")
 Q
 ;
BMXSCH  ;--add the search template schema
 Q:$O(^BMXADO("B","CMI VIEW SORT TEMPLATE",0))
 N FDA,FIENS,FERR
 S FDA(90093.99,"+1,",.01)="CMI VIEW SORT TEMPLATE"
 S FDA(90093.99,"+1,",.02)=.401
 S FDA(90093.991,"+2,+1,",.01)=.01
 S FDA(90093.991,"+2,+1,",.02)="T"
 S FDA(90093.991,"+2,+1,",.03)=80
 S FDA(90093.991,"+2,+1,",.04)="TEMPLATE"
 D UPDATE^DIE("","FDA","FIENS","FERR(1)")
 Q
 ;
CLEAN(APP) ;-- clean out the RPC multiple first
 S DA(1)=APP
 S DIK="^DIC(19,"_DA(1)_","_"""RPC"""_","
 N AMHDA
 S AMHDA=0 F  S AMHDA=$O(^DIC(19,APP,"RPC",AMHDA)) Q:'AMHDA  D
 . S DA=AMHDA
 . D ^DIK
 K ^DIC(19,APP,"RPC","B")
 Q
 ;
LAB1 ;
 S BDMDC=$O(^ATXLAB("B",BDMX,0))
 I BDMDC G UP41   ;taxonomy already exists
 W !,"Creating ",BDMX," Taxonomy..."
 S X=BDMX,DIC="^ATXLAB(",DIC(0)="L",DIADD=1,DLAYGO=9002228 D ^DIC K DIC,DA,DIADD,DLAYGO,I
 I Y=-1 W !!,"ERROR IN CREATING ",BDMX," TAX" Q
 S BDMDC=+Y,$P(^ATXLAB(BDMDC,0),U,2)=BDMX,$P(^(0),U,5)=DUZ,$P(^(0),U,6)=DT,$P(^(0),U,8)="B",$P(^(0),U,9)=60,$P(^(0),U,22)=0,$P(^(0),U,4)="n",$P(^(0),U,11)=BDMAP
 S ^ATXLAB(BDMDC,21,0)="^9002228.02101PA^0^0"
 S DA=BDMDC,DIK="^ATXAX(" D IX1^DIK
UP41 ;
 F BDMI=1:1 S BDMPI=$P(BDMPG,",",BDMI) Q:BDMPI=""  D
 .S BDMPI=$O(^DIC(9.4,"C","BDM",0))
 .Q:BDMPI=""  ;NO PACKAGE
 .Q:$D(^ATXLAB(BDMDC,41,"B",BDMPI))
 .S X="`"_BDMPI,DIC="^ATXLAB("_BDMDC_",41,",DIC(0)="L",DIC("P")=$P(^DD(9002228,4101,0),U,2),DA(1)=BDMDC
 .D ^DIC
 .I Y=-1 W !,"updating package multiple for ",BDMPI," entry ",$P(^ATXAX(BDMDC,0),U)," failed"
 .K DIC,DA,Y,X
 Q
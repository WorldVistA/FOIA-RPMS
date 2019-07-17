ATX51P27 ; IHS/CMI/LAB - PCC Suite v5.1 patch 27 environment check ;
 ;;5.1;TAXONOMY;**27**;FEB 04, 1997;Build 49
 ;
 ;
 ; The following line prevents the "Disable Options..." and "Move
 ; Routines..." questions from being asked during the install.
 I $G(XPDENV)=1 S (XPDDIQ("XPZ1"),XPDDIQ("XPZ2"))=0
 F X="XPO1","XPZ1","XPZ2","XPI1" S XPDDIQ(X)=0
 I '$$INSTALLD("ATX*5.1*26") D SORRY(2)
 I +$$VERSION^XPDUTL("AUM")<19 D MES^XPDUTL($$CJ^XLFSTR("Version 19.0 of AUM is required.  Not installed",80)) D SORRY(2) I 1
 E  D MES^XPDUTL($$CJ^XLFSTR("Requires AUM V19.0....Present.",80))
 ;
 Q
 ;
PRE ;
 Q
POST ;
 D ^ATXFF
 D BUILDAC
 ;D SETTAXRN^ATX6ENV
 Q
BUILDAC ;
 D MES^XPDUTL("Re-Indexing AC on taxonomies..")
 S ATXDA=0
 F  S ATXDA=$O(^ATXAX(ATXDA)) Q:ATXDA'=+ATXDA  D
 .Q:'$D(^ATXAX(ATXDA,0))
 .K DA
 .Q:'$$ICDTX^ATXXREF(ATXDA)  ;NOT AN ICD TAX
 .S DA=ATXDA D BUILDAC^ATXXREF
 .W "."
 K DA,ATXDA
 Q
SETTAXRN ;EP
 ;set read only and no delete for selected taxonomies
 S ATXTFI="" F  S ATXTFI=$O(^ATXAX("B",ATXTFI)) Q:ATXTFI=""  D
 .S ATXTDA=$O(^ATXAX("B",ATXTFI,0))
 .Q:'ATXTDA  ;did not find taxonomy
 .Q:'$$NS(ATXTFI)
 .I $P(^ATXAX(ATXTDA,0),U,4)'="n" S $P(^ATXAX(ATXTDA,0),U,4)="n" D MES^XPDUTL(".") ;set no delete
 .Q:$P(^ATXAX(ATXTDA,0),U,22)=1  ;ALREADY SET
 .S F=$P(^ATXAX(ATXTDA,0),U,15)
 .I $$RO(F,ATXTFI) S $P(^ATXAX(ATXTDA,0),U,22)=1 D MES^XPDUTL($P(^ATXAX(ATXTDA,0),U,1))  ;SET READ ONLY
 .Q
 Q
RO(T,S) ;
 I T=81 Q 1   ;CPT
 I T=80 Q 1   ;ICD DX
 I T=80.1 Q 1  ;ICD OP
 I T=9999999.31 Q 1  ;
 I T=9999999.64 Q 1  ;HEALTH FACTORS
 I T=9999999.14 Q 1  ;cvx codes
 I T=95.3 Q 1  ;LAB LOINC
 I S[" NDC" Q 1  ;NDC taxonomies  -  not perfect logic by no tax had " NDC " but NDC taxonomies
 Q 0
NS(T,L) ;
 ;I T["DIABETES REG" Q 0
 I $E(T,1,4)="APCD" Q 1
 I $E(T,1,3)="BGP" Q 1
 ;I $E(T,1,7)="SURVEIL" Q 1
 I $E(T,1,4)="APCH" Q 1
 I $E(T,1,4)="APCL" Q 1
 I $E(T,1,3)="ATX" Q 1
 ;I $E(T,1,3)="BAT" Q 1
 ;I $E(T,1,3)="BDR" Q 1
 ;I $E(T,1,3)="BI " Q 1
 I $E(T,1,4)="BJPC" Q 1
 ;I $E(T,1,3)="BUD" Q 1
 ;I $E(T,1,8)="DM AUDIT" Q 1
 Q 0
INSTALLD(ATXSTAL) ;EP - Determine if patch ATXSTAL was installed, where
 ; ATXSTAL is the name of the INSTALL.  E.g "AG*6.0*11".
 ;
 NEW ATXY,DIC,X,Y
 S X=$P(ATXSTAL,"*",1)
 S DIC="^DIC(9.4,",DIC(0)="FM",D="C"
 D IX^DIC
 I Y<1 D IMES Q 0
 S DIC=DIC_+Y_",22,",X=$P(ATXSTAL,"*",2)
 D ^DIC
 I Y<1 D IMES Q 0
 S DIC=DIC_+Y_",""PAH"",",X=$P(ATXSTAL,"*",3)
 D ^DIC
 S ATXY=Y
 D IMES
 Q $S(ATXY<1:0,1:1)
IMES ;
 D MES^XPDUTL($$CJ^XLFSTR("Patch """_ATXSTAL_""" is"_$S(Y<1:" *NOT*",1:"")_" installed.",IOM))
 Q
SORRY(X) ;
 KILL DIFQ
 I X=3 S XPDQUIT=2 Q
 S XPDQUIT=X
 W *7,!,$$CJ^XLFSTR("Sorry....FIX IT!",IOM)
 Q

BUDE12P1 ;IHS/CMI/LAB - environmental check post init;
 ;;12.0;IHS/RPMS UNIFORM DATA SYSTEM;**1**;NOV 22, 2017;Build 1
 ;
ENV ;
 ; The following line prevents the "Disable Options..." and "Move
 ; Routines..." questions from being asked during the install.
 I $G(XPDENV)=1 S (XPDDIQ("XPZ1"),XPDDIQ("XPZ2"))=0
 F X="XPO1","XPZ1","XPZ2","XPI1" S XPDDIQ(X)=0
 I +$$VERSION^XPDUTL("BUD")'=12 D MES^XPDUTL($$CJ^XLFSTR("Version 12.0 of UDS (BUD) is required.  Not installed",80)) D SORRY(2)
 Q
 ;
 ;
PRE ;
 ;ADD ALL OTHERS BACK IN
 ;edit package name
 F DA=1:1:999 S DIK="^BUDETSC(" D ^DIK
 Q
POST ;
 D ^BUDE3
 Q
 ;
INSTALLD(BUDSTAL) ;EP - Determine if patch BUDSTAL was installed, where
 ; BUDSTAL is the name of the INSTALL.  E.g "AG*6.0*11".
 ;
 NEW BUDY,DIC,X,Y
 S X=$P(BUDSTAL,"*",1)
 S DIC="^DIC(9.4,",DIC(0)="FM",D="C"
 D IX^DIC
 I Y<1 D IMES Q 0
 S DIC=DIC_+Y_",22,",X=$P(BUDSTAL,"*",2)
 D ^DIC
 I Y<1 D IMES Q 0
 S DIC=DIC_+Y_",""PAH"",",X=$P(BUDSTAL,"*",3)
 D ^DIC
 S BUDY=Y
 D IMES
 Q $S(BUDY<1:0,1:1)
IMES ;
 D MES^XPDUTL($$CJ^XLFSTR("Patch """_BUDSTAL_""" is"_$S(Y<1:" *NOT*",1:"")_" installed.",IOM))
 Q
SORRY(X) ;
 KILL DIFQ
 I X=3 S XPDQUIT=2 Q
 S XPDQUIT=X
 W *7,!,$$CJ^XLFSTR("Sorry....FIX IT!",IOM)
 Q

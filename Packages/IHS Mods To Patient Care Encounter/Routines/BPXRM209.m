BPXRM209 ; IHS/MSC/MGH - Version 2.0 Patch 1009 post routine. ;16-Feb-2018 11:04;DU
 ;;2.0;CLINICAL REMINDERS;**1009**;Feb 04, 2005;Build 17
 ;
ENV ;EP environment check
 N IN,INSTDA,STAT
 ;Check for the installation of Reminders 2.0
 S IN="CLINICAL REMINDERS 2.0",INSTDA=""
 I '$D(^XPD(9.7,"B",IN)) D  Q
 .W !,"You must first install CLINICAL REMINDERS 2.0 before this patch" S XPDQUIT=2
 S INSTDA=$O(^XPD(9.7,"B",IN,INSTDA),-1)
 S STAT=+$P($G(^XPD(9.7,INSTDA,0)),U,9)
 I STAT'=3 D  Q
 .W !,"CLINICAL REMINDERS 2.0 must be completely installed before installing this patch." S XPDQUIT=2
 S (XPDDIQ("XPZ1"),XPDDIQ("XPZ2"))=0
 ;
 ;Check for the installation of other patches
 I '$$INSTALLD("PXRM*2.0*1008") D MES^XPDUTL($$CJ^XLFSTR("Requires pxrm V2.0 patch 1008.  Not installed.",80)) D SORRY(2)
 ;Check for the installation of other patches
 I '$$INSTALLD("BSTS*1.0*8") D MES^XPDUTL($$CJ^XLFSTR("Requires BSTS V1.0 patch 1008.  Not installed.",80)) D SORRY(2)
 I '$$INSTALLD("LEX*2.0*1007") D MES^XPDUTL($$CJ^XLFSTR("Requires lex V2.0 patch 1007.  Not installed.",80)) D SORRY(2)
 Q
INSTALLD(PXRMSTAL) ;EP - Determine if patch BJPCSTAL was installed, where
 ; PXRMSTAL is the name of the INSTALL.  E.g "PXRM*2.0*1008".
 ;
 NEW PXRMY,DIC,X,Y
 S X=$P(PXRMSTAL,"*",1)
 S DIC="^DIC(9.4,",DIC(0)="FM",D="C"
 D IX^DIC
 I Y<1 D IMES Q 0
 S DIC=DIC_+Y_",22,",X=$P(PXRMSTAL,"*",2)
 D ^DIC
 I Y<1 D IMES Q 0
 S DIC=DIC_+Y_",""PAH"",",X=$P(PXRMSTAL,"*",3)
 D ^DIC
 S PXRMY=Y
 D IMES
 Q $S(PXRMY<1:0,1:1)
IMES ;
 D MES^XPDUTL($$CJ^XLFSTR("Patch """_PXRMSTAL_""" is"_$S(Y<1:" *NOT*",1:"")_" installed.",IOM))
 Q
SORRY(X) ;
 KILL DIFQ
 I X=3 S XPDQUIT=2 Q
 S XPDQUIT=X
 W *7,!,$$CJ^XLFSTR("Sorry....FIX IT!",IOM)
 Q
PATCH(X) ;return 1 if patch X was installed, X=aaaa*nn.nn*nnnn
 ;copy of code from XPDUTL but modified to handle 4 digit IHS patch numb
 Q:X'?1.4UN1"*"1.2N1"."1.2N.1(1"V",1"T").2N1"*"1.4N 0
 NEW NUM,I,J
 S I=$O(^DIC(9.4,"C",$P(X,"*"),0)) Q:'I 0
 S J=$O(^DIC(9.4,I,22,"B",$P(X,"*",2),0)),X=$P(X,"*",3) Q:'J 0
 ;check if patch is just a number
 Q:$O(^DIC(9.4,I,22,J,"PAH","B",X,0)) 1
 S NUM=$O(^DIC(9.4,I,22,J,"PAH","B",X_" SEQ"))
 Q (X=+NUM)
 ;===============================================================
PRE ;EP pre-init
 Q
 ;===============================================================
POST ;Post-install
 Q
 ;

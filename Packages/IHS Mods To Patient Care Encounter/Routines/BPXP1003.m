BPXP1003 ;IHS/ITSC/LJF - Environment check for patch 1003;13-Aug-2015 14:54;DU
 ;;1.0;PCE PATIENT CARE ENCOUNTER;**1003**;Aug 12, 1996;Build 3
 ;
ENV ;EP
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
 S PATCH="PXRM*2.0*1001"
 I '$$PATCH(PATCH) D  Q
 . W !,"You must first install "_PATCH_"." S XPDQUIT=2
 S PATCH="PX*1.0*1002"
 I '$$PATCH(PATCH) D  Q
 . W !,"You must first install "_PATCH_"." S XPDQUIT=2
 S PATCH="XU*8.0*539"
 I '$$PATCH(PATCH) D  Q
 . W !,"You must first install "_PATCH_"." S XPDQUIT=2
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
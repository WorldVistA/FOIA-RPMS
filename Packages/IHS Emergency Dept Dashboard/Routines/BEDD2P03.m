BEDD2P03 ;GDIT/HS/BEE-BEDD VERSION 2.0 Patch 3 ENV/PST ROUTINE ; 08 Nov 2011  12:00 PM
 ;;2.0;BEDD DASHBOARD;**3**;Jun 04, 2014;Build 12
 ;
 NEW VERSION,X
 ;
 ;Check for AMER*3.0*9
 I '$$INSTALLD("AMER*3.0*10") D BMES^XPDUTL("Version 3.0 Patch 10 of AMER is required!") S XPDQUIT=2 Q
 ;
 ;Check for BEDD*2.0*1
 I '$$INSTALLD("BEDD*2.0*2") D BMES^XPDUTL("Version 2.0 Patch 2 of BEDD is required!") S XPDQUIT=2 Q
 ;
 ;Check for the XML build
 I $T(XML^BEDD2X03)="" D BMES^XPDUTL("The BEDD XML build bedd0200.03.xml must first be installed!") S XPDQUIT=2 Q
 ;
 Q
 ;
ENT ;Post install entry point
 ;
 NEW SC
 ;
 ;Force recompile of project
 D $SYSTEM.OBJ.CompileProject("bedd0200","k-u")
 D $SYSTEM.OBJ.CompileProject("bedd0200p1","k-u")
 D $SYSTEM.OBJ.CompileProject("bedd0200p2","k-u")
 D $SYSTEM.OBJ.CompileProject("bedd0200p3","k-u")
 D $SYSTEM.OBJ.CompileList("csp/bedd/BEDD*.csp","k-u")
 ;
 Q
 ;
INSTALLD(BEDDSTAL) ;EP - Determine if patch BEDDSTAL was installed, where
 ;BEDDSTAL is the name of the INSTALL.  E.g "AMER*3.0*10"
 ;
 NEW DIC,X,Y,D
 S X=$P(BEDDSTAL,"*",1)
 S DIC="^DIC(9.4,",DIC(0)="FM",D="C"
 D IX^DIC
 I Y<1 Q 0
 S DIC=DIC_+Y_",22,",X=$P(BEDDSTAL,"*",2)
 D ^DIC
 I Y<1 Q 0
 S DIC=DIC_+Y_",""PAH"",",X=$P(BEDDSTAL,"*",3)
 D ^DIC
 Q $S(Y<1:0,1:1)

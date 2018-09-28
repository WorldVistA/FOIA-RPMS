BSTS2P02 ;GDIT/HS/BEE-Version 2.0 Patch 2 Post (and Pre) Install ; 19 Nov 2012  9:41 AM
 ;;2.0;IHS STANDARD TERMINOLOGY;**2**;Dec 01, 2016;Build 1
 ;
ENV ;EP - Environmental Checking Routine
 ;
 N VERSION,EXEC,BMWDT
 ;
 ;Check for BSTS v2.0 Patch 1
 I '$$INSTALLD("BSTS*2.0*1") D BMES^XPDUTL("Version 2.0 Patch 1 of BSTS is required!") S XPDQUIT=2 Q
 ;
 ;Make sure a refresh is not running already
 L +^BSTS(9002318.1,0):0 E  D BMES^XPDUTL("A Local BSTS Cache Refresh is Already Running. Please Try Later") S XPDQUIT=2 Q
 L -^BSTS(9002318.1,0)
 ;
 ;Make sure an Description Id fix compile isn't running
 L +^XTMP("BSTSCFIX"):0 E  D BMES^XPDUTL("A Description Id Population Utility Process is Running.  Please Try later") S XPDQUIT=2 Q
 L -^XTMP("BSTSCFIX")
 ;
 ;Make sure another install isn't running
 L +^TMP("BSTSINSTALL"):3 E  D BMES^XPDUTL("A BSTS Install is Already Running") S XPDQUIT=2 Q
 L -^TMP("BSTSINSTALL")
 ;
 Q
 ;
EN ;EP
 ;
 ;Make a log entry
 D LOG^BSTSAPIL("INST","","PATCH","BSTS*2.0*2")
 ;
 ;Unlock installation entry
 L -^TMP("BSTSINSTALL")
 ;
 ;Kick off update to pull down new RxNorm Information
 D QUEUE^BSTSVOFL("S1552") ;Put RxNorm on the queue
 D QUEUE^BSTSVOFL(32771) ;Drug ingredients
 D QUEUE^BSTSVOFL(32773) ;Allergies
 D JOBNOW^BSTSVOFL  ;Kick off now
 ;
 Q
 ;
PRE ;Pre-Install Front End
 ;
 ;Perform Lock so only one install can run and DTS calls will be switched to local
 L +^TMP("BSTSINSTALL"):3 E  D BMES^XPDUTL("A BSTS Install is Already Running - Aborting Installation") S XPDABORT=1 Q
 ;
 N DIU
 ;
 ;Clear out existing transport global and new conversion file
 S DIU="^BSTSCLS(",DIU(0)="DST" D EN^DIU2
 ;
 Q
 ;
INSTALLD(BSTSSTAL) ;EP - Determine if patch BSTSSTAL was installed, where
 ; BSTSSTAL is the name of the INSTALL.  E.g "BSTS*1.0*1".
 ;
 NEW DIC,X,Y,D
 S X=$P(BSTSSTAL,"*",1)
 S DIC="^DIC(9.4,",DIC(0)="FM",D="C"
 D IX^DIC
 I Y<1 Q 0
 S DIC=DIC_+Y_",22,",X=$P(BSTSSTAL,"*",2)
 D ^DIC
 I Y<1 Q 0
 S DIC=DIC_+Y_",""PAH"",",X=$P(BSTSSTAL,"*",3)
 D ^DIC
 Q $S(Y<1:0,1:1)

BSTS2P01 ;GDIT/HS/BEE-Version 2.0 Patch 1 Post (and Pre) Install ; 19 Nov 2012  9:41 AM
 ;;2.0;IHS STANDARD TERMINOLOGY;**1**;Dec 01, 2016;Build 36
 ;
ENV ;EP - Environmental Checking Routine
 ;
 N VERSION,EXEC,BMWDT
 ;
 ;Check for BSTS v2.0
 I $$VERSION^XPDUTL("BSTS")<2 D BMES^XPDUTL("Version 2.0 of BSTS is required!") S XPDQUIT=2 Q
 ;
 ;Make sure a refresh is not running already
 L +^BSTS(9002318.1,0):0 E  D BMES^XPDUTL("A Local BSTS Cache Refresh is Already Running. Please Try Later") S XPDQUIT=2 Q
 L -^BSTS(9002318.1,0)
 ;
 ;Make sure an Description Id fix compile isn't running
 L +^XTMP("BSTSCFIX"):0 E  D BMES^XPDUTL("A Description Id Population Utility Process is Running.  Please Try later") S XPDQUIT=2 Q
 L -^XTMP("BSTSCFIX")
 ;
 ;Make sure an ICD9 to SNOMED compile isn't running
 L +^TMP("BSTSICD2SMD"):0 E  D BMES^XPDUTL("An ICD9 to SNOMED Background Compile is Running.  Please Try later") S XPDQUIT=2 Q
 L -^TMP("BSTSICD2SMD")
 ;
 ;Make sure another install isn't running
 L +^TMP("BSTSINSTALL"):3 E  D BMES^XPDUTL("A BSTS Install is Already Running") S XPDQUIT=2 Q
 L -^TMP("BSTSINSTALL")
 ;
 Q
 ;
EN ;EP
 ;
 ;Load the classes
 ;
 NEW ICONC,ICIEN,INALL,CNT,PIEN
 NEW TRIEN,EXEC,ERR,X,VAR,STS
 ;
 ;For each build, set this to the 9002318.5 entry to load
 S TRIEN=1
 ;
 ;Delete existing BSTS Classes
 S EXEC="DO $SYSTEM.OBJ.DeletePackage(""BSTS"")" X EXEC
 ;
 ; Import BSTS classes
 K ERR
 I $G(TRIEN)'="" D IMPORT^BSTSCLAS(TRIEN,.ERR)
 I $G(ERR) Q
 ;
 ;Set up new BSTS,PROXY USER entry
 S PIEN=$O(^VA(200,"B","BSTS,PROXY USER","")) I PIEN="" D
 . NEW X,DIC,Y,VAUPD,USCLS,DIEN,DA
 . S DIC="^VA(200,",DIC(0)="LX"
 . S X="BSTS,PROXY USER"
 . D ^DIC
 . I '+Y Q
 . S DIEN=+Y
 . ;
 . ;Set up User Class
 . S USCLS=$O(^VA(201,"B","APPLICATION PROXY","")) Q:USCLS=""
 . I $D(^VA(200,DIEN,"USC3","B",USCLS)) Q
 . S DIC(0)="LX",DIC="^VA(200,"_DIEN_",""USC3"","
 . S X="APPLICATION PROXY",DA(1)=DIEN
 . D ^DIC
 ;
 ;Turn on the SEARCH STRING logging
 ;*Decision was made to leave it up to the sites to turn it on
 ;D
 ;. NEW WIEN
 ;. ;
 ;. ;Turn on each WEB SERVICE entry
 ;. S WIEN=0 F  S WIEN=$O(^BSTS(9002318.2,WIEN)) Q:'WIEN  D
 ;.. NEW BSTSUPD,ERROR
 ;.. S BSTSUPD(9002318.2,WIEN_",",.16)="1"
 ;.. D FILE^DIE("","BSTSUPD","ERROR")
 ;
 ;Make a log entry
 D LOG^BSTSAPIL("INST","","PATCH","BSTS*2.0*1")
 ;
 ;Unlock installation entry
 L -^TMP("BSTSINSTALL")
 ;
 ;Kick off update to pull down SNOMED Mapping Advice
 D QUEUE^BSTSVOFL(32777) ;Put it on the queue
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

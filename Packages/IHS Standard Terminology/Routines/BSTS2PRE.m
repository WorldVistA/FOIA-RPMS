BSTS2PRE ;GDIT/HS/BEE-Version 2.0 Environmental Checking and Pre-Install ; 19 Nov 2012  9:41 AM
 ;;2.0;IHS STANDARD TERMINOLOGY;;Dec 01, 2016;Build 62
 ;
ENV ;EP - Environmental Checking Routine
 ;
 ;Make sure a refresh is not running already
 L +^BSTS(9002318.1,0):0 E  D BMES^XPDUTL("A Local BSTS Cache Refresh is Already Running. Please Try Later") S XPDQUIT=2 Q
 L -^BSTS(9002318.1,0)
 ;
 ;Make sure another install isn't running
 L +^TMP("BSTSINSTALL"):3 E  D BMES^XPDUTL("A BSTS Install is Already Running") S XPDQUIT=2 Q
 L -^TMP("BSTSINSTALL")
 ;
 ;Check for AICD 4.0
 I +$$VERSION^XPDUTL("AICD")<4 D BMES^XPDUTL("Version 4.0 of AICD is required!") S XPDQUIT=2 Q
 ;
 NEW SSLNAME,SSLFND,SYSXREF,SYSGL,ROLES,EXEC
 ;
 ; Verify that installer has proper roles
 S EXEC="S ROLES=$roles" X EXEC
 S ROLES=","_ROLES_",",U="^"
 I ROLES'[",%All," D BMES^XPDUTL("Your Ensemble account MUST have ""%All"" role to proceed") H 8 S XPDQUIT=2 Q
 ;
 ;Look for an SSL server
 S SYSXREF="^[""%SYS""]SYS",SYSGL=$NA(@SYSXREF)
 S (SSLFND,SSLNAME)="" F  S SSLNAME=$O(@SYSGL@("Security","SSLConfigsD",SSLNAME)) Q:SSLNAME=""  D  Q:SSLFND]""
 . NEW UPNAME
 . S UPNAME=$$UP^XLFSTR(SSLNAME)
 . I UPNAME["SNOMED" S SSLFND=SSLNAME
 I SSLFND="" D BMES^XPDUTL("**Warning - No SNOMEDServer SSL/TLS configuration found**") D BMES^XPDUTL("One will be set up during the installation process") H 8
 ;
 Q
 ;
EN ;Pre-Install Front End
 ;
 NEW DIU,WSIEN
 ;
 ;Make sure a refresh is not running already
 L +^BSTS(9002318.1,0):0 E  D BMES^XPDUTL("A Local BSTS Cache Refresh is Already Running. Please Try Later") S XPDQUIT=2 Q
 L -^BSTS(9002318.1,0)
 ;
 ;Perform Lock so only one install can run and DTS calls will be switched to local
 L +^TMP("BSTSINSTALL"):3 E  W !!,"A BSTS Install is Already Running - Aborting Installation" H 10 S XPDABORT=1 Q
 ;
 ;Clear existing transport global
 S DIU="^BSTSCLS(",DIU(0)="DST" D EN^DIU2
 ;
 ;Clear out the SNOMED conversion global
 S DIU="^BSTS(9002318.6,",DIU(0)="DST" D EN^DIU2
 ;
 Q

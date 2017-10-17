BSTS2PST ;GDIT/HS/BEE-Version 2.0 Post-Install ; 19 Nov 2012  9:41 AM
 ;;2.0;IHS STANDARD TERMINOLOGY;;Dec 01, 2016;Build 62
 ;
EN ;Post Install Front End
 ;
 NEW TRIEN,EXEC,ERR,WIEN,WSIEN,PATCH,SIEN,STS,TR,CDST
 NEW SSLNAME,SSLFND,SYSXREF,SYSGL
 ;
 ;Load the classes
 ;
 ;For each build, set this to the 9002318.5 entry to load
 S TRIEN=1
 ;
 ;Delete existing BSTS Classes
 S EXEC="DO $SYSTEM.OBJ.DeletePackage(""BSTS"")" X EXEC
 ;
 ; Import BSTS classes
 ;
 K ERR
 I $G(TRIEN)'="" D IMPORT^BSTSCLAS(TRIEN,.ERR)
 ;
 ;Make sure a SSL entry is defined
 ;
 ;Look for an SSL server
 S SYSXREF="^[""%SYS""]SYS",SYSGL=$NA(@SYSXREF)
 S (SSLFND,SSLNAME)="" F  S SSLNAME=$O(@SYSGL@("Security","SSLConfigsD",SSLNAME)) Q:SSLNAME=""  D  Q:SSLFND]""
 . NEW UPNAME
 . S UPNAME=$$UP^XLFSTR(SSLNAME)
 . I UPNAME["SNOMED" S SSLFND=SSLNAME
 ;
 ;Modify existing entry
 I SSLFND]"" D
 . NEW EXEC,SOBJ,STS,ONAMESPC
 . S EXEC="S ONAMESPC=$"_"ZNSPACE" X EXEC
 . S EXEC="ZN ""%SYS""" X EXEC
 . S SSLNAME=""
 . S EXEC="S SOBJ=##CLASS(Security.SSLConfigs).%OpenId("""_SSLFND_""")" X EXEC
 . S EXEC="S SOBJ.CipherList=""TLSv1:!ADH:!LOW:!EXP:@STRENGTH""" X EXEC
 . S EXEC="S SOBJ.PrivateKeyType=2" X EXEC
 . S EXEC="S SOBJ.Protocols=4" X EXEC
 . S EXEC="S SOBJ.Type=0" X EXEC
 . S EXEC="S SOBJ.VerifyDepth=9" X EXEC
 . S EXEC="S SOBJ.VerifyPeer=0" X EXEC
 . S EXEC="S SOBJ.Enabled=1" X EXEC
 . S EXEC="S SSLNAME=SOBJ.Name" X EXEC
 . S EXEC="S STS=SOBJ.%Save()" X EXEC
 . S EXEC="ZN ONAMESPC" X EXEC
 ;
 ;If no entry, create one
 I SSLFND="" D
 . NEW EXEC,SOBJ,STS,ONAMESPC
 . S EXEC="S ONAMESPC=$"_"ZNSPACE" X EXEC
 . S EXEC="ZN ""%SYS""" X EXEC
 . S EXEC="S SOBJ=##CLASS(Security.SSLConfigs).%New()" X EXEC
 . S EXEC="S SOBJ.Description=""SNOMED Terminology Server""" X EXEC
 . S EXEC="S SOBJ.Name=""SNOMEDServer""" X EXEC
 . S EXEC="S SOBJ.CipherList=""TLSv1:!ADH:!LOW:!EXP:@STRENGTH""" X EXEC
 . S EXEC="S SOBJ.PrivateKeyType=2" X EXEC
 . S EXEC="S SOBJ.Protocols=4" X EXEC
 . S EXEC="S SOBJ.Type=0" X EXEC
 . S EXEC="S SOBJ.VerifyDepth=9" X EXEC
 . S EXEC="S SOBJ.VerifyPeer=0" X EXEC
 . S EXEC="S SOBJ.Enabled=1" X EXEC
 . S EXEC="S STS=SOBJ.%Save()" X EXEC
 . S SSLNAME="SNOMEDServer"
 . S EXEC="ZN ONAMESPC" X EXEC
 ;
 ;Set up BSTS WEB SERVICE ENDPOINT entry
 ;
 ;Make sure an entry is defined
 I '$O(^BSTS(9002318.2,0)) D
 . ;
 . NEW DIC,DLAYGO,X,Y
 . ;
 . S DIC(0)="LNZ",DIC="^BSTS(9002318.2,",DLAYGO=9002318.2,X="PRODUCTION"
 . D ^DIC
 ;
 ;Loop through entries and update
 S WSIEN="",WIEN=0 F  S WIEN=$O(^BSTS(9002318.2,WIEN)) Q:'WIEN  D
 . ;
 . NEW PORT,NAME,NWPORT,BSTSWEB,URL,SSL,SSLCT
 . ;
 . S NAME=$$GET1^DIQ(9002318.2,WIEN_",",.01,"E")
 . S (URL,NWPORT)=""
 . ;
 . ;Production
 . S (SSLCT,NWPORT)="",PORT=$$GET1^DIQ(9002318.2,WIEN_",",.03,"E")
 . I ((PORT="")&(NAME="PRODUCTION"))!(PORT=443)!(PORT=444)!(PORT=445)!(PORT=42102)!(PORT=44200) D
 .. S NWPORT=44200
 .. S URL="https://dtsservices.ihs.gov"
 .. S WSIEN=WIEN,SSLCT=1
 . ;
 . ;Test Production
 . I (PORT=42100)!(PORT=44299) D
 .. S NWPORT=44299
 .. S URL="https://dtsservices.ihs.gov"
 .. S SSLCT=1
 . ;
 . ;DITDTS1
 . I (PORT=8080)!(PORT=8081)!(PORT=8082)!(PORT=8083) D
 .. S NWPORT=8083
 .. S URL="http://ditdts1"
 . ;
 . ;GDIT DTS 4.4 Server
 . I (PORT=8445)!(PORT=8446) D
 .. S NWPORT=8446
 .. S URL="https://vdenmihsdevd01"
 .. S SSLCT=1
 . ;
 . ;Port
 . I NWPORT]"" S BSTSWEB(9002318.2,WIEN_",",.03)=NWPORT
 . ;
 . ;URL
 . I URL]"" S BSTSWEB(9002318.2,WIEN_",",.02)=URL
 . ;
 . ;Update the service patch
 . S BSTSWEB(9002318.2,WIEN_",",.11)="/soap"
 . ;
 . ;SSL/TLS Configuration
 . S SSL=$$GET1^DIQ(9002318.2,WIEN_",",2.01,"E")
 . I SSL="" S BSTSWEB(9002318.2,WIEN_",",2.01)=$S(SSLCT:SSLNAME,1:"@")
 . ;
 . ;Username
 . S BSTSWEB(9002318.2,WIEN_",",.07)="DTSUser"
 . ;
 . ;Password
 . S BSTSWEB(9002318.2,WIEN_",",.08)="DTSPW!"
 . ;
 . ;Type
 . S BSTSWEB(9002318.2,WIEN_",",.04)="D"
 . ;
 . ;Update the entry
 . D FILE^DIE("","BSTSWEB","ERR")
 ;
 ;Set up BSTS SITE PARAMETERS entry
 ;
 I '$O(^BSTS(9002318,0)) D
 . ;
 . NEW DIC,DLAYGO,X,Y
 . ;
 . ;Set up the site parameter entry if necessary
 . S DIC(0)="LNZ",DIC="^BSTS(9002318,",DLAYGO=9002318,X=$P($G(^AUTTSITE(1,0)),U,1)
 . I X="" S X=$O(^BGPSITE(0))
 . I X'="" S X=$P(^DIC(4,X,0),U,1)
 . D ^DIC
 S SIEN=$O(^BSTS(9002318,0))
 ;
 ;Set up the Web Service entry if not found
 I SIEN]"" D
 . NEW DIC,DLAYGO,X,Y,DA
 . I $O(^BSTS(9002318,SIEN,1,0)) Q
 . I WSIEN="" Q
 . S DA(1)=SIEN,DIC(0)="XLNZ",DIC="^BSTS(9002318,"_SIEN_",1,",DLAYGO="9002318.01"
 . S X=WSIEN
 . K DO,DD D FILE^DICN
 ;
 ;Update the Web Service entry
 I SIEN]"" D
 . NEW WIEN,DA,IENS,BSTSSITE,ERROR
 . S WIEN=$O(^BSTS(9002318,SIEN,1,0)) Q:'+WIEN
 . S DA(1)=SIEN,DA=WIEN,IENS=$$IENS^DILF(.DA)
 . S BSTSSITE(9002318.01,IENS,.02)=1  ;Priority
 . D FILE^DIE("","BSTSSITE","ERROR")
 ;
 ;Display status to screen
 D BMES^XPDUTL("Verifying connection to DTS server is working. This may take several minutes to complete ")
 ;
 ;Verify that the server connects, if not quit
 S STS="" F TR=1:1:20 D  I +STS=2 Q
 . NEW VAR
 . D RESET^BSTSWSV1  ;Reset DTS to on
 . S STS=$$CODESETS^BSTSAPI("VAR") ;Try quick call
 . I +STS'=2 H 1
 ;
 ;Quit on failure
 I (+STS'=2) D  D BMES^XPDUTL("DTS is not working properly. Please get the BSTS connection working and then re-install the build") H 10 S XPDABORT=1 G XEN
 . ;
 . ;Unlock installation entry
 . L -^TMP("BSTSINSTALL")
 . ;
 . ;Allow logins again
 . NEW LIEN,LOG,ERR
 . S LIEN=$O(^%ZIS(14.5,0)) Q:'+LIEN
 . S LOG(14.5,LIEN_",",1)="N"
 . D FILE^DIE("","LOG","ERR")
 ;
 ;Pull the codeset versions
 F CDST=36,1552,32771,32772,32773,32774,32775,32777,32778,32779,32780 D
 . F TR=1:1:60 D  I +STS=2 Q
 .. NEW VAR
 .. D RESET^BSTSWSV1  ;Reset DTS to on
 .. S STS=$$VERSIONS^BSTSAPI("VAR",CDST)
 ;
 ;Unlock installation entry
 L -^TMP("BSTSINSTALL")
 ;
 ;Kick off SNOMED update
 D QUEUE^BSTSVOFL(36)
 ;
 ;Kick off RxNorm update
 D QUEUE^BSTSVOFL("S1552")
 ;
 ;Kick off update to pull down SNOMED information
 D QUEUE^BSTSVOFL(32777) ;Put it on the queue
 ;
 ;Queue custom codesets
 D QUEUE^BSTSVOFL(32771)
 D QUEUE^BSTSVOFL(32772)
 D QUEUE^BSTSVOFL(32773)
 D QUEUE^BSTSVOFL(32774)
 D QUEUE^BSTSVOFL(32775)
 ;
 D JOBNOW^BSTSVOFL  ;Kick off now
 ;
XEN Q

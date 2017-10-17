BSTSVRSC ;GDIT/HS/BEE-Standard Terminology - Compile Custom Codeset ; 5 Nov 2012  9:53 AM
 ;;2.0;IHS STANDARD TERMINOLOGY;**1**;Dec 01, 2016;Build 36
 ;
 Q
 ;
CCHK(NMID,BKGND) ;EP - Check for custom codeset updates
 ;
 I $G(NMID)="" Q
 I $G(NMID)=36 Q
 I $G(NMID)=1552 Q
 I $G(NMID)=5180 Q
 I $G(NMID)=32777 Q
 I $G(NMID)=32778 Q
 ;
 ;Only one SNOMED proc at a time
 I '$G(BKGND)  L +^BSTS(9002318.1,0):0 E  W !!,"A Local Cache Refresh is Already Running. Please Try Later" H 3 Q
 L -^BSTS(9002318.1,0)
 ;
 ;Check for ICD92SNOMED proc
 I '$G(BKGND) L +^TMP("BSTSICD2SMD"):0 E  W !!,"An ICD9 to SNOMED Background Process is Already Running. Please Try Later" H 3 Q
 L -^TMP("BSTSICD2SMD")
 ;
 NEW LMDT,STS,BSTS,ERROR,ZTRTN,ZTSAVE,ZTDESC,ZTDTH,NMIEN,ZTQUEUED
 NEW VAR,ZTIO,VRSN,TRY
 NEW $ESTACK,$ETRAP S $ETRAP="D ERR^BSTSVRSC D UNWIND^%ZTER" ; SAC 2009 2.2.3.17
 ;
 ;Get codeset
 S NMIEN=$O(^BSTS(9002318.1,"B",NMID,"")) Q:NMIEN=""
 ;
 ;Check if online
 S STS="" F TRY=1:1:5 D  I +STS=2 Q
 . D RESET^BSTSWSV1  ;Reset the DTS link to on
 . S STS=$$VERSIONS^BSTSAPI("VRSN") ;Try
 ;
 ;Queue proc
 I +STS=2 D CDJOB^BSTSUTIL(NMIEN,"CCD")
 ;
 Q
 ;
CDST ;EP - Update IHS Standard Terminology Codeset
 ;
 ;Tasked by above.  Var NMIEN should be set
 ;
 S NMIEN=$G(NMIEN) I NMIEN="" Q
 ;
 ;Lock
 L +^BSTS(9002318.1,0):0 E  Q
 ;
 NEW BSTSWS,RESULT,NMID,STS,VRSN,BSTS,ICONC,CIEN,X1,X2,X,NVIEN,NVLCL,MFAIL,FWAIT,TRY,FCNT,ABORT,TRY,CVRSN
 ;
 ;Get ext codeset Id
 S NMID=$$GET1^DIQ(9002318.1,NMIEN_",",.01,"I") I NMID="" G XCDST
 ;
 ;Update LAST VERSION CHECK so proc won't keep getting called
 S BSTS(9002318.1,NMIEN_",",.05)=DT
 D FILE^DIE("","BSTS","ERROR")
 ;
 ;Online?
 S STS="" F TRY=1:1:5 D  I +STS=2 Q
 . D RESET^BSTSWSV1  ;Reset the DTS link to on
 . S STS=$$VERSIONS^BSTSAPI("VRSN") ;Try
 I +STS'=2 G XCDST
 ;
 ;Reset Monitoring GBL
 K ^XTMP("BSTSLCMP")
 ;
 ;Get later date
 S X1=DT,X2=60 D C^%DTC
 ;
 ;Get current version
 S CVRSN=$$GET1^DIQ(9002318.1,NMIEN_",",.04,"I")
 ;
 ;Make a log entry
 D LOG^BSTSAPIL("UPDS",NMID,"CURRENT",CVRSN)
 ;
 ;Set Monitoring GBL
 S ^XTMP("BSTSLCMP",0)=X_U_DT_U_"Cache refresh running for "_NMID
 ;
 ;Mark as OOD
 S ^XTMP("BSTSLCMP","STS")="Marking entries as out of date"
 S ICONC="" F  S ICONC=$O(^BSTS(9002318.4,"C",NMID,ICONC)) Q:ICONC=""  S CIEN="" F  S CIEN=$O(^BSTS(9002318.4,"C",NMID,ICONC,CIEN)) Q:CIEN=""  D
 . NEW BSTS,ERR,LMOD
 . ;
 . ;Mark OOD
 . S BSTS(9002318.4,CIEN_",",".12")=""
 . D FILE^DIE("","BSTS","ERR")
 ;
 ;Make call to proc
 S ^XTMP("BSTSLCMP","STS")="Performing Refresh from DTS"
 S BSTSWS("NAMESPACEID")=NMID
 S BSTSWS("REVIN")=$$FMTE^XLFDT(DT,"7")
 S STS=$$CSTMCDST^BSTSWSV1("RESULT",.BSTSWS)
 S ^BXE("M")="0^"_STS
 I +STS=0 G XCDST  ;Quit if update failed
 I $D(^XTMP("BSTSLCMP","QUIT")) G XCDST
 ;
 S ^BXE("M")="1"
 ;Now refresh entries for codeset that have not been updated (to handle deletes)
 S ICONC="" F  S ICONC=$O(^BSTS(9002318.4,"C",NMID,ICONC)) Q:ICONC=""  D  Q:$D(^XTMP("BSTSLCMP","QUIT"))
 . S CIEN="" F  S CIEN=$O(^BSTS(9002318.4,"C",NMID,ICONC,CIEN)) Q:CIEN=""  D  Q:$D(^XTMP("BSTSLCMP","QUIT"))
 .. NEW BSTS,ERR,TIEN,DA,DIK
 .. ;
 .. ;Quit if updated
 .. I $$GET1^DIQ(9002318.4,CIEN_",",".12","I")]"" Q
 .. ;
 .. ;Update monitor
 .. S ^XTMP("BSTSLCMP","STS")="Removing retired mapping "_CIEN
 .. ;
 .. ;First remove terms
 .. S TIEN="" F  S TIEN=$O(^BSTS(9002318.3,"C",NMID,CIEN,TIEN)) Q:TIEN=""  D
 ... NEW DA,DIK
 ... S DA=TIEN,DIK="^BSTS(9002318.3," D ^DIK
 .. ;
 .. ;Remove concept
 .. S DA=CIEN,DIK="^BSTS(9002318.4," D ^DIK
 ;
 ;Retrieve Failover Vars
 S MFAIL=$$FPARMS^BSTSVOFL()
 S FWAIT=$P(MFAIL,U,2)
 S MFAIL=$P(MFAIL,U)
 ;
 S ^BXE("M")=2
 ;Loop through, grab concept that mappings linked to
 S ABORT=0,ICONC="" F  S ICONC=$O(^BSTS(9002318.4,"C",NMID,ICONC)) Q:ICONC=""  D  Q:$D(^XTMP("BSTSLCMP","QUIT"))
 . NEW IEN
 . S IEN="" F  S IEN=$O(^BSTS(9002318.4,"C",NMID,ICONC,IEN)) Q:IEN=""  D  Q:$D(^XTMP("BSTSLCMP","QUIT"))
 .. NEW AS
 .. S AS=0 F  S AS=$O(^BSTS(9002318.4,IEN,9,AS)) Q:'AS  D
 ... NEW NODE,NM,DTS,VAR,FCNT,TRY
 ... S NODE=$G(^BSTS(9002318.4,IEN,9,AS,0))
 ... S ^XTMP("BSTSLCMP","STS")="Getting Association details for entry: "_ICONC
 ... S NM=$P(NODE,U,2) Q:NM=""
 ... S DTS=$P(NODE,U,3) Q:DTS=""
 ... ;
 ... ;Update entry-Hang max of 12 times
 ... S (FCNT,STS)=0 F TRY=1:1:(12*MFAIL) D  I +STS=2!(STS="0^") Q
 .... D RESET^BSTSWSV1  ;Reset the DTS link to on
 .... S STS=$$DTSLKP^BSTSAPI("VAR",DTS_"^"_NM) I +STS=2!(STS="0^") Q
 .... S FCNT=FCNT+1 I FCNT'<MFAIL D  ;Fail handling
 ..... S ABORT=$$FAIL^BSTSVOFL(MFAIL,FWAIT,TRY,"CDST^BSTSVRSC - Getting Assoc for entry: "_DTS)
 ..... I ABORT=1 S ^XTMP("BSTSLCMP","QUIT")=1 D ELOG^BSTSVOFL("CUSTOM CODESET REFRESH FAILED ON DETAIL ENTRY: "_DTS)
 ..... S FCNT=0
 ;
 S ^BXE("M")="3^"_STS
 ;Check for failure
 I +STS=0 G XCDST
 I $D(^XTMP("BSTSLCMP","QUIT")) G XCDST
 ;
 ;Get current version from mult
 S NVIEN=$O(^BSTS(9002318.1,NMIEN,1,"A"),-1)
 S NVLCL="" I +NVIEN>0 D
 . NEW DA,IENS
 . S DA(1)=NMIEN,DA=+NVIEN,IENS=$$IENS^DILF(.DA)
 . S NVLCL=$$GET1^DIQ(9002318.11,IENS,".01","I")
 ;
 S ^BXE("M")="4^"_NVLCL
 ;Save CURRENT VERSION
 I NVLCL]"" D
 . NEW BSTS,ERROR
 . S BSTS(9002318.1,NMIEN_",",.04)=NVLCL
 . D FILE^DIE("","BSTS","ERROR")
 ;
 ;Get new current version
 S CVRSN=$$GET1^DIQ(9002318.1,NMIEN_",",.04,"I")
 ;
 ;Make a log entry
 D LOG^BSTSAPIL("UPDE",NMID,"CURRENT",CVRSN)
 ;
 ;Reset Monitoring GBL
XCDST NEW FAIL
 S FAIL=$S($D(^XTMP("BSTSLCMP","QUIT")):1,1:0)
 K ^XTMP("BSTSLCMP")
 S:FAIL ^XTMP("BSTSLCMP","QUIT")=1
 ;
 ;Unlock
 L -^BSTS(9002318.1,0)
 ;
 Q
 ;
ACHK(NMID,BKGND) ;EP - Check for '36' auto-codable ICD-10s
 ;
 ;Only one SNOMED proc at a time
 I '$G(BKGND)  L +^BSTS(9002318.1,0):0 E  W !!,"A Local Cache Refresh is Already Running. Please Try Later" H 3 Q
 L -^BSTS(9002318.1,0)
 ;
 ;Make sure ICD92SNOMED process isn't running
 I '$G(BKGND) L +^TMP("BSTSICD2SMD"):0 E  W !!,"An ICD9 to SNOMED Background Process is Already Running. Please Try Later" H 3 Q
 L -^TMP("BSTSICD2SMD")
 ;
 ;Validate input
 I $G(NMID)="" Q
 I $G(NMID)'=32777 Q
 ;
 NEW LMDT,STS,BSTS,ERROR,NMIEN
 NEW VAR,SITE,VRSN,TRY
 NEW $ESTACK,$ETRAP S $ETRAP="D ERR^BSTSVRSC D UNWIND^%ZTER" ; SAC 2009 2.2.3.17
 ;
 ;Get codeset
 S NMIEN=$O(^BSTS(9002318.1,"B",NMID,"")) Q:NMIEN=""
 ;
 ;Online?
 S STS="" F TRY=1:1:5 D  I +STS=2 Q
 . D RESET^BSTSWSV1  ;Reset the DTS link to on
 . S STS=$$VERSIONS^BSTSAPI("VRSN") ;Try
 ;
 ;Queue process
 I +STS=2 D CDJOB^BSTSUTIL(NMIEN,"I10")
 ;
 Q
 ;
ACODE ;EP - Update SNOMED '36' auto-codable ICD-10 mappings
 ;
 ;Tasked above.  Variable NMIEN should be set
 ;
 S NMIEN=$G(NMIEN) I NMIEN="" Q
 ;
 ;Lock
 L +^BSTS(9002318.1,0):0 E  Q
 ;
 NEW BSTSWS,RESULT,NMID,STS,VRSN,BSTS,ICONC,CIEN,X1,X2,X,RUNDT,DEBUG,NVIEN,NVLCL,FWAIT,TRY,FCNT,ABORT,TRY,CVRSN
 NEW CDST
 ;
 ;Get run date
 S RUNDT=DT
 ;
 ;Get external codeset Id
 S NMID=$$GET1^DIQ(9002318.1,NMIEN_",",.01,"I") I NMID="" G XACODE
 ;
 ;Update LAST VERSION CHECK now so proc won't keep getting called
 S BSTS(9002318.1,NMIEN_",",.05)=DT
 D FILE^DIE("","BSTS","ERROR")
 ;
 ;Online?
 S STS="" F TRY=1:1:5 D  I +STS=2 Q
 . D RESET^BSTSWSV1  ;Reset the DTS link to on
 . S STS=$$VERSIONS^BSTSAPI("VRSN") ;Try
 I +STS'=2 G XACODE
 ;
 ;Reset Monitoring GBL
 K ^XTMP("BSTSLCMP")
 ;
 ;Get later date
 S X1=DT,X2=60 D C^%DTC
 ;
 ;Log updates
 F CDST=32777,32779,32780 D
 . NEW CVRSN,NM
 . ;
 . S NM=$O(^BSTS(9002318.1,"B",CDST,"")) Q:NM=""
 . ;
 . ;Get current version
 . S CVRSN=$$GET1^DIQ(9002318.1,NM_",",.04,"I")
 . ;
 . ;Make a log entry
 . D LOG^BSTSAPIL("UPDS",CDST,"CURRENT",CVRSN)
 ;
 ;Make a log entry
 D LOG^BSTSAPIL("UPDS",36,"SUBSET","")
 ;
 ;Set up Monitoring GBL
 S ^XTMP("BSTSLCMP",0)=X_U_DT_U_"SNOMED '36' auto-codable ICD-10 mapping running"
 ;
 ;BSTS*1.0*4;Mark codeset as OOD
 D CLLMDT^BSTSVOF1(36)
 ;
 ;Make call to proc custom codeset
 S ^XTMP("BSTSLCMP","STS")="Performing Refresh from DTS"
 S DEBUG=""
 S BSTSWS("REVIN")=$$FMTE^XLFDT(DT,"7")
 S STS=$$ACODE^BSTSWSV1("RESULT",.BSTSWS,DEBUG)
 ;
 ;Failure check
 I +STS=0 G XACODE
 I $D(^XTMP("BSTSLCMP","QUIT")) G XACODE
 ;
 ;Retrieve Failover Vars
 S MFAIL=$$FPARMS^BSTSVOFL()
 S FWAIT=$P(MFAIL,U,2)
 S MFAIL=$P(MFAIL,U)
 ;
 ;Loop through again and proc skipped entries (no longer mapped)
 S ^XTMP("BSTSLCMP","STS")="Looking for skipped entries (no longer mapped)"
 S ABORT=0,ICONC="" F  S ICONC=$O(^BSTS(9002318.4,"C",36,ICONC)) Q:ICONC=""  D  Q:$D(^XTMP("BSTSLCMP","QUIT"))
 . S CIEN="" F  S CIEN=$O(^BSTS(9002318.4,"C",36,ICONC,CIEN)) Q:CIEN=""  D  Q:$D(^XTMP("BSTSLCMP","QUIT"))
 .. NEW DTSID,VAR
 .. ;
 .. ;Skip partials
 .. I $$GET1^DIQ(9002318.4,CIEN_",",.03,"I")="P" Q
 .. ;
 .. ;Quit if entry updated
 .. I $$GET1^DIQ(9002318.4,CIEN_",",".12","I")'<RUNDT Q
 .. ;
 .. ;Only update if ICD info on file
 .. I $O(^BSTS(9002318.4,CIEN,3,"B",""))="" Q
 .. ;
 .. ;Update monitor
 .. S ^XTMP("BSTSLCMP","STS")="Updating skipped entry "_CIEN
 .. ;
 .. ;Get DTSID
 .. S DTSID=$$GET1^DIQ(9002318.4,CIEN_",",.08,"I") Q:DTSID=""
 .. ;
 .. ;Refresh entry - Hang max of 12 times
 .. S (FCNT,STS)=0 F TRY=1:1:(12*MFAIL) D  I +STS=2!(STS="0^") Q
 ... D RESET^BSTSWSV1  ;Reset the DTS link to on
 ... S STS=$$DTSLKP^BSTSAPI("VAR",DTSID_"^36") I +STS=2!(STS="0^") Q
 ... S FCNT=FCNT+1 I FCNT'<MFAIL D  ;Fail handling
 .... S ABORT=$$FAIL^BSTSVOFL(MFAIL,FWAIT,TRY,"ACODE^BSTSVRSC - Getting update for entry: "_DTSID)
 .... I ABORT=1 S ^XTMP("BSTSLCMP","QUIT")=1 D ELOG^BSTSVOFL("ICD10 MAPPING REFRESH FAILED ON DETAIL ENTRY: "_DTSID)
 .... S FCNT=0
 ;
 ;Failure check
 I +STS=0 G XACODE
 I $D(^XTMP("BSTSLCMP","QUIT")) G XACODE
 ;
 ;BSTS*1.0*6;Update both 32777 and 32779
 ;BSTS*1.0*7;Update 32780 and LAST SUBSET RUN
 D
 . NEW BSTS,ERROR,NMID36
 . S NMID36=$O(^BSTS(9002318.1,"B",36,"")) Q:NMID36=""
 . S BSTS(9002318.1,NMID36_",",.1)=DT
 . D FILE^DIE("","BSTS","ERROR")
 ;
 F NMID=32777,32779,32780 D
 . ;
 . S NMIEN=$O(^BSTS(9002318.1,"B",NMID,"")) Q:NMIEN=""
 . ;
 . ;Update current version
 . ;
 . ;Get current version from codeset multiple
 . S NVIEN=$O(^BSTS(9002318.1,NMIEN,1,"A"),-1)
 . S NVLCL="" I +NVIEN>0 D
 .. NEW DA,IENS
 .. S DA(1)=NMIEN,DA=+NVIEN,IENS=$$IENS^DILF(.DA)
 .. S NVLCL=$$GET1^DIQ(9002318.11,IENS,".01","I")
 . ;
 . ;Now save CURRENT VERSION
 . I NVLCL]"" D
 .. NEW BSTS,ERROR
 .. S BSTS(9002318.1,NMIEN_",",.04)=NVLCL
 .. D FILE^DIE("","BSTS","ERROR")
 ;
 ;BSTS*2.0*1;Move call to BSTSVOF1
 D UIFS^BSTSVOF1(.ZTQUEUED)
 ;
 ;Proc VUID and NDC
 S STS=$$NVLKP^BSTSVOFL(MFAIL,FWAIT)
 ;
 ;Log updates
 F CDST=32777,32779,32780 D
 . NEW CVRSN,NM
 . ;
 . S NM=$O(^BSTS(9002318.1,"B",CDST,"")) Q:NM=""
 . ;
 . ;Get current version
 . S CVRSN=$$GET1^DIQ(9002318.1,NM_",",.04,"I")
 . ;
 . ;Make a log entry
 . D LOG^BSTSAPIL("UPDE",CDST,"CURRENT",CVRSN)
 ;
 ;Make a log entry
 D LOG^BSTSAPIL("UPDE",36,"SUBSET","")
 ;
 ;Reset Monitoring GBL
XACODE NEW FAIL
 S FAIL=$S($D(^XTMP("BSTSLCMP","QUIT")):1,1:0)
 K ^XTMP("BSTSLCMP")
 S:FAIL ^XTMP("BSTSLCMP","QUIT")=1
 ;
 ;Unlock
 L -^BSTS(9002318.1,0)
 ;
 Q
 ;
A9CHK(NMID,BKGND) ;EP - Check for '36' auto-codable ICD-9s
 ;
 ;ICD9 updates no longer supported
 Q
 ;
A9CODE ;EP - Update SNOMED '36' auto-codable ICD-9 mappings
 ;
 ;ICD9 updates no longer supported
 Q
 ;
ERR ;
 D ^%ZTER
 Q

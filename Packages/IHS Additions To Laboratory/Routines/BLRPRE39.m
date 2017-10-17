BLRPRE39 ; IHS/MSC/MKK - IHS Lab Patch LR*5.2*1039 Pre/Post Routine ; 01-Jun-2016 07:27 ; MKK
 ;;5.2;IHS LABORATORY;**1039**;NOV 01, 1997;Build 38
 ;
ENVICHEK ; EP - Environment Checker
 NEW BLRVERN,CP,ERRARRAY,ROWSTARS,RPMS,RPMSVER,TODAY,WOTCNT
 ;
 Q:$$ENVIVARS()="Q"
 ;
 D ENVHEADR^BLRKIDS2(CP,RPMSVER,RPMS),BLANK
 ;
 D NEEDIT^BLRKIDS2(CP,"LR","5.2",1038,.ERRARRAY),BLANK  ; Lab Pre-Requisite
 ;
 I XPDABORT>0 D SORRYEND^BLRKIDS2(.ERRARRAY,CP)   Q     ; ENVIRONMENT HAS ERROR(S)
 ;
 D BOKAY^BLRKIDS2("ENVIRONMENT")
 ;
 Q
 ;
ENVIVARS() ; EP - Setup the Environment variables
 D SETEVARS
 ;
 S TODAY=$$DT^XLFDT
 S WOTCNT=$$WOTCNT(BLRVERN)
 S ROWSTARS=$TR($J("",65)," ","*")     ; Row of asterisks
 ;
 S ^XTMP(BLRVERN,0)=$$HTFM^XLFDT(+$H+90)_"^"_$$DT^XLFDT_"^IHS Lab Patch "_CPSTR
 M ^XTMP(BLRVERN,TODAY,WOTCNT,"DUZ")=DUZ
 S ^XTMP(BLRVERN,TODAY,WOTCNT,"BEGIN")=$$NOW^XLFDT
 ;
 S XUMF=1
 ;
 I $G(XPDNM)="" D SORRY^BLRKIDS2(CP,"XPDNM not defined or 0.")  Q "Q"
 ;
 S RPMS=$P(XPDNM,"*",1)      ; RPMS Module
 S RPMSVER=$P(XPDNM,"*",2)   ; RPMS Version
 ;
 I +$G(DUZ)<1 D SORRY^BLRKIDS2(CP,"DUZ UNDEFINED OR 0.")  Q "Q"
 I $$GET1^DIQ(200,DUZ,"NAME")="" D SORRY^BLRKIDS2(CP,"Installer cannot be identified!")  Q "Q"
 ;
 S XPDNOQUE=1        ; No Queuing Allowed
 ;
 ; The following line prevents the "Disable Options..." and "Move
 ; Routines..." questions from being asked during the install.
 F X="XPO1","XPZ1","XPZ2","XPI1" S XPDDIQ(X)=0,XPDDIQ(X,"B")="NO"
 ;
 S XPDABORT=0        ; KIDS install Flag
 ;
 D HOME^%ZIS         ; Reset/Initialize IO variables
 D DTNOLF^DICRW      ; Set DT variable without a Line Feed
 ;
 Q "OK"
 ;
PRE ; EP - Ask for confirmation of Backup
 NEW BLRVERN,CNT,CP,CPSTR,CRTLINE,DIRASTR,FDAROOT,IEN,IENS,MSGROOT
 NEW BCKUPCNT                   ; Current Patch,Backup count
 ;
 D SETEVARS
 ;
 S XUMF=1
 ;
 D INITSCR
 D TITLE^XPDID(CPSTR)
 D BLANK,BMES^XPDUTL("Pre-Install begins "_$$UP^XLFSTR($$HTE^XLFDT($H,"5MPZ"))_".")
 ;
 Q:$$BACKUP()="Q"
 ;
 D INITSCR
 D TITLE^XPDID(CPSTR)
 D BLANK,BMES^XPDUTL("Pre-Install of "_BLRVERN_" Continues.")
 ;
 ; Do Pre-install stuff here.
 D SAVEOFF
 ;
 D FILEDEL  ; It's been decided that there are IHS UCUM updates. 08/25/2016.
 ;
 D BMES^XPDUTL("Pre-Install ends "_$$UP^XLFSTR($$HTE^XLFDT($H,"5MPZ"))_".")
 H 2  ; Pause so user can see the message.
 ;
 ; D EXIT^XPDID
 Q
 ;
BACKUP() ; EP - Confirm Backup
 NEW BCKUPCNT,SUCCSTR
 ;
 D SHOWBOX^BLRGMENU("ATTENTION",10,70)
 ;
 D ^XBFMK
 S DIR(0)="Y"
 S DIR("B")="NO"
 I $G(IOST)["C-VT" S SUCCSTR=$C(27)_"[1;7;5m"_">> SUCCESSFUL <<"_$C(27)_"[0m"
 E  S SUCCSTR=">> SUCCESSFUL <<"
 S DIR("A")=$J("",10)_"Has a "_SUCCSTR_" backup been performed?"
 S DIR("?")="A *NO* answer will abort the install process."
 D ^DIR
 W !
 ;
 Q:+$G(Y)'=1 $$NOBACKUP()       ; If BACKUP not performed, then ABORT installation.
 ;
 Q:+$G(DEBUG) $$OKBACKUP()      ; DEBUG will *NOT* store Backup Confirmation data.
 ;
 ; Store backup confirmation person & date/time
 S BCKUPCNT=1+$O(^BLRINSTL("LAB PATCH",CP,"BACKUP CONFIRMED BY",0),-1)
 S ^BLRINSTL("LAB PATCH",CP,"BACKUP CONFIRMED BY",BCKUPCNT)=$P($G(^VA(200,DUZ,0)),U)
 S ^BLRINSTL("LAB PATCH",CP,"BACKUP CONFIRMED BY",BCKUPCNT,"DUZ")=DUZ
 S ^BLRINSTL("LAB PATCH",CP,"BACKUP CONFIRMED BY",BCKUPCNT,"DATE/TIME")=$$HTE^XLFDT($H,"5MZ")
 ;
 Q $$OKBACKUP()
 ;
OKBACKUP() ; EP - Backup Confirmed.
 D BLANK
 D OKAY^BLRKIDSU("SUCCESSFUL system backup CONFIRMED by: "_$$GET1^DIQ(200,DUZ,"NAME")_".",5)
 I +$G(DEBUG) D
 . D BLANK
 . D TABMENU^BLRKIDSU("DEBUG will **NOT** Store Backup Confirmation.",10)
 ;
 H 2     ; Pause to let the user see the message.
 Q "OK"
 ;
NOBACKUP() ; EP - No backup message
 S XPDABORT=1
 D PASSMESG^BLRKIDS2("ATTENTION")
 D TABMESG^BLRKIDSU("SUCCESSFUL system backup has >>> NOT <<< been confirmed.",15)
 D TABMESG^BLRKIDSU("Installer: "_$$GET1^DIQ(200,DUZ,"NAME")_" ["_DUZ_"].",25)
 D TABMESG^BLRKIDSU("Install Aborting.",15)
 H 2     ; Pause to let the user see the message.
 Q "Q"
 ;
DEBUG ; EP - Debugging Line Label for environment checker
 NEW BEGTIME,BLRVERN,CP,CPSTR,DEBUG,ENDTIME,ERRARRAY,LASTLOGI
 NEW LRBLNOW,PATCHNUM,PREREQ,QFLG,ROWSTARS,RPMS,RPMSVER,STR
 NEW SUCCSTR,TODAY,WHATCNT,WOTCNT,XPDABORT,XPDENV,XPDNM
 ;
 ; NOTE: DEBUG will not store "Backup" data.
 ;
 D SETEVARS
 ;
 W !!
 W "Debug Routine ",BLRVERN," Begins:",!!
 ;
 S DEBUG=1    ; Don't Send Alerts
 ;
 W !
 S XPDNM=CPSTR
 S (XPDENV,XPDABORT)=0
 ;
 D PRE
 Q:XPDABORT
 ;
 W !!!
 ;
 D ^XBFMK
 S DIR(0)="YO"
 S DIR("B")="NO"
 S DIR("A")="Test Post Install Code"
 D ^DIR
 ;
 D:+$G(Y)=1 POST
 ;
 W !!,"Debug Routine ",BLRVERN," Ends.",!!
 Q
 ;
POST ; EP - Post-Install
 NEW BLRVERN,CP,CPSTR,PATCHNUM,TODAY,WOTCNT
 ;
 D BLANK,BMES^XPDUTL("Post-Install begins "_$$UP^XLFSTR($$HTE^XLFDT($H,"5MPZ"))_".")
 D SETEVARS
 ;
 S TODAY=$$DT^XLFDT
 S WOTCNT=$$WOTCNT(BLRVERN)
 ;
 D ADDOPTS    ; Add new option to BLRMENU
 ;
 D FORCENO    ; Force new parameters to NO
 ;
 D P1038UPD   ; Update file 19.2 for new options from LR*5.2*1038
 ;
 D BLANK,BMES^XPDUTL("Laboratory Patch "_CPSTR_" INSTALL complete."),BLANK
 ;
 Q:+$G(DEBUG)
 ;
 D POSTMAIL(BLRVERN,CPSTR)
 ;
 S ^XTMP(BLRVERN,TODAY,WOTCNT,"END")=$$NOW^XLFDT
 Q
 ;
ADDOPTS ; EP - Add new options
 D ADDOPTS^BLRKIDS2("BLRMENU","BLR CREAT CLEAR DELTA CHECK","CCCD")
 D ADDOPTS^BLRKIDS2("BLRMENU","BLR CREATININE CLEARANCE TEST","TCCR")
 D ADDOPTS^BLRKIDS2("BLRMENU","BLR EMER ALERT Parameter Edit","EAPE")
 D ADDOPTS^BLRKIDS2("BLRMENU","BLR EDIT HIGH URG MGRP","EMGP")
 D ADDOPTS^BLRKIDS2("BLRMENU","BLR COLL DT PCC VIS PARAM EDIT","CDVC")
 D ADDOPTS^BLRKIDS2("BLRMENU","BLR MI INTERIM BY LOC","MILO")
 D ADDOPTS^BLRKIDS2("BLRREFLABMENU","BLR REFLAB TESTS","NMAP")
 D ADDOPTS^BLRKIDS2("BLRMENU","BLRF60SR","SF60")
 D ADDOPTS^BLRKIDS2("BLRMENU","BLR MULTI ACCESSION CANCEL","MACC")
 Q
 ;
FORCENO ; EP - Force new parameters to be NO
 NEW (DEBUG,DILOCKTM,DISYS,DT,DTIME,DUZ,IO,IOBS,IOF,IOM,ION,IOS,IOSL,IOST,IOT,IOXY,U,XPARSYS,XQXFLG)
 ;
 S BLRVERN=$TR($P($T(+1),";")," ")
 ;
 I +$G(DEBUG) D  Q      ; If DEBUG, just print messages & quit
 . S TAB=$J("",10)
 . D BLANK,OKAY^BLRKIDSU("DEBUG: FORCENO^"_BLRVERN,4)
 . D MES^XPDUTL(TAB_"DEBUG will *NOT* modify BLR EMERGENCY ALERT parameter.")
 . D MES^XPDUTL(TAB_"DEBUG will *NOT* modify BLR COLL DT PCC VISIT CREATION parameter.")
 ;
 F PARAMETER="BLR COLL DT PCC VISIT CREATION","BLR EMERGENCY ALERT"  D
 . K ERRS
 . D EN^XPAR("PKG",PARAMETER,,"NO",.ERRS)
 . I +$G(ERRS) D
 .. D BLANK,MES^XPDUTL(PARAMETER_" parameter not modified."),BLANK
 .. D STORERRS^BLREMERA(ERRS,PARAMETER)
 Q
 ;
 ;
SAVEOFF ; EP - Save off all routines being updated by this patch into the ^rBACKUP global.
 NEW (DEBUG,DILOCKTM,DISYS,DT,DTIME,DUZ,IO,IOBS,IOF,IOM,ION,IOS,IOSL,IOST,IOT,IOXY,U,XPARSYS,XQXFLG)
 ;
 S BLRVERN=$TR($P($T(+1),";")," ")
 ;
 I +$G(DEBUG) D  Q      ; If DEBUG, just print messages & quit
 . S TAB=$J("",10)
 . D BLANK,OKAY^BLRKIDSU("DEBUG: SAVEOFF^"_BLRVERN,4)
 . D BMES^XPDUTL(TAB_"DEBUG does *NOT* Save off routines.")
 ;
 S PATCH=$P($T(+2),"*",3)
 S BUILD="LR*5.2*"_PATCH
 S PATCHIEN=+$O(^XPD(9.6,"B",BUILD,"A"),-1)      ; Get the most current Patch IEN
 Q:PATCHIEN<1      ; If not in BUILD file, skip
 ;
 D BMES^XPDUTL("Backing up routines.")
 S RTN="",(CNT,RTNCNT)=0
 F  S RTN=$O(^XPD(9.6,PATCHIEN,"KRN",9.8,"NM","B",RTN))  Q:RTN=""  D
 . S RTNPATCH=+$RE($P($RE($TR($P($G(^ROUTINE(RTN,0,2)),";",5),"*")),","))
 . Q:RTNPATCH<1         ; If RTN not in the ^ROUTINE global, skip
 . Q:RTNPATCH'<PATCH    ; Only versions < this patch
 . ;
 . S RTNCNT=RTNCNT+1
 . K ERRS,RTNA
 . F LN=0:1:$G(^ROUTINE(RTN,0,0))  S RTNA(LN)=$G(^ROUTINE(RTN,0,LN))
 . S X=$$ROUTINE^%R(RTN_".INT",.RTNA,.ERRS,"CSB")
 . S NOW=$H
 . S ^BLRINSTL("LAB PATCH",PATCH,"SAVEOFF",NOW)=$$HTE^XLFDT(NOW,"5MZ")
 . S ^BLRINSTL("LAB PATCH",PATCH,"SAVEOFF",NOW,RTN)=$S($D(ERRS)>1:"ERRORS",1:"OK")
 . I $D(ERRS)'>1 D
 .. D OKAY^BLRKIDSU("Routine "_RTN_" backed up.",4)
 .. S CNT=CNT+1
 ;
 I RTNCNT D
 . S TAB=$J("",5)
 . D BMES^XPDUTL(TAB_RTNCNT_" routines analyzed.")
 . D BMES^XPDUTL(TAB_TAB_CNT_" routines backed up.")
 Q
 ;
 ;
P1038UPD ; EP - Update File 19.2 with the new Options from LR*5.2*1038
 NEW CNT,ERRS,FDA,IEN,OPT
 ;
 S CNT=0
 F OPT="IHS LAB BLRUER TASK","IHS LAB BLRSORA TASK","IHS LAB BLRSORC TASK"  D
 . Q:$$FIND1^DIC(19.2,,,OPT)      ; If already in file 19.2, skip
 . ;
 . S IEN=$$FIND1^DIC(19,,,OPT)
 . Q:IEN<1                        ; If cannot find IEN of OPT, skip
 . ;
 . K ERRS,FDA
 . S FDA(19.2,"+1,",.01)=IEN
 . D UPDATE^DIE("","FDA",,"ERRS")
 . Q:$D(ERRS)                     ; If Error, skip.
 . ;
 . S CNT=CNT+1
 . D:CNT=1 BLANK
 . D OKAY^BLRKIDSU("Added "_OPT_" to file 19.2.")
 D:CNT BLANK
 ;
 Q
 ;
 ;
 ; ========================= UTILITIES FOLLOW ==========================
 ;
SETEVARS ; EP - SET standard "Enviroment" VARiables.
 S (CP,PATCHNUM)=$P($T(+2),"*",3)
 S CPSTR="LR*5.2*"_CP
 D SETBLRVS
 Q
 ;
SETBLRVS(TWO) ; EP - Set the BLRVERN variable(s)
 K BLRVERN,BLRVERN2
 ;
 S BLRVERN=$P($P($T(+1),";")," ")
 S:$L($G(TWO)) BLRVERN2=$G(TWO)
 Q
 ;
BLANK ; EP - Blank Line
 D MES^XPDUTL("")
 Q
 ;
MESCNTR(STR) ; EP - Center a line and use XPDUTL to display it
 D MES^XPDUTL($$CJ^XLFSTR(STR,IOM))
 Q
 ;
WOTCNT(BLRVERN) ; EP - Counter for ^XTMP
 NEW CNT,TODAY
 ;
 S TODAY=$$DT^XLFDT
 ;
 S CNT=1+$G(^XTMP(BLRVERN,0,TODAY))
 S ^XTMP(BLRVERN,0,TODAY)=CNT
 Q $TR($J(CNT,3)," ","0")
 ;
INITSCR ; EP - Initialize screen. Cloned from INIT^XPDID
 N X,XPDSTR
 I IO'=IO(0)!(IOST'["C-VT") S XPDIDVT=0 Q
 I $T(PREP^XGF)="" S XPDIDVT=0 Q
 D PREP^XGF
 S XPDIDVT=1,X="IOSTBM",XPDSTR=""
 D ENDR^%ZISS
 S IOTM=3,IOBM=IOSL-4
 W @IOSTBM
 D FRAME^XGF(IOTM-2,0,IOTM-2,IOM-1) ; Top line
 ; D FRAME^XGF(IOBM+1,0,IOBM+1,IOM-1) ; Bottom line
 D IOXY^XGF(IOTM-2,0)
 Q
 ;
POSTMAIL(BLRVERN,CPSTR) ; EP - Post Install MailMan Message
 NEW STR
 ;
 S STR(1)=" "
 S STR(2)=$J("",10)_"POST INSTALL of "_BLRVERN_" Routine."
 S STR(3)=" "
 S STR(4)=$J("",15)_"Laboratory Patch "_CPSTR_" INSTALL completed."
 S STR(5)=" "
 ;
 Q:+$G(DEBUG)   ; No MailMan messages during debugging
 ;
 ; Send E-Mail to LMI Mail Group & Installer
 D MAILALMI^BLRUTIL3("Laboratory Patch "_CPSTR_" INSTALL complete.",.STR,BLRVERN)
 ;
 Q
 ;
 ; The following IHS UCUM deletions are necessary because the OVERWRITE flag in KIDS
 ; does *NOT* work: any data in the target system will not be overwritten if it's
 ; different from the incoming data. (Example: IEN 410 on SandPre.)
FILEDEL ; EP
 NEW CNT,IEN
 ;
 D DISABLE^%NOJRN            ; Disable Journaling prior to deletions
 ;
 D BMES^XPDUTL("    IHS UCUM Deletions")
 S IEN=.9999999,CNT=0
 F  S IEN=$O(^BLRUCUM(IEN))  Q:IEN<1  D
 . S CNT=CNT+1
 . I CNT#100=0  W "."  W:$X>75 !,?4
 . D ^XBFMK
 . S DIK="^BLRUCUM(",DA=IEN
 . Q:$G(DEBUG)="YES"        ; If DEBUG set, don't delete anything
 . D ^DIK
 D BOKAY^BLRKIDS2("IHS UCUM Deletions Complete.",10)
 ;
 W !
 ;
 D ENABLE^%NOJRN             ; Restore Journaling
 Q

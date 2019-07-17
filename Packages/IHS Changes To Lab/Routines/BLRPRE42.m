BLRPRE42 ; IHS/MSC/MKK - RPMS Lab Patch LR*5.2*1042 Pre/Install/Post Routine ; 15-Nov-2016 08:22 ; MKK
 ;;5.2;IHS LABORATORY;**1042**;NOV 01, 1997;Build 9
 ;
ENVICHEK ; EP - Environment Checker
 NEW BLRVERN,BLRVERN2,CP,ERRARRAY,ROWSTARS,RPMS,RPMSVER,TODAY,WOTCNT
 ;
 Q:$$ENVIVARS()="Q"
 ;
 D ENVHEADR^BLRKIDS2(CP,RPMSVER,RPMS),BLANK
 ;
 D NEEDIT^BLRKIDS2(CP,"LR","5.2",(CP-1),.ERRARRAY),BLANK  ; Lab Pre-Requisite
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
 NEW BLRVERN,BLRVERN2,CNT,CP,CPSTR,CRTLINE,DIRASTR,FDAROOT,IEN,IENS,MSGROOT
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
 I $G(IOST)["C-VT" S SUCCSTR=$C(27)_"[1;7;5m"_">> SUCCESSFUL <<"_$C(27)_"[0m"
 E  S SUCCSTR=">> SUCCESSFUL <<"
 ;
 D ^XBFMK
 S DIR(0)="Y"
 S DIR("B")="NO"
 S DIR("A")=$J("",10)_"Has a "_SUCCSTR_" backup been performed?"
 S DIR("?")="A *NO* answer will abort the installation process."
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
 NEW BLRVERN,BLRVERN2,CP,CPSTR,PATCHNUM,TODAY,WOTCNT
 ;
 D SETEVARS
 ;
 D BLANK
 D BMES^XPDUTL("Laboratory Patch "_CPSTR_" POST INSTALL begins at "_$$UP^XLFSTR($$HTE^XLFDT($H,"5MPZ"))_".")
 D BLANK
 ;
 S TODAY=$$DT^XLFDT
 S WOTCNT=$$WOTCNT(BLRVERN)
 ;
 D FORCENO    ; Force any new parameters to NO
 ;
 D BLANK
 D BMES^XPDUTL("Laboratory Patch "_CPSTR_" POST INSTALL ends at "_$$UP^XLFSTR($$HTE^XLFDT($H,"5MPZ"))_".")
 D BLANK
 ;
 D POSTMAIL(BLRVERN,CPSTR)
 ;
 S ^XTMP(BLRVERN,TODAY,WOTCNT,"END")=$$NOW^XLFDT
 Q
 ;
FORCENO ; EP - Force any new parameters to be NO
 NEW (DEBUG,DILOCKTM,DISYS,DT,DTIME,DUZ,IO,IOBS,IOF,IOM,ION,IOS,IOSL,IOST,IOT,IOXY,U,XPARSYS,XQXFLG)
 ;
 D SETBLRVS
 Q:'$$GETPARS(.PARSLIST)
 ;
 I +$G(DEBUG) D  Q      ; If DEBUG, just print messages & quit
 . S TAB=$J("",10)
 . D BLANK,OKAY^BLRKIDSU("DEBUG: FORCENO^"_BLRVERN,4)
 . S PARAMETER=""
 . F  S PARAMETER=$O(PARSLIST(PARAMETER))  Q:PARAMETER=""  D
 .. D MES^XPDUTL(TAB_"DEBUG will *NOT* modify "_PARAMETER_" parameter.")
 ;
 S PARAMETER=""
 F  S PARAMETER=$O(PARSLIST(PARAMETER))  Q:PARAMETER=""  D
 . K ERRS
 . D EN^XPAR("PKG",PARAMETER,,"NO",.ERRS)
 . I +$G(ERRS) D
 .. D BLANK,MES^XPDUTL(PARAMETER_" parameter not modified."),BLANK
 .. D STORERRS^BLREMERA(ERRS,PARAMETER)
 Q
 ;
GETPARS(PARSLIST) ; EP - Function to get Parameters from BUILD file
 NEW (PARSLIST,DEBUG,DILOCKTM,DISYS,DT,DTIME,DUZ,IO,IOBS,IOF,IOM,ION,IOS,IOSL,IOST,IOT,IOXY,U,XPARSYS,XQXFLG)
 ;
 D SETEVARS
 ;
 S BUILDIEN=$$FIND1^DIC(9.6,,,CPSTR)
 Q:BUILDIEN<1 0
 ;
 S PARAMTRS="",CNT=0
 F  S PARAMTRS=$O(^XPD(9.6,BUILDIEN,"KRN",8989.51,"NM","B",PARAMTRS))  Q:PARAMTRS=""  D
 . S PARSLIST(PARAMTRS)="",CNT=CNT+1
 ;
 Q CNT
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
XTMPHEAD ; EP - Initialize XTMP for this patch
 NEW BLRVERN,BLRVERN2,PTCHNAME
 D SETBLRVS
 S PTCHNAME=$$TRIM^XLFSTR($P($P($P($T(+1),";",2),"-",2),"Pre"),"LR"," ")
 S ^XTMP(BLRVERN,0)=$$FMADD^XLFDT($$DT^XLFDT,30)_U_$$DT^XLFDT_U_PTCHNAME
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
 Q:+$G(DEBUG)   ; No MailMan messages during debugging
 ;
 NEW STR
 ;
 S STR(1)=" "
 S STR(2)=$J("",10)_"POST INSTALL of "_BLRVERN_" Routine."
 S STR(3)=" "
 S STR(4)=$J("",15)_"Laboratory Patch "_CPSTR_" INSTALL completed."
 S STR(5)=" "
 ;
 ; Send E-Mail to LMI Mail Group & Installer
 D MAILALMI^BLRUTIL3("Laboratory Patch "_CPSTR_" INSTALL complete.",.STR,BLRVERN)
 ;
 Q

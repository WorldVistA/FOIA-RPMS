LR329 ;VA/DALOI/JMC - LR*5.2*329 PATCH ENVIRONMENT CHECK ROUTINE ;24 Jan 2004
 ;;5.2;LAB SERVICE;**1031**;NOV 01, 1997
 ;
 ;;VA LR Patche(s): 329
 ;
EN ; Does not prevent loading of the transport global.
 ; Environment check is done only during the install.
 ;
 N XQA,XQAMSG
 ;
 I '$G(XPDENV) D  Q
 . S XQAMSG="Transport global for patch "_$G(XPDNM,"Unknown patch")_" loaded on "_$$HTE^XLFDT($H)
 . S XQA("G.LMI")=""
 . ; D SETUP^XQALERT
 . ; D BMES^XPDUTL($$CJ^XLFSTR("Sending transport global loaded alert to mail group G.LMI",80))
 ;
 D BMES^XPDUTL($$CJ^XLFSTR("--- Installation of patch "_$G(XPDNM,"Unknown patch")_" started on "_$$HTE^XLFDT($H)_" ---",IOM))    ; IHS/MSC/MKK
 ;
 S XQAMSG="Installation of patch "_$G(XPDNM,"Unknown patch")_" started on "_$$HTE^XLFDT($H)
 S XQA("G.LMI")=""
 ; D SETUP^XQALERT
 ; D BMES^XPDUTL($$CJ^XLFSTR("Sending install started alert to mail group G.LMI",80))
 ;
 D CHECK
 D EXIT
 Q
 ;
CHECK ; Perform environment check
 I $S('$G(IOM):1,'$G(IOSL):1,$G(U)'="^":1,1:0) D  Q
 . D BMES^XPDUTL($$CJ^XLFSTR("Terminal Device is not defined",80))
 . S XPDQUIT=2
 I $S('$G(DUZ):1,$D(DUZ)[0:1,$D(DUZ(0))[0:1,1:0) D  Q
 . D BMES^XPDUTL($$CJ^XLFSTR("Please log in to set local DUZ... variables",80))
 . S XPDQUIT=2
 I $P($$ACTIVE^XUSER(DUZ),"^")'=1 D  Q
 . D BMES^XPDUTL($$CJ^XLFSTR("You are not a valid user on this system",80))
 . S XPDQUIT=2
 S XPDIQ("XPZ1","B")="NO"
 Q
 ;
EXIT ;
 ; I $G(XPDQUIT) D BMES^XPDUTL($$CJ^XLFSTR("--- Install Environment Check FAILED ---",80))
 ; I '$G(XPDQUIT) D BMES^XPDUTL($$CJ^XLFSTR("--- Environment Check is Ok ---",80))
 ;
 I $G(XPDQUIT) D BMES^XPDUTL($$CJ^XLFSTR("--- Install Environment Check for "_$G(XPDNM,"Unknown patch")_" FAILED ---",80))     ; IHS/MSC/MKK
 I '$G(XPDQUIT) D BMES^XPDUTL($$CJ^XLFSTR("--- Install Environment Check for "_$G(XPDNM,"Unknown patch")_" is Ok ---",80))     ; IHS/MSC/MKK
 Q
 ;
PRE ; KIDS Pre install
 D BMES^XPDUTL($$CJ^XLFSTR("*** Pre install started ***",80))
 D BMES^XPDUTL($$CJ^XLFSTR("*** No action required ***",80))
 D BMES^XPDUTL($$CJ^XLFSTR("*** Pre install completed ***",80))
 Q
 ;
POST ; KIDS Post install
 N XQA,XQAMSG,ZTDTH,ZTSK,ZTRTN,ZTDESC,ZTIO,ZTSAVE
 D BMES^XPDUTL($$CJ^XLFSTR("*** Post install started ***",80))
 ;
 ; Task job to cleanup LR(68,"C" x-ref now
 D BMES^XPDUTL($$CJ^XLFSTR("*** Tasking check/cleanup ""C"" cross reference on ACCESSION file (#68) ***",80))
 S ZTRTN="CHKUID^LROC",ZTDESC="Check/cleanup file #68 'C' and 'D' x-ref"
 S ZTIO="",ZTDTH=$H
 D ^%ZTLOAD
 D BMES^XPDUTL($$CJ^XLFSTR("*** Task #"_ZTSK_" tasked to run ***",80))
 ;
 ; D BMES^XPDUTL($$CJ^XLFSTR("*** Post install completed ***",80))
 ; D BMES^XPDUTL($$CJ^XLFSTR("Sending install completion alert to mail group G.LMI",80))
 ;
 D BMES^XPDUTL($$CJ^XLFSTR("*** Post install for "_$G(XPDNM,"Unknown patch")_" completed ***",80)) ; IHS/MSC/MKK
 ;
 S XQAMSG="Installation of patch "_$G(XPDNM,"Unknown patch")_" completed on "_$$HTE^XLFDT($H)
 S XQA("G.LMI")=""
 ; D SETUP^XQALERT
 ;
 S XQAMSG="LIM: Review description for "_$G(XPDNM,"Unknown patch")_" use KIDS:Utilities:Build File Print"
 S XQA("G.LMI")=""
 ; D SETUP^XQALERT
 Q
ABSPOS1 ; IHS/UNK/UNK ; less commonly called subroutines [ 10/13/2000  9:06 AM ]
 ;;1.0;PHARMACY POINT OF SALE;**49**;JUN 21, 2001;Build 27
 Q
PRINTALL ; print all patients' results  ABSB POS RXE P1 PRINT ALL
 N IO I '$$DEVICE G PRINT99
 U $P D:IO=$P FULL^VALM1 U IO
 D PRINTHDR
 N A S A="" F  S A=$O(@VALMAR@(A)) Q:'A  D PRINTA(A)
 G PRINT9
PRINTHDR ; print a header
 W VALM("TITLE")," " D ^%D W " " D ^%T W !!
 N A S A="" F  S A=$O(VALMHDR(A)) Q:A=""  W VALMHDR(A),!
 W !
 Q
PRINTA(A) ; print line A
 ; How could you tell whether this is a patient line or a prescription
 ; line?  And which patient or prescription is represented?
 ; Look at @DISPLINE(n)=patname or patname^rxi
 ; Look at @VALMIDX@(n,patien), @VALMIDX@(n,patien,rxien)
 I '$D(IOM) N IOM S IOM=80
 N X D
 .I $D(@VALMAR@(A,0)) S X=@VALMAR@(A,0)
 .E  S X="(? Line "_A_" is missing?)"
 .F  Q:$E(X,$L(X))'=" "  S X=$E(X,1,$L(X)-1)
 .N M,N S M=32,N=IOM-M
 .W $E(X,1,IOM),! S X=$E(X,IOM+1,$L(X))
 .F  Q:X=""  W ?M-3,"...",$E(X,1,N),! S X=$E(X,N+1,$L(X))
 Q
PRINT ; print a patient's results  ABSB POS RXE P1 PRINT PATIENT
 ; More aptly, it's "print selected lines"
 W !,"Enter the line numbers you wish to print.  For example,",!
 W "enter    3-7     to print lines 3 through 7.",!
 N IEN D SELECPAT(.IEN) ; select a patient(s)
 I $D(IEN)<10 G PRINT99 ; none selected
 N IO I '$$DEVICE G PRINT99
 U $P D:IO=$P FULL^VALM1 U IO
 D PRINTHDR
 N A S A="" F  S A=$O(IEN(A)) Q:A=""  D PRINTA(A)
PRINT9 ; joined here from PRINTALL,CLAIMLOG
 D BYE^ABSPOSU5 ; this does DO ^%ZISC to close IO for you
PRINT99 ; joined here from PRINTALL,CLAIMLOG
 D ANY^ABSPOS2A ;PressAny^ABSPOSU5()
PRINT999 S VALMBCK="R" ;$S(VALMCC:"",1:"R")
 Q
MAKERXI ; IEN(*)=line numbers  we want to convert to prescription numbers
 ; builds RXI(*)="" or maybe data, ignore whatever you get on right side
 S IEN="" F  S IEN=$O(IEN(IEN)) Q:IEN=""  D MRXI
 Q
MRXI S RXI=$P(@DISPLINE@(IEN),U,2)
 I RXI S RXI(RXI)="" Q  ; a prescription detail line; take just the one
 ; else it's a patient line - take all of this patient's prescrip's
 N PAT S PAT=$P(@DISPLINE@(IEN),U)
 M RXI=@DISP@(PAT) ; merge in all of the patient's prescriptions
 Q  ; with RXI(*) array set up
CLAIMLOG ; print a claim log  ABSB RXE POS RXE P1 CLAIM LOG
 W !,"Enter the line numbers for which you wish to print claim logs.",!
 N IEN D SELECPAT(.IEN) ; select prescription(s) or patients
 I $D(IEN)<10 G PRINT99
 N IO I '$$DEVICE G PRINT99
 U $P D:IO=$P FULL^VALM1 U IO
 N RXI D MAKERXI ; IEN(*) -> converted to RXI(*)
 ; now RXI(*) is the array of RXI's we want to print logs for
 S RXI="" F  S RXI=$O(RXI(RXI)) Q:RXI=""  D CLAIMLOG^ABSBPOS(RXI,IO)
 D BYE^ABSPOSU5
 G PRINT9
RECEIPT ; print receipts
 W !,"Enter the line numbers for which you wish to print ",$$NAME^ABSPOS8(3),".",!
 N IEN D SELECPAT(.IEN) ; select prescription(s) or patients
 I $D(IEN)<10 G PRINT99
 N IO I '$$DEVICE G PRINT99
 U $P D:IO=$P FULL^VALM1
 N RXI D MAKERXI ; IEN(*) -> converted to RXI(*)
 D RECEIPTS^ABSPOS8(.RXI,IO)
 D BYE^ABSPOSU5
 G PRINT9
REVERSE ; reverse selected claims  ABSB RXE POS RXE P1 REVERSE
 W "Select the line(s) with the paid claim(s) you wish to REVERSE.",!
 N IEN D SELECPAT(.IEN) ; select which ones to reverse
 N RXI D MAKERXI ; IEN(*) -> converted to RXI(*)
 D FULL^VALM1
 N REVTOTAL,REVELECT,ERRCOUNT S (REVTOTAL,REVELECT,ERRCOUNT)=0
 S RXI="" F  S RXI=$O(RXI(RXI)) Q:RXI=""  D
 . N X S X=$$REVERS59(RXI,0)
 . I X D
 . . S REVTOTAL=REVTOTAL+1
 . . I X>.5 S REVELECT=REVELECT+1
 . E  D
 . . W "Cannot reverse ",RXI,! S ERRCOUNT=ERRCOUNT+1
 W REVTOTAL," claim reversal",$S(REVTOTAL'=1:"s",1:"")," in progress.",!
 I ERRCOUNT D
 . W "Some claim(s) could not be reversed because only paper claims",!
 . W "and Payable electronic claims can be reversed.",!
 I REVELECT D TASK^ABSPOSQ1 ; task up a packetizer
 D ANY^ABSPOS2A ;D PressAny^ABSPOSU5()
 N NODISPLY S NODISPLY=1 D UPD^ABSPOS6A
 S VALMBCK="R"
 ;S VALMBCK=""
 Q
REVERS59(IEN59,WANTQ2)    ; called here from ABSPOSRX too
 ; IEN59 as usual; $G(WANT2Q)=TRUE if you want packetizer started
 ; Returns 0 if no, no reversal, it's unreversable
 ; Returns 0.5 if it's a paper claim that was reversed
 ; Returns IEN of reversal claim if electronic claim submitted for
 ;   reversal.
 N RESULT S RESULT=$$CATEG^ABSPOSB2(IEN59)
 I RESULT'="PAPER",RESULT'="E PAYABLE",RESULT'="E DUPLICATE" Q:$Q 0 Q
 I RESULT="PAPER REVERSAL"!(RESULT="E REVERSAL ACCEPTED") Q:$Q 0 Q
 ; Okay, reversal is permitted
 D PREVISLY^ABSPOSIZ(IEN59) ; bracket result text with [Previously: ]
 I RESULT="PAPER" D REVERSP(IEN59) Q:$Q 0.5 Q
 ; Here, reversal of electronic claim:
 N CLAIMIEN S CLAIMIEN=$P(^ABSPEC(9002335.59,IEN59,0),U,4) ; the claim
 N POS S POS=$P(^ABSPEC(9002335.59,IEN59,0),U,9) ; and position therein
 N REV S REV=$$REVERSE^ABSPECA8(CLAIMIEN,POS) ; construct reversal
 D  ;S $P(^ABSPEC(9002335.59,IEN59,4),U)=REV ; mark claim with reversal
 . N DIE,DR,DA S DIE=9002335.59,DA=IEN59,DR="401////"_REV D ^DIE
 N ABSBRXI S ABSBRXI=IEN59 D SETSTAT^ABSBPOSR(30) ; waiting to packetize
 I $G(WANT2Q) D TASK^ABSPOSQ1
 Q:$Q REV Q
REVERSP(IEN59)     ; reverse the given paper claim
 N ABSBRXI,OLDSLOT,X,MSG S MSG="Reversed paper claim"
 S $P(^ABSPEC(9002335.59,IEN59,4),U,3)=1
 S ABSBRXI=IEN59 D SETSTAT^ABSBPOSR(99)
 D SETRESU^ABSBPOSR(1,MSG)
 S OLDSLOT=$$GETSLOT^ABSBPOSU
 D INIT^ABSBPOSU(IEN59,1)
 D LOG^ABSBPOSU(MSG)
 D RELSLOT^ABSBPOSU
 I OLDSLOT D SETSLOT^ABSBPOSU(OLDSLOT)
 Q
RESUBMIT ;
 W "Select the line(s) with the claim(s) you wish to RESUBMIT.",!
 N IEN D SELECPAT(.IEN) ; gives IEN(*)
 N RXI D MAKERXI ; IEN(*) -> converted to RXI(*)
 D FULL^VALM1
 N REVCOUNT S REVCOUNT=0
 N IEN59 S IEN59="" F  S IEN59=$O(RXI(IEN59)) Q:IEN59=""  D
 .N X S X=$$RESULT59^ABSPOSRX(IEN59)
 .I X="E PAYABLE"!(X="E DUPLICATE")!(X="E REVERSAL REJECTED") D  Q
 ..W "`",IEN59," is Payable; you must REVERSE it first.",!
 .I X="PAPER" D
 ..W "`",IEN59," is a paper claim; it will be implicitly reversed",!
 .D RESUB1(IEN59)
 .D PREVISLY^ABSPOSIZ(IEN59)
 .W "Resubmitted `",IEN59,! H 1
 D TASK^ABSPOSIZ ; task up a "gathering claim info" job
 D ANY^ABSPOS2A ;D PressAny^ABSPOSU5()
 N NODISPLY S NODISPLY=1 D UPD^ABSPOS6A
 S VALMBCK="R"
 Q
RESUB1(IEN59)        ; resubmit one entry in .59 ; caller responsible for
 ; starting up  D TASK^ABSPOSIZ
 ; Also called here from ABSBPOSR, for reverse-and-resubmit action
 ;Kill pointers of previous submissions and reversals
 N DIE,DR,DA S DIE=9002335.59,DA=IEN59
 S DR="" N I F I=3,4,401:1:403,301:1:302,801:1:803 D
 . S:DR]"" DR=DR_";" S DR=DR_I_"///@"
 D ^DIE
 ;D PREVISLY^ABSPOSIZ(IEN59) ; bracket result text with "[Previously: ]"
 ; Reset status
 N ABSBRXI S ABSBRXI=IEN59 D SETSTAT^ABSBPOSR(0)
 Q
DEVICE() ; device selection for POS
 ; want to provide a convenient default
 N DEFAULT S DEFAULT="HOME"
 N DEVICE S DEVICE=$$DEVICE^ABSPOSU8(DEFAULT)
 I 'DEVICE Q ""
 Q DEVICE
CANCEL ; cancel a claim  ABSB POS RXE P1 CANCEL CLAIM
 N LINE
 W !,"Select prescription to cancel by line number.  Hurry!"
 D SELECPAT(.LINE)
 I $O(LINE(""))="" W !,"None selected for cancellation",! G CAN99
 I 0 D FULL^VALM1 W "Temporary for debugging:",! D
 .ZW LINE
 .N TMP M TMP=@DISP ZW TMP
 .N % R ">>>",%
 S LINE="" F  S LINE=$O(LINE(LINE)) Q:LINE=""  D
 .N PAT,RXI S PAT=$P(@DISPLINE@(LINE),U),RXI=$P(@DISPLINE@(LINE),U,2)
 .I RXI D CANC5^ABSBPOS Q
 .; else patient was selected; cancel all of this patient's claims
 .S RXI="" F  S RXI=$O(@DISP@(PAT,RXI)) Q:RXI=""  D CANC5^ABSBPOS
 W !,"Cancellation requests made." H 1
CAN99 D ANY^ABSPOS2A ;D PressAny^ABSPOSU5()
 N NODISPLY DO UPD^ABSPOS6A S VALMBCK="R"
 Q
DISMISS ; dismiss a patient from my screen  ABSB POS RXE P1 DISMISS PATIENT
 ; This is to remove a patient from the display before the usual
 ; time window has expired.  Do it by:
 ; 1. Set @DISMISS nodes to 15 minutes from now, so as to keep
 ;    the patient and prescription off our screen until then.
 ; 2. Zero out the time of last update in @DISP so that the
 ;    winnowing thinks the entry is too old to keep around.
 ; This functionality is provided with the intent to support
 ; dismissing an entire patient's record after all processing
 ; has been completed.  Unusual usage may not have the results
 ; you presume it might have.
DIS0 N IEN,TIME,X,%,%I,%H D NOW^%DTC
 S TIME=$$TADD^ABSBPOS(%,^TMP("ABSPOS",$J,"TIME"))
 D SELECPAT(.IEN)
 S IEN="" F  S IEN=$O(IEN(IEN)) Q:IEN=""  D
 .N PAT,RXI S PAT=@DISPLINE@(IEN),RXI=$P(PAT,U,2),PAT=$P(PAT,U)
 .S @DISMISS@(PAT)=TIME
 .;I '$D(@DISP@(PAT)) W "DISP=",DISP," and @DISP@(PAT) is undef",! H 2
 .I $D(@DISP@(PAT)) S $P(@DISP@(PAT),U,3)=0
 .;I  W "Now @DISP@(PAT)=",@DISP@(PAT),! H 2
 .W PAT," will be dismissed.",! H 1
 .I RXI D
 ..S @DISMISS@(PAT,RXI)=TIME
 ..I $D(@DISP@(PAT,RXI)) S $P(@DISP@(PAT,RXI),U,3)=0
 ..;W PAT," ",RXI," will be dismissed.",! H 1
DIS9 ; some other functions branch to here to go back to main screen
 N NODISPLY DO UPD^ABSPOS6A S VALMBCK="R"
 Q
HEADER ; edit header information ; ABSB POS RXE P1 HEADER
 ; (This is what the menu shows as EV Edit view screen)
 ; first, ask "All users or just one user or one patient?"
 D FULL^VALM1
 N WHO,TIMEWIN,PAT,PATTIME,UPDFREQ,DIC,DA,Y,X,DTOUT,DUOUT
 W !
HDR1 S X=$$Set^ABSPOSU3("Display for  1:One user  or  2:All users  or  3:One patient? ","1",0,"H","1:One user;2:All users;3:One patient")
 W !
 I X<1 G HDR8A
 ; Note: one user / one patient combination is not implemented 
 ;  If you choose one patient, you get them all, regardless of user,
 ;  and the time window for weeding out old ones does not apply.
 I X=2 S WHO=0 G HDR3
 I X=3 S WHO=0 G HDRA ; and later come back to HDR88 or HDR8A
HDR2 ; just one user - which one?
 S DIC=200,DIC(0)="AEMNQZ",DIC("A")="Select POS user: "
 S DIC("B")=$P(^VA(200,DUZ,0),U)
 ;S DIC("S")=screening, with Y=IEN, ^VA(200,Y,0) in naked
 D ^DIC W ! G HDR8A:$G(DUOUT)!$G(DTOUT),HDR1:Y<1 S WHO=+Y
HDR3 ; time frame to keep patient on screen
 W !,"Enter the number of MINUTES, the length of time that",!
 W "completed transactions will be retained on the screen.",!
 S X=^TMP("ABSPOS",$J,"TIME"),X=$P(X,".",2),X=X_"000000" ; hhmmss0000
 S Y=$E(X,1,2)*60+$E(X,3,4)
 S X=$$FreeText^ABSPOSU2("Retention time:  ",Y,1,1,6) W !
 I X<1 G HDR8A
 I X'?1N.N!(X>1439) W " ??" G HDR3
 S TIMEWIN="."_$TR($J(X\60,2)," ","0")_$TR($J(X#60,2)," ","0")
HDR4 ; Frequency of updates in continuous update mode
 ; HDRA rejoins here
 S X=5 ; minimum allowed value for frequency
 W !,"Enter the number of SECONDS between updates when the display",!
 W "is in CONTINUOUS UPDATE MODE.",!
 S X=$$Numeric^ABSPOSU2("Seconds between updates: ",^TMP("ABSPOS",$J,"FREQ"),0,X,9999,0) W !
 I X'?1N.N G HDR8A
 S UPDFREQ=X
HDR8 S ^TMP("ABSPOS",$J,"USER")=WHO
 I TIMEWIN'=^("TIME") S ^("TIME")=TIMEWIN,^("LAST UPDATE")=""
 S ^("FREQ")=UPDFREQ
 S ^TMP("ABSPOS",$J,"PATIENT")=0
HDR88 W !,"Settings have been changed.",!
 ; at this point, shouldn't we wipe everything off and rebuild?
 N NODISPLY S NODISPLY=1 D UPD^ABSPOS6A
 G HDR9
HDR8A W !,"No settings have been changed.",!
HDR9 W "Done",! H 2
 S VALMBCK="R"
 Q
HDRA ; display for which one patient?
 N BBLIMIT
 S DIC=2,DIC(0)="AEMQZ",DIC("A")="Prescriptions for which patient? "
 S DIC("S")="I $D(^ABSPEC(9002335.59,""AC"",Y))"
 D ^DIC W !
 G HDR9:$G(DUOUT)!$G(DTOUT),HDRA:(Y<1)  S PAT=+Y
 W !,"Enter the number of DAYS to go back to find"
 W !,"Point of Sale activity for ",$P(Y(0),U),"."
 W ! S X=^TMP("ABSPOS",$J,"PATIENT TIME")
 ; /IHS/OIT/RAM ; 16 OCT 2017 ; CR#09828 Changes the amount of time we can back-bill payers; change
 ;     1 year limit to a new field in the ABSP SETUP file with that parameter. Default is now 6 years.
 ; S BBLIMIT=+$G(^ABSP(9002313.99,1,"BACKLIMIT")) ; Grab default from ABSP SETUP file.
 ; I BBLIMIT=0 S BBLIMIT=2192 ; If there is no value, set it to 6 years (in days).
 S BBLIMIT=365 ; 31 OCT 17 ; CR 9828 IS NOW ON HOLD; CHANGE BACK TO ORIGINAL 1 YEAR BEHAVIOUR.
 S X=$$Numeric^ABSPOSU2("Number of days:  ",X,1,1,BBLIMIT) W !  ;; Side note - this will never work with the lowercase in the call...
 ; /IHS/OIT/RAM ; 16 OCT 2017 ; END OF CHANGES FOR CR#09828
 I X<1 G HDRA
 S PATTIME=X
 S ^TMP("ABSPOS",$J,"PATIENT")=PAT,^("PATIENT TIME")=PATTIME
 S ^TMP("ABSPOS",$J,"USER")=0
 G HDR88
SELECPAT(RET) ; Select a patient.  Returns patient IEN(s) in array
 N VALMA,VAMP,VALMI,VALMAT,VALMY
 D EN^VALM2(XQORNOD(0),"O") S VALMI=0 ; allow "O"ptionally answer
 W !
 M RET=VALMY
 Q

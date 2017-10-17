VENPCCP1 ; IHS/OIT/GIS - FACILITY PRINT DEAMON ;
 ;;2.6;PCC+;**1,3**;APR 03, 2012;Build 24
 ;
 ; NEW PRINT DEAMON ; ERROR TRAPPING
 ; WORKS WITH NEW PRINT SERVICE
 ;
NEW N FILE,PATH,POP,REC,A,B,DFN,IP,IPA,SOCKET,%,CNT,RESULT,VISIT,SWAP,DUZ,VER25,LASTFILE
 N VENIO,X,Y,Z,I,FIRST,NEXT,DEL,TOT,TMP,MSG,WAIT,CFIGIEN,TYPE,PGIEN,MRPFLAG,DEFEF,VENDEV
 S X="TRAP^VENPCCP1",@^%ZOSF("TRAP") K ERRSTOP ; SET ERROR TRAP
 S Y=0
 I '$$INIT S %=$$STOP Q  ; INITIALIZE LOCAL VARIABLES FROM CONFIG FILE ENTRIES
CYCLE I $$STOP Q  ; EXTRNAL HALT
 I $D(^TMP("VEN SYNC")) D SYNC^VENPCCM1 K ^TMP("VEN SYNC") G CYCLE ; PRINT DEAMON SYNC FUNCTIONS
INC S CNT=CNT+1
 S @TMP=("Wait cycle #"_CNT)
 I $P($G(^VEN(7.5,CFIGIEN,0)),U,21),$P($G(^VEN(7.5,CFIGIEN,0)),U,22)'=DT D CLEAN^VENPCCP3
 H 5 ; CHECK EMPTY DIRECTORY EVERY 5 SECONDS
FILE I $$STOP Q
 S FILE=$$NEXT(PATH,"A.txt") I FILE="" G CYCLE ; KEEP CYCLING IF DIRECTORY EMPTY
OPEN I $$STOP Q  ; GET THE RECORD FROM THE DATA FILE
REC I $G(VER25) S POP=$$OPN^VENPCCP(PATH,FILE,"R","D CHUNK^VENPCCP1") I 1 ; IN 2.5, BUILD REC ARRAY IMMEDIATLY
 E  S POP=$$OPN^VENPCCP(PATH,FILE,"R","R REC") ; FOR BKWD COMPATIBILITY: RETURN DATA IN THE REC STRING
 I POP D DEL^VENPCCP1(PATH,FILE) G INC ; CAN'T OPEN DATA FILE.  UNIX PERMISSIONS PROBLEM!!!
 I '$L($G(REC)),'$L($G(REC(1))) G DFILE ; DELETE A NULL RECORD AND START OVER
BAL I $L(FILE)>5 D  ; LOAD BALANCING
 . F I=($L(FILE)-4):-1:1 S %=$E(FILE,I) I %=+% Q  ; GET LOAD BALANCING NUMBER
 . I (+%)#2 S %=IP,IP=IPA,IPA=% ; BALANCE THE LOAD
 . Q
MSG S TOT=$$COUNT(PATH) ; MONITOR MSG
 S MSG=TOT_" file"_$S(TOT>1:"s",1:"")_" in queue.  Processing "_FILE S @TMP=MSG
TRANSMIT S RESULT=$$SEND^VENPCCP(SOCKET,IP,IPA) K REC ; TRANSMIT THE FILE TO THE PRINT SERVER!
 I $$STOP Q  ; EXTERNAL HALT
BAD I 'RESULT S FILE=$$NEXT(PATH,FILE) G:FILE'="" OPEN G INC ; GET NEXT Z FILE
GOOD ; !!!SUCCESS!!!
 D CLEAN(PGIEN) ; CLEAN UP ANY EXISTING ERROR FLAGS
DFILE D DEL(PATH,FILE) ; DELETE DATA FILE FROM PRINT DIRECTORY
RECYCLE I $E(FILE)="Z"!($E(FILE)="z") G FILE ; GET NEXT FILE
 S %=$E(FILE) S TYPE=$S(%="E":"H",%="H":"G",%="e":"h",%="h":"g",%="G":"H",%="g":"h",1:"")
 I $L(TYPE) S FILE=TYPE_$E(FILE,2,99) I $$FIND^VENPCCP(PATH,FILE) G OPEN ; PRINT DOCUMENTS AS A GROUP IF POSSIBLE
 G FILE
 ;
CHUNK ; EP - REBUILD THE RECORD IN SMALL CHUNKS THAT WILL FIT THRU THE "OPEN" WINDOW.
 ; THIS CODE ADDED TO AVOID THE MAXSTG AND STKOVR ERRORS EXPERIENCED UNDER VER 2.2
 N I,%,X
 F I=1:1 R %:10 Q:'$L(%)  D
 . F X=10,13 S %=$TR(%,$C(X),"") ; STRIP OFF <RETURN> FROM END OF THE RECORD
 . S REC(I)=%
 . Q
 Q
 ;  
 ; -----------------------------------------------
 ;
 ; NEW GENERIC FUNCTIONS FOR PRINT DEAMON
 ;
INIT() ; EP-INITIALIZE VARIABLES AND RETURN '1' IF SUCCESSFUL
 N %
 S TMP="^TMP(""VEN TASK"",$J)" S @TMP="",CNT=0,U="^"
 S CFIGIEN=$$CFG^VENPCCU I 'CFIGIEN D REG^VENPCCP2(10,"MISSING/INVALID CONFIGURATION") Q 0
 S %=$C(68,85,90),@%@(0)=$C(64),%=$C(68,84)
 S @%=$$HTFM^XLFDT($H,1)
 I $P($G(^VEN(7.5,CFIGIEN,13)),U) S VER25=1 ; FLAG FOR NEW PRINT SERVICE
 I $P($G(^VEN(7.5,CFIGIEN,0)),"^",12)=1 Q 0 ; BYPASS PRINTING - FOR TEST PURPOSES ONLY
 S PATH=$G(^VEN(7.5,CFIGIEN,1))
 I '$L(PATH) D REG^VENPCCP2(10,"Missing path to Print Folder") Q 0
 S SOCKET=$P($G(^VEN(7.5,CFIGIEN,11)),U,3)
 I SOCKET="" D REG^VENPCCP2(10,"Missing/Invalid Socket") Q 0
 I (SOCKET<1)!(SOCKET>65535) D REG^VENPCCP2(10,"Invalid socket number") Q 0
IP S IP=$P($G(^VEN(7.5,CFIGIEN,11)),U,1) I IP="" D REG^VENPCCP2(10,"Missing IP Address") Q 0
 I IP'?1.3N1P1.3N1P1.3N1P1.3N D REG^VENPCCP2(10,"Print Server #1 IP address not in the correct format") Q 0
 S IPA=$P($G(^VEN(7.5,CFIGIEN,11)),U,2) I IPA="" S IPA=IP
 E  I IPA'?1.3N1P1.3N1P1.3N1P1.3N D REG^VENPCCP2(10,"Print Server #2 IP address not in the correct format") Q 0
 I '$$OS^VENPCCU,$$VEN^VENPCCU=1 S %="S X=$"_"Z",FIRST=%_"OS(12,PF,0)",NEXT=%_"OS(13,X)",DEL=%_"OS(2,PF)"
 Q 1
 ;
EF(MN) ; EP-GIVEN A TEMPLATE MENEMONIC, RETURN THE TEMLATE IEN
 I $G(MN)="" Q ""
 N EIEN,X
 S EIEN=0
 F  S EIEN=$O(^VEN(7.41,EIEN)) Q:'EIEN  S X=^(EIEN,0) I $P(X,U,3)=MN Q
 Q EIEN
 ; 
NEXT(PATH,FILE) ; EP-DISPLAY THE NEXT FILE IN A DIRECTORY, SET LASTFILE
 I $L(PATH),$L(FILE)
 E  Q ""
 N TMP
 S TMP="^TMP(""VEN Z FILES"","""_$J_""")" K @TMP
 D FILES^VENPCCP2(PATH,TMP) ; PUT FILES IN PRINT FOLDER INTO AN ARRAY
 I $E($G(LASTFILE))="e",$D(@TMP@(LASTFILE)) D DEL(PATH,LASTFILE) K @TMP@(LASTFILE) ; CLEAR OUT NON 'Z' PREVIOUS TRYS
 F  S FILE=$O(@TMP@(FILE)) Q:FILE=""  I FILE[".txt"!(FILE[".TXT") Q
 K @TMP
 S LASTFILE=FILE
 Q FILE
 ; 
COUNT(PATH) ; EP-COUNT THE TEXT FILES IN A DIRECTORY
 I '$L(PATH) Q ""
 N TMP,FILE,TOT
 S TOT=0,FILE="A.txt"
 S TMP="^TMP(""VEN Z FILES"","""_$J_""")" K @TMP
 D FILES^VENPCCP2(PATH,TMP) ; PUT TXT FILES IN PRINT FOLDER INTO AN ARRAY
 F  S FILE=$O(@TMP@(FILE)) Q:FILE=""  I FILE[".txt"!(FILE[".TXT") S TOT=TOT+1
 K @TMP
 Q TOT
 ; 
CLEAN(PGIEN) ; EP-CANCELS ERROR GLOBALS
 K ^TMP("VEN ERROR FLAG",1),^(4)
 I $G(PGIEN) K ^TMP("VEN ERROR FLAG",2,PGIEN)
 Q
 ;
STOP() ; EP-EXTERNAL HALT
 N X S X=0
 F  S X=$O(^TMP("VEN TASK",X)) Q:'X  I X'=$J D  ; FIRST, MAKE SURE NO OTHER PRINT DEAMON PROCESSES ARE RUNNING
 . K ^TMP("VEN TASK",X) ; INDIRECT WAY TO STOP ANOTHER PROCESS
 . I $P($G(^VEN(7.5,$$CFG^VENPCCU,0)),U,5)=2 X ("S %=$Z"_"UTIL(4,X)") ; DIECTLY STOP ANOTHER PRINT DEAMON PROCESS ; CACHE ONLY
 . Q
 I $G(ERRSTOP) Q 1
 I '$D(^TMP("VEN TASK",$J)) Q 1 ; CHECK PRINT DEAMON FLAG FOR CURRENT TPROCESS ; IF THE FLAG HAS BEEN KILLED, TERMINATE THIS PROCESS NOW
 I ^TMP("VEN TASK",$J)["FATAL ERROR" Q 1 ; IF FATAL ERROR PRESENT, TERMINATE THIS PROCESS NOW
 Q 0
 ; 
DEL(PATH,F) ; EP-FROM VENPCC2 - DELETE A FILE FROM THE PRINT QUEUE
 I $$VEN^VENPCCU=2,$$OS^VENPCCU=1 X ("I $"_"Z"_"F(-1,""rm "_PATH_F_""")") Q  ; UNIX/CACHE
 I $$VEN^VENPCCU=2 X ("I $"_"Z"_"F(-1,""del "_PATH_F_""")") Q  ; NT/CACHE ; PATCHED BY GIS 8/29/03
 I $$OS^VENPCCU D UCMD^VENPCCP("rm "_PATH_F) Q  ; UNIX/MSM
 N PF,X,% ; WINDOWS
 S PF=PATH_F
 D FUNC^VENPCCP("DEL") ; NT/MSM
 Q
 ; 
TRAP ; EP-PRINT DEAMON ERROR TRAP
 S X="ERRQ^VENPCCP1",@^%ZOSF("TRAP") ; SET MUMPS ERROR TRAP AT THIS LEVEL
 I $G(ERRSTOP) Q
 S ERRSTOP=1
 S Z=$$STOP
 D CTCP^VENPCCP ; CLOSE THE TCP PORT IF NECESSARY
 X ("S %=$"_"ZE")
 S ERR="Print Deamon reports MUMPS-level error: "_%,MERR=1
 D FILE^VENPCCP2(4,4,ERR) ; DELETES FILE AND MAKES ERROR MESSAGE
 Q
 ; 
ERRQ Q
 ; 
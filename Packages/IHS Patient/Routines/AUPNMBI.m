AUPNMBI ; IHS/OIT/FBD&NKD - MBI APIS ; 10/25/2017 ;
 ;;99.1;IHS DICTIONARIES (PATIENT);**26**;MAR 9, 1999;Build 11
 ;
 Q  ;NO TOP-LEVEL CALL ALLOWED
 ;
ADDMBI(PATIEN,EFFDATE,MBI,SOURCE) ;PEP - ADD MBI VALUE FOR A PATIENT
 ; Function: Add an MBI for a patient on the specified effective date
 ; Call: $$ADDMBI^AUPNMBI(PATIEN,MBI,EFFDATE,SOURCE)
 ; Returned value:
 ;  Successful: EFF_DATE(? - as IEN in MBI multiple)
 ;  Unsuccessful: 0 (zero)
 ;
 N FDA,SF,IENS,RES,ERR
 S MBI=$$UP^XLFSTR($G(MBI))  ;TRANSLATE ALL ALPHAS TO UPPERCASE
 S SF=9000001.44,IENS="+1,"_$G(PATIEN)_","  ; SET MBI SUBFILE AND IENS STRING (LOOKUP/ADD)
 S:$D(^AUPNPAT($G(PATIEN),44,$G(EFFDATE))) IENS="?"_IENS
 S FDA(SF,IENS,.01)=$G(EFFDATE)  ; EFFECTIVE DATE (#.01)
 S FDA(SF,IENS,1)=$G(MBI)        ; MBI (#1)
 S FDA(SF,IENS,2)=$G(SOURCE)     ; SOURCE (#2)
 S FDA(SF,IENS,3)=$$DT^XLFDT     ; DATE ENTERED (#3)
 S FDA(SF,IENS,4)=$G(DUZ)        ; ENTERED BY (#4)
 S RES(1)=$G(EFFDATE)            ; ENTRY DINUM'ED BY DATE
 D UPDATE^DIE(,"FDA","RES","ERR")
 Q $S($D(ERR):"0^"_$G(ERR("DIERR","1","TEXT",1)),1:+$G(RES(1)))  ; ERROR: 0^MESSAGE, SUCCESS: IEN (DATE)
 ;
 ;
GETMBI(PATIEN,SVCDATE,FORMAT) ;PEP - GET MBI VALUE FOR A PATIENT
 ;Function: Retrieve an MBI for a patient on the specified date of service
 ; Call: $$GETMBI^AUPNMBI(PAT_IEN,DATE,FMT)
 ; FORMAT:
 ;  0/default: MBI value only return requested
 ;  1: All fields, internal value return requested
 ;  2(?):  All fields, external value return requested
 ; Returned value:
 ;  Successful (Dependent upon FORMAT specification):
 ;   0/default: MBI
 ;   1: MBI^EFF_DATE^SOURCE
 ;   2(?):  MBI^EFF_DATE_ext^SOURCE_ext
 ;  Unsuccessful: 0 (zero)
 N IEN,RES
 S (IEN,RES)=0,PATIEN=+$G(PATIEN),SVCDATE=+$G(SVCDATE),FORMAT=$G(FORMAT,0) Q:'PATIEN!'SVCDATE RES
 S IEN=$O(^AUPNPAT(PATIEN,44,SVCDATE+.000001),-1) Q:'IEN RES
 S RES=$P($G(^AUPNPAT(PATIEN,44,IEN,0)),U,2)
 I FORMAT S RES=RES_U_$$GET1^DIQ(9000001.44,IEN_","_PATIEN,.01,$S(FORMAT>1:"",1:"I"))_U_$$GET1^DIQ(9000001.44,IEN_","_PATIEN,2,$S(FORMAT>1:"",1:"I"))
 Q RES
 ;
HISTMBI(PATIEN,TARGET) ;PEP - GET MBI VALUE HISTORY FOR A PATIENT
 ;Function: Retrieve the entire MBI history for a patient, sorted by effective date
 ; Call: $$HISTMBI^AUPNMBI(PAT_IEN,.TARGET_ARRAY)
 ; Returned value:
 ;  Successful: 1
 ;  -  MBI history returned as individual nodes in specified target array
 ;  -  Node format: MBI^Effective_Date^Source
 ;  Unsuccessful: 0 (zero)
 ;  -  Error message (if any) concatenated to status response
 ;  -  Format: 0^error_message
 N ERR,MBI,PAT K TARGET  ;INITIALIZATION
 S PAT=+$G(PATIEN)
 I +PAT D  ;
 . I $D(^AUPNPAT(PAT,0)) D  ;
 . . S MBI=0
 . . I +$O(^AUPNPAT(PAT,44,MBI)) D  ;
 . . . F  S MBI=$O(^AUPNPAT(PATIEN,44,MBI)) Q:'+MBI  S TARGET(MBI)=$$GETMBI(PAT,MBI,1)
 . . E  S ERR="0^No MBI history on file for patient" I 1
 . E  S ERR="0^Invalid patient reference" I 1
 E  S ERR="0^Invalid pointer value" I 1
 Q:$D(ERR) ERR
 Q 1
 ;
FORMOK(MBI) ;PEP - VALIDATE MBI VALUE FORMAT
 ;Function: Validate MBI format compliance
 ;Call: $$FORMOK^AUPNMBI(MBI)
 ;Returned value:
 ;  Successful: MBI
 ;   Submitted MBI value returned if verified as being in valid MBI format
 ;  Unsuccessful: 0(zero)^error_message
 ;
 ;Acceptable MBI Format is:
 ;                            1 1
 ;Position: 1 2 3 4 5 6 7 8 9 0 1
 ;          ---------------------
 ;    Type: C A X N A X N A A N N
 ;
 ;Types are:
 ;  A = Alphabetic characters A-Z
 ;  C = Natural numbers 1-9
 ;  N = Whole numbers 0-9
 ;  X = Alphanumeric characters 0-9 and A-Z
 ;Letters excluded from use in alphabetics and alphanumerics: S, L, O, B, I, Z
 ;
 N CHAR,EXCLUDE,FLAG,MBILEN,POS,RETURN,XFORM
 S MBILEN=11  ;VALID LENGTH OF MBI STRING
 S EXCLUDE="SLOBIZ"  ;CMS-DEFINED LIST OF CHARACTERS EXCLUDED FROM ACCEPTABILITY
 S XFORM="ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"  ;ACCEPTABLE 'X'(ALPHANUMERIC) CHARACTERS
 ;
 S RETURN=0
 S MBI=$$UP^XLFSTR($G(MBI))  ;TRANSLATE ALL ALPHAS TO UPPERCASE
 I $L(MBI)=MBILEN D  ;ACCEPTABLE LENGTH CHECK
 . I MBI?1N1A1E1N1A1E1N2A2N,XFORM[$E(MBI,3),XFORM[$E(MBI,6) D  ;OVERALL FORMAT CHECK
 . . I +$E(MBI) D  ;FIRST DIGIT CHECK - MUST BE NON-ZERO (1-9)
 . . . S FLAG=0
 . . . F POS=1:1:MBILEN D  ;CHECK MBI STRING FOR EXCLUDED CHARACTERS
 . . . . S CHAR=$E(MBI,POS)       ;EACH CHARACTER INDIVIDUALLY EXTRACTED...
 . . . . I EXCLUDE[CHAR S FLAG=1  ;...AND FLAGGED IF PART OF THE EXCLUDED CHARACTER SET
 . . . I FLAG S RETURN="0^contains one or more excluded characters "_EXCLUDE Q  ;EXIT PROCESSING STREAM IF ANY EXCLUDED CHARACTERS FOUND
 . . . ;
 . . . S RETURN=MBI  ;ALL CHECKS PASSED, USER-SUBMITTED MBI VALUE RETURNED AS VALID
 . . E  S RETURN="0^positive integer required for first character"
 . E  S RETURN="0^incorrect format"
 E  S RETURN="0^incorrect length - must be "_MBILEN_" characters"
 ;
 Q RETURN

BEDDPLKP ;GDIT/HCSD/BEE-Patient Lookup ; 29 Oct 2005  6:51 PM
 ;;2.0;BEDD DASHBOARD;**2**;Jun 04, 2014;Build 26
 ;
 ;Adapted from BQIPTLKP
 ;
 Q
 ;
FND(BEDD,TEXT,DUZ,MAX) ; EP -- LOOKUP PATIENTS
 ;
 ;Description - Find a list of patients based on search criteria
 ;Input
 ;  TEXT - Search text which can include name, SSN, HRN, etc.
 ;   DUZ - Users DUZ
 ;   MAX - Maximum results to return
 ;Output
 ;  BEDD - Array of patients
 ;
 NEW UID,I,H,FILE,FIELD,XREF,FLAGS,NUMB,SCREEN,BN,DFN,NAME,HRN
 NEW DOB,DOD,AL,ALFLG,X,ALIAS,NODE,RCNT,TYPE,X,SEX,DISP,TMP
 ;
 ;Make sure initial variables are set
 S X="S:$G(U)="""" U=""^""" X X
 S X="S:$G(DT)="""" DT=$$DT^XLFDT" X X
 ;
 ;Set up DUZ
 D DUZ^XUP(DUZ)
 ;
 ; NOTE: Since "DILIST" is used by the DIC calls it must use $J and not UID.
 K BEDD,^TMP("DILIST",$J)
 ;
 NEW $ESTACK,$ETRAP S $ETRAP="D ERR^BEDDPLKP D UNWIND^%ZTER" ; SAC 2006 2.2.3.3.2
 ;
 S TYPE=""
 S MAX=+$G(MAX) S:MAX=0 MAX=25
 ;
 ;DOB lookup
 I $$DATE(TEXT)]"" D
 . S TYPE="D"
 . S TEXT=$$DATE(TEXT)
 . S FILE=2,FIELD=.03,XREF="ADOB",FLAGS="P",NUMB="*"
 . D LKUP
 ;
 ;HRN lookup
 I $O(^TMP("DILIST",$J,0))="",$L(TEXT),((TEXT?1.9N)!(TEXT?1"T"5N)) D
 . NEW BN,DFN,LOC
 . S TYPE="H"
 . S BN=0,DFN=""
 . F  S DFN=$O(^AUPNPAT("D",TEXT,DFN)) Q:DFN=""  D
 .. S LOC=0
 .. F  S LOC=$O(^AUPNPAT(DFN,41,LOC)) Q:'LOC  D
 ... I $P($G(^AUPNPAT(DFN,41,LOC,0)),U,3)'="" Q
 ... I $P($G(^AUPNPAT(DFN,41,LOC,0)),U,2)'=TEXT Q
 ... S BN=BN+1,$P(^TMP("DILIST",$J,BN,0),"^",1)=DFN
 ... S $P(^TMP("DILIST",$J,BN,0),"^",2)=$$GET1^DIQ(9000001,DFN_",",.01,"E")
 ;
 ;SSN L4 lookup
 I TYPE="",$L(TEXT)=5,TEXT?1A4N D
 . S TYPE="S4"
 . S FILE=2,FIELD=.09,XREF="BS5",FLAGS="P",NUMB="*"
 . D LKUP
 ;
 ; If user enter spaces after comma, strip extraneous spaces
 I TYPE="" D
 . S TEXT=$$REMDBL^XLFNAME1(TEXT," ")
 . ;
 . ;if no type of search was passed, the lookup will have to be through all cross-references
 . ; Change text to all uppercase
 . S TEXT=$$UP^XLFSTR(TEXT)
 . S FILE=9000001,FIELD=".01",XREF="",FLAGS="MP",NUMB="*"
 . D LKUP
 ;
 ; For each patient found in the search, get the list data
 S BN=0 F  S BN=$O(^TMP("DILIST",$J,BN)) Q:'BN  D
 . S DFN=$P(^TMP("DILIST",$J,BN,0),"^",1)
 . ;
 . ;Filter results on location
 . Q:'$D(^AUPNPAT(DFN,41,DUZ(2),0))
 . ;
 . S NAME=$$GET1^DIQ(9000001,DFN_",",.01,"E")
 . S SEX=$$GET1^DIQ(2,DFN_",",.02,"I")
 . S HRN=$$HRNL(DFN) Q:HRN=""
 . S DOB=$$FMTE^BEDDUTIL($$GET1^DIQ(2,DFN_",",.03,"I"))
 . S DOD=$$FMTE^BEDDUTIL($$GET1^DIQ(2,DFN_",",.351,"I"))
 . S AL=0,ALFLG="N" D
 .. S AL=$O(^DPT(DFN,.01,AL)) Q:'AL  S ALFLG="Y"
 . S ALIAS="" I TYPE'="H",TYPE'="S4",TEXT?1A.E,$E(NAME,1,$L(TEXT))'=TEXT S ALIAS=$$ALIAS(DFN,TEXT) I 'ALIAS Q
 . I ALIAS S DISP=$P(ALIAS,U,2)_" ["_NAME_"] "
 . E  S DISP=NAME
 . S NODE=DISP_"^"_DFN
 . S DISP=DISP_" ("_SEX_") - DOB: "_DOB_" "_$S(HRN]"":"HRN: ",1:"")
 . F I=1:1:$L(HRN,";") S H=$P(HRN,";",I) I H]"" Q:($L(DISP_H)>85)  S DISP=DISP_$S(I>1:";",1:"")_H
 . S TMP(NODE)=DFN_U_DISP
 ;
 ;Limit Results to Maximum Requested
 S RCNT=0,NODE="" F  S NODE=$O(TMP(NODE)) Q:(NODE="")!(RCNT'<MAX)  S RCNT=RCNT+1,BEDD(RCNT)=TMP(NODE)
 ;
DONE ;
 K ^TMP("DILIST",$J)
 Q
 ;
LKUP ;
 NEW DIQUIET
 S DIQUIET=1
 S:FIELD]"" FIELD=FIELD_";@"
 D FIND^DIC(FILE,"",FIELD,FLAGS,TEXT,"",XREF,$G(SCREEN),"","","ERROR")
 Q
 ;
ALIAS(PTIEN,TEXT) ;EP
 ; Does this patient's alias match the TEXT?
 N IEN,ALIAS,ALFND
 S IEN=0,ALFND=""
 F  S IEN=$O(^DPT(PTIEN,.01,IEN)) Q:'IEN!ALFND  D
 . S ALIAS=$$GET1^DIQ(2.01,IEN_","_PTIEN_",",.01,"E")
 . I $E(ALIAS,1,$L(TEXT))=TEXT S ALFND="1^"_ALIAS
 Q ALFND
 ;
DATE(DATE) ;EP - Convert standard date/time to a FileMan date/time
 ;Input
 ;  DATE - In a standard format
 ;Output
 ;  -1 is if it couldn't convert to a FileMan date
 ;  otherwise a standard FileMan date
 NEW %DT,X,Y
 I DATE[":" D
 . I DATE["/",$L(DATE," ")=3 S DATE=$P(DATE," ",1)_"@"_$P(DATE," ",2)_$P(DATE," ",3) Q
 . I $L(DATE," ")=3 S DATE=$P(DATE," ",1,2)_"@"_$P(DATE," ",3)
 . I $L(DATE," ")>3 S DATE=$P(DATE," ",1,3)_"@"_$P(DATE," ",4,99)
 S %DT="TS",X=DATE D ^%DT
 I Y=-1 S Y=""
 ;
 Q Y
 ;
SENS(DFN) ;EP -- Is patient sensitive flag
 ;Input
 ;  DFN - Patient internal entry number
 NEW FLAG
 S FLAG=+$P($G(^DGSL(38.1,+DFN,0)),"^",2)
 S FLAG=$S(FLAG=1:"Y",1:"N")
 Q FLAG
 ;
HRNL(DFN) ;EP -- List of HRNs for a patient
 NEW HRN,LOC,HDATA,ABR,VAL,ULOC
 S LOC=0,VAL=""
 S VAL=$$HLK(DUZ(2))
 Q $$TKO(VAL,";")
 ;
HLK(ULOC) ; EP - Get HRN data for a location
 NEW HDATA,IACT
 S HDATA=$G(^AUPNPAT(DFN,41,ULOC,0))
 S HRN=$P(HDATA,U,2),IACT=$P(HDATA,U,3)
 I HRN="" Q ""
 I IACT'="" S HRN=""  ;Inactive patient
 Q HRN
 ;
TKO(STR,VAL) ;EP - Take off ending character
 ;
 ;Description
 ;  This will take off the ending character at the end of
 ;  a string
 ;Input
 ;  STR - String of data
 ;  VAL - Delimiter character
 ;Output
 ;  same STR without the ending character
 ;
 I $G(STR)="" Q ""
 I $G(VAL)="" Q ""
 ;
 NEW LV
 S LV=$L(VAL)
 I $E(STR,$L(STR)-(LV-1),$L(STR))=VAL S STR=$E(STR,1,$L(STR)-LV)
 ;
 Q STR
 ;
 ;
ERR ;
 D ^%ZTER
 NEW Y,ERRDTM
 S Y=$$NOW^XLFDT() X ^DD("DD") S ERRDTM=Y
 Q

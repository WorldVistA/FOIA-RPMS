BTIUPCC7 ; IHS/MSC/MGH - IHS PCC PERSONAL HEALTH OBJECTS ;28-Jun-2017 14:15;DU
 ;;1.0;TEXT INTEGRATION UTILITIES;**1008,1009,1013,1018**;NOV 04, 2004;Build 4
 ;This routine creates objects for the personal health
 ;data entered
 ;Patch 1018 added ER admission objects
 ;==============================================================
CVD(DFN,TARGET) ;EP
 N ARRAY,CNT,I,J
 S CNT=1
 D PAT^BQITRPHS(DFN,.ARRAY)
 I $P(ARRAY(0),U,1)=1 S @TARGET@(CNT,0)=$P(ARRAY(0),U,2)
 E  S @TARGET@(CNT,0)="Patient does not have an iCare Diagnostic Tag of CVD"
 S I=0 F  S I=$O(ARRAY(I)) Q:I=""  D
 .S CNT=CNT+1 S @TARGET@(CNT,0)=""
 .S J=0 F  S J=$O(ARRAY(I,J)) Q:J=""  D
 ..S CNT=CNT+1
 ..S @TARGET@(CNT,0)=$G(ARRAY(I,J,0))
 Q "~@"_$NA(@TARGET)
LABRES(DFN,TIUTST,TIUCNT) ;EP; -- returns last # of current lab result for single
 ; TIUTST = lab test name;  TIUCNT = # of test results to return
 ;IHS/CIA/MGH Modified to only display the test name and results
 NEW LAB,CAPTION,VDT,DATE,IEN,X,TIU,LINE,CNT,DATA,LGTH,DATE,Y,ARR
 K ^TMP("BTIULOX",$J)
 S LAB=$O(^LAB(60,"B",TIUTST,0)) I LAB="" Q ""
 S CAPTION=$E(TIUTST,1,30)_":"
 S (VDT,CNT)=0,ARR=""
 F  S VDT=$O(^AUPNVLAB("AA",DFN,LAB,VDT)) Q:('VDT)!(CNT=TIUCNT)  D
 . S IEN=0
 . F  S IEN=$O(^AUPNVLAB("AA",DFN,LAB,VDT,IEN)) Q:'IEN!(CNT=TIUCNT)  D
 .. K TIU D ENP^XBDIQ1(9000010.09,IEN,".03:.05;1109;1201","TIU(","I")
 .. Q:TIU(.04)=""                       ;skip if not resulted
 .. S CNT=CNT+1                         ;increment counter
 .. S DATE=$S(TIU(1201,"I")]"":TIU(1201,"I"),1:$$GET1^DIQ(9000010,TIU(.03,"I"),.01,"I"))
 .. S ARR(DATE,IEN)=$J(TIU(.04),8)_" "_TIU(.05),CNT=CNT+1
 S CNT=0,DATE=""
 F  S DATE=$O(ARR(DATE),-1) Q:DATE=""!(CNT>=TIUCNT)  D
 . S IEN="" F  S IEN=$O(ARR(DATE,IEN),-1)  Q:'IEN!(CNT>=TIUCNT)  D
 . . S LINE=$G(ARR(DATE,IEN)),CNT=CNT+1
 . . S Y=$S(CNT=1:CAPTION,1:$$SP($L(CAPTION)))
 . . S ^TMP("BTIULOX",$J,CNT,0)=Y_LINE
 I '$D(^TMP("BTIULOX",$J)) S ^TMP("BTIULOX",$J,1,0)="No Results Found"
 Q "~@^TMP(""BTIULOX"",$J)"
SP(NUM) ; -- SUBRTN to pad spaces
 Q $$PAD(" ",NUM)
PAD(DATA,LENGTH) ; -- SUBRTN to pad length of data
 Q $E(DATA_$$REPEAT^XLFSTR(" ",LENGTH),1,LENGTH)
PHISTORY(DFN,TARGET) ;Return personal history data
 N DATA,BTIU,IEN,FNUM,CNT,RESULT,DATE,LINE,NUM,ONSET,ENTRY
 S FNUM=9000013,CNT=0,ENTRY="",ONSET=""
 S IEN=0 F  S IEN=$O(^AUPNPH("AC",DFN,IEN)) Q:'IEN  D
 .S CNT=$G(CNT)+1,NUM=$G(NUM)+1
 .K BTIU D ENP^XBDIQ1(9000013,IEN,".01;.02:.07;","BTIU(","I")
 .S LINE=$J(NUM,2)_") "_$G(BTIU(.04))_" Noted: "_$G(BTIU(.03))
 .I $G(BTIU(.05))'="" S LINE=LINE_" Onset: "_$G(BTIU(.05))
 .S @TARGET@(CNT,0)=LINE
 I CNT=0 S @TARGET@(1,0)="No personal history on file"
 Q "~@"_$NA(@TARGET)
GVISIT(DFN) ;Retrieve VIEN
 ;
 NEW X,VIEN
 ;
 ;Check for CIA
 I $T(GETVAR^CIAVMEVT)="" Q 0
 ;
 ;Get VIEN from context
 S VIEN=$$GETVAR^CIAVMEVT("ENCOUNTER.ID.ALTERNATEVISITID",,"CONTEXT.ENCOUNTER")
 ;
 ;Look for invalid visit
 I VIEN="" Q 0
 S X="BEHOENCX" X ^%ZOSF("TEST") I $T S VIEN=+$$VSTR2VIS^BEHOENCX(DFN,VIEN) I VIEN<1 Q 0
 ;
 Q VIEN
GETER(DFN,ADMF,VSTF) ;Return information from either ER VISIT or ER ADMISSION files
 ;
 N RET,AIEN,FNDER,VIEN
 ;
 I $G(DFN)="" Q ""
 ;
 ;Get the visit
 S VIEN=$$GVISIT(DFN) Q:'VIEN "-1^Visit not selected/found"
 ;
 ;Look in ER VISIT file
 S (FNDER,RET)=""
 S AIEN=$O(^AMERVSIT("AD",VIEN,""))
 I AIEN S FNDER=1,RET=$$GET1^DIQ(9009080,AIEN,VSTF,"E")
 ;
 ;If not found look in ER ADMISSION file (VIEN must match)
 I FNDER="",(VIEN'=$$GET1^DIQ(9009081,DFN,1.1,"I"))!('$D(^AMERADM(DFN))) Q "-1^Could not locate ER visit"
 I RET="" S RET=$$GET1^DIQ(9009081,DFN,ADMF,"E")
 Q RET
ERADMIT(DFN,CAP) ;ER ADMIT TIME and ER ADMIT TIME W/CAPTION - Return ER admission time
 N RET,IEN
 S CAP=$G(CAP)
 S RET=$$GETER(DFN,1,.01) I $P(RET,U)=-1 Q $P(RET,U,2)
 I CAP=1 S RET="Arrival Time: "_RET
 Q RET
 ;
WHY(DFN,CAP) ;ER COMPLAINT and ER COMPLAINT W/CAPTION - Return the presenting complaint
 N RET
 S CAP=$G(CAP)
 S RET=$$GETER(DFN,23,1) I $P(RET,U)=-1 Q $P(RET,U,2)
 I CAP=1 S RET="Presenting Complaint: "_RET
 Q RET
NURSE(DFN,CAP) ;ER TRIAGE NURSE and ER TRIAGE NURSE W/CAPTION - Return the Triage Nurse 
 N RET
 S CAP=$G(CAP)
 S RET=$$GETER(DFN,19,.07) I $P(RET,U)=-1 Q $P(RET,U,2)
 I CAP=1 S RET="Triage Nurse: "_RET
 Q RET
ACUITY(DFN,CAP) ;ER INITIAL ACUITY and ER INITIAL ACUITY W/CAPTION - Return the Initial Acuity
 N RET,IEN
 S CAP=$G(CAP)
 S RET=$$GETER(DFN,20,.24) I $P(RET,U)=-1 Q $P(RET,U,2)
 I CAP=1 S RET="Initial Acuity: "_RET
 Q RET
NTIME(DFN,CAP) ;ER TRIAGE NURSE TIME and ER TRIAGE NURSE TIME W/CAPTION - Return the Triage Nurse Time
 N RET,IEN
 S CAP=$G(CAP)
 S RET=$$GETER(DFN,21,12.2) I $P(RET,U)=-1 Q $P(RET,U,2)
 I CAP=1 S RET="Triage Nurse Time: "_RET
 Q RET
ADMIT(DFN,CAP) ;ER ADMIT PROVIDER and ER ADMIT PROV W/CAPTION - Return the Admitting Provider
 N RET,IEN
 S CAP=$G(CAP)
 S RET=$$GETER(DFN,18,.06) I $P(RET,U)=-1 Q $P(RET,U,2)
 I CAP=1 S RET="Provider: "_RET
 Q RET
ATIME(DFN,CAP) ;ER ADMIT PROV TIME and ER ADMIT PROV TIME/CAPTION - Return the Admitting Provider Time
 N RET,IEN
 S CAP=$G(CAP)
 S RET=$$GETER(DFN,22,12.1) I $P(RET,U)=-1 Q $P(RET,U,2)
 I CAP=1 S RET="Provider Time: "_RET
 Q RET

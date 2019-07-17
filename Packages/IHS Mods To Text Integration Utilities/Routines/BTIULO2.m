BTIULO2 ; IHS/ITSC/LJF - MORE TIU OBJECTS ;06-Aug-2018 16:28;DU
 ;;1.0;TEXT INTEGRATION UTILITIES;**1001,1002,1006,1020**;NOV 04, 2004;Build 7
 ;IHS/IHTSC/LJF 4/28/2005 PATCH 1002 added EP; to MCR and MCD entry points
 ;1006 check for invalid visit
 ;1020 added new lookup for medicare and railroad numbers
 ;
CURDIET(DFN,VST) ;EP; returns patient's current diet for visit
 NEW ADM,Y
 S ADM=$$PMV^BTIUU1(VST,DFN),Y=""
 I ADM<1 Q "Current Diet: No current order"
 I $L($T(CUR^FHORD7)) D CUR^FHORD7
 Q "Current Diet: "_$S(Y]"":Y,1:"No current order")
 ;
FOODADR(DFN) ;EP; returns food allergies and ADRs
 NEW GMRA,GMRAL,X,ALLRG,ADR,Y,Z,TIUY,COUNT
 K ^TMP("BTIULO",$J)
 S GMRA="0^0^010" D EN1^GMRADPT
 I GMRAL="" Q "Allergies/ADRs: Unknown"
 I GMRAL=0 D  Q X
 . S Z="Allergies/ADRs: "
 . S Y=$O(GMRAL(0)) I Y S X=$P(GMRAL(Y),U,2) I X]"" S X=Z_X Q
 . S X=Z_"None found in system"
 ;
 S (ALLRG,ADR)=""
 S X=0 F  S X=$O(GMRAL(X)) Q:'X  D
 . I $P(GMRAL(X),U,5)=0 S ALLRG=ALLRG_$P(GMRAL(X),U,2)_"; " Q
 . S ADR=ADR_$P(GMRAL(X),U,2)_"; "
 S ALLRG=$S(ALLRG="":"None found",1:$P(ALLRG_";","; ;"))
 S ADR=$S(ADR="":"None found",1:$P(ADR_";","; ;"))
 S X="Food Allergies: "_ALLRG_";  AdvReac: "_ADR S TIUY=$$WRAP^TIULS(X,73)
 F COUNT=1:1 Q:$P(TIUY,"|",COUNT)=""  S ^TMP("BTIULO",$J,COUNT,0)=$P(TIUY,"|",COUNT)
 Q "~@^TMP(""BTIULO"",$J)"
 ;
 ;
LASTIMM(DFN,TIUIMM,TIUNM) ;EP -- returns last immunization date
 ; TIUIMM=HL7 codes separated by ^ then generic name at end after ;
 ;        example TIUIMM="2^10^89;Polio Vax"
 ; TIUNM=1 to return imm name; =0 to just return date
 ; TIUDE will be set to iens in BI Table Data Elements file
 ; TIUDATA "|" pieces within each "^" will be
 ;     IEN  PIECE
 ;--->        1 = Visit Type: "I"=Immunization, "S"=Skin Test.
 ;--->  9     2 = Vaccine Name, Long
 ;---> 25     3 = HL7 code for immunization
 ;---> 56     4 = Date of Visit Fileman format (YYYMMDD).
 ;
 NEW I,TIUDE,TIUANS,X,TIUCODE,TIUDATA
 Q:'$G(DFN)  Q:'$G(TIUIMM)
 ; -- set all codes sent into array
 F I=1:1 S X=$P(TIUIMM,U,I) Q:'X  S TIUCODE(+X)=""
 ; -- set data elements to return
 F I=9,25,56 S TIUDE(I)=""
 ; -- get imm hx from imm app
 D IMMHX^BIRPC(.TIUDATA,DFN,.TIUDE)
 ; -- evaluate results
 K TIUANS F I=1:1 S X=$P(TIUDATA,U,I) Q:X=""  D
 . Q:$P(X,"|")'="I"                           ;not immunization
 . Q:'$D(TIUCODE($P(X,"|",3)))                ;not in imm set sent
 . I '$D(TIUANS) S TIUANS=X Q                 ;set first imm found
 . I $P(TIUANS,"|",4)<$P(X,"|",4) S TIUANS=X  ;keep latest date
 ; -- return results
 I '$D(TIUANS) Q $S(TIUNM:"Last "_$P(TIUIMM,";",2)_": ",1:"")_"None Recorded"
 Q $S(TIUNM:"Last "_$P(TIUANS,"|",2)_": ",1:"")_$$FMTE^XLFDT($P(TIUANS,"|",4))
 ;
 ;
IMMDUE(DFN,TARGET) ;EP; -- returns immunizations due (via Immunization app)
 NEW TIUIMM,TIUCAP,TIU31,ERROR,TIUX,TIUY,CNT,X
 S TIUCAP="Immunizations Due: "
 I '$G(DFN) Q TIUCAP_"?? patient unknown"
 I '$L($T(IMMFORC^BIRPC)) Q TIUCAP_"Unknown; Immunization v7.1 not installed"
 ;
 D IMMFORC^BIRPC(.TIUIMM,DFN)
 ;
 S TIU31=$C(31)_$C(31)
 ;--- Check for error in 2nd piece of return value.
 S ERROR=$P(TIUIMM,TIU31,2) I ERROR]"" Q TIUCAP_ERROR
 ;
 ;--- If no error, so take 1st piece of return value and process it.
 S TIUIMM=$P(TIUIMM,TIU31,1) K @TARGET
 ;
 NEW TIUX,TIUY F TIUX=1:1 S TIUY=$P(TIUIMM,U,TIUX) Q:TIUY=""  D
 . S X=$P(TIUY,"|") S:$P(TIUY,"|",2)]"" X=X_"  ("_$P(TIUY,"|",2)_$P(TIUY,"|",3)_")"
 . S CNT=$G(CNT)+1 I CNT=1 S @TARGET@(1,0)="Immunizations Due: "_X Q
 . S @TARGET@(CNT,0)=$$SP(17)_X
 ;
 Q "~@"_$NA(@TARGET)
 ;
LASTSK(DFN,TIUSK) ;EP -- returns last skin test date and result
 ; TIUSK=skin test name
 ; TIUDE will be set to iens in BI Table Data Elements file
 ; TIUDATA "|" pieces within each "^" will be
 ;     IEN  PIECE
 ;--->        1 = Visit Type: "I"=Immunization, "S"=Skin Test.
 ;---> 38     2 = Skin Test Result
 ;---> 40     3 = Skin Test - Date Read in DD-mmm_YYYY format.
 ;---> 41     4 = Skin Test Name
 ;
 NEW I,TIUDE,TIUANS,X
 Q:'$G(DFN)  Q:'$G(TIUIMM)
 ; -- set data elements to return
 F I=38,40,41 S TIUDE(I)=""
 ; -- get imm hx from imm app
 D IMMHX^BIRPC(.TIUDATA,DFN,.TIUDE)
 ; -- evaluate results
 K TIUANS F I=1:1 S TIUX=$P(TIUDATA,U,I) Q:TIUX=""  D
 . Q:$P(TIUX,"|")'="S"                           ;not skin test
 . Q:$P(TIUX,"|",4)'=TIUSK                       ;not test type sent
 . S X=$P(TIUX,"|",3) D ^%DT S $P(TIUX,"|",5)=Y  ;need FM date format
 . I '$D(TIUANS) S TIUANS=TIUX Q                 ;set first one found
 . I $P(TIUANS,"|",5)<$P(TIUX,"|",5) S TIUANS=TIUX  ;keep latest date
 ; -- return results
 I '$D(TIUANS) Q "Last "_TIUSK_": None Recorded"
 Q "Last "_TIUSK_": "_$P(TIUANS,"|",3)_" - "_$P(TIUANS,"|",38)
 ;
 ;
LASTPAP(DFN) ;EP; -- returns last pap date and result
 NEW N,Y,BW,DATE,LINE
 I $P(^DPT(DFN,0),U,2)="M" Q ""
 S N=0 F  S N=$O(^BWPCD("C",DFN,N)) Q:'N  D
 .S Y=^BWPCD(N,0)
 .I $P(Y,U,4)=1 S DATE=$P(Y,U,12) D
 ..S BW("PAP",9999999-DATE)=DATE_U_$P(Y,U,5)_U_N
 I '$D(BW("PAP")) Q "No PAP on record"
 S N=$O(BW("PAP",0)) I 'N Q "No PAP on record"
 S N=BW("PAP",N),LINE="Last PAP: "_$$FMTE^XLFDT(+N,"5D")
 S LINE=LINE_"  Result - "_$$GET1^DIQ(9002086.31,$P(N,U,2),.01)
 S LINE=LINE_" ("_$$GET1^DIQ(9002086.1,$P(N,U,3),.14)_")"
 Q LINE
 ;
LASTMAM(DFN) ;EP; -- returns last mammogram date and result
 NEW N,Y,BW,DATE,LINE,X
 I $P(^DPT(DFN,0),U,2)="M" Q ""
 S N=0 F  S N=$O(^BWPCD("C",DFN,N)) Q:'N  D
 . S Y=^BWPCD(N,0)
 . S X=+$P(Y,U,4) I (X'=25)&(X'=26)&(X'=28) Q   ;mamo iens are 25,26,28
 . S DATE=$P(Y,U,12)
 . S BW("MAM",9999999-DATE)=DATE_U_$P(Y,U,5)_U_N_U_$P(Y,U,4)
 I '$D(BW("MAM")) Q "No Mammogram on record"
 S N=$O(BW("MAM",0)) I 'N Q "No Mammogram on record"
 S N=BW("MAM",N)
 S LINE="Last "_$$GET1^DIQ(9002086.2,$P(N,U,4),.01)_": "
 S LINE=LINE_$$FMTE^XLFDT(+N,"5D")
 S LINE=LINE_"  Result - "_$$GET1^DIQ(9002086.31,+$P(N,U,2),.01)
 S LINE=LINE_" ("_$$GET1^DIQ(9002086.1,$P(N,U,3),.14)_")"
 Q LINE
 ;
 ;
 ;
VSTINS(DFN,VISIT) ;EP; returns insurance coverage at visit time
 NEW VDT,LINE,PVT
 I ('$G(DFN))!('$G(VISIT)) Q "Invalid visit"
 S LINE="",VDT=+$G(^AUPNVSIT(VISIT,0)) I 'VDT Q LINE
 I $$MCR^AUPNPAT(DFN,VDT)=1 S LINE="MEDICARE #"_$$MCR2(DFN)_"/"
 I $$MCD^AUPNPAT(DFN,VDT)=1 S LINE=LINE_"MEDICAID #"_$$MCD(DFN)_"/"
 ;I $$PI^AUPNPAT(DFN,VDT)=1 S LINE=LINE_"PVT INS ("_$$PIN^AUPNPAT(DFN,VDT,"E")_")/"
 I $$PI^AUPNPAT(DFN,VDT)=1 S PVT=$$THIRD(DFN) S LINE=LINE_"PVT INS ("_PVT_")/"
 I $$RR^AUPNPAT(DFN,VDT)=1 S LINE=LINE_"RR INS #"_$$GETRRE^AGUTL(DFN,VDT)_")/"
 Q $S(LINE="":"",1:$E(LINE,1,$L(LINE)-1))
 ;
POLICY(DFN,VISIT) ; EP; returns prvt insurance policy number at visit time
 NEW INSUR,IEN,PVT
 S PVT=""
 S INSUR=$$PIN^AUPNPAT(DFN,VISIT,"I"),IEN=0
 I INSUR S PVT=$$THIRD(DFN)
 Q PVT
 ;S IEN=$O(^AUPNPRVT(DFN,11,"B",INSUR,0))
 ;I IEN Q "#"_$P($G(^AUPNPRVT(DFN,11,IEN,0)),U,2)
 Q ""
MCR(DFN) ;EP; returns medicare number for patient
 NEW IEN
 S IEN=$$GETMCR^AGUTL(DFN)
 I IEN'="" Q IEN
 S IEN=$O(^AUPNMCR("B",DFN,0)) I 'IEN Q "??"
 Q $P($G(^AUPNMCR(IEN,0)),U,3)
 ;
MCR2(DFN) ;EP; returns medicare number for patient
 NEW IEN,NUMBER,TYPE,IEN2,MCARE,COV,DNAME,INS
 S MCARE=""
 S NUMBER=$$GETMCR^AGUTL(DFN)
 ;I '+NUMBER D
 ;.S IEN=$O(^AUPNMCR("B",DFN,0))
 ;.S NUMBER=$P($G(^AUPNMCR(IEN,0)),U,3)
 S IEN2=0 F  S IEN2=$O(^AUPNMCR(DFN,11,IEN2)) Q:'+IEN2  D
 .S DATA=$G(^AUPNMCR(DFN,11,IEN2,0))
 .S EXP=$P(DATA,U,2)
 .Q:(+EXP)&(EXP<DT)
 .S COV=$P(DATA,U,3)
 .I COV="A"!(COV="B") S DNAME="Part "_COV_"-"_NUMBER
 .I COV="D" D
 ..S INS=$$GET1^DIQ(9999999.18,$P(DATA,U,4),.01)
 ..S DNAME="Part "_COV_" "_INS_"-"_$P(DATA,U,6)
 .I MCARE="" S MCARE=DNAME
 .E  S MCARE=MCARE_";"_DNAME
 Q MCARE
RRE(DFN) ;EP; returns railroad number for patient
 NEW IEN,NUMBER,TYPE,IEN2,RRE,COV,DNAME,INS
 S RRE=""
 S NUMBER=$$GETRRE^AGUTL(DFN)
 S IEN2=0 F  S IEN2=$O(^AUPNRRE(DFN,11,IEN2)) Q:'+IEN2  D
 .S DATA=$G(^AUPNRRE(DFN,11,IEN2,0))
 .S EXP=$P(DATA,U,2)
 .Q:(+EXP)&(EXP<DT)
 .S COV=$P(DATA,U,3)
 .I COV="A"!(COV="B") S DNAME="Part "_COV_"-"_NUMBER
 .I COV="D" D
 ..S INS=$$GET1^DIQ(9999999.18,$P(DATA,U,4),.01)
 ..S DNAME="Part "_COV_" "_INS_"-"_$P(DATA,U,6)
 .I RRE="" S RRE=DNAME
 .E  S RRE=RRE_";"_DNAME
 Q RRE
MCD(DFN) ;EP; returns medicaid number for patient
 NEW IEN
 S IEN=$O(^AUPNMCD("B",DFN,0)) I 'IEN Q "??"
 Q $P($G(^AUPNMCD(IEN,0)),U,3)
THIRD(DFN) ;EP returns third party insurance
 NEW IEN,TYPE,DATA,NAME,NUMBER,PVT,EXP
 S PVT=""
 S TYPE="" F  S TYPE=$O(^AUPNPRVT(DFN,11,"B",TYPE)) Q:'+TYPE  D
 .S IEN="" F  S IEN=$O(^AUPNPRVT(DFN,11,"B",TYPE,IEN)) Q:'+IEN  D
 ..S DATA=$G(^AUPNPRVT(DFN,11,IEN,0))
 ..S EXP=$P(DATA,U,7)
 ..Q:(+EXP)&(EXP<DT)
 ..Q:DATA=""
 ..S NAME=$$GET1^DIQ(9999999.18,$P(DATA,U,1),.01)
 ..S NUMBER=$P($G(^AUPNPRVT(DFN,11,IEN,2)),U,1)
 ..;following code looks at the Member Number field of Insurer multiple.
 ..;from Policy Holder File
 ..I NUMBER="" D
 ...I +$P(DATA,U,8) S NUMBER=$P($G(^AUPN3PPH($P(DATA,U,8),0)),U,4)
 ..I PVT="" S PVT=NAME_"-"_NUMBER
 ..E  S PVT=PVT_";"_NAME_"-"_NUMBER
 Q PVT
 ;
LASTEXAM(DFN,CODE) ;EP; returns last V Exam date and result
 ; CODE=unique code from exam file or exam name
 NEW EXAM,DATE,RESULT,N,SUB
 S SUB=$S($L(CODE)=2:"C",1:"B")  ;was code or name sent
 S EXAM=$O(^AUTTEXAM(SUB,CODE,0)) I EXAM="" Q ""
 S DATE=$O(^AUPNVXAM("AA",+$G(DFN),EXAM,0)) I DATE="" Q "None Found"
 S RESULT="Date: "_$$FMTE^XLFDT(9999999-DATE,"D")
 S N=$O(^AUPNVXAM("AA",DFN,EXAM,DATE,0)) I 'N Q RESULT_" Results: No Results"
 Q RESULT_" Results: "_$$GET1^DIQ(9000010.13,N,.04)
 ;
LASTHF(DFN,NAME) ;EP; returns last V Health Factor
 ; NAME = exact name of health factor in file
 NEW FACTOR,DATE,RESULT,N
 S RESULT=NAME_": "
 S FACTOR=$O(^AUTTHF("B",NAME,0)) I 'FACTOR Q ""
 S DATE=$O(^AUPNVHF("AA",+$G(DFN),FACTOR,0)) I DATE="" Q RESULT_"Not Found"
 S RESULT=RESULT_$$FMTE^XLFDT(9999999-DATE,"D")
 S N=$O(^AUPNVHF("AA",DFN,FACTOR,DATE,0)) I 'N Q RESULT
 S X=$$GET1^DIQ(9000010.23,N,.04)    ;severity level
 ;Q RESULT_$S(X]"":" Level: "_$$GET1^DIQ(9000010.13,N,.04),1:"")
 Q RESULT_$S(X]"":" Level: "_X,1:"")     ;IHS/ITSC/LJF 12/10/2004 PATCH 1001 typo, file is .23 not .13
 ;
LSTHFALL(TARGET,DFN) ;EP; returns last occurence for ALL V Health Factors for patient
 NEW FACTOR,DATE,RESULT,N
 S DATE=$O(^AUPNVHF("AA",+$G(DFN),FACTOR,0)) I DATE="" Q RESULT_"Not Found"
 S RESULT=RESULT_$$FMTE^XLFDT(9999999-DATE,"D")
 S N=$O(^AUPNVHF("AA",DFN,FACTOR,DATE,0)) I 'N Q RESULT
 S X=$$GET1^DIQ(9000010.23,N,.04)    ;severity level
 Q RESULT_$S(X]"":" Level: "_$$GET1^DIQ(9000010.13,N,.04),1:"")
 Q "~@"_$NA(@TARGET)
 ;
PTADDRS(DFN) ;EP; returns patient's current address
 NEW CNT,LINE,FIELD
 I '$G(DFN) Q ""
 K ^TMP("BTIULO",$J)
 S CNT=0 F FIELD=.111:.001:.116 D
 . S LINE=$$GET1^DIQ(2,DFN,FIELD) Q:LINE=""
 . I FIELD<.115 S CNT=CNT+1  ;separate lines for street address portion
 . S ^TMP("BTIULO",$J,CNT,0)=$G(^TMP("BTIULO",$J,CNT,0))_LINE_" "
 I '$D(^TMP("BTIULO",$J)) Q "No Current Address Found"
 Q "~@^TMP(""BTIULO"",$J)"
 ;
PHONE(DFN) ;EP; -- returns patient's current phone numbers
 NEW HOME,OFFICE
 Q:'$G(DFN)
 S HOME=$$GET1^DIQ(2,DFN,.131) S:HOME]"" HOME=HOME_" (home)"
 S OFFICE=$$GET1^DIQ(2,DFN,.132) S:OFFICE]"" OFFICE=OFFICE_" (office)"
 I HOME="",OFFICE="" S HOME="No Phone in record"
 Q HOME_$S(HOME="":"",OFFICE="":"",1:"/")_OFFICE
 ;
ELIG(DFN) ;EP; -- returns patient's Eligebility Status
 N ELIG
 Q:'$G(DFN)
 S ELIG=$$GET1^DIQ(9000001,DFN,1112)
 Q "ELIGIBILITY STATUS: "_$S(ELIG]"":ELIG,1:"??")
 ;
PAD(DATA,LENGTH) ; pad length of data
 Q $E(DATA_$$REPEAT^XLFSTR(" ",LENGTH),1,LENGTH)
 ;
SP(NUM) ; pad spaces
 Q $$PAD(" ",NUM)

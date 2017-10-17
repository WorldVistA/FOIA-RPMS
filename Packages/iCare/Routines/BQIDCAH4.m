BQIDCAH4 ;GDIT/HS/ALA-Ad Hoc continued ; 10 Dec 2012  3:23 PM
 ;;2.6;ICARE MANAGEMENT SYSTEM;;Jul 07, 2017;Build 72
 ;
PROB(FGLOB,TGLOB,PROB,PROBTX,FDT,TDT,MPARMS) ;EP - Problems
 NEW PRPT,CT,IEN,PB,PCT,PTAX,TREF
 I $G(PROBTX)'="" D
 . S TREF=$NA(MPARMS("PROB"))
 . K @TREF
 . S PTAX=$P(@("^"_$P(PROBTX,";",2)_$P(PROBTX,";",1)_",0)"),"^",1)
 . D BLD^BQITUTL(PTAX,TREF)
 ;
 I PROP="!" D
 . I $D(MPARMS("PROB")) S PROB="" F  S PROB=$O(MPARMS("PROB",PROB)) Q:PROB=""  D PRBB
 . I '$D(MPARMS("PROB")) D PRBB
 I PROP="&" D
 . K PRPT
 . S PROB="",CT=0 F  S PROB=$O(MPARMS("PROB",PROB)) Q:PROB=""  D PRBB S CT=CT+1
 . S IEN=""
 . F  S IEN=$O(PRPT(IEN)) Q:IEN=""  D
 .. S PCT=0,PB=""
 .. F  S PB=$O(PRPT(IEN,PB)) Q:PB=""  S PCT=PCT+1
 .. I PCT=CT S @TGLOB@(IEN)="" D  Q
 ... F  S PB=$O(PRPT(IEN,PB)) Q:PB=""  S PIEN=PRPT(IEN,PB),@CRIT@("PROB",IEN,PIEN)=""
 ;
 Q
 ;
PRBB ; Problem
 NEW DFN,IEN
 S TDT=$S(TDT'="":TDT,1:DT)
 ; If 'from' data global is populated, use those entries to filter by
 I $G(FGLOB)'="" D  Q
 . NEW IEN,PIEN,PB,STAT,VSDTM
 . S IEN=""
 . F  S IEN=$O(@FGLOB@(IEN)) Q:'IEN  D
 .. I $O(^AUPNPROB("AC",IEN,""))="" Q
 .. S PIEN=""
 .. F  S PIEN=$O(^AUPNPROB("AC",IEN,PIEN)) Q:PIEN=""  D
 ... S PB=$P(^AUPNPROB(PIEN,0),U,1)
 ... I $D(MPARMS("PROB")),'$D(MPARMS("PROB",PB)) Q
 ... I '$D(MPARMS("PROB")),PB'=PROB Q
 ... S STAT=$P(^AUPNPROB(PIEN,0),U,12)
 ... I PRSTAT'="",STAT'=PRSTAT Q
 ... I $D(MPARMS("PRSTAT")),'$D(MPARMS("PRSTAT",STAT)) Q
 ... S VSDTM=$$PROB^BQIUL1(PIEN)
 ... I FDT'="",VSDTM<FDT!(VSDTM>TDT) Q
 ... I PROP="!" S @TGLOB@(IEN)="",@CRIT@("PROB",IEN,PIEN)="" Q
 ... I PROP="&" S PRPT(IEN,PROB)=PIEN
 ;
 ; if no additional entries to filter by, build list by problem only to filter on
 NEW IEN,DFN,VSDTM,STAT
 S IEN=""
 F  S IEN=$O(^AUPNPROB("B",PROB,IEN)) Q:IEN=""  D
 . S DFN=$P($G(^AUPNPROB(IEN,0)),U,2)
 . S VSDTM=$$PROB^BQIUL1(IEN)
 . I FDT'="",VSDTM<FDT!(VSDTM>TDT) Q
 . S STAT=$P(^AUPNPROB(IEN,0),U,12)
 . I PRSTAT'="",STAT'=PRSTAT Q
 . I $D(MPARMS("PRSTAT")),'$D(MPARMS("PRSTAT",STAT)) Q
 . I DFN'="",PROP="!" S @TGLOB@(DFN)="",@CRIT@("PROB",DFN,IEN)="" Q
 . I DFN'="",PROP="&" S PRPT(DFN,PROB)=IEN
 ;
 Q
 ;
NRV(FGLOB,TGLOB,FDT,TDT) ;EP - problems not reviewed
 NEW DFN,BGT,EDT,OK
 I $G(FGLOB)="" D
 . S DFN=0
 . F  S DFN=$O(^AUPNPAT(DFN)) Q:'DFN  D
 .. I $G(^AUPNPAT(DFN,0))="" Q
 .. I '$D(^AUPNVRUP("AA",DFN,1)) S @TGLOB@(DFN)="" Q
 .. S OK=0
 .. I FDT'="" D  Q
 ... S BGT=(9999999-TDT)-.0001,EDT=9999999-FDT
 ... F  S BGT=$O(^AUPNVRUP("AA",DFN,1,BGT)) Q:BGT=""!(BGT\1>EDT)  S OK=1
 .. I 'OK S @TGLOB@(DFN)=""
 ;
 I $G(FGLOB)'="" D
 . S DFN=""
 . F  S DFN=$O(@FGLOB@(DFN)) Q:DFN=""  D
 .. I '$D(^AUPNVRUP("AA",DFN,1)) S @TGLOB@(DFN)="" Q
 .. S OK=0
 .. I FDT'="" D
 ... S BGT=(9999999-TDT)-.0001,EDT=9999999-FDT
 ... F  S BGT=$O(^AUPNVRUP("AA",DFN,1,BGT)) Q:BGT=""!(BGT\1>EDT)  S OK=1
 .. I 'OK S @TGLOB@(DFN)=""
 Q
 ;
VCHK ;EP
 I '$D(^AUPNVRUP("AC",DFN)) S @TGLOB@(DFN)="" Q
 I '$D(^AUPNVRUP("AA",DFN,1)) S @TGLOB@(DFN)=""
 Q
 ;
NAC(FGLOB,TGLOB,FDT,TDT) ;EP - No active problems
 NEW DFN
 I $G(FGLOB)="" D
 . S DFN=0
 . F  S DFN=$O(^AUPNPAT(DFN)) Q:'DFN  D
 .. I $G(^AUPNPAT(DFN,0))="" Q
 .. I $D(^AUPNVRUP("AA",DFN,3)) D
 ... I FDT'="" D  Q
 .... S BGT=(9999999-TDT)-.0001,EDT=9999999-FDT
 .... F  S BGT=$O(^AUPNVRUP("AA",DFN,3,BGT)) Q:BGT=""!(BGT\1>EDT)  S @TGLOB@(DFN)=""
 ... S @TGLOB@(DFN)=""
 ;
 I $G(FGLOB)'="" D
 . S DFN=""
 . F  S DFN=$O(@FGLOB@(DFN)) Q:DFN=""  D
 .. I $D(^AUPNVRUP("AA",DFN,3)) D
 ... I FDT'="" D  Q
 .... S BGT=(9999999-TDT)-.0001,EDT=9999999-FDT
 .... F  S BGT=$O(^AUPNVRUP("AA",DFN,3,BGT)) Q:BGT=""!(BGT\1>EDT)  S @TGLOB@(DFN)=""
 ... S @TGLOB@(DFN)=""
 Q
 ;
NDC(FGLOB,TGLOB) ;EP - No documented problems
 NEW DFN
 I $G(FGLOB)="" D
 . S DFN=0
 . F  S DFN=$O(^AUPNPAT(DFN)) Q:'DFN  D
 .. I $G(^AUPNPAT(DFN,0))="" Q
 .. I '$D(^AUPNPROB("AC",DFN)) S @TGLOB@(DFN)=""
 I $G(FGLOB)'="" D
 . S DFN=""
 . F  S DFN=$O(@FGLOB@(DFN)) Q:DFN=""  D
 .. I '$D(^AUPNPROB("AC",DFN)) S @TGLOB@(DFN)=""
 Q
 ;
MND(FGLOB,TGLOB) ;EP - No documented medications
 NEW DFN
 I $G(FGLOB)="" D
 . S DFN=0
 . F  S DFN=$O(^AUPNPAT(DFN)) Q:'DFN  D
 .. I $G(^AUPNPAT(DFN,0))="" Q
 .. I '$D(^AUPNVMED("AC",DFN)) S @TGLOB@(DFN)=""
 I $G(FGLOB)'="" D
 . S DFN=""
 . F  S DFN=$O(@FGLOB@(DFN)) Q:DFN=""  D
 .. I '$D(^AUPNVMED("AC",DFN)) S @TGLOB@(DFN)=""
 Q
 ;
NAM(FGLOB,TGLOB,FDT,TDT) ;EP - no active medications
 NEW DFN
 I $G(FGLOB)="" D
 . S DFN=0
 . F  S DFN=$O(^AUPNPAT(DFN)) Q:'DFN  D
 .. I $G(^AUPNPAT(DFN,0))="" Q
 .. I $D(^AUPNVRUP("AA",DFN,7)) D
 ... I FDT'="" D  Q
 .... S BGT=(9999999-TDT)-.0001,EDT=9999999-FDT
 .... F  S BGT=$O(^AUPNVRUP("AA",DFN,7,BGT)) Q:BGT=""!(BGT\1>EDT)  S @TGLOB@(DFN)=""
 ... S @TGLOB@(DFN)=""
 ;
 I $G(FGLOB)'="" D
 . S DFN=""
 . F  S DFN=$O(@FGLOB@(DFN)) Q:DFN=""  D
 .. I $D(^AUPNVRUP("AA",DFN,7)) D
 ... I FDT'="" D  Q
 .... S BGT=(9999999-TDT)-.0001,EDT=9999999-FDT
 .... F  S BGT=$O(^AUPNVRUP("AA",DFN,7,BGT)) Q:BGT=""!(BGT\1>EDT)  S @TGLOB@(DFN)=""
 ... S @TGLOB@(DFN)=""
 Q
 ;
MLR(FGLOB,TGLOB,FDT,TDT) ;EP - medications not reviewed
 NEW DFN,BGT,EDT,OK
 I $G(FGLOB)="" D
 . S DFN=0
 . F  S DFN=$O(^AUPNPAT(DFN)) Q:'DFN  D
 .. I $G(^AUPNPAT(DFN,0))="" Q
 .. I '$D(^AUPNVRUP("AA",DFN,5)) S @TGLOB@(DFN)="" Q
 .. S OK=0
 .. I FDT'="" D  Q
 ... S BGT=(9999999-TDT)-.0001,EDT=9999999-FDT
 ... F  S BGT=$O(^AUPNVRUP("AA",DFN,5,BGT)) Q:BGT=""!(BGT\1>EDT)  S OK=1
 .. I 'OK S @TGLOB@(DFN)=""
 ;
 I $G(FGLOB)'="" D
 . S DFN=""
 . F  S DFN=$O(@FGLOB@(DFN)) Q:DFN=""  D
 .. I '$D(^AUPNVRUP("AA",DFN,5)) S @TGLOB@(DFN)="" Q
 .. S OK=0
 .. I FDT'="" D
 ... S BGT=(9999999-TDT)-.0001,EDT=9999999-FDT
 ... F  S BGT=$O(^AUPNVRUP("AA",DFN,5,BGT)) Q:BGT=""!(BGT\1>EDT)  S OK=1
 .. I 'OK S @TGLOB@(DFN)=""
 Q
 ;
EMP(FGLOB,TGLOB,EMPL,MPARMS) ;EP - Employer search
 I $G(TGLOB)="" Q
 I $G(EMPL)'="" D
 . S EMPL=""
 . F  S EMPL=$O(^BQI(90508,1,18,"B",EMPL)) Q:EMPL=""  D EMD
 Q
 ;
EMD ;EP
 NEW IEN,DFN
 I $G(FGLOB)'="" D
 . S IEN=""
 . F  S IEN=$O(@FGLOB@(IEN)) Q:'IEN  I $P($G(^AUPNPAT(IEN,0)),U,19)=EMPL S @TGLOB@(IEN)=""
 ;
 I $G(FGLOB)="" D
 . S DFN=""
 . F  S DFN=$O(^AUPNPAT("AF",EMPL,DFN)) Q:DFN=""  S @TGLOB@(DFN)=""
 Q
 ;
PNL(FGLOB,TGLOB,PLIDEN,MPARMS) ;EP - Panel search
 I $G(TGLOB)="" Q
 I PLIDEN]"" D PLD
 I $D(MPARMS("PLIDEN")) S PLIDEN="" F  S PLIDEN=$O(MPARMS("PLIDEN",PLIDEN)) Q:PLIDEN=""  D PLD
 Q
 ;
PLD ;EP
 NEW OWNR,PLNME,DA,IENS,PLIEN
 S OWNR=$P(PLIDEN,$C(26),1),PLNME=$P(PLIDEN,$C(26),2)
 S DA="",DA(1)=OWNR,IENS=$$IENS^DILF(.DA)
 S PLIEN=$$FIND1^DIC(90505.01,IENS,"X",PLNME,"","","ERROR")
 I PLIEN="" Q
 I $G(FGLOB)'="" D
 . S IEN=""
 . F  S IEN=$O(@FGLOB@(IEN)) Q:'IEN  D
 .. I $D(^BQICARE(OWNR,1,PLIEN,40,IEN)),$P(^BQICARE(OWNR,1,PLIEN,40,IEN,0),U,2)'="R" S @TGLOB@(IEN)=""
 ;
 NEW DFN,IEN
 I $G(FGLOB)="" D
 . S DFN=0
 . F  S DFN=$O(^BQICARE(OWNR,1,PLIEN,40,DFN)) Q:'DFN  D
 .. I $P(^BQICARE(OWNR,1,PLIEN,40,DFN,0),U,2)="R" Q
 .. S @TGLOB@(DFN)=""
 Q

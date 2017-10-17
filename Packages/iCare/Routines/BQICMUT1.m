BQICMUT1 ;GDIT/HS/ALA-Care Mgmt Utility ; 11 Jun 2014  11:19 AM
 ;;2.6;ICARE MANAGEMENT SYSTEM;;Jul 07, 2017;Build 72
 ;
 ;
TAX(TMFRAME,TAX,PTDFN,FREF,SAME,TREF,START,END,RESULT) ;EP
 ; Return all values for a taxonomy (TAX) or list of taxonomies (TREF)
 ; Input
 ;   TMFRAME - Timeframe to search for data
 ;   TAX     - Taxonomy (if singular taxonomy)
 ;   PTDFN   - Patient IEN
 ;   FREF    - File number reference
 ;   SAME    - If NIT is allowed for the same day or not (1 same day okay)
 ;   TREF    - Multiple same resulting taxonomies (e.g. MEDs) built
 ;             into reference (usually global)
 ;   START   - Starting Date
 ;   END     - Ending Date
 ;
 NEW GREF,ENDT,IEN,TIEN,TEMP,QFL,SRCTYP,VFL,VALUE
 K RESULT
 S TMFRAME=$G(TMFRAME,""),SAME=$G(SAME,1)
 S TREF=$G(TREF,""),TAX=$G(TAX,"")
 S START=$G(START,""),END=$G(END,"")
 I $G(TMFRAME)'="" S ENDT=$$DATE^BQIUL1(TMFRAME),BDT=""
 I $G(START)'=""!($G(END)'="") S ENDT=START,BDT=(9999999-END)-.001
 I $G(UID)="" S UID=$S($G(ZTSK):"Z"_ZTSK,1:$J)
 I TAX'="" D
 . S TREF=$NA(^TMP("BQITAX",UID))
 . K @TREF
 . D BLD^BQITUTL(TAX,TREF)
 S GREF=$$ROOT^DILFD(FREF,"",1)
 S TEMP=$NA(^TMP("BQITEMP",UID)) K @TEMP
 ;
 S IEN="",QFL=0,CT=0
 D
 . I $G(TMFRAME)="",$G(START)="",$G(END)="" Q
 . S VFL=$O(^BQI(90508.6,"B",FREF,""))
 . I VFL'="" S SRCTYP=$P(^BQI(90508.6,VFL,0),U,3)
 . S EDT=9999999-ENDT
 . I SRCTYP'=2 D  Q
 .. F  S BDT=$O(@GREF@("AA",PTDFN,BDT)) Q:BDT=""!(BDT>EDT)  D
 ... S IEN=""
 ... F  S IEN=$O(@GREF@("AA",PTDFN,BDT,IEN)) Q:IEN=""  D
 .... S TIEN=$$GET1^DIQ(FREF,IEN,.01,"I") I TIEN="" Q
 .... I '$D(@TREF@(TIEN)) Q
 .... S VISIT=$$GET1^DIQ(FREF,IEN,.03,"I") I VISIT="" Q
 .... I $$GET1^DIQ(9000010,VISIT,.11,"I")=1 Q
 .... S VSDTM=$$GET1^DIQ(9000010,VISIT,.01,"I")\1 Q:VSDTM=0
 .... ;I $G(TMFRAME)'="",VSDTM<ENDT Q
 .... S VALUE=$$GET1^DIQ(FREF,IEN,.04,"E")
 .... ; Set temporary
 .... S @TEMP@(VSDTM,VISIT,IEN)=VALUE
 . S TIEN=""
 . F  S TIEN=$O(@TREF@(TIEN)) Q:TIEN=""  D
 .. I $G(TMFRAME)'="" S ENDT=$$DATE^BQIUL1(TMFRAME),BDT=""
 .. I $G(START)'=""!($G(END)'="") S ENDT=START,BDT=(9999999-END)-.001
 .. F  S BDT=$O(@GREF@("AA",PTDFN,TIEN,BDT)) Q:BDT=""!(BDT>EDT)  D
 ... S IEN=""
 ... F  S IEN=$O(@GREF@("AA",PTDFN,TIEN,BDT,IEN)) Q:IEN=""  D
 .... S VISIT=$$GET1^DIQ(FREF,IEN,.03,"I") I VISIT="" Q
 .... I $$GET1^DIQ(9000010,VISIT,.11,"I")=1 Q
 .... S VSDTM=$$GET1^DIQ(9000010,VISIT,.01,"I")\1 Q:VSDTM=0
 .... S VALUE=$$GET1^DIQ(FREF,IEN,.04,"E")
 .... S @TEMP@(VSDTM,VISIT,IEN)=VALUE
 ;
 I $G(TMFRAME)="" D
 . I $G(START)'="",$G(END)'="" Q
 . F  S IEN=$O(@GREF@("AC",PTDFN,IEN),-1) Q:IEN=""  D
 .. S TIEN=$$GET1^DIQ(FREF,IEN,.01,"I") I TIEN="" Q
 .. I '$D(@TREF@(TIEN)) Q
 .. S VISIT=$$GET1^DIQ(FREF,IEN,.03,"I") I VISIT="" Q
 .. I $$GET1^DIQ(9000010,VISIT,.11,"I")=1 Q
 .. S VSDTM=$$GET1^DIQ(9000010,VISIT,.01,"I")\1 Q:VSDTM=0
 .. ;I $G(TMFRAME)'="",VSDTM<ENDT Q
 .. S VALUE=$$GET1^DIQ(FREF,IEN,.04,"E")
 .. ; Set temporary
 .. S @TEMP@(VSDTM,VISIT,IEN)=VALUE
 ;
 S VSDTM="",QFL=0
 F  S VSDTM=$O(@TEMP@(VSDTM),-1) Q:VSDTM=""!(QFL)  D
 . S VISIT=""
 . F  S VISIT=$O(@TEMP@(VSDTM,VISIT),-1) Q:VISIT=""  D  Q:QFL
 .. S IEN=""
 .. F  S IEN=$O(@TEMP@(VSDTM,VISIT,IEN),-1) Q:IEN=""  D  Q:QFL
 ... ; If result cannot be on the same day, quit
 ... I 'SAME,$P(RESULT,U,2)=VSDTM Q
 ... S VALUE=@TEMP@(VSDTM,VISIT,IEN)
 ... S CT=CT+1
 ... S RESULT(CT)=VSDTM_U_VISIT_U_IEN_U_VALUE
 S RESULT(0)=CT
 K @TREF
 Q
 ;
HF(DFN,TYP,TEXT) ;EP - Find Health Factor
 ; Input
 ;  DFN  - Patient IEN
 ;  TYP  - Category or Individual
 ;  TEXT - Health Factor
 ;
 NEW CAT,HFN,VALUE,RVDT
 S CAT=$G(TYP,0),VALUE=""
 S HFN=$O(^AUTTHF("B",TEXT,"")) I HFN="" Q VALUE
 I 'CAT D  Q VALUE
 . S RVDT=$O(^AUPNVHF("AA",DFN,HFN,"")) I RVDT="" Q
 . S IEN=$O(^AUPNVHF("AA",DFN,HFN,RVDT,""))
 . S VALUE=$$FMTMDY^BQIUL1((9999999-RVDT))
 ;
 I CAT D
 . S HN="" F  S HN=$O(^AUTTHF("AC",HFN,HN)) Q:HN=""  D
 .. S RVDT=$O(^AUPNVHF("AA",DFN,HN,"")) I RVDT="" Q
 .. S IEN=$O(^AUPNVHF("AA",DFN,HN,RVDT,""))
 .. S SORT(RVDT,HN,IEN)=""
 . S RVDT=$O(SORT("")) I RVDT="" Q
 . S HN=$O(SORT(RVDT,""))
 . S VALUE=$$FMTMDY^BQIUL1((9999999-RVDT))_" ("_$P(^AUTTHF(HN,0),"^",1)_")"
 Q VALUE
 ;
DEF(TYPE,RIEN,FIELD,RESULT) ;EP
 NEW RES,MBY,MN,FILE,DN
 I TYPE="MS" D
 . S FILE=9000010.01,RESULT=""
 . I FIELD=.04 D  Q
 .. S RES=$$GET1^DIQ(FILE,RIEN_",",FIELD,"E")
 .. I RES?.N1".".N S RES=$J(RES,3,2)
 .. S RESULT=1_U_RES
 . I FIELD="DATE" D  Q
 .. S RES=$$VISD^BQICMUTL(FILE,RIEN)
 .. I RES'="" S RESULT=1_U_(RES\1)
 . I FIELD="BY" D  Q
 .. S MBY=$$GET1^DIQ(FILE,RIEN_",",".08","I")
 .. I MBY="" S RESULT=0 Q
 .. D USR(MBY)
 . I FIELD="PBY" D  Q
 .. S MBY=$$GET1^DIQ(FILE,RIEN_",","1204","I")
 .. I MBY="" S RESULT=0 Q
 .. D USR(MBY)
 . I FIELD="MBY" D  Q
 .. S MBY=$$GET1^DIQ(FILE,RIEN_",","1219","I")
 .. I MBY="" S RESULT=0 Q
 .. D USR(MBY)
 . I FIELD=.01 D  Q
 .. S MN=$$GET1^DIQ(FILE,RIEN_",",FIELD,"I")
 .. S RESULT=1_U_$P(^AUTTMSR(MN,0),U,2)_" ["_$P(^AUTTMSR(MN,0),U,1)_"]"
 . I DIS="D" S RESULT=1_U_$$GET1^DIQ(FILE,RIEN_",",FIELD,"I") Q
 . S RESULT=1_U_$$GET1^DIQ(FILE,RIEN_",",FIELD,"E")
 . I RESULT="" S RESULT=0
 ;
 I TYPE="DX" D
 . S FILE=9000010.07,RESULT=""
 . I FIELD="DATE" D  Q
 .. S RES=$$VISD^BQICMUTL(FILE,RIEN)
 .. I RES'="" S RESULT=1_U_(RES\1)
 . I FIELD=.01 D  Q
 .. S DN=$$GET1^DIQ(FILE,RIEN_",",FIELD,"I")
 .. S RESULT=1_U_$$VST^ICDCODE(DN,"",80)_" ["_$$CODEC^ICDCODE(DN,80)_"]"
 . I FIELD="PRIM" D  Q
 .. D POV(RIEN)
 . I FIELD="PBY" D  Q
 .. S MBY=$$GET1^DIQ(FILE,RIEN_",","1204","I")
 .. I MBY="" S RESULT=0 Q
 .. D USR(MBY)
 . I FIELD=.09!(FIELD=.21) D  Q
 .. S DN=$$GET1^DIQ(FILE,RIEN_",",FIELD,"I")
 .. S RESULT=1_U_$$VST^ICDCODE(DN,"",80)_" ["_$$CODEC^ICDCODE(DN,80)_"]"
 . I DIS="D" S RESULT=1_U_$$GET1^DIQ(FILE,RIEN_",",FIELD,"I") Q
 . S RESULT=1_U_$$GET1^DIQ(FILE,RIEN_",",FIELD,"E")
 . I RESULT="" S RESULT=0
 Q
 ;
USR(MBY) ;EP
 S RESULT=1_U_$P(^VA(200,MBY,0),"^",1)
 Q
 ;
POV(PIEN) ;EP
 NEW VISIT,IEEN,FLG,ORD,CT
 I $G(^AUPNVPOV(PIEN,0))="" Q
 S VISIT=$P(^AUPNVPOV(PIEN,0),"^",3)
 S IEEN="",FLG=0,CT=0
 F  S IEEN=$O(^AUPNVPOV("AD",VISIT,IEEN)) Q:IEEN=""  D
 . I $P(^AUPNVPOV(IEEN,0),"^",12)'="" S FLG=1 Q
 . S CT=CT+1,ORD(CT)=IEEN
 I 'FLG D  Q
 . I ORD(1)=PIEN S RESULT=1_U_"PRIMARY" Q
 . S RESULT=1_U_"SECONDARY"
 S RESULT=1_U_$$GET1^DIQ(FILE,PIEN_",",.12,"E")
 Q

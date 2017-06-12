BQITAXX5 ;GDIT/HS/ALA-Taxonomy Items ; 28 Oct 2013  9:53 AM
 ;;2.5;ICARE MANAGEMENT SYSTEM;;May 24, 2016;Build 27
 ;
ITM(DATA,IVALUE) ; EP -- BQI GET TAXONOMY ITEMS
 ;
 ; Input
 ;   IVALUE - Internal entry number of taxonomy in structure, IEN;FILE REF
 ;            because this is a variable pointer value
 ;
 NEW UID,II,FNAME,FNBR,ROOT,FILE,IEN,FLD,VIEN,FDESC,LIEN,HIEN,BQIH,BQIJ,X,TTXT
 NEW TEXT,HIGH,LOW,DTCRT,DTMOD,ALL,NOREC
 S UID=$S($G(ZTSK):"Z"_ZTSK,1:$J)
 S DATA=$NA(^TMP("BQITXITM",UID))
 K @DATA
 ;
 S II=0
 NEW $ESTACK,$ETRAP S $ETRAP="D ERR^BQITAXX D UNWIND^%ZTER" ; SAC 2006 2.2.3.3.2
 ;
 S IVALUE=$G(IVALUE,"")
 S ALL=(IVALUE="")
 ;
 I IVALUE="" D
 . S BQIH=$$SPM^BQIGPUTL()
 . ;S II=II+1
 . D HDR
 . S @DATA@(II)="T00030TAXONOMY_NAME^T00015TAXONOMY_IEN^T00020TAX_CATEGORY^T00003TAX_SITE_DEFINED^T00030TAX_ID^T00003TAX_ITEMS^"_HDR_$C(30)
 . S BQIJ=0
 . F  S BQIJ=$O(^BQI(90508,BQIH,10,BQIJ)) Q:'BQIJ  D
 .. NEW DA,IENS,IVALUE,TTXT,TEXT,ID,CAT
 .. S IVALUE=$P(^BQI(90508,BQIH,10,BQIJ,0),U,2) Q:IVALUE=""
 .. S DA(1)=BQIH,DA=BQIJ,IENS=$$IENS^DILF(.DA)
 .. S TTXT=$$GET1^DIQ(90508.03,IENS,.01,"E"),TIEN=$$GET1^DIQ(90508.03,IENS,.02,"I")
 .. D FCAT(TIEN)
 .. S TEXT=TTXT_"^"_TIEN_"^"_ID
 .. S TEXT=TEXT_"^"_$S($$GET1^DIQ(90508.03,IENS,.04,"I")=1:"YES",1:"NO")_"^"_CAT
 .. S TEXT=TEXT_"^"_$S($$GET1^DIQ(90508.03,IENS,.02,"I")="":"MIS",$$GET1^DIQ(90508.03,IENS,.07,"I")=1:"YES",'$$ENTRS(IVALUE):"NO",1:"YES")_"^"
 .. D GET
 ;
 I IVALUE'="" D
 . D HDR S @DATA@(II)=HDR_$C(30)
 . S TEXT=""
 . I IVALUE'["BSTS" D GET Q
 . NEW BQILIST,BQISUB,OK,CODE,DESC,TSYS,FNAME,FNBR,FDESC,LIEN
 . S BQILIST=$NA(^TMP("BQISNSB",$J)) K @BQILIST
 . S BQISUB=$P(IVALUE,";",1)
 . S OK=$$SUBLST^BSTSAPI(BQILIST,BQISUB_"^36^1")
 . S BQSN=0
 . F  S BQSN=$O(@BQILIST@(BQSN)) Q:BQSN=""  D
 .. S CODE=$P(@BQILIST@(BQSN),"^",1),DESC=$P(@BQILIST@(BQSN),"^",3),TSYS="SNOMED CT US Extension"
 .. S FNAME="BSTS CONCEPT",FNBR="9002318.4",FDESC=BQISUB,DTCRT="",DTMOD=""
 .. S LIEN=$O(^BSTS(9002318.4,"C",36,CODE,""))
 .. S II=II+1
 .. S @DATA@(II)=TEXT_FNAME_"^"_FNBR_"^"_FDESC_"^"_$$FMTE^BQIUL1(DTCRT)_"^"_$$FMTE^BQIUL1(DTMOD)_"^^"_LIEN_"^"_CODE_"^"_DESC_"^"_TSYS_$C(30)
 . K @BQILIST
 ;
DONE ;
 S II=II+1,@DATA@(II)=$C(31)
 Q
 ;
GET ;
 NEW TSYS,DESC,CODE
 S IEN=$P(IVALUE,";",1),FILE=$$GREF(IVALUE),ROOT=$$ROOT^DILFD(FILE,"",1)
 I FILE=9002226 S FLD=".15"
 I FILE=9002228 S FLD=".09"
 S FNAME=$$GET1^DIQ(FILE,IEN,FLD,"E")
 S FNBR=$$GET1^DIQ(FILE,IEN,FLD,"I")
 S FDESC=$$GET1^DIQ(FILE,IEN,.02,"E")
 S TAX=$$GET1^DIQ(FILE,IEN,.01,"E")
 ;
 I FILE=9002226 S DTCRT=$$GET1^DIQ(FILE,IEN,.09,"I"),DTMOD=""
 I FILE=9002228 S DTMOD=$$GET1^DIQ(FILE,IEN,.06,"I"),DTCRT=""
 ;
 S VIEN=0
 ; If there aren't any items (For complete listing only)
 I '$O(@ROOT@(IEN,21,VIEN)) D:$G(ALL)  Q
 . S II=II+1
 . S @DATA@(II)=TEXT_FNAME_"^"_FNBR_"^"_FDESC_"^^^^^^^"_$C(30)
 I FNBR=80!(FNBR=80.1)!(FNBR=81) D  Q
 . NEW TREF
 . S TREF=$NA(^TMP("BQITAX",$J)) K @TREF
 . D BLD^BQITUTL(TAX,.TREF)
 . NEW DESC,TSYS,CODE
 . S LIEN=0
 . F  S LIEN=$O(@TREF@(LIEN)) Q:'LIEN  D
 .. S CODE=$P(@TREF@(LIEN),"^",1),TSYS=$P(@TREF@(LIEN),"^",4),II=II+1
 .. I FNBR=80 S DESC=$$ICD9^BQIUL3(LIEN,,4)
 .. I FNBR=80.1 S DESC=$$ICD0^BQIUL3(LIEN,,5)
 .. I FNBR=81 S DESC=$P($$CPT^ICPTCOD(LIEN,,3),U,3),TSYS="CPT"
 .. S @DATA@(II)=TEXT_FNAME_"^"_FNBR_"^"_FDESC_"^"_$$FMTE^BQIUL1(DTCRT)_"^"_$$FMTE^BQIUL1(DTMOD)_"^^"_LIEN_"^"_CODE_"^"_DESC_"^"_TSYS_$C(30)
 . K @TREF
 I FILE=9002228 D  Q
 . S TREF=$NA(^TMP(UID,"BQITAX")) K @TREF
 . D BLD^BQITUTL(TAX,.TREF,"L")
 . S LIEN=""
 . F  S LIEN=$O(@TREF@(LIEN)) Q:LIEN=""  D
 .. S II=II+1,DESC=$P(@TREF@(LIEN),U,1)
 .. S VIEN=$O(^ATXLAB(IEN,21,"B",LIEN,""))
 .. S @DATA@(II)=TEXT_FNAME_"^"_FNBR_"^"_FDESC_"^"_$$FMTE^BQIUL1(DTCRT)_"^"_$$FMTE^BQIUL1(DTMOD)_"^"_VIEN_"^"_$G(LIEN)_"^"_$G(LOW)_"^"_$G(DESC)_"^"_$G(TSYS)_$C(30)
 ; If there are items
 F  S VIEN=$O(@ROOT@(IEN,21,VIEN)) Q:'VIEN  D
 . S II=II+1,NOREC=0
 . NEW DA,IENS
 . S DA(1)=IEN,DA=VIEN,IENS=$$IENS^DILF(.DA)
 . S LOW=$$GET1^DIQ(FILE_".02101",IENS,.01,"E")
 . S LIEN=$$GET1^DIQ(FILE_".02101",IENS,.01,"I")
 . I LOW'="" D
 .. I LIEN=LOW D
 ... S LIEN=$$FIND1^DIC(FNBR,,"MP",LOW)
 ... S:LIEN<1 LIEN=LOW
 . S HIGH=$$GET1^DIQ(FILE_".02101",IENS,.02,"E")
 . S HIEN=$$GET1^DIQ(FILE_".02101",IENS,.02,"I")
 . I HIGH="" S HIEN=""
 . I HIGH'="" D
 .. I HIEN=HIGH D
 ... S HIEN=$$FIND1^DIC(FNBR,,"MP",HIGH)
 ... S:HIEN<1 HIEN=HIGH
 . I FNBR=50.67!(TAX[" NDC") D
 .. ;NEW NDC
 .. S LIEN=$O(^PSDRUG("D",LOW,"")),DESC="",TSYS="NDC"
 .. I FNAME="" S FNAME="DRUG"
 .. I FNBR="" S FNBR=50
 .. I LIEN'="" S DESC=$P(^PSDRUG(LIEN,0),U,1)
 . I FNBR=95.3 D
 .. NEW LNC
 .. S LNC=$P(LOW,"-",1),LIEN=$O(^LAB(60,"AF",LNC,"")),DESC="",TSYS="LOINC"
 .. I LIEN'="" S DESC=$P(^LAB(60,LIEN,0),U,1)
 . I FNBR=9999999.14!(FDESC["CVX") S NOREC=0 D
 .. NEW CVXLN,CVXHN
 .. S CVXLN=$O(^AUTTIMM("C",LOW,"")),DESC=""
 .. I CVXLN="" S NOREC=1 Q
 .. S DESC=$P(^AUTTIMM(CVXLN,0),U,1)
 . I FNBR'=9999999.31,LOW?.N D
 .. I NOREC Q
 .. I FNBR["50."!(TAX[" NDC")!(FNBR=9999999.14)!(TAX[" CVX") Q
 .. S DESC=$$GET1^DIQ(FNBR,LOW_",",.01,"E")
 .. I FNBR=50 S LIEN=LOW,LOW=""
 . I FNBR'=9999999.31,LOW'?.N D
 .. I NOREC Q
 .. I FNBR["50."!(FNBR=95.3)!(TAX[" NDC") Q
 .. S DESC=LOW,LOW="",LIEN=""
 . I FNBR=9999999.31 D
 .. I NOREC Q
 .. S TSYS="ADA",DESC="",LOW=$P(^AUTTADA(LIEN,0),"^",1)
 .. I LIEN="" S NOREC=1 Q
 .. S DESC=$P(^AUTTADA(LIEN,0),"^",2)
 . ;
 . I NOREC Q
 . I FNBR'=50 D
 .. I LOW="",LIEN'="" S LOW=LIEN,LIEN=""
 .. I HIGH="",HIEN'="" S HIGH=HIEN,HIEN=""
 . ;S @DATA@(II)=TEXT_FNAME_"^"_FNBR_"^"_FDESC_"^"_VIEN_"^"_LOW_"^"_LIEN_"^"_HIGH_"^"_HIEN_"^"_$$FMTE^BQIUL1(DTCRT)_"^"_$$FMTE^BQIUL1(DTMOD)_$C(30)
 . S @DATA@(II)=TEXT_FNAME_"^"_FNBR_"^"_FDESC_"^"_$$FMTE^BQIUL1(DTCRT)_"^"_$$FMTE^BQIUL1(DTMOD)_"^"_VIEN_"^"_$G(LIEN)_"^"_$G(LOW)_"^"_$G(DESC)_"^"_$G(TSYS)_$C(30)
 Q
 ;
ENTRS(TAXV) ;EP - Find if any entries in a taxonomy
 ;
 ;Input
 ;  TAXV - Taxonomy internal entry number
 ;
 NEW IEN,GLOBAL
 I TAXV="" Q 0
 S IEN=$P(TAXV,";",1),GLOBAL="^"_$P(TAXV,";",2)_IEN_")"
 I $O(@GLOBAL@(21,0))'="" Q 1
 Q 0
 ;
GREF(VAL) ; EP - Returns the file number
 NEW GL,FILN
 S GL="^"_$P(VAL,";",2)_"0)"
 S FILN=$P($G(@GL),U,2)
 S FILN=$$STRIP^XLFSTR(FILN,"ABCDEFGHIJKLMNOPQRSTUVWXYZ")
 Q FILN
 ;
HDR ; EP - Header
 S HDR="T00030FILE_NAME^I00010FILE_NBR^T00050TAX_DESC^D00015DATE_CREATED^D00015DATE_MODIFIED^I00010TVAL_IEN^"
 S HDR=HDR_"I00010IVAL_IEN^T00020IVAL_CODE^T00060IVAL_DESC^T00015IVAL_TSYS"
 ;S @DATA@(II)="T00030FILE_NAME^I00010FILE_NBR^T00050TAX_DESC^I00010TVAL_IEN^T00063LOW_VALUE^I00010LOW_IEN^T00063HIGH_VALUE^I00010HIGH_IEN^"
 ;S @DATA@(II)=@DATA@(II)_"D00015DATE_CREATED^D00015DATE_MODIFIED"_$C(30)
 ;S @DATA@(II)="T00030TAXONOMY_NAME^T00015TAXONOMY_IEN^T00020TAX_CATEGORY^T00003TAX_SITE_DEFINED^T00030TAX_ID^T00003TAX_ITEMS^T00030FILE_NAME^"
 ;S @DATA@(II)=@DATA@(II)_"I00010FILE_NBR^T00050TAX_DESC^I00010TVAL_IEN^T00063LOW_VALUE^I00010LOW_IEN^T00063HIGH_VALUE^I00010HIGH_IEN^"
 ;S @DATA@(II)=@DATA@(II)_"D00015DATE_CREATED^D00015DATE_MODIFIED"_$C(30)
 Q
 ;
FCAT(TXIEN) ;EP
 NEW IEN,FILE,ROOT,FLD,FNBR
 S IEN=$P(TXIEN,";",1),FILE=$$GREF(TXIEN),ROOT=$$ROOT^DILFD(FILE,"",1)
 I FILE=9002226 S FLD=".15"
 I FILE=9002228 S FLD=".09"
 S FNBR=$$GET1^DIQ(FILE,IEN,FLD,"I")
 I FNBR=80 S ID="DIAGNOSES",CAT="Diagnoses" Q
 I FNBR=81 S ID="CPTS",CAT="CPT Procedures" Q
 I FNBR=80.1 S ID="PROCEDURES",CAT="ICD Procedures" Q
 I FNBR=60!(FNBR=95.3) S ID="LAB TESTS",CAT="Lab Tests" Q
 I FNBR=50!(FNBR=50.57)!(FNBR=50.67) S ID="MEDICATIONS",CAT="Medications" Q
 I FNBR=9999999.05 S ID="COMMUNITIES",CAT="Communities" Q
 S ID="OTHERS",CAT="Other"
 Q
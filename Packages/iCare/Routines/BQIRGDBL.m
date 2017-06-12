BQIRGDBL ;VNGT/HS/ALA-Register 'Multiples' ; 11 Oct 2010  7:19 AM
 ;;2.5;ICARE MANAGEMENT SYSTEM;;May 24, 2016;Build 27
 ;
 Q
 ;
EN(HEADR,VALUE,BQIDFN,HFIL,DISPLAY) ;
 NEW BQRIEN,HIVIEN,IENS,DA
 S IEN=0,HEADR="T00030IEN^",VALUE=""
 S ORD=""
 F  S ORD=$O(DISPLAY(ORD)) Q:ORD=""  D
 . S HDR=$P(DISPLAY(ORD),U,1)
 . S HEADR=HEADR_HDR_"^"
 ;
 S ACMIEN=$P($G(^BQI(90508,1,"DM")),"^",2)
 I ACMIEN="" S ACMIEN=$O(^ACM(41.1,"B","IHS DIABETES",""))
 S ROOT=$$ROOT^DILFD(HFIL,"",1)
 ;
 S VLU=""
 F  S VLU=$O(@ROOT@("AC",ACMIEN,BQIDFN,VLU)) Q:VLU=""  D
 . NEW DA,IENS
 . S BQRIEN=@ROOT@("AC",ACMIEN,BQIDFN,VLU)
 . S DA=BQRIEN,IENS=$$IENS^DILF(.DA)
 . S VALUE(BQRIEN)=IENS_"^"
 . ; Get an array of the display order fields
 . S ORD=""
 . F  S ORD=$O(DISPLAY(ORD)) Q:ORD=""  D
 .. S FLD=$P(DISPLAY(ORD),U,2),TYPE=$P(DISPLAY(ORD),U,3)
 .. I TYPE'="D"!(TYPE'="X") S VAL=$$GET1^DIQ(HFIL,IENS,FLD,"E")
 .. I TYPE="C"!(TYPE="T") S VAL=$$GET1^DIQ(HFIL,IENS,FLD,"I")_$C(28)_$$GET1^DIQ(HFIL,IENS,FLD,"E")
 .. I TYPE="D" S VAL=$$GET1^DIQ(HFIL,IENS,FLD,"I"),VAL=$$FMTE^BQIUL1(VAL)
 .. I TYPE="W" D
 ... K HARRAY
 ... S VAL=$$GET1^DIQ(HFIL,IENS,FLD,"Z","HARRAY")
 ... S LIEN=0,VAL=""
 ... F  S LIEN=$O(HARRAY(LIEN)) Q:'LIEN  D
 .... S VAL=VAL_HARRAY(LIEN,0)_$C(10)
 ... S VAL=$$TKO^BQIUL1(VAL,$C(10))
 .. S VALUE(BQRIEN)=VALUE(BQRIEN)_VAL_"^"
 Q
 ;
DXN(BQIDFN,REG) ;EP - Diagnoses
 NEW ACMIEN,VLU,TEXT
 ;S ACMIEN=$P($G(^BQI(90508,1,"DM")),"^",2)
 S ACMIEN=$O(^ACM(41.1,"B",REG,""))
 S VLU="",TEXT=""
 F  S VLU=$O(^ACM(44,"AC",ACMIEN,BQIDFN,VLU)) Q:VLU=""  D
 . S TEXT=TEXT_$P(^ACM(44.1,VLU,0),U,1)_$C(10)_$C(13)
 Q $$TKO^BQIUL1(TEXT,$C(10)_$C(13))
 ;
ONS(BQIDFN) ; EP - Date of Onset for Diabetes Diagnoses
 NEW ACMIEN,VLU,TEXT,BDRIEN,TXT
 S ACMIEN=$P($G(^BQI(90508,1,"DM")),"^",2)
 I ACMIEN="" S ACMIEN=$O(^ACM(41.1,"B","IHS DIABETES",""))
 S VLU="",TEXT=""
 F  S VLU=$O(^ACM(44,"AC",ACMIEN,BQIDFN,VLU)) Q:VLU=""  D
 . S BDRIEN=$G(^ACM(44,"AC",ACMIEN,BQIDFN,VLU))
 . S TXT=$$GET1^DIQ(9002244,BDRIEN_",",2,"I") I TXT="" Q
 . S TEXT=TEXT_$$FMTE^BQIUL1(TXT)_"; "
 Q $$TKO^BQIUL1(TEXT,"; ")
 ;
SEV(BQIDFN) ; EP - Severity for Diabetes Diagnoses
 NEW ACMIEN,VLU,TEXT,BDRIEN,TXT
 S ACMIEN=$P($G(^BQI(90508,1,"DM")),"^",2)
 I ACMIEN="" S ACMIEN=$O(^ACM(41.1,"B","IHS DIABETES",""))
 S VLU="",TEXT=""
 F  S VLU=$O(^ACM(44,"AC",ACMIEN,BQIDFN,VLU)) Q:VLU=""  D
 . S BDRIEN=$G(^ACM(44,"AC",ACMIEN,BQIDFN,VLU))
 . S TXT=$$GET1^DIQ(9002244,BDRIEN_",",1,"E") I TXT="" Q
 . S TEXT=TEXT_TXT_"; "
 Q $$TKO^BQIUL1(TEXT,"; ")
 ;
COMP(BQIDFN) ; EP - Complications
 NEW ACMIEN,VLU,TEXT
 S ACMIEN=$P($G(^BQI(90508,1,"DM")),"^",2)
 I ACMIEN="" S ACMIEN=$O(^ACM(41.1,"B","IHS DIABETES",""))
 S VLU="",TEXT=""
 F  S VLU=$O(^ACM(42,"AC",ACMIEN,BQIDFN,VLU)) Q:VLU=""  D
 . S TEXT=TEXT_$P(^ACM(42.1,VLU,0),U,1)_"; "
 Q $$TKO^BQIUL1(TEXT,"; ")
 ;
CONS(BQIDFN) ; EP - Complications Date of Onset
 NEW ACMIEN,VLU,TEXT,BDRIEN,TXT
 S ACMIEN=$P($G(^BQI(90508,1,"DM")),"^",2)
 I ACMIEN="" S ACMIEN=$O(^ACM(41.1,"B","IHS DIABETES",""))
 S VLU="",TEXT=""
 F  S VLU=$O(^ACM(42,"AC",ACMIEN,BQIDFN,VLU)) Q:VLU=""  D
 . S BDRIEN=$G(^ACM(42,"AC",ACMIEN,BQIDFN,VLU))
 . S TXT=$$GET1^DIQ(9002242,BDRIEN_",",1,"I") I TXT="" Q
 . S TEXT=TEXT_$$FMTE^BQIUL1(TXT)_"; "
 Q $$TKO^BQIUL1(TEXT,"; ")
 ;
CST(BQIDFN) ; EP - Complications Status
 NEW ACMIEN,VLU,TEXT,BDRIEN,TXT
 S ACMIEN=$P($G(^BQI(90508,1,"DM")),"^",2)
 I ACMIEN="" S ACMIEN=$O(^ACM(41.1,"B","IHS DIABETES",""))
 S VLU="",TEXT=""
 F  S VLU=$O(^ACM(42,"AC",ACMIEN,BQIDFN,VLU)) Q:VLU=""  D
 . S BDRIEN=$G(^ACM(42,"AC",ACMIEN,BQIDFN,VLU))
 . S TXT=$$GET1^DIQ(9002242,BDRIEN_",",2,"E") I TXT="" Q
 . S TEXT=TEXT_TXT_"; "
 Q $$TKO^BQIUL1(TEXT,"; ")
 ;
COMM(BQIDFN) ; EP - Complications Comments
 NEW ACMIEN,VLU,TEXT,BDRIEN,TXT
 S ACMIEN=$P($G(^BQI(90508,1,"DM")),"^",2)
 I ACMIEN="" S ACMIEN=$O(^ACM(41.1,"B","IHS DIABETES",""))
 S VLU="",TEXT=""
 F  S VLU=$O(^ACM(42,"AC",ACMIEN,BQIDFN,VLU)) Q:VLU=""  D
 . S BDRIEN=$G(^ACM(42,"AC",ACMIEN,BQIDFN,VLU))
 . ;
 Q $$TKO^BQIUL1(TEXT,"; ")
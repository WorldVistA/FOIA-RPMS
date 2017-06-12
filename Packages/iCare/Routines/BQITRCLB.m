BQITRCLB ;GDHD/HCD/ALA-CVD Labs ; 13 Jun 2016  9:56 AM
 ;;2.5;ICARE MANAGEMENT SYSTEM;**1**;May 24, 2016;Build 17
 ;
NLDL(BQDFN) ;EP
 ; No LDL ever
 NEW MEET,DESC,X,TAX,TREF
 S MEET=0,DESC=""
 S TREF=$NA(^TMP("BQITAX",UID)) K @TREF
 S TAX="BGP LDL LOINC CODES" D BLD^BQITUTL(TAX,TREF)
 S TAX="DM AUDIT LDL CHOLESTEROL TAX" D BLD^BQITUTL(TAX,TREF,"L")
 S X=$$LAB^BQITRUTL("",1,BQDFN,"",0,">","","",.TREF)
 I $P(X,U,2)'="" S $P(X,U,2)=$$DATE^BQIUL1($P(X,U,2))
 I $P(X,U,1)=1 S MEET=0,DESC="Last LDL was "_$$FMTMDY^BQIUL1($P(X,U,2))_" ("_$P(X,U,3)_")"_U_$P(X,U,2,5)
 I $P(X,U,1)=0 S MEET=1,DESC="No LDL ever"
 K @TREF
 Q MEET_U_DESC
 ;
HLDL(BQDFN,TMFRAME) ;EP
 ; If most recent LDL in past year >190
 NEW X,MEET,DESC,TAX,TREF,X1
 S MEET=0,DESC=""
 S TREF=$NA(^TMP("BQITAX",UID)) K @TREF
 S TAX="BGP LDL LOINC CODES" D BLD^BQITUTL(TAX,TREF)
 S TAX="DM AUDIT LDL CHOLESTEROL TAX" D BLD^BQITUTL(TAX,TREF,"L")
 S X=$$LAB^BQITRUTL(TMFRAME,1,BQDFN,"",190,">","","",.TREF)
 I $P(X,U,2)'="" S $P(X,U,2)=$$DATE^BQIUL1($P(X,U,2))
 I $P(X,U,1)=0 S MEET=0,DESC="Most recent LDL not greater than 190 ("_$$FMTMDY^BQIUL1($P(X,U,2))_" "_$P(X,U,3)_")"
 I $P(X,U,1)=1 S MEET=1,DESC="Most recent LDL greater than 190 ("_$$FMTMDY^BQIUL1($P(X,U,2))_" "_$P(X,U,3)_")"_U_$$FMTMDY^BQIUL1($P(X,U,2))_U_$P(X,U,3,6),X1=X
 Q MEET_U_DESC
 ;
HTG(BQDFN,TMFRAME) ;EP 
 ; Most recent TG in past year >500
 NEW MEET,DESC,X,TAX,TREF
 S MEET=0,DESC=""
 S TMFRAME=$G(TMFRAME,"")
 S TREF=$NA(^TMP("BQITAX",UID)) K @TREF
 S TAX="DM AUDIT TRIGLYCERIDE TAX" D BLD^BQITUTL(TAX,TREF,"L")
 S TAX="BGP TRIGLYCERIDE LOINC CODES" D BLD^BQITUTL(TAX,TREF)
 S X=$$LAB^BQITRUTL(TMFRAME,1,BQDFN,"",500,">","","",.TREF)
 I $P(X,U,2)'="" S $P(X,U,2)=$$DATE^BQIUL1($P(X,U,2))
 I $P(X,U,1)=1 S MEET=1,DESC="Most recent Triglyceride greater than 500 ("_$$FMTMDY^BQIUL1($P(X,U,2))_" "_$P(X,U,3)_")"_U_$P(X,U,2,5)
 I $P(X,U,1)=0 S MEET=0,DESC="Most recent Triglyceride is not greater than 500"
 K @TREF
 Q MEET_U_DESC
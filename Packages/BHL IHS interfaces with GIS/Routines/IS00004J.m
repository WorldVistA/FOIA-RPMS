IS00004J ;Compiled from script 'Generated: X1 IHS 276-O' on DEC 09, 2002
 ;Part 11
 ;Copyright 2002 SAIC
EN S @INV@("NM12")=X K DXS,D0
 ;SET NM13 = INSGX\^INTHL7FT(1,3)\\999\@2762100ENM13
 S D0=INDA S X=$G(INA("2762100ENM13"))
 S X1="^INTHL7FT(1,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,999)
 S @INV@("NM13")=X K DXS,D0
 ;SET NM14 = INSGX\^INTHL7FT(1,3)\\999\@2762100ENM14
 S D0=INDA S X=$G(INA("2762100ENM14"))
 S X1="^INTHL7FT(1,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,999)
 S @INV@("NM14")=X K DXS,D0
 ;SET NM15 = INSGX\^INTHL7FT(1,3)\\999\@2762100ENM15
 S D0=INDA S X=$G(INA("2762100ENM15"))
 S X1="^INTHL7FT(1,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,999)
 S @INV@("NM15")=X K DXS,D0
 ;SET NM16 = INSGX\^INTHL7FT(1,3)\\999\@2762100ENM16
 S D0=INDA S X=$G(INA("2762100ENM16"))
 S X1="^INTHL7FT(1,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,999)
 S @INV@("NM16")=X K DXS,D0
 ;SET NM17 = INSGX\^INTHL7FT(1,3)\\999\@2762100ENM17
 S D0=INDA S X=$G(INA("2762100ENM17"))
 S X1="^INTHL7FT(1,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,999)
 S @INV@("NM17")=X K DXS,D0
 ;SET NM18 = INSGX\^INTHL7FT(1,3)\\999\@2762100ENM18
 S D0=INDA S X=$G(INA("2762100ENM18"))
 S X1="^INTHL7FT(1,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,999)
 S @INV@("NM18")=X K DXS,D0
 ;SET NM19 = INSGX\^INTHL7FT(1,3)\\999\@2762100ENM19
 S D0=INDA S X=$G(INA("2762100ENM19"))
 S X1="^INTHL7FT(1,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,999)
 S @INV@("NM19")=X K DXS,D0
 D:'INVS MC^INHS
 K LINE S LINE="",CP=0 S L1="NM1" S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,1,L1,.CP) S L1=$G(@INV@("NM11")) S:$TR(L1,$G(SUBDELIM))="" L1=""
 D SETPIECE^INHU(.LINE,DELIM,2,L1,.CP) S L1=$G(@INV@("NM12")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,3,L1,.CP) S L1=$G(@INV@("NM13"))
 S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,4,L1,.CP) S L1=$G(@INV@("NM14")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,5,L1,.CP)
 S L1=$G(@INV@("NM15")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,6,L1,.CP) S L1=$G(@INV@("NM16")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,7,L1,.CP)
 S L1=$G(@INV@("NM17")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,8,L1,.CP) S L1=$G(@INV@("NM18")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,9,L1,.CP)
 S L1=$G(@INV@("NM19")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,10,L1,.CP)
 D LINE^INHUT11(.LINE,DELIM,LCT)
 I $L(LINE)'=0 S LCT=LCT+1,^UTILITY("INH",$J,LCT)=LINE I $D(LINE)>9 M ^UTILITY("INH",$J,LCT)=LINE
 SET INSETID=0
 ;SET TRN1 = INSGX\^INTHL7FT(1,3)\\999\@2762200ETRN1
 S D0=INDA S X=$G(INA("2762200ETRN1"))
 S X1="^INTHL7FT(1,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,999)
 S @INV@("TRN1")=X K DXS,D0
 ;SET TRN2 = INSGX\^INTHL7FT(1,3)\\999\@2762200ETRN2
 S D0=INDA S X=$G(INA("2762200ETRN2"))
 S X1="^INTHL7FT(1,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,999)
 S @INV@("TRN2")=X K DXS,D0
 D:'INVS MC^INHS
 K LINE S LINE="",CP=0 S L1="TRN" S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,1,L1,.CP) S L1=$G(@INV@("TRN1")) S:$TR(L1,$G(SUBDELIM))="" L1=""
 D SETPIECE^INHU(.LINE,DELIM,2,L1,.CP) S L1=$G(@INV@("TRN2")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,3,L1,.CP)
 D LINE^INHUT11(.LINE,DELIM,LCT)
 I $L(LINE)'=0 S LCT=LCT+1,^UTILITY("INH",$J,LCT)=LINE I $D(LINE)>9 M ^UTILITY("INH",$J,LCT)=LINE
 SET INSETID=0
 ;SET REF1 = INSGX\^INTHL7FT(1,3)\\999\@2762200EREFA1
 S D0=INDA S X=$G(INA("2762200EREFA1"))
 S X1="^INTHL7FT(1,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,999)
 S @INV@("REF1")=X K DXS,D0
 ;SET REF2 = INSGX\^INTHL7FT(1,3)\\999\@2762200EREFA2
 S D0=INDA S X=$G(INA("2762200EREFA2"))
 S X1="^INTHL7FT(1,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,999)
 S @INV@("REF2")=X K DXS,D0
 D:'INVS MC^INHS
 K LINE S LINE="",CP=0 S L1="REF" S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,1,L1,.CP) S L1=$G(@INV@("REF1")) S:$TR(L1,$G(SUBDELIM))="" L1=""
 D SETPIECE^INHU(.LINE,DELIM,2,L1,.CP) S L1=$G(@INV@("REF2")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,3,L1,.CP)
 D LINE^INHUT11(.LINE,DELIM,LCT)
 I $L(LINE)'=0 S LCT=LCT+1,^UTILITY("INH",$J,LCT)=LINE I $D(LINE)>9 M ^UTILITY("INH",$J,LCT)=LINE
 SET INSETID=0
 ;SET REF1 = INSGX\^INTHL7FT(1,3)\\999\@2762200EREFB1
 S D0=INDA S X=$G(INA("2762200EREFB1"))
 S X1="^INTHL7FT(1,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,999)
 S @INV@("REF1")=X K DXS,D0
 ;SET REF2 = INSGX\^INTHL7FT(1,3)\\999\@2762200EREFB2
9 G EN^IS00004K
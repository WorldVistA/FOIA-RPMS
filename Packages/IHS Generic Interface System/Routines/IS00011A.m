IS00011A ;Compiled from script 'Generated: HL IHS IZV04 OUT-O' on AUG 03, 2015
 ;Part 2
 ;Copyright 2015 SAIC
EN S D0=INDA S Y(1)=$S($D(^DPT(D0,0)):^(0),1:"") S X=$P($G(^DIC(13,+$P(Y(1),U,8),0)),U)
 S X1="^INTHL7FT(17,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,250)
 S @INV@("PID17")=X K DXS,D0
 ;SET PID22 = INSGX\^INTHL7FT(1,3)\\200\@PID22
 S D0=INDA S X=$G(INA("PID22",INI(1)))
 S X1="^INTHL7FT(1,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,200)
 S @INV@("PID22")=X K DXS,D0
 ;SET PID24 = INSGX\^INTHL7FT(1,3)\\10\@PID24
 S D0=INDA S X=$G(INA("PID24",INI(1)))
 S X1="^INTHL7FT(1,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,10)
 S @INV@("PID24")=X K DXS,D0
 D:'INVS MC^INHS
 K LINE S LINE="",CP=0 S L1="PID" S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,1,L1,.CP) S L1=$G(@INV@("PID1")) S:$TR(L1,$G(SUBDELIM))="" L1=""
 D SETPIECE^INHU(.LINE,DELIM,2,L1,.CP) S L1=$G(@INV@("PID3")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,4,L1,.CP) S L1=$G(@INV@("PID5"))
 S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,6,L1,.CP) S L1=$G(@INV@("PID6")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,7,L1,.CP)
 S L1=$G(@INV@("PID7")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,8,L1,.CP) S L1=$G(@INV@("PID8")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,9,L1,.CP)
 S L1=$G(@INV@("PID10")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,11,L1,.CP) S L1=$G(@INV@("PID11")) S:$TR(L1,$G(SUBDELIM))="" L1=""
 D SETPIECE^INHU(.LINE,DELIM,12,L1,.CP) S L1=$G(@INV@("PID12")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,13,L1,.CP) S L1=$G(@INV@("PID13"))
 S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,14,L1,.CP) S L1=$G(@INV@("PID14")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,15,L1,.CP)
 S L1=$G(@INV@("PID17")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,18,L1,.CP) S L1=$G(@INV@("PID22")) S:$TR(L1,$G(SUBDELIM))="" L1=""
 D SETPIECE^INHU(.LINE,DELIM,23,L1,.CP) S L1=$G(@INV@("PID24")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,25,L1,.CP)
 S LCT=LCT+1,^UTILITY("INH",$J,LCT)=LINE I $D(LINE)>9 M ^UTILITY("INH",$J,LCT)=LINE
 Q
A1 S INDA=INDA0 K INDA0
 SET INSETID=0
 S INDA0=INDA,INI(1)=0  F  S INI(1)=$O(INDA(2,INI(1))) Q:'INI(1)  S INDA=$S(INDA(2,INI(1)):INDA(2,INI(1)),1:INI(1)) D
 .Q:'$D(^DPT(INDA,0))
 .D PD1^BYIMSEGS
 .;SET PD13 = INSGX\^INTHL7FT(1,3)\\250\@PD13
 .S D0=INDA S X=$G(INA("PD13",INI(1)))
 .S X1="^INTHL7FT(1,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,250)
 .S @INV@("PD13")=X K DXS,D0
 .;SET PD111 = INSGX\^INTHL7FT(1,3)\\50\@PD111
 .S D0=INDA S X=$G(INA("PD111",INI(1)))
 .S X1="^INTHL7FT(1,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,50)
 .S @INV@("PD111")=X K DXS,D0
 .;SET PD112 = INSGX\^INTHL7F(16991,5)\\4\@PD112
 .S D0=INDA S X=$G(INA("PD112",INI(1)))
 .S X1="^INTHL7F(16991,5)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,4)
 .S @INV@("PD112")=X K DXS,D0
 .;SET PD113 = INSGX\^INTHL7FT(1,3)\\8\@PD113
 .S D0=INDA S X=$G(INA("PD113",INI(1)))
 .S X1="^INTHL7FT(1,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,8)
 .S @INV@("PD113")=X K DXS,D0
 .;SET PD116 = INSGX\^INTHL7FT(1,3)\\1\@PD116
 .S D0=INDA S X=$G(INA("PD116",INI(1)))
 .S X1="^INTHL7FT(1,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,1)
 .S @INV@("PD116")=X K DXS,D0
 .;SET PD117 = INSGX\^INTHL7FT(1,3)\\50\@PD117
 .S D0=INDA S X=$G(INA("PD117",INI(1)))
 .S X1="^INTHL7FT(1,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,50)
 .S @INV@("PD117")=X K DXS,D0
 .;SET PD118 = INSGX\^INTHL7FT(1,3)\\50\@PD118
 .S D0=INDA S X=$G(INA("PD118",INI(1)))
 .S X1="^INTHL7FT(1,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,50)
 .S @INV@("PD118")=X K DXS,D0
 .D:'INVS MC^INHS
 .K LINE S LINE="",CP=0 S L1="PD1" S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,1,L1,.CP) S L1=$G(@INV@("PD13")) S:$TR(L1,$G(SUBDELIM))="" L1=""
 .D SETPIECE^INHU(.LINE,DELIM,4,L1,.CP) S L1=$G(@INV@("PD111")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,12,L1,.CP) S L1=$G(@INV@("PD112"))
 .S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,13,L1,.CP) S L1=$G(@INV@("PD113")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,14,L1,.CP)
 .S L1=$G(@INV@("PD116")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,17,L1,.CP) S L1=$G(@INV@("PD117")) S:$TR(L1,$G(SUBDELIM))="" L1=""
 .D SETPIECE^INHU(.LINE,DELIM,18,L1,.CP) S L1=$G(@INV@("PD118")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,19,L1,.CP)
 .S LCT=LCT+1,^UTILITY("INH",$J,LCT)=LINE I $D(LINE)>9 M ^UTILITY("INH",$J,LCT)=LINE
 .Q
 S INDA=INDA0 K INDA0
 SET INSETID=0
 S INDA0=INDA,INI(1)=0  F  S INI(1)=$O(INDA(2,INI(1))) Q:'INI(1)  S INDA=$S(INDA(2,INI(1)):INDA(2,INI(1)),1:INI(1)) D
 .Q:'$D(^DPT(INDA,0))
 .D NK1^BYIMSEGS
 .;SET NK11 = INSGX\^INTHL7FT(1,3)\\100\@NK11
 .S D0=INDA S X=$G(INA("NK11",INI(1)))
 .S X1="^INTHL7FT(1,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,100)
 .S @INV@("NK11")=X K DXS,D0
 .;SET NK12 = INSGX\^INTHL7FT(1,3)\\250\@NK12
 .S D0=INDA S X=$G(INA("NK12",INI(1)))
 .S X1="^INTHL7FT(1,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,250)
 .S @INV@("NK12")=X K DXS,D0
 .;SET NK13 = INSGX\^INTHL7FT(1,3)\\250\@NK13
 .S D0=INDA S X=$G(INA("NK13",INI(1)))
 .S X1="^INTHL7FT(1,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,250)
 .S @INV@("NK13")=X K DXS,D0
 .;SET NK14 = INSGX\^INTHL7FT(1,3)\\250\@NK14
 .S D0=INDA S X=$G(INA("NK14",INI(1)))
 .S X1="^INTHL7FT(1,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,250)
 .S @INV@("NK14")=X K DXS,D0
 .;SET NK15 = INSGX\^INTHL7FT(1,3)\\50\@NK15
 .S D0=INDA S X=$G(INA("NK15",INI(1)))
 .S X1="^INTHL7FT(1,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,50)
 .S @INV@("NK15")=X K DXS,D0
 .;SET NK17.1 = INSGX\^INTHL7F(14546,5)\\60\"OUTPUT TRANSFORM"
 .S D0=INDA S X="OUTPUT TRANSFORM"
 .S X1="^INTHL7F(14546,5)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,60)
 .S @INV@("NK17.1")=X K DXS,D0
 .;SET NK17.2 = INSGX\^INTHL7F(14547,5)\\60\"OUTPUT TRANSFORM"
 .S D0=INDA S X="OUTPUT TRANSFORM"
 .S X1="^INTHL7F(14547,5)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,60)
 .S @INV@("NK17.2")=X K DXS,D0
 .;SET NK17.3 = INSGX\^INTHL7FT(1,3)\\5\"99IHS"
 .S D0=INDA S X="99IHS"
 .S X1="^INTHL7FT(1,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,5)
 .S @INV@("NK17.3")=X K DXS,D0
 .D:'INVS MC^INHS
 .K LINE S LINE="",CP=0 S L1="NK1" S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,1,L1,.CP) S L1=$G(@INV@("NK11")) S:$TR(L1,$G(SUBDELIM))="" L1=""
 .D SETPIECE^INHU(.LINE,DELIM,2,L1,.CP) S L1=$G(@INV@("NK12")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,3,L1,.CP) S L1=$G(@INV@("NK13"))
 .S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,4,L1,.CP) S L1=$G(@INV@("NK14")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,5,L1,.CP)
 .S L1=$G(@INV@("NK15")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,6,L1,.CP) S L1=$G(@INV@("NK17.1"))
 .S D0=INDA S X="^" S L1=L1_X
 .S L1=L1_$G(@INV@("NK17.2"))
 .S D0=INDA S X="^" S L1=L1_X
 .S L1=L1_$G(@INV@("NK17.3")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,8,L1,.CP)
 .S LCT=LCT+1,^UTILITY("INH",$J,LCT)=LINE I $D(LINE)>9 M ^UTILITY("INH",$J,LCT)=LINE
 .Q
 S INDA=INDA0 K INDA0
 SET INSETID=0
 I '$D(INDA(9000010)) S INI=0 F  S INI=$O(^AUPNVSIT("AC",INDA,INI)) Q:'INI  S INDA(9000010,INI)=""
 S INDA0=INDA,INI(1)=0  F  S INI(1)=$O(INDA(9000010,INI(1))) Q:'INI(1)  S INDA=$S(INDA(9000010,INI(1)):INDA(9000010,INI(1)),1:INI(1)) D
 .Q:'$D(^AUPNVSIT(INDA,0))
 .D PV1^BYIMSEGS
9 .D EN^IS00011B
 G D1^IS00011B
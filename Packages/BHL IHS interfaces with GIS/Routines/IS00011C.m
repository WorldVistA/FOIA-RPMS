IS00011C ;Compiled from script 'Generated: HL IHS IZV04 OUT-O' on SEP 05, 2011
 ;Part 4
 ;Copyright 2011 SAIC
EN S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,8,L1,.CP) S L1=$G(@INV@("PV19")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,10,L1,.CP)
 S D0=INDA S X=@INV@("PV110"),Y(1)=$G(X) S X=1,Y(2)=$G(X) S X=3,X=$E(Y(1),Y(2),X) S L1=X
 S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,11,L1,.CP) S L1=$G(@INV@("PV119")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,20,L1,.CP)
 S L1=$G(@INV@("PV121.1"))
 S D0=INDA S X="^" S L1=L1_X
 S L1=L1_$G(@INV@("PV121.2"))
 S D0=INDA S X="^" S L1=L1_X
 S L1=L1_$G(@INV@("PV121.3"))
 S D0=INDA S X="^" S L1=L1_X
 S L1=L1_$G(@INV@("PV121.4")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,22,L1,.CP) S L1=$G(@INV@("PV144")) S:$TR(L1,$G(SUBDELIM))="" L1=""
 D SETPIECE^INHU(.LINE,DELIM,45,L1,.CP)
 S LCT=LCT+1,^UTILITY("INH",$J,LCT)=LINE I $D(LINE)>9 M ^UTILITY("INH",$J,LCT)=LINE
 Q
E1 S INDA=INDA0 K INDA0
 SET INSETID=0
 I '$D(INDA(9000010.11)) S INI=0 F  S INI=$O(^AUPNVIMM("AC",INDA,INI)) Q:'INI  S INDA(9000010.11,INI)=""
 S INDA0=INDA,INI(1)=0  F  S INI(1)=$O(INDA(9000010.11,INI(1))) Q:'INI(1)  S INDA=$S(INDA(9000010.11,INI(1)):INDA(9000010.11,INI(1)),1:INI(1)) D
 .Q:'$D(^AUPNVIMM(INDA,0))
 .;SET RXA1 = INSGX\^INTHL7F(16719,5)\\4\"OUTPUT TRANSFORM"
 .S D0=INDA S X="OUTPUT TRANSFORM"
 .S X1="^INTHL7F(16719,5)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,4)
 .S @INV@("RXA1")=X K DXS,D0
 .;SET RXA2 = INSGX\^INTHL7F(16720,5)\\4\"OUTPUT TRANSFORM"
 .S D0=INDA S X="OUTPUT TRANSFORM"
 .S X1="^INTHL7F(16720,5)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,4)
 .S @INV@("RXA2")=X K DXS,D0
 .;SET RXA3 = INSGX\^INTHL7F(16721,5)\\26\"OUTPUT TRANSFORM"
 .S D0=INDA S X="OUTPUT TRANSFORM"
 .S X1="^INTHL7F(16721,5)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,26)
 .S @INV@("RXA3")=X K DXS,D0
 .;SET RXA4 = INSGX\^INTHL7F(16717,5)\\26\"OUTPUT TRANSFORM"
 .S D0=INDA S X="OUTPUT TRANSFORM"
 .S X1="^INTHL7F(16717,5)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,26)
 .S @INV@("RXA4")=X K DXS,D0
 .;SET RXA5.1 = INSGX\^INTHL7F(16724,5)\\100\"OUTPUT TRANSFORM"
 .S D0=INDA S X="OUTPUT TRANSFORM"
 .S X1="^INTHL7F(16724,5)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,100)
 .S @INV@("RXA5.1")=X K DXS,D0
 .;SET RXA5.2 = INSGX\^INTHL7F(16725,5)\\100\"OUTPUT TRANSFORM"
 .S D0=INDA S X="OUTPUT TRANSFORM"
 .S X1="^INTHL7F(16725,5)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,100)
 .S @INV@("RXA5.2")=X K DXS,D0
 .;SET RXA5.3 = INSGX\^INTHL7FT(1,3)\\3\"CVX"
 .S D0=INDA S X="CVX"
 .S X1="^INTHL7FT(1,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,3)
 .S @INV@("RXA5.3")=X K DXS,D0
 .;SET RXA6 = INSGX\^INTHL7F(16718,5)\\3\#.11
 .S D0=INDA S Y(1)=$S($D(^AUPNVIMM(D0,0)):^(0),1:"") S X=$P(Y(1),U,11)
 .S X1="^INTHL7F(16718,5)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,3)
 .S @INV@("RXA6")=X K DXS,D0
 .;SET RXA7 = INSGX\^INTHL7F(16990,5)\\20\"OUTPUT TRANSFORM"
 .S D0=INDA S X="OUTPUT TRANSFORM"
 .S X1="^INTHL7F(16990,5)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,20)
 .S @INV@("RXA7")=X K DXS,D0
 .;SET RXA9.1 = INSGX\^INTHL7F(16739,5)\\2\"OUTPUT TRANSFORM"
 .S D0=INDA S X="OUTPUT TRANSFORM"
 .S X1="^INTHL7F(16739,5)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,2)
 .S @INV@("RXA9.1")=X K DXS,D0
 .;SET RXA9.2 = INSGX\^INTHL7F(16740,5)\\40\"OUTPUT TRANSFORM"
 .S D0=INDA S X="OUTPUT TRANSFORM"
 .S X1="^INTHL7F(16740,5)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,40)
 .S @INV@("RXA9.2")=X K DXS,D0
 .;SET RXA9.3 = INSGX\^INTHL7FT(1,3)\\10\"NIP001"
 .S D0=INDA S X="NIP001"
 .S X1="^INTHL7FT(1,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,10)
 .S @INV@("RXA9.3")=X K DXS,D0
 .;SET RXA10 = INSGX\^INTHL7F(16731,5)\\50\#1204
 .S D0=INDA S Y(1)=$S($D(^AUPNVIMM(D0,12)):^(12),1:"") S X=$P($G(^VA(200,+$P(Y(1),U,4),0)),U)
 .S X1="^INTHL7F(16731,5)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,50)
 .S @INV@("RXA10")=X K DXS,D0
 .;SET RXA11.1 = INSGX\^INTHL7FT(1,3)\\50\.03:.06
 .S DXS(9.2)="S I(0,0)=$G(D0),Y(1)=$S($D(^AUPNVIMM(D0,0)):^(0),1:""""),D0=$P(Y(1),U,3) S:'D0!'$D(^AUPNVSIT(+D0,0)) D0=-1 S I(100,0)=$G(D0),Y(101)=$S($D(^AUPNVSIT(D0,0)):^(0),1:"""")"
 .S D0=INDA X DXS(9.2) S Y(102)=$G(X),D0=$P(Y(101),U,6) S:'D0!'$D(^AUTTLOC(+D0,0)) D0=-1 S Y(201)=$S($D(^AUTTLOC(D0,0)):^(0),1:"") S X=$P($G(^DIC(4,+$P(Y(201),U,1),0)),U) S D0=I(0,0)
 .S X1="^INTHL7FT(1,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,50)
 .S @INV@("RXA11.1")=X K DXS,D0
 .;SET RXA11.2 = INSGX\^INTHL7FT(1,3)\\1\""
 .S D0=INDA S X=""
 .S X1="^INTHL7FT(1,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,1)
 .S @INV@("RXA11.2")=X K DXS,D0
 .;SET RXA11.3 = INSGX\^INTHL7FT(1,3)\\1\""
 .S D0=INDA S X=""
 .S X1="^INTHL7FT(1,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,1)
 .S @INV@("RXA11.3")=X K DXS,D0
 .;SET RXA11.4 = INSGX\^INTHL7FT(1,3)\\50\.03:2101
 .S D0=INDA S I(0,0)=$G(D0),Y(1)=$S($D(^AUPNVIMM(D0,0)):^(0),1:""),D0=$P(Y(1),U,3) S:'D0!'$D(^AUPNVSIT(+D0,0)) D0=-1 S Y(101)=$S($D(^AUPNVSIT(D0,21)):^(21),1:"") S X=$P(Y(101),U,1) S D0=I(0,0)
 .S X1="^INTHL7FT(1,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,50)
 .S @INV@("RXA11.4")=X K DXS,D0
 .;SET RXA15 = INSGX\^INTHL7F(16723,5)\\20\"OUTPUT TRANSFORM"
 .S D0=INDA S X="OUTPUT TRANSFORM"
 .S X1="^INTHL7F(16723,5)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,20)
 .S @INV@("RXA15")=X K DXS,D0
 .;SET RXA17.1 = INSGX\^INTHL7FT(1,3)\\3\.05:.02:.02
 .S DXS(9.2)="S I(0,0)=$G(D0),Y(1)=$S($D(^AUPNVIMM(D0,0)):^(0),1:""""),D0=$P(Y(1),U,5) S:'D0!'$D(^AUTTIML(+D0,0)) D0=-1 S I(100,0)=$G(D0),Y(101)=$S($D(^AUTTIML(D0,0)):^(0),1:"""")"
 .S D0=INDA X DXS(9.2) S Y(102)=$G(X),D0=$P(Y(101),U,2) S:'D0!'$D(^AUTTIMAN(+D0,0)) D0=-1 S Y(201)=$S($D(^AUTTIMAN(D0,0)):^(0),1:"") S X=$P(Y(201),U,2) S D0=I(0,0)
 .S X1="^INTHL7FT(1,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,3)
 .S @INV@("RXA17.1")=X K DXS,D0
 .;SET RXA17.2 = INSGX\^INTHL7FT(1,3)\\50\.05:.02
 .S DXS(9.2)="S I(0,0)=$G(D0),Y(1)=$S($D(^AUPNVIMM(D0,0)):^(0),1:""""),D0=$P(Y(1),U,5) S:'D0!'$D(^AUTTIML(+D0,0)) D0=-1 S Y(101)=$S($D(^AUTTIML(D0,0)):^(0),1:"""")"
 .S D0=INDA X DXS(9.2) S X=$P($G(^AUTTIMAN(+$P(Y(101),U,2),0)),U) S D0=I(0,0)
 .S X1="^INTHL7FT(1,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,50)
 .S @INV@("RXA17.2")=X K DXS,D0
 .;SET RXA17.3 = INSGX\^INTHL7FT(1,3)\\3\"MVX"
 .S D0=INDA S X="MVX"
 .S X1="^INTHL7FT(1,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,3)
 .S @INV@("RXA17.3")=X K DXS,D0
 .D:'INVS MC^INHS
 .K LINE S LINE="",CP=0 S L1="RXA" S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,1,L1,.CP) S L1=$G(@INV@("RXA1")) S:$TR(L1,$G(SUBDELIM))="" L1=""
 .D SETPIECE^INHU(.LINE,DELIM,2,L1,.CP) S L1=$G(@INV@("RXA2")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,3,L1,.CP) S L1=$G(@INV@("RXA3"))
 .S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,4,L1,.CP) S L1=$G(@INV@("RXA4")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,5,L1,.CP)
 .S L1=$G(@INV@("RXA5.1"))
 .S D0=INDA S X="^" S L1=L1_X
 .S L1=L1_$G(@INV@("RXA5.2"))
 .S D0=INDA S X="^" S L1=L1_X
 .S L1=L1_$G(@INV@("RXA5.3")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,6,L1,.CP) S L1=$G(@INV@("RXA6")) S:$TR(L1,$G(SUBDELIM))="" L1=""
 .D SETPIECE^INHU(.LINE,DELIM,7,L1,.CP) S L1=$G(@INV@("RXA7")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,8,L1,.CP) S L1=$G(@INV@("RXA9.1"))
 .S D0=INDA S X="^" S L1=L1_X
 .S L1=L1_$G(@INV@("RXA9.2"))
 .S D0=INDA S X="^" S L1=L1_X
 .S L1=L1_$G(@INV@("RXA9.3")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,10,L1,.CP) S L1=$G(@INV@("RXA10")) S:$TR(L1,$G(SUBDELIM))="" L1=""
9 .D EN^IS00011D
 G F1^IS00011D
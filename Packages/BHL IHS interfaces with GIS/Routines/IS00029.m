IS00029(INTT,INDA,INA,INDEST,INQUE,INORDUZ,INORDIV) ;Compiled from script 'Generated: HL IHS IZV04 V03VXR OUT-O' on SEP 05, 2011
 ;Part 1
 ;Copyright 2011 SAIC
EN S X="ERROR^IS00029",@^%ZOSF("TRAP")
 G START
ERROR ;
 S X="",@^%ZOSF("TRAP") X ^INTHOS(1,3) D ERROR^INHS($$GETERR^%ZTOS)
 Q 2
START ;Initialize variables
 K ^UTILITY("INH",$J) S (MESSID,INA("MESSID"))=$$MESSID^INHD
 K INUIF6 M INUIF6=INDA
 K INREQERR,INHERR,INHERCNT,INV D SETDT^UTDT S DUZ(0)="@",DUZ("AG")="^1",DTIME=1 S (LCT,GERR)=0,INMODE="O",INVS=$P(^INRHSITE(1,0),U,12),INV=$S(INVS<2:"INV",1:"^UTILITY(""INV"",$J)"),(MULT,INSTERR)=0
 S INHLDUZ=$O(^VA(200,"B","GIS,USER",0)),DUZ=$S($G(INHLDUZ):INHLDUZ,1:.5)
 S BHLMIEN="12445"
 I $G(^INTHL7M(BHLMIEN,4,1,0))]"" X $G(^INTHL7M(BHLMIEN,4,1,0))
 K INSETID
 S INSMIN=$S($P($G(^INRHSITE(1,0)),U,14):$P(^(0),U,14),1:2500)
 S (DELIM,INDELIM)=$$FIELD^INHUT(),(SUBDELIM,INSUBDEL)=$$COMP^INHUT(),INSUBCOM=$$SUBCOMP^INHUT()
 S INDELIMS=$$FIELD^INHUT_$$COMP^INHUT_$$REP^INHUT_$$ESC^INHUT_$$SUBCOMP^INHUT
 ;Entering MUMPS section.
 D VST^BHLV,INS^BHLIN1
 ;Entering DATA section.
 S DELIM="|"
 S SUBDELIM="^"
 SET INSETID=0
 ;SET MSA1 = INSGX\^INTHL7FT(1,3)\\2\@INSTAT
 S D0=INDA S X=$G(INA("INSTAT"))
 S X1="^INTHL7FT(1,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,2)
 S @INV@("MSA1")=X K DXS,D0
 ;SET MSA2 = INSGX\^INTHL7FT(1,3)\\20\@INORIGID
 S D0=INDA S X=$G(INA("INORIGID"))
 S X1="^INTHL7FT(1,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,20)
 S @INV@("MSA2")=X K DXS,D0
 ;SET MSA3 = INSGX\^INTHL7FT(1,3)\\80\@INACKTXT
 S D0=INDA S X=$G(INA("INACKTXT"))
 S X1="^INTHL7FT(1,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,80)
 S @INV@("MSA3")=X K DXS,D0
 ;SET MSA4 = INSGX\^INTHL7FT(1,3)\\15\@INEXPSEQ
 S D0=INDA S X=$G(INA("INEXPSEQ"))
 S X1="^INTHL7FT(1,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,15)
 S @INV@("MSA4")=X K DXS,D0
 ;SET MSA5 = INSGX\^INTHL7FT(1,3)\\1\@INDELAY
 S D0=INDA S X=$G(INA("INDELAY"))
 S X1="^INTHL7FT(1,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,1)
 S @INV@("MSA5")=X K DXS,D0
 ;SET MSA6 = INSGX\^INTHL7FT(1,3)\\100\@INACKERR
 S D0=INDA S X=$G(INA("INACKERR"))
 S X1="^INTHL7FT(1,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,100)
 S @INV@("MSA6")=X K DXS,D0
 D:'INVS MC^INHS
 K LINE S LINE="",CP=0 S L1="MSA" S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,1,L1,.CP) S L1=$G(@INV@("MSA1")) S:$TR(L1,$G(SUBDELIM))="" L1=""
 D SETPIECE^INHU(.LINE,DELIM,2,L1,.CP) S L1=$G(@INV@("MSA2")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,3,L1,.CP) S L1=$G(@INV@("MSA3"))
 S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,4,L1,.CP) S L1=$G(@INV@("MSA4")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,5,L1,.CP)
 S L1=$G(@INV@("MSA5")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,6,L1,.CP) S L1=$G(@INV@("MSA6")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,7,L1,.CP)
 S LCT=LCT+1,^UTILITY("INH",$J,LCT)=LINE I $D(LINE)>9 M ^UTILITY("INH",$J,LCT)=LINE
 SET INSETID=0
 ;SET QRD1 = INSGX\^INTHL7FT(6,3)\\26\@INQDTM
 S D0=INDA S X=$G(INA("INQDTM"))
 S X1="^INTHL7FT(6,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,26)
 S @INV@("QRD1")=X K DXS,D0
 ;SET QRD2 = INSGX\^INTHL7FT(1,3)\\1\"R"
 S D0=INDA S X="R"
 S X1="^INTHL7FT(1,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,1)
 S @INV@("QRD2")=X K DXS,D0
 ;SET QRD3 = INSGX\^INTHL7FT(1,3)\\1\@INQPRI
 S D0=INDA S X=$G(INA("INQPRI"))
 S X1="^INTHL7FT(1,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,1)
 S @INV@("QRD3")=X K DXS,D0
 ;SET QRD4 = INSGX\^INTHL7FT(1,3)\\10\@INQTAG
 S D0=INDA S X=$G(INA("INQTAG"))
 S X1="^INTHL7FT(1,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,10)
 S @INV@("QRD4")=X K DXS,D0
 ;SET QRD7 = INSGX\^INTHL7FT(3,3)\\10\@INQTY
 S D0=INDA S X=$G(INA("INQTY"))
 S X1="^INTHL7FT(3,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,10)
 S @INV@("QRD7")=X K DXS,D0
 ;SET QRD8 = INSGX\^INTHL7FT(1,3)\\60\@INQWHO
 S D0=INDA S X=$G(INA("INQWHO"))
 S X1="^INTHL7FT(1,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,60)
 S @INV@("QRD8")=X K DXS,D0
 ;SET QRD9 = INSGX\^INTHL7FT(1,3)\\60\@INQWHAT
 S D0=INDA S X=$G(INA("INQWHAT"))
 S X1="^INTHL7FT(1,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,60)
 S @INV@("QRD9")=X K DXS,D0
 ;SET QRD10 = INSGX\^INTHL7F(15130,5)\\60\"OUTPUT TRANSFORM"
 S D0=INDA S X="OUTPUT TRANSFORM"
 S X1="^INTHL7F(15130,5)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,60)
 S @INV@("QRD10")=X K DXS,D0
 ;SET QRD12 = ""
 S D0=INDA S X=""
 S @INV@("QRD12")=X K DXS,D0
 D:'INVS MC^INHS
 K LINE S LINE="",CP=0 S L1="QRD" S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,1,L1,.CP) S L1=$G(@INV@("QRD1")) S:$TR(L1,$G(SUBDELIM))="" L1=""
 D SETPIECE^INHU(.LINE,DELIM,2,L1,.CP) S L1=$G(@INV@("QRD2")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,3,L1,.CP) S L1=$G(@INV@("QRD3"))
 S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,4,L1,.CP) S L1=$G(@INV@("QRD4")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,5,L1,.CP)
 S L1=$G(@INV@("QRD7")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,8,L1,.CP) S L1=$G(@INV@("QRD8")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,9,L1,.CP)
 S L1=$G(@INV@("QRD9")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,10,L1,.CP) S L1=$G(@INV@("QRD10")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,11,L1,.CP)
 S L1=$G(@INV@("QRD12")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,13,L1,.CP)
 S LCT=LCT+1,^UTILITY("INH",$J,LCT)=LINE I $D(LINE)>9 M ^UTILITY("INH",$J,LCT)=LINE
 SET INSETID=0
 ;SET QRF1 = INSGX\^INTHL7FT(1,3)\\20\@INQWHERE
 S D0=INDA S X=$G(INA("INQWHERE"))
 S X1="^INTHL7FT(1,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,20)
 S @INV@("QRF1")=X K DXS,D0
 ;SET QRF2 = INSGX\^INTHL7FT(4,3)\\8\@INQSDTM
 S D0=INDA S X=$G(INA("INQSDTM"))
 S X1="^INTHL7FT(4,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,8)
 S @INV@("QRF2")=X K DXS,D0
 ;SET QRF3 = INSGX\^INTHL7FT(6,3)\\8\@INQEDTM
 S D0=INDA S X=$G(INA("INQEDTM"))
 S X1="^INTHL7FT(6,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,8)
 S @INV@("QRF3")=X K DXS,D0
 ;SET QRF5 = INSGX\^INTHL7FT(1,3)\\60\@INQOSF
 S D0=INDA S X=$G(INA("INQOSF"))
 S X1="^INTHL7FT(1,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,60)
 S @INV@("QRF5")=X K DXS,D0
 ;SET QRF6 = $E(INTERNAL(@INQWHICH),1,12)
 S D0=INDA S X=$G(INA("INQWHICH")),X=X S X=X,Y(1)=$G(X) S X=1,Y(2)=$G(X) S X=12,X=$E(Y(1),Y(2),X)
 S @INV@("QRF6")=X K DXS,D0
 ;SET QRF7 = $E(INTERNAL("FIN"),1,12)
 S D0=INDA S X="FIN",X=X S X=X,Y(1)=$G(X) S X=1,Y(2)=$G(X) S X=12,X=$E(Y(1),Y(2),X)
 S @INV@("QRF7")=X K DXS,D0
 ;SET QRF8 = $E(INTERNAL("REV"),1,12)
 S D0=INDA S X="REV",X=X S X=X,Y(1)=$G(X) S X=1,Y(2)=$G(X) S X=12,X=$E(Y(1),Y(2),X)
 S @INV@("QRF8")=X K DXS,D0
 D:'INVS MC^INHS
 K LINE S LINE="",CP=0 S L1="QRF" S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,1,L1,.CP) S L1=$G(@INV@("QRF1")) S:$TR(L1,$G(SUBDELIM))="" L1=""
 D SETPIECE^INHU(.LINE,DELIM,2,L1,.CP) S L1=$G(@INV@("QRF2")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,3,L1,.CP) S L1=$G(@INV@("QRF3"))
 S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,4,L1,.CP) S L1=$G(@INV@("QRF5")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,6,L1,.CP)
 S L1=$G(@INV@("QRF6")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,7,L1,.CP) S L1=$G(@INV@("QRF7")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,8,L1,.CP)
 S L1=$G(@INV@("QRF8")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,9,L1,.CP)
 S LCT=LCT+1,^UTILITY("INH",$J,LCT)=LINE I $D(LINE)>9 M ^UTILITY("INH",$J,LCT)=LINE
 SET INSETID=0
9 G EN^IS00029A
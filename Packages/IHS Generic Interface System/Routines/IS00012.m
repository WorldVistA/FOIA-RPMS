IS00012(INTT,INDA,INA,INDEST,INQUE,INORDUZ,INORDIV) ;Compiled from script 'Generated: HL IHS IZV04 BATCH HEADER-O' on AUG 03, 2015
 ;Part 1
 ;Copyright 2015 SAIC
EN S X="ERROR^IS00012",@^%ZOSF("TRAP")
 G START
ERROR ;
 S X="",@^%ZOSF("TRAP") X ^INTHOS(1,3) D ERROR^INHS($$GETERR^%ZTOS)
 Q 2
START ;Initialize variables
 K ^UTILITY("INH",$J) S (MESSID,INA("MESSID"))=$$MESSID^INHD
 K INUIF6 M INUIF6=INDA
 K INREQERR,INHERR,INHERCNT,INV D SETDT^UTDT S DUZ(0)="@",DUZ("AG")="^1",DTIME=1 S (LCT,GERR)=0,INMODE="O",INVS=$P(^INRHSITE(1,0),U,12),INV=$S(INVS<2:"INV",1:"^UTILITY(""INV"",$J)"),(MULT,INSTERR)=0
 S INHLDUZ=$O(^VA(200,"B","GIS,USER",0)),DUZ=$S($G(INHLDUZ):INHLDUZ,1:.5)
 S BHLMIEN="12427"
 I $G(^INTHL7M(BHLMIEN,4,1,0))]"" X $G(^INTHL7M(BHLMIEN,4,1,0))
 K INSETID
 S INSMIN=$S($P($G(^INRHSITE(1,0)),U,14):$P(^(0),U,14),1:2500)
 S (DELIM,INDELIM)=$$FIELD^INHUT(),(SUBDELIM,INSUBDEL)=$$COMP^INHUT(),INSUBCOM=$$SUBCOMP^INHUT()
 S INDELIMS=$$FIELD^INHUT_$$COMP^INHUT_$$REP^INHUT_$$ESC^INHUT_$$SUBCOMP^INHUT
 ;Entering DATA section.
 S DELIM="|"
 S SUBDELIM="^"
 SET INSETID=0
 D FHS^BYIMSEGS
 ;SET FHS1 = INSGX\^INTHL7FT(1,3)\\4\@ENC
 S D0=INDA S X=$G(INA("ENC"))
 S X1="^INTHL7FT(1,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,4)
 S @INV@("FHS1")=X K DXS,D0
 ;SET FHS2 = INSGX\^INTHL7FT(1,3)\\180\@MSH3
 S D0=INDA S X=$G(INA("MSH3"))
 S X1="^INTHL7FT(1,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,180)
 S @INV@("FHS2")=X K DXS,D0
 ;SET FHS3 = INSGX\^INTHL7FT(1,3)\\180\@MSH4
 S D0=INDA S X=$G(INA("MSH4"))
 S X1="^INTHL7FT(1,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,180)
 S @INV@("FHS3")=X K DXS,D0
 ;SET FHS5 = INSGX\^INTHL7FT(6,3)\\26\@EVDT
 S D0=INDA S X=$G(INA("EVDT"))
 S X1="^INTHL7FT(6,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,26)
 S @INV@("FHS5")=X K DXS,D0
 D:'INVS MC^INHS
 K LINE S LINE="",CP=0 S L1="FHS" S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,1,L1,.CP) S L1=$G(@INV@("FHS1")) S:$TR(L1,$G(SUBDELIM))="" L1=""
 D SETPIECE^INHU(.LINE,DELIM,2,L1,.CP) S L1=$G(@INV@("FHS2")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,3,L1,.CP) S L1=$G(@INV@("FHS3"))
 S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,4,L1,.CP) S L1=$G(@INV@("FHS5")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,6,L1,.CP)
 S LCT=LCT+1,^UTILITY("INH",$J,LCT)=LINE I $D(LINE)>9 M ^UTILITY("INH",$J,LCT)=LINE
 SET INSETID=0
 D FHS^BYIMSEGS
 ;SET BHS1 = INSGX\^INTHL7FT(1,3)\\4\@ENC
 S D0=INDA S X=$G(INA("ENC"))
 S X1="^INTHL7FT(1,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,4)
 S @INV@("BHS1")=X K DXS,D0
 ;SET BHS2 = INSGX\^INTHL7FT(1,3)\\180\@MSH3
 S D0=INDA S X=$G(INA("MSH3"))
 S X1="^INTHL7FT(1,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,180)
 S @INV@("BHS2")=X K DXS,D0
 ;SET BHS3 = INSGX\^INTHL7FT(1,3)\\180\@MSH4
 S D0=INDA S X=$G(INA("MSH4"))
 S X1="^INTHL7FT(1,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,180)
 S @INV@("BHS3")=X K DXS,D0
 ;SET BHS5 = INSGX\^INTHL7FT(6,3)\\26\@EVDT
 S D0=INDA S X=$G(INA("EVDT"))
 S X1="^INTHL7FT(6,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,26)
 S @INV@("BHS5")=X K DXS,D0
 D:'INVS MC^INHS
 K LINE S LINE="",CP=0 S L1="BHS" S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,1,L1,.CP) S L1=$G(@INV@("BHS1")) S:$TR(L1,$G(SUBDELIM))="" L1=""
 D SETPIECE^INHU(.LINE,DELIM,2,L1,.CP) S L1=$G(@INV@("BHS2")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,3,L1,.CP) S L1=$G(@INV@("BHS3"))
 S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,4,L1,.CP) S L1=$G(@INV@("BHS5")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,6,L1,.CP)
 S LCT=LCT+1,^UTILITY("INH",$J,LCT)=LINE I $D(LINE)>9 M ^UTILITY("INH",$J,LCT)=LINE
 D:'INVS MC^INHS
 ;Entering END section.
 I $G(INSTERR) Q $S($G(INREQERR)>INSTERR:INREQERR,1:INSTERR)
 S UIF=$$NEWO^INHD(INDEST,"^UTILITY(""INH"",$J)",+$P($G(^INRHT(INTT,0)),U,12),INTT,MESSID,$G(INQUE),$G(INORDUZ),$G(INORDIV),.INUIF6,.INUIF7,$G(INA("INMIDGEN")))
 I UIF<0 D ERROR^INHS("UIF creation failed",2) Q 2
 Q 0
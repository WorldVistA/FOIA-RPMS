AMQQMULC ; IHS/CMI/THL - MULTIPLE VALUES FOR COLORECTAL PROCEDURES ;
 ;;2.0;IHS PCC SUITE;;MAY 14, 2009
 ;-----
VAR F I=1:1:19 D
 .S X=$P("GR;ID;ST;FIN;LAST;VAL1;SPEC;UATN;MLT;T;NVAR;FVAR;ITR;NNA;STRT;MSS;MPC;MULZ;USQN",";",I)
 .S @("AMQQ"_X)=$P(AMQQX,";",I)
 I '$D(AMQQAG) S AMQQAG="AG"
 S AMQQVAL1=+AMQQVAL1
 S AMQQMPC=3
 S AMQQMSS=0
 S AMQQ=U_AMQQGR_",""APD"",AMQP(0))"
 S AMQQHOLD=0
 S AMQT(AMQQT)=0
 S AMQQLCNT=0
 K ^UTILITY("AMQQ",$J,AMQQAG,AMQQUATN)
 I $E(AMQQST)?1P,'$D(AMQQSQVN) D REL^AMQQMULS
 I AMQQMULZ S AMQQMUNV=AMQQNVAR,AMQQMUFV=AMQQFVAR,AMQQMULL=AMQQMULZ
 I '$D(AMQQSQVN),'$D(@AMQQ) S AMQT(AMQQT)=0 G NULL
 I $G(AMQQSPEC)="EXISTS",AMQQSTRT=2,'AMQQST,'AMQQUSQN,AMQQFIN=9999999,AMQQLAST=9999999 S ^UTILITY("AMQQ",$J,AMQQAG,AMQQUATN,1)="+",AMQP(AMQQFVAR)="+",AMQT(AMQQT)=1 G EXIT
RUN S AMQQVNO=0
 D INC
SQ I $D(AMQV("SQ")) D ^AMQQMULS
 I $D(^UTILITY("AMQQ",$J,AMQQAG,AMQQUATN)),AMQQSPEC="NULL"!(AMQQSPEC="INVERSE") K ^(AMQQUATN) G EXIT
 I $D(^UTILITY("AMQQ",$J,AMQQAG,AMQQUATN)) G TRUE
NULL I AMQQSPEC'="NULL",AMQQSPEC'="ANY",AMQQSPEC'="INVERSE"
 E  S ^UTILITY("AMQQ",$J,AMQQAG,AMQQUATN,1)="-",AMQP(AMQQFVAR)="-",AMQT(AMQQT)=1
 G EXIT
TRUE I AMQQSPEC="EXISTS" K ^UTILITY("AMQQ",$J,AMQQAG,AMQQUATN) S ^(AMQQUATN,1)="+",AMQP(AMQQFVAR)="+"
 S AMQT(AMQQT)=1
EXIT I AMQQAG="SAG" K ^UTILITY("AMQQ",$J,"SAG",AMQQUATN)
 D EXIT3^AMQQKILL
 Q
 ;
INC S AMQQVDAT=9999999-AMQQFIN
INCDATE S AMQQVDAT=$O(@AMQQ@(AMQQVDAT))
 I AMQQVDAT'=+AMQQVDAT Q
 I (9999999-AMQQVDAT)'>AMQQST Q
 S AMQQVNO=0
INCITEM S AMQQVNO=$O(@AMQQ@(AMQQVDAT,AMQQVNO))
 I 'AMQQVNO G INCDATE
 S %=U_AMQQGR_","_AMQQVNO_","_AMQQMSS_")"
 I $D(@%),$D(^(0)) S AMQQVALU=$P(^(AMQQMSS),U,AMQQMPC),AMQQVSIT=0 D SET I 1
 E  G INCITEM
 I AMQQLCNT=AMQQLAST D LASTEVAL^AMQQMULT I $D(AMQQQUIT) K AMQQQUIT Q
 I AMQQSPEC="EXISTS"!(AMQQSPEC="NULL"),AMQQLCNT,'$D(AMQV("SQ")) S AMQQLCNT=-1 Q
 G INCITEM
 ;
SET I AMQQVALU="" Q
 I '$D(^UTILITY("AMQQ TAX",$J,AMQQVAL1,AMQQVALU)),'$D(^("*")),'$D(^("-")) Q
S1 S AMQQHOLD=AMQQHOLD+1
 S AMQQLCNT=AMQQLCNT+1
 S ^UTILITY("AMQQ",$J,AMQQAG,AMQQUATN,AMQQHOLD)=AMQQVALU_U_(9999999-AMQQVDAT)_U_AMQQVSIT_U_AMQQVNO
 K AMQQOK
 Q
 ;

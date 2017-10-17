APCDCPOV ; IHS/CMI/LAB - POV LOOKUP ;
 ;;2.0;IHS PCC SUITE;**11,13,16**;MAY 14, 2009;Build 9
 ;
START ;
 D EN^XBNEW("LEX^APCDCPOV","APCDDATE;APCDTCLK;APCDVSIT;APCDTDIA,APCDT90;APCDTIN9")
 Q
LEX ;EP - called from input template
 I APCDTDIA=".09" S APCDTDIA=$S(APCDT90=1!($G(APCDTIN9)):"  CAUSE (E-Code)",1:"  CAUSE (V00-Y99 Code Range)")
 I APCDTDIA=".18" S APCDTDIA=$S(APCDT90=1!($G(APCDTIN9)):"  CAUSE (E-Code) #2",1:"  CAUSE (V00-Y99 Code Range) #2")
 I APCDTDIA=".19" S APCDTDIA=$S(APCDT90=1!($G(APCDTIN9)):"  CAUSE (E-Code) #3",1:"  CAUSE (V00-Y99 Code Range) #3")
 S APCDTPCC="",APCDINPE=1
 ;FOR NOW IF ICD9 CALL LEX, AFTER VA SENDS OUT ICD10 LEX JUST D LEX Q
 I $G(APCDTIN9) S APCDD=$$FMADD^XLFDT($$IMP^ICDEX(30),-2),APCDIMP=1 G LEX1
 S APCDD=""
 I $G(APCDINAD) S APCDD=$S($D(APCDDATE):APCDDATE,1:DT) G I
 I $G(APCDVSIT),$D(^AUPNVSIT(APCDVSIT)) D
 .I $P(^AUPNVSIT(APCDVSIT,0),U,7)="H",$$DSCHDATE^APCLV(APCDVSIT)]"" S APCDD=$$DSCHDATE^APCLV(APCDVSIT) Q
 .S APCDD=$P($P(^AUPNVSIT(APCDVSIT,0),U),".")
 I APCDD="" S APCDD=$P($G(APCDDATE),".")
 I APCDD="" S APCDD=DT
 NEW APCDIMP,APCDANS
I ;
 S APCDIMP=$$IMP^AUPNSICD(APCDD)
 ;EP - called from input template
LEX1 ;reader call to get TEXT for code
 K DIR
 K ^TMP("LEXSCH",$J)
 I APCDIMP=1 D CONFIG^LEXSET("ICD","ICD",$P(APCDD,"."))
 I APCDIMP=30 D CONFIG^LEXSET("10D","10D",$P(APCDD,"."))
 S DIR(0)="FO^1:60",DIR("A")=$S($G(APCDTDIA)]"":APCDTDIA,1:"Enter PURPOSE OF VISIT")
 S DIR("?")=$S($G(APCDTIN9):"^D HELPE9^AUPNSIC9",1:"^D HELPE^AUPNSICH")
 S DIR("??")=$S($G(APCDTIN9):"^D HELPE9^AUPNSIC9",1:"^D HELPE^AUPNSICH")
 KILL DA D ^DIR KILL DIR
 I $D(DIRUT) S APCDTSKI=1,APCDLOOK="" G XITL
 I Y="" S APCDTSKI=1,APCDLOOK="" G XITL
 S APCDUINP=Y
 K ^TMP("LEXSCH",$J),^TMP("LEXHIT",$J),LEX,^TMP("LEXFND",$J)
 I APCDIMP=1 D CONFIG^LEXSET("ICD","ICD",$P(APCDD,"."))
 I APCDIMP=30 D CONFIG^LEXSET("10D","10D",$P(APCDD,"."))
 S X=APCDUINP
 I APCDIMP=1 S DIC("S")=$S('$G(APCDTIN9):"I $$ICDONE9^APCDCPOV(+Y,LEXVDT)",1:"I $$ICDONE99^APCDCPOV(+Y,LEXVDT)")
 I APCDIMP=30 S DIC("S")="I $$ICDONE1^APCDCPOV(+Y,LEXVDT)"
 S DIC("A")=$S($G(APCDTDIA)]"":APCDTDIA_": ",1:"Enter PURPOSE OF VISIT: ")
 I APCDIMP=1 D LOOK^LEXA(X,"ICD",999,"ICD",$P(APCDD,"."))
 I APCDIMP=30 D LOOK^LEXA(X,"10D",999,"10D",$P(APCDD,"."))
 I 'LEX D  G LEX
 .S X=0 F  S X=$O(LEX("HLP",X)) Q:X'=+X  W !,LEX("HLP",X)
 ;display all codes and call reader
 S APCDANS=""
 D GETANS^APCDAPOV
 I APCDY="^" W ! G LEX
 I APCDY="" W ! G LEX
 I '$G(APCDY) W ! G LEX
 I APCDIMP=1 S Y=$$ICDONE^LEXU($P(^TMP("LEXHIT",$J,APCDY),U,1),$P(APCDD,"."))
 I APCDIMP=30 S Y=$$ONE^LEXU($P(^TMP("LEXHIT",$J,APCDY),U,1),$P(APCDD,"."),"10D")
 K DO,^TMP("LEXSCH",$J)
 I $G(Y)="" W !!,"lexicon isn't passing back an ICD code." S APCDTERR=1,APCDTCLK="" G XITL
 S %=$$ICDDX^ICDEX(Y,$P(APCDD,"."),APCDIMP,"E")
 I $P(%,U,1)="-1" W !!,"lexicon isn't passing back an ICD code." S APCDTERR=1,APCDTCLK="" G XITL
LEXN ;
 S APCDTCLK="`"_+%
 W !
XITL K Y,X,DO,D,DD,DIPGM,APCDTPCC
 Q
INJ(C,S) ;EP
 NEW %
 S %=""
 I S=1 D  Q %
 .I $E(C,1)="E" S %=0 Q
 .I $E(C,1)="V" S %=0 Q
 .I $P(C,".",1)<800 S %=0 Q
 .S %=1
 I $E(C,1)="S" Q 1  ;only codes V00-Y99 per Leslie Racine.
 I $E(C,1)="T",$E(C,2,3)<89 Q 1
 Q 0
ICDONE9(ALEX,ALEXVDT) ;EP - Return one ICD code for an expression
 ;    LEX      IEN of file 757.01
 ;    LEXVDT   Date to use for screening by codes
 N ALEXICD
 S ALEXVDT=$S(+$G(ALEXVDT)>0:ALEXVDT,1:$$DT^XLFDT)
 S ALEX=$$ICDONE^LEXU(ALEX,ALEXVDT) Q:ALEX="" ""
 S ALEXICD=$$ICDDX^ICDEX(ALEX,ALEXVDT,1,"E")
 Q:$P(ALEXICD,"^",2)="INVALID CODE" ""
 Q:'$$CHKE1^AUPNSICD($P(ALEXICD,U,1)) ""
 Q 1
 ;
ICDONE99(ALEX,ALEXVDT) ;EP - Return one ICD code for an expression
 ;    LEX      IEN of file 757.01
 ;    LEXVDT   Date to use for screening by codes
 N ALEXICD
 S ALEXVDT=$S(+$G(ALEXVDT)>0:ALEXVDT,1:$$DT^XLFDT)
 S ALEX=$$ICDONE^LEXU(ALEX,ALEXVDT) Q:ALEX="" ""
 S ALEXICD=$$ICDDX^ICDEX(ALEX,ALEXVDT,1,"E")
 Q:$P(ALEXICD,"^",2)="INVALID CODE" ""
 Q:'$$CHKE91^AUPNSIC9($P(ALEXICD,U,1)) ""
 Q 1
 ;
ICDONE1(ALEX,ALEXVDT) ;EP - Return one ICD code for an expression
 ;    LEX      IEN of file 757.01
 ;    LEXVDT   Date to use for screening by codes
 N ALEXICD
 ;S ALEXVDT=$S(+$G(ALEXVDT)>0:ALEXVDT,1:$$DT^XLFDT)
 S ALEX=$$ONE^LEXU(ALEX,ALEXVDT,"10D") Q:ALEX="" ""
 S ALEXICD=$$ICDDX^ICDEX(ALEX,ALEXVDT,30,"E")
 Q:$P(ALEXICD,"^",2)="INVALID CODE" ""
 Q:'$$CHKE1^AUPNSICD($P(ALEXICD,U,1)) ""
 Q 1
EDITCAU1 ;
 I APCDTFIE=".09"!(APCDTFIE=".25") S APCDTDIA=$S(APCDT90=1!($G(APCDTIN9)):"    CAUSE (E-Code)",1:"    CAUSE (V00-Y99 Code Range)")
 I APCDTFIE=".18"!(APCDTFIE=".26") S APCDTDIA=$S(APCDT90=1!($G(APCDTIN9)):"    CAUSE (E-Code) #2",1:"    CAUSE (V00-Y99 Code Range) #2")
 I APCDTFIE=".19"!(APCDTFIE=".27") S APCDTDIA=$S(APCDT90=1!($G(APCDTIN9)):"    CAUSE (E-Code) #3",1:"    CAUSE (V00-Y99 Code Range) #3")
 S APCDTPCC="",APCDINPE=1
 K DIR
 S APCDTPCC="",APCDINPE=1,APCDTNPV="",APCDTNOG=""
 I $G(APCDTIN9) S APCDD=$$FMADD^XLFDT($$IMP^AUPNVUTL(30),-2),APCDIMP=1 G CLEX
 S APCDD=""
 I $G(APCDINAD) S APCDD=$S($D(APCDDATE):APCDDATE,1:DT) G CI
 I $G(APCDVSIT),$D(^AUPNVSIT(APCDVSIT)) D
 .I $P(^AUPNVSIT(APCDVSIT,0),U,7)="H",$$DSCHDATE^APCLV(APCDVSIT)]"" S APCDD=$$DSCHDATE^APCLV(APCDVSIT) Q
 .S APCDD=$P($P(^AUPNVSIT(APCDVSIT,0),U),".")
 I APCDD="" S APCDD=$P($G(APCDDATE),".")
 I APCDD="" S APCDD=DT
 NEW APCDIMP,APCDANS
CI ;
 S APCDIMP=$$IMP^AUPNSICD(APCDD)
CLEX ;EP
 ;reader call to get TEXT for code
 K DIR,APCDTDEL,APCDTUPH
 K ^TMP("LEXSCH",$J)
 I APCDIMP=1 D CONFIG^LEXSET("ICD","ICD",$P(APCDD,"."))
 I APCDIMP=30 D CONFIG^LEXSET("10D","10D",$P(APCDD,"."))
 S DIR(0)="FO^1:60",DIR("A")=APCDTDIA
 S DIR("?")=$S($G(APCDTIN9):"^D HELPE9^AUPNSIC9",1:"^D HELPE^AUPNSICH")
 S DIR("??")=$S($G(APCDTIN9):"^D HELPE9^AUPNSIC9",1:"^D HELPE^AUPNSICH")
 I $$VAL^XBDIQ1(9000010.07,APCDTDA,APCDTFIE)]"" S DIR("B")=$$VAL^XBDIQ1(9000010.07,APCDTDA,APCDTFIE)
 KILL DA D ^DIR KILL DIR
 I X="@",$G(APCDIAIE) S APCDTDEL=1 G XITC
 I X=U S APCDTUPH=1 G XITC
 I $D(DIRUT) S APCDTSKI=1 G XITC
 I Y="" G XITC
 S APCDUINP=Y
 I APCDUINP=$$VAL^XBDIQ1(9000010.07,APCDTDA,APCDTFIE) G XITC
 S %=""
 I APCDUINP=".9999" S %=+$$ICDDX^ICDEX($S(APCDIMP=1:".9999",1:"ZZZ.999"),,APCDIMP,"E") G LEXC
 I APCDIMP=30,APCDUINP="ZZZ.999" S %=+$$ICDDX^ICDEX($S(APCDIMP=1:".9999",1:"ZZZ.999")) G LEXC
 I APCDIMP=30,$E(APCDUINP,1,4)="ZZZ." S %=+$$ICDDX^ICDEX($S(APCDIMP=1:".9999",1:"ZZZ.999")) G LEXC
 I $E(APCDUINP,1,7)="UNCODED" S %=+$$ICDDX^ICDEX($S(APCDIMP=1:".9999",1:"ZZZ.999")) G LEXC
 I APCDUINP["UNCODED D" S %=+$$ICDDX^ICDEX($S(APCDIMP=1:".9999",1:"ZZZ.999")) G LEXC
 K ^TMP("LEXSCH",$J),^TMP("LEXHIT",$J),LEX,^TMP("LEXFND",$J)
 I APCDIMP=1 D CONFIG^LEXSET("ICD","ICD",$P(APCDD,"."))
 I APCDIMP=30 D CONFIG^LEXSET("10D","10D",$P(APCDD,"."))
 S X=APCDUINP
 I APCDIMP=1 S DIC("S")=$S('$G(APCDTIN9):"I $$ICDONE9^APCDCPOV(+Y,LEXVDT)",1:"I $$ICDONE99^APCDCPOV(+Y,LEXVDT)")
 I APCDIMP=30 S DIC("S")="I $$ICDONE1^APCDCPOV(+Y,LEXVDT)"
 I $G(APCDTDIA)]"" S DIC("A")=$G(APCDTDIA)
 I APCDIMP=1 D LOOK^LEXA(X,"ICD",999,"ICD",$P(APCDD,"."))
 I APCDIMP=30 D LOOK^LEXA(X,"10D",999,"10D",$P(APCDD,"."))
 I 'LEX D  G CLEX
 .S X=0 F  S X=$O(LEX("HLP",X)) Q:X'=+X  W !,LEX("HLP",X)
 ;display all codes and call reader
 S APCDANS=""
 D GETANS^APCDAPOV
 I APCDY="^" W ! G CLEX
 I APCDY="" W ! G CLEX
 I '$G(APCDY) W ! G CLEX
 I APCDIMP=1 S Y=$$ICDONE^LEXU($P(^TMP("LEXHIT",$J,APCDY),U,1),$P(APCDD,"."))
 I APCDIMP=30 S Y=$$ONE^LEXU($P(^TMP("LEXHIT",$J,APCDY),U,1),$P(APCDD,"."),"10D")
 K DO,^TMP("LEXSCH",$J)
 I $G(Y)="" W !!,"lexicon isn't passing back an ICD code." S APCDTERR=1,APCDTNPV="" G XITC
 S %=$$ICDDX^ICDEX(Y,$P(APCDD,"."),APCDIMP,"E")
 I $P(%,U,1)="-1" W !!,"lexicon isn't passing back an ICD code." S APCDTERR=1,APCDTNPV="" G XITC
LEXC ;
 S APCDTNPV="`"_+%
 W !
XITC K Y,X,DO,D,DD,DIPGM,APCDTPCC
 Q
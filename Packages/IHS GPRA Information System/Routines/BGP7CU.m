BGP7CU ; IHS/CMI/LAB - calc CMS measures 26 Sep 2004 11:28 AM 04 May 2010 2:38 PM ;
 ;;17.1;IHS CLINICAL REPORTING;;MAY 10, 2017;Build 29
 ;
 ;
CTR(X,Y) ;EP - Center X in a field Y wide.
 Q $J("",$S($D(Y):Y,1:80)-$L(X)\2)_X
 ;----------
EOP ;EP - End of page.
 Q:$E(IOST)'="C"
 Q:$D(ZTQUEUED)!'(IOT="TRM")!$D(IO("S"))
 NEW DIR
 K DIRUT,DFOUT,DLOUT,DTOUT,DUOUT
 S DIR(0)="E" D ^DIR
 Q
 ;----------
USR() ;EP - Return name of current user from ^VA(200.
 Q $S($G(DUZ):$S($D(^VA(200,DUZ,0)):$P(^(0),U),1:"UNKNOWN"),1:"DUZ UNDEFINED OR 0")
 ;----------
 ;
GETMEDS(P,BGPMBD,BGPMED,TAX1,TAX2,TAX3,EXP,ADM,BGPDNAME,BGPC,LAST) ;EP
 K ^TMP($J,"MEDS")
 S LAST=$G(LAST)
 NEW BGPC1,T,T1,T2,X,Y,G,D,C,BGPZ
 S BGPDNAME=$G(BGPDNAME)
 S BGPC1=0 K BGPZ
 S Y="^TMP($J,""MEDS"",",X=P_"^ALL MED;DURING "_$$FMTE^XLFDT(BGPMBD)_"-"_$$FMTE^XLFDT(BGPMED) S E=$$START1^APCLDF(X,Y)
 S T="" I TAX1]"" S T=$O(^ATXAX("B",TAX1,0))
 S T1="" I TAX2]"" S T1=$O(^ATXAX("B",TAX2,0))
 S T2="" I TAX3]"" S T2=$O(^ATXAX("B",TAX3,0))
 S X=0 F  S X=$O(^TMP($J,"MEDS",X)) Q:X'=+X  S Y=+$P(^TMP($J,"MEDS",X),U,4) D
 .Q:'$D(^AUPNVMED(Y,0))
 .S G=0
 .S D=$P(^AUPNVMED(Y,0),U)
 .S C=$P($G(^PSDRUG(D,0)),U,2)
 .I C]"",T2,$D(^ATXAX(T2,21,"B",C)) S G=1
 .S C=$P($G(^PSDRUG(D,2)),U,4)
 .I C]"",T1,$D(^ATXAX(T1,21,"B",C)) S G=1
 .I T,$D(^ATXAX(T,21,"B",D)) S G=1
 .I BGPDNAME]"",$P(^PSDRUG(D,0),U)[BGPDNAME S G=1
 .Q:'G
 .I $G(EXP) Q:$$EXP(Y,ADM)
 .I G=1 D
 ..S N=$P(^TMP($J,"MEDS",X),U,2)_"   "_$P(^AUPNVMED(Y,0),U,5)_"  qty: "_$P(^AUPNVMED(Y,0),U,6)_" days: "_$P(^AUPNVMED(Y,0),U,7)_" "_$$DATE^BGP7UTL($P(^TMP($J,"MEDS",X),U))
 ..I $P(^AUPNVMED(Y,0),U,8)]"" S N=N_"  D/C "_$$DATE^BGP7UTL($P(^AUPNVMED(Y,0),U,8))
 ..S BGPZ($P(^TMP($J,"MEDS",X),U,2),(9999999-$P(^TMP($J,"MEDS",X),U)))=N
 .Q
 I 'LAST D
 .S N="" F  S N=$O(BGPZ(N)) Q:N=""  D
 ..S D=0,D=$O(BGPZ(N,D)) I '$D(BGPY("B",N,D)) S BGPC=BGPC+1,BGPY(BGPC)=BGPZ(N,D),BGPY("B",N,D)=""
 I LAST D
 .S N="" F  S N=$O(BGPZ(N)) Q:N=""  D
 ..S D=0,D=$O(BGPZ(N,D)) S BGPY(D)=BGPZ(N,D)
 ..S X=$O(BGPY(0)) S X=BGPY(X)
 ..K BGPY
 ..S BGPY=X
 Q
EXP(Y,ADM) ;
 NEW G,V,N,Z,E
 S G=0  ;not expired
 S N=$P($G(^AUPNVMED(Y,0)),U,7) ;DAYS SUPPLY
 S V=$P(^AUPNVMED(Y,0),U,3)
 S Z=$S($D(^PSRX("APCC",Y)):$O(^(Y,0)),1:0) I Z D
 .S E=$P($G(^PSRX(Z,2)),U,6)
 .I E<ADM S G=1  ;prescription expired prior to admission date
 I $$FMADD^XLFDT($P($P(^AUPNVSIT(V,0),U),"."),N)<ADM S G=1
 Q G

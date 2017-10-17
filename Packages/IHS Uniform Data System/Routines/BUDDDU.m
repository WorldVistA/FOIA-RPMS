BUDDDU ; IHS/CMI/LAB - gpra utility calls ;
 ;;11.0;IHS/RPMS UNIFORM DATA SYSTEM;;JAN 18, 2017;Build 66
 ;
 ;----------
LOC() ;EP - Return location name from file 4 based on DUZ(2).
 Q $S($G(DUZ(2)):$S($D(^DIC(4,DUZ(2),0)):$P(^(0),U),1:"UNKNOWN"),1:"DUZ(2) UNDEFINED OR 0")
 ;----------
S(V) ;
 S BUDDECNT=BUDDECNT+1
 S ^TMP($J,"BUDDEL",BUDDECNT)=$G(V)
 Q
 ;----------
PAUSE ;
 K DIR S DIR(0)="E",DIR("A")="PRESS ENTER" KILL DA D ^DIR KILL DIR
 Q
 ;
EOJ ;
 D EN^XBVK("BUD")
 Q
CTR(X,Y) ;EP - Center X in a field Y wide.
 Q $J("",$S($D(Y):Y,1:IOM)-$L(X)\2)_X
 ;
IN6B(T) ;EP
 S BUDLST2I=$O(^BUDDLST2("C",T,0))
 W:$D(IOF) @IOF
 W !,$$CTR($$LOC,80)
 W !,$$CTR("UDS 2016",80)
 W !!,$P(^BUDDLST2(BUDLST2I,0),U,1)_" (Table 6B)",!
 D GENI^BUDDRP6B
 D PAUSE
 S X=0 F  S X=$O(^BUDDLST2(BUDLST2I,11,X)) Q:X'=+X  W !,^BUDDLST2(BUDLST2I,11,X,0)
 W !
 Q
HT6B(T) ;EP
 NEW L
 S L=$O(^BUDDLST2("C",T,0))
 I BUDROT="P" D  Q
 .S X=0 F  S X=$O(^BUDDLST2(L,12,X)) Q:X'=+X  W !,^BUDDLST2(L,12,X,0)
 I BUDROT="D" D  Q
 .D S()
 .S X=0 F  S X=$O(^BUDDLST2(L,12,X)) Q:X'=+X  D S(^BUDDLST2(L,12,X,0))
 .D S()
 Q
DATE(D) ;EP
 I D="" Q ""
 Q $E(D,4,5)_"/"_$E(D,6,7)_"/"_$E(D,2,3)
 ;
 ;
DEMO(P,T) ;EP - exclude demo patients
 I $G(P)="" Q 0
 I $G(T)="" S T="I"
 I T="I" Q 0
 NEW R
 S R=""
 I T="E" D  Q R
 .I $P($G(^DPT(P,0)),U)["DEMO,PATIENT" S R=1 Q
 .I $P(^DPT(DFN,0),U,1)="PATIENT,CRS" S R=1 Q
 .I $P(^DPT(DFN,0),U,1)="PATIENT,UDS" S R=1 Q
 .I $P(^DPT(DFN,0),U,1)="PATIENT,DEMO" S R=1 Q
 .NEW %
 .S %=$O(^DIBT("B","RPMS DEMO PATIENT NAMES",0))
 .I '% S R=0 Q
 .I $D(^DIBT(%,1,P)) S R=1 Q
 I T="O" D  Q R
 .I $P($G(^DPT(P,0)),U)["DEMO,PATIENT" S R=0 Q
 .NEW %
 .S %=$O(^DIBT("B","RPMS DEMO PATIENT NAMES",0))
 .I '% S R=1 Q
 .I $D(^DIBT(%,1,P)) S R=0 Q
 .S R=1 Q
 Q 0
WH(P,BDATE,EDATE,T,F) ;EP
 I '$G(P) Q ""
 I '$G(T) Q ""
 I '$G(F) S F=1
 I $G(EDATE)="" Q ""
 I $G(BDATE)="" S BDATE=$$FMADD^XLFDT(EDATE,-365)
 ;go through procedures in a date range for this patient, check proc type
 NEW D,X,Y,G,V,O
 S (G,V)=0,I="" F  S V=$O(^BWPCD("C",P,V)) Q:V=""  D
 .Q:'$D(^BWPCD(V,0))
 .I $P(^BWPCD(V,0),U,4)'=T Q
 .S D=$P(^BWPCD(V,0),U,12)
 .Q:D<BDATE
 .Q:D>EDATE
 .S I=$O(G(0)) I I>D Q
 .S G=V,G(D)=""
 .Q
 I 'G Q ""
 I F=1 Q $S(G:1,1:"")
 I F=2 Q G
 I F=3 S D=$P(^BWPCD(G,0),U,12) Q D
 I F=4 S D=$P(^BWPCD(G,0),U,12) Q $$FMTE^XLFDT(D)
 Q ""
PLCODE(P,A,ED,S) ;EP
 I $G(P)="" Q ""
 I $G(A)="" Q ""
 I $G(ED)="" S ED=DT
 S S=$G(S)
 N T
 ;S T=$O(^ICD9("AB",A,0))
 S T=+$$CODEN^ICDEX(A,80)
 I T'>0 Q ""
 N X,Y,I,A,D,G S (X,Y)=0,I="" F  S X=$O(^AUPNPROB("AC",P,X)) Q:X'=+X!(I)  I $D(^AUPNPROB(X,0)) D
 .Q:$P(^AUPNPROB(X,0),U,12)="D"
 .I S Q:$P(^AUPNPROB(X,0),U,12)="I"
 .S Y=$P($G(^AUPNPROB(X,0)),U,1)
 .Q:Y'=T
 .S A=0,D="",G="" F  S A=$O(^AUPNPROB(X,14,A)) Q:A'=+A!(G)  D
 ..S D=$$VD^APCLV($P(^AUPNPROB(X,14,A,0),U,1))
 ..I D'>ED S G=1  ;GOOD DATE
 .I 'G S A=0,D="" F  S A=$O(^AUPNPROB(X,15,A)) Q:A'=+A!(G)  D
 ..S D=$$VD^APCLV($P(^AUPNPROB(X,15,A,0),U,1))
 ..I D'>ED S G=1
 .I 'G Q:$P(^AUPNPROB(X,0),U,8)>ED
 .S I=1_U_$$VAL^XBDIQ1(9000011,X,.01)_U_$P(^AUPNPROB(X,0),U,3)
 Q I
PLTAX(P,A) ;EP - is DX on problem list 1 or 0
 I $G(P)="" Q ""
 I $G(A)="" Q ""
 N T S T=$O(^ATXAX("B",A,0))
 I 'T Q ""
 N X,Y,I S (X,Y,I)=0 F  S X=$O(^AUPNPROB("AC",P,X)) Q:X'=+X!(I)  I $D(^AUPNPROB(X,0)),$P(^AUPNPROB(X,0),U,12)'="D",$P(^AUPNPROB(X,0),U,12)'="I" S Y=$P(^AUPNPROB(X,0),U) I $$ICD^ATXCHK(Y,T,9) S I=1_U_$$VAL^XBDIQ1(9000011,X,.01)
 Q I
PLCL(P,A,ED,S,BD) ;EP - is DX on problem list 1 or 0
 I $G(P)="" Q ""
 I $G(A)="" Q ""
 I $G(S)="" S S=0
 I $G(ED)="" S ED=DT
 I $G(BD)="" S BD=$$DOB^AUPNPAT(P)
 N T,N S T=$O(^BUDDTSSC("B",A,0))
 I 'T Q ""
 N X,Y,I,A,D,G S (X,Y)=0,I="" F  S X=$O(^AUPNPROB("AC",P,X)) Q:X'=+X!(I)  I $D(^AUPNPROB(X,0)) D
 .Q:$P(^AUPNPROB(X,0),U,12)="D"
 .I S Q:$P(^AUPNPROB(X,0),U,12)="I"
 .S A=0,D="",G="" F  S A=$O(^AUPNPROB(X,14,A)) Q:A'=+A!(G)  D
 ..S D=$$VD^APCLV($P(^AUPNPROB(X,14,A,0),U,1))
 ..I D'>ED,D'<BD S G=1  ;GOOD DATE
 .I 'G S A=0,D="" F  S A=$O(^AUPNPROB(X,15,A)) Q:A'=+A!(G)  D
 ..S D=$$VD^APCLV($P(^AUPNPROB(X,15,A,0),U,1))
 ..I D'>ED,D'<BD S G=1
 .I 'G I $P(^AUPNPROB(X,0),U,8)>ED!($P(^AUPNPROB(X,0),U,8)<BD) Q
 .S Y=$P(^AUPNPROB(X,0),U) I $D(^BUDDTSSC("AD",Y,T)) S I=1_U_$$VAL^XBDIQ1(9000011,X,.01)_U_$P(^AUPNPROB(X,0),U,3) Q
 .S N=$$VAL^XBDIQ1(9000011,X,80001) I N]"",$D(^BUDDTSSC("AS",N,T)) S I=1_U_N_U_$P(^AUPNPROB(X,0),U,3)
 Q I
CPT(P,BDATE,EDATE,T,F,SCEX) ;EP - return ien of CPT entry if patient had this CPT
 I '$G(P) Q ""
 I '$G(T) Q ""
 I '$G(F) S F=1
 S SCEX=$G(SCEX)
 I $G(EDATE)="" Q ""
 I $G(BDATE)="" S BDATE=$$FMADD^XLFDT(EDATE,-365)
 ;go through visits in a date range for this patient, check cpts
 NEW D,BD,ED,X,Y,D,G,V
 S ED=(9999999-EDATE),BD=9999999-BDATE,G=0
 F  S ED=$O(^AUPNVSIT("AA",P,ED)) Q:ED=""!($P(ED,".")>BD)!(G)  D
 .S V=0 F  S V=$O(^AUPNVSIT("AA",P,ED,V)) Q:V'=+V!(G)  D
 ..Q:'$D(^AUPNVSIT(V,0))
 ..Q:'$D(^AUPNVCPT("AD",V))
 ..I SCEX]"",SCEX[$P(^AUPNVSIT(V,0),U,7) Q
 ..S X=0 F  S X=$O(^AUPNVCPT("AD",V,X)) Q:X'=+X!(G)  D
 ...I $$ICD^ATXCHK($P(^AUPNVCPT(X,0),U),T,1) S G=X
 ...Q
 ..Q
 .Q
 I 'G Q ""
 I F=1 Q $S(G:1,1:"")
 I F=2 Q G
 I F=3 S V=$P(^AUPNVCPT(G,0),U,3) I V Q $P($P($G(^AUPNVSIT(V,0)),U),".")
 I F=4 S V=$P(^AUPNVCPT(G,0),U,3) I V Q $$FMTE^XLFDT($P($P($G(^AUPNVSIT(V,0)),U),"."))
 I F=5 S V=$P(^AUPNVCPT(G,0),U,3) I V Q $P($P($G(^AUPNVSIT(V,0)),U),".")_"^"_$P($$CPT^ICPTCOD($P(^AUPNVCPT(G,0),U)),U,2)
 I F=6 S V=$P(^AUPNVCPT(G,0),U,3) I V Q 1_"^"_$P($P($G(^AUPNVSIT(V,0)),U),".")_"^"_$P($$CPT^ICPTCOD($P(^AUPNVCPT(G,0),U)),U,2)_"^"_G_"^"_V
 Q ""
RAD(P,BDATE,EDATE,T,F) ;EP - return ien of CPT entry if patient had this CPT
 I '$G(P) Q ""
 I '$G(T) Q ""
 I '$G(F) S F=1
 I $G(EDATE)="" Q ""
 I $G(BDATE)="" S BDATE=$$FMADD^XLFDT(EDATE,-365)
 ;go through visits in a date range for this patient, check cpts
 NEW D,BD,ED,X,Y,D,G,V,C
 S ED=(9999999-EDATE),BD=9999999-BDATE,G=0
 F  S ED=$O(^AUPNVSIT("AA",P,ED)) Q:ED=""!($P(ED,".")>BD)!(G)  D
 .S V=0 F  S V=$O(^AUPNVSIT("AA",P,ED,V)) Q:V'=+V!(G)  D
 ..Q:'$D(^AUPNVSIT(V,0))
 ..Q:'$D(^AUPNVRAD("AD",V))
 ..S X=0 F  S X=$O(^AUPNVRAD("AD",V,X)) Q:X'=+X!(G)  D
 ...S C=$P(^AUPNVRAD(X,0),U) Q:C=""  S C=$P($G(^RAMIS(71,C,0)),U,9) Q:C=""
 ...I $$ICD^ATXCHK(C,T,1) S G=X
 ...Q
 ..Q
 .Q
 I 'G Q ""
 I F=1 Q $S(G:1,1:"")
 I F=2 Q G
 I F=3 S V=$P(^AUPNVRAD(G,0),U,3) I V Q $P($P($G(^AUPNVSIT(V,0)),U),".")
 I F=4 S V=$P(^AUPNVRAD(G,0),U,3) I V Q $$FMTE^XLFDT($P($P($G(^AUPNVSIT(V,0)),U),"."))
 I F=5 S V=$P(^AUPNVRAD(G,0),U,3) I V Q $P($P($G(^AUPNVSIT(V,0)),U),".")_"^"_$P(^RAMIS(71,$P(^AUPNVRAD(G,0),U),0),U,9)
 I F=6 S V=$P(^AUPNVRAD(G,0),U,3) I V Q 1_"^"_$P($P($G(^AUPNVSIT(V,0)),U),".")_"^"_$P(^RAMIS(71,$P(^AUPNVRAD(G,0),U),0),U)_"^"_G
 Q ""
CPTI(P,BDATE,EDATE,CPTI,SCEX,SCLN,SMOD) ;EP - did patient have this cpt (ien) in date range
 I '$G(P) Q ""
 I $G(CPTI)="" Q ""
 I $G(BDATE)="" Q ""
 I $G(EDATE)="" Q ""
 S SCEX=$G(SCEX)
 S SCLN=$G(SCLN)
 S SMOD=$G(SMOD)
 I '$D(^ICPT(CPTI)) Q ""  ;not a valid cpt ien
 I '$D(^AUPNVCPT("AA",P)) Q ""  ;no cpts for this patient
 NEW D,BD,ED,X,Y,D,G,V,I,M,M1,Z,J,K,Q,Z
 S ED=9999999-EDATE-1,BD=9999999-BDATE,G=""
 F  S ED=$O(^AUPNVCPT("AA",P,CPTI,ED)) Q:ED=""!($P(ED,".")>BD)!(G)  D
 .S I=0 F  S I=$O(^AUPNVCPT("AA",P,CPTI,ED,I)) Q:I'=+I!(G)  D
 ..S V=$P($G(^AUPNVCPT(I,0)),U,3)
 ..I SCEX]"",SCEX[$P(^AUPNVSIT(V,0),U,7) Q
 ..I SCLN]"",$$CLINIC^APCLV(V,"C")=SCLN Q
 ..S M=$$VAL^XBDIQ1(9000010.18,I,.08)
 ..S M1=$$VAL^XBDIQ1(9000010.18,I,.09)
 ..S Q=0
 ..I SMOD]"" F J=1:1 S K=$P(SMOD,";",J) Q:K=""  I K=M S Q=1
 ..Q:Q
 ..I SMOD]"" F J=1:1 S K=$P(SMOD,";",J) Q:K=""  I K=M1 S Q=1
 ..Q:Q
 ..S G="1"_"^"_(9999999-ED)
 Q G
 ;
TRANI(P,BDATE,EDATE,CPTI) ;EP
 I '$G(P) Q ""
 I $G(TRANI)="" Q ""
 I $G(BDATE)="" Q ""
 I $G(EDATE)="" Q ""
 I '$D(^ICPT(CPTI)) Q ""
 I '$D(^AUPNVTC("AC",P)) Q ""  ;no cpts for this patient
 NEW X,V,C,G
 S G=""
 S X=0 F  S X=$O(^AUPNVTC("AC",P,X)) Q:X'=+X  D
 .S C=$P($G(^AUPNVTC(X,0)),U,7)
 .Q:C'=CPTI
 .S V=$P(^AUPNVTC(X,0),U,3)
 .S V=$P($P($G(^AUPNVSIT(V,0)),U),".")
 .Q:V<BDATE
 .Q:V>EDATE
 .S G="1"_"^"_V
 Q G
TRAN(P,BDATE,EDATE,T,F) ;EP - return ien of CPT entry if patient had this CPT IN A TRAN CODE
 I '$G(P) Q ""
 I '$G(T) Q ""
 I '$G(F) S F=1
 I $G(EDATE)="" Q ""
 I $G(BDATE)="" S BDATE=$$FMADD^XLFDT(EDATE,-365)
 ;go through visits in a date range for this patient, check cpts
 NEW D,BD,ED,X,Y,D,G,V
 S ED=(9999999-EDATE),BD=9999999-BDATE,G=0
 F  S ED=$O(^AUPNVSIT("AA",P,ED)) Q:ED=""!($P(ED,".")>BD)!(G)  D
 .S V=0 F  S V=$O(^AUPNVSIT("AA",P,ED,V)) Q:V'=+V!(G)  D
 ..Q:'$D(^AUPNVSIT(V,0))
 ..Q:'$D(^AUPNVTC("AD",V))
 ..S X=0 F  S X=$O(^AUPNVTC("AD",V,X)) Q:X'=+X!(G)  D
 ...I $$ICD^ATXCHK($P(^AUPNVTC(X,0),U,7),T,1) S G=X
 ...Q
 ..Q
 .Q
 I 'G Q ""
 I F=1 Q $S(G:1,1:"")
 I F=2 Q G
 I F=3 S V=$P(^AUPNVTC(G,0),U,3) I V Q $P($P($G(^AUPNVSIT(V,0)),U),".")
 I F=4 S V=$P(^AUPNVTC(G,0),U,3) I V Q $$FMTE^XLFDT($P($P($G(^AUPNVSIT(V,0)),U),"."))
 I F=5 S V=$P(^AUPNVTC(G,0),U,3) I V Q $P($P($G(^AUPNVSIT(V,0)),U),".")_"^"_$P($$CPT^ICPTCOD($P(^AUPNVTC(G,0),U,7)),U,2)
 I F=6 S V=$P(^AUPNVTC(G,0),U,3) I V Q 1_"^"_$P($P($G(^AUPNVSIT(V,0)),U),".")_"^"_$P($$CPT^ICPTCOD($P(^AUPNVTC(G,0),U,7)),U,2)_"^"_G_"^"_V
 Q ""
 ;
LASTITEM(P,BD,ED,BUDT,BUDV) ;PEP - return last item APCLV OF TYPE APCLT DURING BD TO ED IN FORM APCLF
 I $G(BD)="" S BD=$$DOB^AUPNPAT(P)
 I $G(ED)="" S ED=DT
 I $G(BUDT)="" Q ""
 I $G(BUDV)="" Q ""
 NEW BUDR,%,E,Y K R S %=P_"^LAST "_BUDT_" "_BUDV_";DURING "_BD_"-"_ED,E=$$START1^APCLDF(%,"BUDR(")
 I '$D(BUDR(1)) Q ""
 Q 1_U_$P(BUDR(1),U,1)_U_$P(BUDR(1),U,3)_U_$P(BUDR(1),U,2)
 ;
BANNER ;EP
V ; GET VERSION
 S BUD("VERSION")="2.0  January, 2003"
 S BUDTEXT="TEXT",BUDLINE=3 G PRINT
 F BUDJ=1:1 S BUDX=$T(@BUDTEXT+BUDJ),BUDX=$P(BUDX,";;",2) Q:BUDX="QUIT"!(BUDX="")  S BUDLINE=BUDJ
PRINT W:$D(IOF) @IOF
 F BUDJ=1:1:BUDLINE S BUDX=$T(@BUDTEXT+BUDJ),BUDX=$P(BUDX,";;",2) W !?80-$L(BUDX)\2,BUDX K BUDX
 W !?80-(8+$L(BUD("VERSION")))/2,"Version ",BUD("VERSION")
SITE G XIT:'$D(DUZ(2)) G:'DUZ(2) XIT S BUD("SITE")=$P(^DIC(4,DUZ(2),0),"^") W !!?80-$L(BUD("SITE"))\2,BUD("SITE")
XIT ;
 K BUDJ,BUDX,BUDTEXT,BUDLINE,BUD("SITE"),BUD("VERSION")
 Q
BECPTS ;;
 ;;74270
 ;;74275
 ;;74280
 ;;
SIGCPTS ;;
 ;;45300
 ;;45303
 ;;45305
 ;;45307
 ;;45308
 ;;45309
 ;;45315
 ;;45317
 ;;45320
 ;;45321
 ;;45327
 ;;45330
 ;;45331
 ;;45332
 ;;45333
 ;;45334
 ;;45336
 ;;45337
 ;;45338
 ;;45339
 ;;45341
 ;;45342
 ;;45345
 ;;
COLOCPTS ;;
 ;;45355
 ;;45360
 ;;45361
 ;;45362
 ;;45363
 ;;45364
 ;;45365
 ;;45366
 ;;45367
 ;;45368
 ;;45369
 ;;45370
 ;;45371
 ;;45372
 ;;45378
 ;;45379
 ;;45380
 ;;45382
 ;;45383
 ;;45384
 ;;45385
 ;;45387
 ;;

BDMDG1D ; IHS/CMI/LAB - BDM Continuation of BDMDG1C 1/11/2014 1:54:57 PM ;
 ;;2.0;DIABETES MANAGEMENT SYSTEM;**12**;JUN 14, 2007;Build 51
 ;
 ;
 ;
MICRO ;EP
 NEW BDM,X,%,E,R,V,BDMLT,BDMOT,B,D,L,J,BDMC,BDMV,V
 K BDM S BDMC=0
 S BDMOT=$O(^ATXAX("B","DM AUDIT MICROALBUMIN LOINC",0))
 S BDMLT=$O(^ATXLAB("B","DM AUDIT MICROALBUMINURIA TAX",0))
 S B=9999999-BDATE,E=9999999-EDATE S D=E-1 F  S D=$O(^AUPNVLAB("AE",P,D)) Q:D'=+D!(D>B)  D
 .S L=0 F  S L=$O(^AUPNVLAB("AE",P,D,L)) Q:L'=+L  D
 ..S X=0 F  S X=$O(^AUPNVLAB("AE",P,D,L,X)) Q:X'=+X  D
 ...Q:'$D(^AUPNVLAB(X,0))
 ...I BDMLT,$P(^AUPNVLAB(X,0),U),$D(^ATXLAB(BDMLT,21,"B",$P(^AUPNVLAB(X,0),U))) D SETV Q
 ...Q:'BDMOT
 ...S J=$P($G(^AUPNVLAB(X,11)),U,13) Q:J=""
 ...Q:'$$LOINC(J,BDMOT)
 ...D SETV
 ...Q
 I '$D(BDM(1)) S %1="" D ACRATIOM^BDMDG1C Q %1
 D SETN
 NEW % S %=$P(^AUPNVLAB(+$P(BDM(N),U,4),0),U,4)
 S %1=$S(%="":"No result",%["+":"Pos ",%[">":"Pos ",$E(%)="P":"Pos ",$E(%)="p":"Pos ",$E(%)="c":"No result ",$E(%)="C":"No result ",+%>29:"Pos ",1:"Neg ")
 Q %1_%_" "_$$FMTE^XLFDT($P(BDM(N),U),"5")_" "_$P(BDM(N),U,3)
HGBA1C ;EP
 NEW BDM,X,%,E,R,V,BDMLT,BDMOT,B,D,L,J,BDMC,BDMV,V,G
 K BDM
 S BDMC=0
 S BDMOT=$O(^ATXAX("B","BGP HGBA1C LOINC CODES",0))
 S BDMLT=$O(^ATXLAB("B","DM AUDIT HGB A1C TAX",0))
 S B=9999999-BDATE,E=9999999-EDATE S D=E-1 F  S D=$O(^AUPNVLAB("AE",P,D)) Q:D'=+D!(D>B)  D
 .S L=0 F  S L=$O(^AUPNVLAB("AE",P,D,L)) Q:L'=+L  D
 ..S X=0 F  S X=$O(^AUPNVLAB("AE",P,D,L,X)) Q:X'=+X  D
 ...Q:'$D(^AUPNVLAB(X,0))
 ...Q:$P(^AUPNVLAB(X,0),U,4)=""  ;no result
 ...Q:$$UP^XLFSTR($P(^AUPNVLAB(X,0),U,4))["CANC"
 ...Q:$$UP^XLFSTR($P(^AUPNVLAB(X,0),U,4))["COMMENT"
 ...I BDMLT,$P(^AUPNVLAB(X,0),U),$D(^ATXLAB(BDMLT,21,"B",$P(^AUPNVLAB(X,0),U))) D SETV Q
 ...Q:'BDMOT
 ...S J=$P($G(^AUPNVLAB(X,11)),U,13) Q:J=""
 ...Q:'$$LOINC(J,BDMOT)
 ...D SETV
 ...Q
 D SET3
 ;K X S (%,C,R)="" F  S %=$O(BDM(%)) Q:%'=+%!(C>1)  S C=C+1,X(9999999-$P(BDM(%),U),C)=$P(^AUPNVLAB(+$P(BDM(%),U,4),0),U,4)
 ;S %=0,R="" F  S %=$O(X(%)) Q:%=""  S V=0 F  S V=$O(X(%,V)) Q:V=""  S R=R_X(%,V)_"^"_$$FMTE^XLFDT(9999999-%)_"^"_(9999999-%)_"^"
 ;separate those with a result and those without a result
 ;first put in reverse date order
 S (N,C,R)=""
 K BDMR
 F  S N=$O(BDM(N)) Q:N'=+N  D
 .S D=$P(BDM(N),U)
 .S R=$P(BDM(N),U,2) I R="?" S R=""
 .I R]"" S BDMR("R",(9999999-D),N)=BDM(N)
 .I R="" S BDMR("NR",(9999999-D),N)=BDM(N)
 S R=""
 S D=0 F  S D=$O(BDMR("R",D)) Q:D'=+D!(R]"")  D
 .S N=0 F  S N=$O(BDMR("R",D,N)) Q:N'=+N!(R]"")  D
 ..S R=BDMR("R",D,N)
 I R]"" Q R
 S D=0 F  S D=$O(BDMR("NR",D)) Q:D'=+D!(R]"")  D
 .S N=0 F  S N=$O(BDMR("NR",D,N)) Q:N'=+N!(R]"")  D
 ..S R=BDMR("NR",D,N)
 Q R
BS ;EP
 NEW BDM,X,%,E,R,V,C
 K BDM
 S %=P_"^LAST 200 LAB [DM AUDIT GLUCOSE TESTS TAX;DURING "_BDATE_"-"_EDATE,E=$$START1^APCLDF(%,"BDM(")
 I '$D(BDM(1)) Q ""
 D SET3
 S (%,C,R)="" F  S %=$O(BDM(%)) Q:%=""!(C>2)  S R=R_$P(^AUPNVLAB(+$P(BDM(%),U,4),0),U,4)_$S($P(^AUPNVLAB(+$P(BDM(%),U,4),0),U,4)]"":" mg/dl ",1:"")_$$FMTE^XLFDT($P(BDM(%),U))_"^",C=C+1
 Q R
 ;
FGLUCOSE ;EP
 I $G(F)="" S F="E"
 NEW BDM,X,%,E,R,V,BDMLT,BDMOT,B,D,L,J,BDMC,BDMV,V
 K BDM
 S BDMC=0
 S BDMOT=$O(^ATXAX("B","DM AUDIT FASTING GLUC LOINC",0))
 S BDMLT=$O(^ATXLAB("B","DM AUDIT FASTING GLUCOSE TESTS",0))
 D GATHER
 I '$D(BDM(1)) Q ""
 D SETN
 I F="I" Q $P(^AUPNVLAB(+$P(BDM(N),U,4),0),U,4)_"^"_$P(BDM(N),U)
 Q $P(^AUPNVLAB(+$P(BDM(N),U,4),0),U,4)_$S($P(^AUPNVLAB(+$P(BDM(N),U,4),0),U,4)]"":" mg/dl ",1:"")_$$FMTE^XLFDT($P(BDM(N),U),5)
G75 ;EP
 I $G(F)="" S F="E"
 NEW BDM,X,%,E,R,V,BDMLT,BDMOT,B,D,L,J,BDMC,BDMV,V
 K BDM
 S BDMC=0
 S BDMOT=$O(^ATXAX("B","DM AUDIT 75GM 2HR LOINC",0))
 S BDMLT=$O(^ATXLAB("B","DM AUDIT 75GM 2HR GLUCOSE",0))
 D GATHER
 I '$D(BDM(1)) Q ""
 D SETN
 I F="I" Q $P(^AUPNVLAB(+$P(BDM(N),U,4),0),U,4)_"^"_$P(BDM(N),U)
 Q $P(^AUPNVLAB(+$P(BDM(N),U,4),0),U,4)_$S($P(^AUPNVLAB(+$P(BDM(N),U,4),0),U,4)]"":" mg/dl ",1:"")_$$FMTE^XLFDT($P(BDM(N),U),5)
 ;
GATHER ;
 S B=9999999-BDATE,E=9999999-EDATE S D=E-1 F  S D=$O(^AUPNVLAB("AE",P,D)) Q:D'=+D!(D>B)!($D(BDM))  D
 .S L=0 F  S L=$O(^AUPNVLAB("AE",P,D,L)) Q:L'=+L  D
 ..S X=0 F  S X=$O(^AUPNVLAB("AE",P,D,L,X)) Q:X'=+X  D
 ...Q:'$D(^AUPNVLAB(X,0))
 ...I BDMLT,$P(^AUPNVLAB(X,0),U),$D(^ATXLAB(BDMLT,21,"B",$P(^AUPNVLAB(X,0),U))) D SETV Q
 ...Q:'BDMOT
 ...S J=$P($G(^AUPNVLAB(X,11)),U,13) Q:J=""
 ...Q:'$$LOINC(J,BDMOT)
 ...D SETV
 ...Q
 I '$D(BDM(1)) Q
 S D=$P(BDM(1),U),D=9999999-D
 K BDM S BDMC=0
 S L=0 F  S L=$O(^AUPNVLAB("AE",P,D,L)) Q:L'=+L  D
 .S X=0 F  S X=$O(^AUPNVLAB("AE",P,D,L,X)) Q:X'=+X  D
 ..Q:'$D(^AUPNVLAB(X,0))
 ..I BDMLT,$P(^AUPNVLAB(X,0),U),$D(^ATXLAB(BDMLT,21,"B",$P(^AUPNVLAB(X,0),U))) D SETV Q
 ..Q:'BDMOT
 ..S J=$P($G(^AUPNVLAB(X,11)),U,13) Q:J=""
 ..Q:'$$LOINC(J,BDMOT)
 ..D SETV
 ..Q
 Q
LOINC(A,B) ;EP - is loinc code A in taxonomy B
 NEW %
 S %=$P($G(^LAB(95.3,A,9999999)),U,2)
 I %]"",$D(^ATXAX(B,21,"B",%)) Q 1
 S %=$P($G(^LAB(95.3,A,0)),U)_"-"_$P($G(^LAB(95.3,A,0)),U,15)
 I $D(^ATXAX(B,21,"B",%)) Q 1
 Q ""
SETV ;
 S BDMC=BDMC+1
 S V=$P(^AUPNVLAB(X,0),U,3),BDMV=$P($P($G(^AUPNVSIT(V,0)),U),".") Q:'BDMV
 S BDM(BDMC)=BDMV_"^"_$S($P(^AUPNVLAB(X,0),U,4)]"":$P(^AUPNVLAB(X,0),U,4),1:"")_"^"_$$VAL^XBDIQ1(9000010.09,X,.01)_"^"_X_";AUPNVLAB^"_V
 Q
SETN ;
 S N="" NEW A,G S (A,G)=0 F  S A=$O(BDM(A)) Q:A'=+A!(G)  S R=$P(^AUPNVLAB(+$P(BDM(A),U,4),0),U,4) I R]"",$$UP^XLFSTR(R)'="COMMENT" S G=A
 S N=$S(G:G,1:1)
 Q
SET3 ;
 NEW X,N1,N2,N3,A,T,G,N
 K A
 S X=0 F  S X=$O(BDM(X)) Q:X'=+X  S A($P(BDM(X),U),X)=""
 NEW D S D=0 F  S D=$O(A(D)) Q:D'=+D  D
 .S G=0,N=0 F  S N=$O(A(D,N)) Q:N'=+N  D
 ..I $P(^AUPNVLAB(+$P(BDM(N),U,4),0),U,4)]"",$$UP^XLFSTR($P(^AUPNVLAB(+$P(BDM(N),U,4),0),U,4))'="COMMENT" S G=1 Q
 .I G S N=0 F  S N=$O(A(D,N)) Q:N'=+N  I $P(^AUPNVLAB(+$P(BDM(N),U,4),0),U,4)="" K BDM(N)
 .Q
 Q
ASPIRIN ;EP
 NEW X,BDM,E,A,N,G,T,T1,O,B,%
 S (A,B,G,N,D)=""
 S X=P_"^LAST MEDS [DM AUDIT ASPIRIN DRUGS"_";DURING "_BDATE_"-"_EDATE S E=$$START1^APCLDF(X,"BDM(")
 I $D(BDM(1)) S A=1 S D=$$DATE^BDMS9B1($P(BDM(1),U))_" "_$P(BDM(1),U,3)
 K BDM S X=P_"^LAST MEDS [DM AUDIT ANTIPLT/ANTICOAG RX"_";DURING "_BDATE_"-"_EDATE S E=$$START1^APCLDF(X,"BDM(")
 I $D(BDM(1)) S N=1 S D=$$DATE^BDMS9B1($P(BDM(1),U))_" "_$P(BDM(1),U,3)
 K BDM S X=P_"^LAST MEDS [DM AUDIT ANTI-PLATELET DRUGS"_";DURING "_BDATE_"-"_EDATE S E=$$START1^APCLDF(X,"BDM(")
 I $D(BDM(1)) S N=1 S D=$$DATE^BDMS9B1($P(BDM(1),U))_" "_$P(BDM(1),U,3)
 I A Q "1  Yes  "_D
 I N Q "1  Yes  "_D
 S T=$O(^ATXAX("B","DM AUDIT ASPIRIN DRUGS",0))
 S T1=$O(^ATXAX("B","DM AUDIT ANTIPLT/ANTICOAG RX",0))
 S X=0,%="" F  S X=$O(^PS(55,P,"NVA",X)) Q:X'=+X!(%]"")  D
 .I $P($G(^PS(55,P,"NVA",X,999999911)),U,1),$D(^AUPNVMED($P(^PS(55,P,"NVA",X,999999911),U,1),0)) Q  ;got this with V MED
 .S L=$P($P($G(^PS(55,P,"NVA",X,0)),U,10),".")
 .Q:$P(^PS(55,P,"NVA",X,0),U,6)=1  ;discontinued
 .I $P(^PS(55,P,"NVA",X,0),U,7)]"",$P(^PS(55,P,"NVA",X,0),U,7)<EDATE Q  ;discontinued date
 .Q:$P(^PS(55,P,"NVA",X,0),U,9)>EDATE  ;
 .S D=$P(^PS(55,P,"NVA",X,0),U,2)
 .I D S G=0 D
 ..I $D(^ATXAX(T,21,"B",D)) S G=1
 ..I $D(^ATXAX(T1,21,"B",D)) S G=1
 .I D,G S %="1  Yes - NVA MED - "_$P(^PSDRUG(D,0),U,1) Q
 .S O=$P(^PS(55,P,"NVA",X,0),U,1)
 .Q:O=""
 .S O=$P($G(^PS(50.7,O,0)),U,1)
 .Q:O=""
 .I $E(O,1,7)="ASPIRIN",$E(O,8)'="/" S %="1  Yes - NVA MED - "_O Q
 I %]"" Q %
 K %DT S %DT="P",X=EDATE D ^%DT S ED=Y
 S BDM=$$PRESD^BDMDG18(P,$O(^ATXAX("B","DM AUDIT ASPIRIN DRUGS",0)),ED,186)
 I BDM]"" Q BDM
 S BDM=$$PRESD^BDMDG18(P,$O(^ATXAX("B","DM AUDIT ANTIPLT/ANTICOAG RX",0)),ED,186)
 I BDM]"" Q BDM
 S BDM=$$PRESD^BDMDG18(P,$O(^ATXAX("B","DM AUDIT ANTI-PLATELET DRUGS",0)),ED,186)
 I BDM]"" Q BDM
 Q "2  No"
 ;
 ;
HEPCDX(P,EDATE) ;EP - dx of HEP C ever?
 NEW T,X,G
 S X=$$LASTDXT^BDMAPIU(P,$$DOB^AUPNPAT(P),EDATE,"BGP HEPATITIS C DXS","E")
 I X Q "1  Yes - "_$$DATE^BDMS9B1($P(X,U,1))_" "_$P(X,U,2)
 ;now check problem list
 S T=$O(^ATXAX("B","BGP HEPATITIS C DXS",0))
 S (X,G)=0 F  S X=$O(^AUPNPROB("AC",P,X)) Q:X'=+X!(G)  D
 .Q:$P(^AUPNPROB(X,0),U,8)>EDATE  ;if added to pl after end of time period, no go
 .S Y=$P(^AUPNPROB(X,0),U)
 .Q:$P(^AUPNPROB(X,0),U,12)="D"
 .;Q:$P(^AUPNPROB(X,0),U,12)="I"
 .I $$ICD^BGP8UTL2(Y,T,9) S G="1  Yes - "_"Problem List "_$$VAL^XBDIQ1(9000011,X,.01)_" "_$$DATE^BDMS9B1($P(^AUPNPROB(X,0),U,8)) Q
 .I $P($G(^AUPNPROB(X,800)),U,1)]"",$$SNOMED^BDMUTL(2019,"PXRM HEPATITIS C",$P(^AUPNPROB(X,800),U,1)) S G=1
 .Q
 I G Q G
 Q "2  No"
HEPSCR(P,EDATE) ;
 I $E($$HEPCDX(P,EDATE))=1 Q ""  ;HAS DX
 NEW D
 S D=$$DOB^AUPNPAT(P)
 ;I D<2450101 Q "3  Not born 1945-1965"
 ;I D>2651231 Q "3  Not born 1945-1965"
 NEW X,G,T,%,BGPC,BGPLT,L,D,J,R,Y
 ;now get all loinc/taxonomy tests
 S BGPC=""
 S T=$O(^ATXAX("B","BGP HEP C TEST LOINC CODES",0))
 S BGPLT=$O(^ATXLAB("B","BGP HEP C TESTS TAX",0))
 S E=9999999-EDATE S D=E-1 F  S D=$O(^AUPNVLAB("AE",P,D)) Q:D'=+D!(BGPC)  D
 .S L=0 F  S L=$O(^AUPNVLAB("AE",P,D,L)) Q:L'=+L!(BGPC)  D
 ..S X=0 F  S X=$O(^AUPNVLAB("AE",P,D,L,X)) Q:X'=+X!(BGPC)  D
 ...Q:'$D(^AUPNVLAB(X,0))
 ...I BGPLT,$P(^AUPNVLAB(X,0),U),$D(^ATXLAB(BGPLT,21,"B",$P(^AUPNVLAB(X,0),U))) D
 ....S BGPC="1  Yes "_$$DATE^BDMS9B1((9999999-D))_" "_$$VAL^XBDIQ1(9000010.09,X,.01) I $$VAL^XBDIQ1(9000010.09,X,.04)]"" S BGPC=BGPC_" ("_$$VAL^XBDIQ1(9000010.09,X,.04)_")" Q
 ...Q:'T
 ...S J=$P($G(^AUPNVLAB(X,11)),U,13) Q:J=""
 ...Q:'$$LOINC(J,T)
 ...S BGPC="1  Yes - "_$$DATE^BDMS9B1((9999999-D))_" "_$$VAL^XBDIQ1(9000010.09,X,.01) I $$VAL^XBDIQ1(9000010.09,X,.04)]"" S BGPC=BGPC_" ("_$$VAL^XBDIQ1(9000010.09,X,.04)_")"
 ...Q
 I BGPC Q BGPC
 S %="",E=+$$CODEN^ICPTCOD(86803),%=$$CPTI^BDMDGDU(P,$$DOB^AUPNPAT(P),EDATE,E)
 I % Q "1  Yes - "_$$DATE^BDMS9B1($P(%,U,2))_" CPT 86803 "_$P($$CPT^ICPTCOD(E,$P(%,U,2)),U,3)
 Q "2  No"
DMRETDX(P,EDATE) ;EP - is DM RETINOPATHY on problem list
 I '$G(P) Q ""
 I '$D(^DPT(P)) Q ""
 NEW %,BDM,E,X,T,G,Y,D,I,S
 S T=$O(^ATXAX("B","BGP DM RETINOPATHY DX",0))
 S (X,G)=0 F  S X=$O(^AUPNPROB("AC",P,X)) Q:X'=+X!(G)  D
 .Q:'$D(^AUPNPROB(X,0))  ;bad xref
 .Q:$P(^AUPNPROB(X,0),U,8)>EDATE  ;if added to pl after end of time period, no go
 .S Y=$P(^AUPNPROB(X,0),U)
 .Q:$P(^AUPNPROB(X,0),U,12)="I"
 .Q:$P(^AUPNPROB(X,0),U,12)="D"
 .I $$ICD^BDMUTL(Y,$P(^ATXAX(T,0),U),9) S G=X Q
 .I $P($G(^AUPNPROB(X,800)),U,1)]"" D
 ..I $$SNOMED^BDMUTL(2019,"PXRM BGP DM RETINOPATHY",$P(^AUPNPROB(X,800),U,1)) S G=X
 .Q
 I G Q "1  Yes - Problem List "
 K BDM
 S X=P_"^LAST 1 DX ["_$P(^ATXAX(T,0),U,1)_";DURING "_$$DOB^AUPNPAT(P)_"-"_EDATE S E=$$START1^APCLDF(X,"BDM(")
 I $D(BDM(1)) S Y=$$DATE^BDMS9B1($P(BDM(1),U,1)) Q "1  Yes - DX "_Y
 ;CHECK V POV SNOMED USING A
 S G="",I=""
 S S="" F  S S=$O(^AUPNVPOV("ASNC",P,S)) Q:S=""!(G)  D
 .S I=0
 .I $$SNOMED^BDMUTL(2019,"PXRM BGP DM RETINOPATHY",S) S I=1
 .Q:'I
 .S D=0 F  S D=$O(^AUPNVPOV("ASNC",P,S,D)) Q:D=""!(G)  D
 ..S Y=9999999-D
 ..Q:Y>EDATE
 ..S G=1
 I G Q "1  Yes - "_$$DATE^BDMS9B1(Y)_" SNOMED: "_S
 Q "2  No"
SNO(%) ;
 NEW B,C
 S B=$O(^BDMSNME("B",2019,0))
 I 'B Q ""
 S C=$O(^BDMSNME(B,11,"B",%,0))
 I 'C Q ""
 S C=$O(^BDMSNME(B,11,%,0))
 I C Q 1
 Q ""
LEAMP(P,EDATE,F) ;EP - dx of AMP ever?
 I '$G(F) S F=1
 ;F=1 audit data format
 ;F=2 Yes or No only
 NEW T,X,G,I,S,D,Y,T1
 S X=""
 I $O(^ATXAX("B","BGP DM BTK AMP DXS",0)) S X=$$LASTDXT^BDMAPIU(P,$$DOB^AUPNPAT(P),EDATE,"BGP DM BTK AMP DXS","E")
 I X Q $S(F=1:"1  Yes - "_$$DATE^BDMS9B1($P(X,U,1))_" "_$P(X,U,2),1:"Yes")
 I $O(^ATXAX("B","BGP DM ATK AMP DXS",0)) S X=$$LASTDXT^BDMAPIU(P,$$DOB^AUPNPAT(P),EDATE,"BGP DM ATK AMP DXS","E")
 I X Q $S(F=1:"1  Yes - "_$$DATE^BDMS9B1($P(X,U,1))_" "_$P(X,U,2),1:"Yes")
 ;CHECK V POV SNOMED USING A
 S G="",I=""
 S S="" F  S S=$O(^AUPNVPOV("ASNC",P,S)) Q:S=""!(G)  D
 .S I=0
 .I $$SNOMED^BDMUTL(2019,"PXRM BGP DM BTK AMP",S) S I=1
 .I $$SNOMED^BDMUTL(2019,"PXRM BGP DM ATK AMP",S) S I=1
 .Q:'I
 .S D=0 F  S D=$O(^AUPNVPOV("ASNC",P,S,D)) Q:D=""!(G)  D
 ..S Y=9999999-D
 ..Q:Y>EDATE
 ..S G=1
 I G Q $S(F=1:"1  Yes - "_$$DATE^BDMS9B1(Y)_" SNOMED: "_S,1:"Yes")
 S X=""
 I $O(^ATXAX("B","BGP DM BTK AMP PROCS",0)) S X=$$LASTPRCT^BDMAPIU(P,$$DOB^AUPNPAT(P),EDATE,"BGP DM BTK AMP PROCS","E")
 I X Q $S(F=1:"1  Yes - "_$$DATE^BDMS9B1($P(X,U,1))_" "_$P(X,U,2),1:"Yes")
 I $O(^ATXAX("B","BGP DM ATK AMP PROCS",0)) S X=$$LASTPRCT^BDMAPIU(P,$$DOB^AUPNPAT(P),EDATE,"BGP DM ATK AMP PROCS","E")
 I X Q $S(F=1:"1  Yes - "_$$DATE^BDMS9B1($P(X,U,1))_" "_$P(X,U,2),1:"Yes")
 ;now check problem list
 S T=$O(^ATXAX("B","BGP DM BTK AMP DXS",0))
 S T1=$O(^ATXAX("B","BGP DM ATK AMP DXS",0))
 S (X,G)=0 F  S X=$O(^AUPNPROB("AC",P,X)) Q:X'=+X!(G)  D
 .Q:$P(^AUPNPROB(X,0),U,8)>EDATE  ;if added to pl after end of time period, no go
 .S Y=$P(^AUPNPROB(X,0),U)
 .Q:$P(^AUPNPROB(X,0),U,12)="D"
 .;Q:$P(^AUPNPROB(X,0),U,12)="I"
 .I T,$$ICD^BGP8UTL2(Y,T,9) S G=$S(F=1:"1  Yes - "_"Problem List "_$$VAL^XBDIQ1(9000011,X,.01)_" "_$$DATE^BDMS9B1($P(^AUPNPROB(X,0),U,8)),1:"Yes") Q
 .I T1,$$ICD^BGP8UTL2(Y,T1,9) S G=$S(F=1:"1  Yes - "_"Problem List "_$$VAL^XBDIQ1(9000011,X,.01)_" "_$$DATE^BDMS9B1($P(^AUPNPROB(X,0),U,8)),1:"Yes") Q
 .I $P($G(^AUPNPROB(X,800)),U,1)]"",$$SNOMED^BDMUTL(2019,"PXRM BGP DM BTK AMP",$P(^AUPNPROB(X,800),U,1)) S G=$S(F=1:"1  Yes - "_"Problem List "_$$VAL^XBDIQ1(9000011,X,80001)_" "_$$DATE^BDMS9B1($P(^AUPNPROB(X,0),U,8)),1:"Yes") Q
 .I $P($G(^AUPNPROB(X,800)),U,1)]"",$$SNOMED^BDMUTL(2019,"PXRM BGP DM ATK AMP",$P(^AUPNPROB(X,800),U,1)) S G=$S(F=1:"1  Yes - "_"Problem List "_$$VAL^XBDIQ1(9000011,X,80001)_" "_$$DATE^BDMS9B1($P(^AUPNPROB(X,0),U,8)),1:"Yes") Q
 .Q
 I G Q G
 S X=""
 I $O(^ATXAX("B","BGP DM BTK AMP CPTS",0)) S X=$$LASTCPTT^BDMAPIU(P,$$DOB^AUPNPAT(P),EDATE,"BGP DM BTK AMP CPTS","E")
 I X Q $S(F=1:"1  Yes - "_$$DATE^BDMS9B1($P(X,U,1))_" "_$P(X,U,2),1:"Yes")
 I $O(^ATXAX("B","BGP DM ATK AMP CPTS",0)) S X=$$LASTCPTT^BDMAPIU(P,$$DOB^AUPNPAT(P),EDATE,"BGP DM ATK AMP CPTS","E")
 I X Q $S(F=1:"1  Yes - "_$$DATE^BDMS9B1($P(X,U,1))_" "_$P(X,U,2),1:"Yes")
 Q $S(F=1:"2  No",1:"No")

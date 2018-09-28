BGP8PC63 ; IHS/CMI/LAB - measure I2 ; 02 Feb 2018  11:25 AM
 ;;18.1;IHS CLINICAL REPORTING;**1**;MAY 25, 2018;Build 65
 ;
HIB(P) ;
 NEW A42,A730,X,Y,Z,TCVX,TCPT,C,BGPIMMS,D,V,BGPZ
 S TCVX=$O(^ATXAX("B","BGP IPC HIB CVX CODES",0))
 S TCPT=$O(^ATXAX("B","BGP IPC HIB CPT CODES",0))
 S A42=$$FMADD^XLFDT($$DOB^AUPNPAT(P),42)
 S A730=$$FMADD^XLFDT($$DOB^AUPNPAT(P),730)
 S X=0 F  S X=$O(^AUPNVIMM("AC",P,X)) Q:X'=+X  D
 .Q:'$D(^AUPNVIMM(X,0))  ;happens
 .S Y=$P(^AUPNVIMM(X,0),U)
 .Q:'Y  ;happens too
 .S I=$P($G(^AUTTIMM(Y,0)),U,3)  ;get HL7/CVX code
 .Q:'$D(^ATXAX(TCVX,21,"B",I))
 .S D=$P($P($G(^AUPNVIMM(X,12)),U,1),".")
 .I D="" S V=$P(^AUPNVIMM(X,0),U,3) I V S D=$P($P($G(^AUPNVSIT(V,0)),U),".")
 .Q:D<A42
 .Q:D>A730
 .S BGPIMMS(D)=Y
 .Q
 ;go through and set into array if 1 days apart
 S X="",Y="",C=0 F  S X=$O(BGPIMMS(X)) Q:X'=+X  S C=C+1 D
 .I C=1 S Y=X Q
 .I $$FMDIFF^XLFDT(X,Y)<1 K BGPIMMS(X) Q
 .S Y=X
 ;see if there are 4 of them, if there are quit
 S BGPIMMS=0,X=0 F  S X=$O(BGPIMMS(X)) Q:X'=+X  S BGPIMMS=BGPIMMS+1
 I BGPIMMS>2 Q 1_U_"3 HIB"
 ;now get cpts
 S G="",X=0
 F  S X=$O(^AUPNVCPT("AC",P,X)) Q:X=""  D
 .Q:'$D(^AUPNVCPT(X,0))
 .S Y=$P(^AUPNVCPT(X,0),U)
 .Q:'$$ICD^BGP8UTL2(Y,TCPT,1)
 .S V=$P(^AUPNVCPT(X,0),U,3) Q:'V
 .S D=$$VD^APCLV(V)
 .Q:D<A42
 .Q:D>A730
 .S BGPIMMS(D)=""
 ;get tran codes
 S X=0 F  S X=$O(^AUPNVTC("AC",P,X)) Q:X'=+X  D
 .Q:'$D(^AUPNVTC(X,0))
 .S Y=$P(^AUPNVTC(X,0),U,7) Q:'Y
 .Q:'$$ICD^BGP8UTL2(Y,TCPT,1)
 .S V=$P(^AUPNVTC(X,0),U,3) Q:'V
 .S D=$$VD^APCLV(V)
 .Q:D<A42
 .Q:D>A730
 .S BGPIMMS(D)=""
 ;
 ;go through and set into array if 1 days apart
 S X="",Y="",C=0 F  S X=$O(BGPIMMS(X)) Q:X'=+X  S C=C+1 D
 .I C=1 S Y=X Q
 .I $$FMDIFF^XLFDT(X,Y)<1 K BGPIMMS(X) Q
 .S Y=X
 ;see if there are 3 of them, if there are quit
 S BGPIMMS=0,X=0 F  S X=$O(BGPIMMS(X)) Q:X'=+X  S BGPIMMS=BGPIMMS+1
 I BGPIMMS>2 Q 1_U_"3 HIB"
 ;NOW CHECK FOR CONTRAINDICATION
 ;IMM PKG ANAPHYLACTIS
 S BGPZ=0
 F  S BGPZ=$O(^ATXAX(TCVX,21,"B",BGPZ)) Q:BGPZ=""!(X]"")  D
 .S X=$$ANHIB(P,BGPZ,A730)
 I X]"" Q 1_U_"HIB CONTRA ANAPHYLACTIC/NEOMYCIN"
 S X=$$ANSNHIB(P,A730) I X Q 1_U_"HIB CONTRA ANAPHYLACTIC REACTION"
 Q ""
ANSNHIB(P,EDATE) ;
 ;V POV OR PROBLEM LIST
 NEW X,Y,Z,G,T,S,D,I
 S (X,Y,I)=0
 F  S X=$O(^AUPNPROB("AC",P,X)) Q:X'=+X!(I)  D
 .Q:'$D(^AUPNPROB(X,0))
 .Q:$P(^AUPNPROB(X,0),U,12)="D"
 .I $P(^AUPNPROB(X,0),U,13),$P(^AUPNPROB(X,0),U,13)>EDATE Q  ;if there is a doo and it is after report period skip
 .I $P(^AUPNPROB(X,0),U,13)="",$P(^AUPNPROB(X,0),U,8)>EDATE Q  ;entered after report period, skip
 .S S=$$VAL^XBDIQ1(9000011,X,80001)
 .I S=433621000124101 S I=1 Q
 .Q
 I I Q I
 ;NOW V POV SNOMED
 ;NOW SNOMED USING ASNC
 S G="",I=""
 S S="" F  S S=$O(^AUPNVPOV("ASNC",P,S)) Q:S=""!(G)  D
 .S I=0
 .I S=433621000124101 S I=1
 .Q:'I
 .S D=0 F  S D=$O(^AUPNVPOV("ASNC",P,S,D)) Q:D=""!(G)  D
 ..S Y=9999999-D
 ..Q:Y>EDATE
 ..S G=1
 I G Q G
 ;REFUSAL FILE
 S I="" F  S I=$O(^AUPNPREF("AA",P,9002318.4,I)) Q:I=""!(G)  D
 .I I'=433621000124101 Q   ;IF IT'S SNOMED, MUST BE THAT ONE
 .S ID=0 F  S ID=$O(^AUPNPREF("AA",P,9002318.4,I,ID)) Q:ID=""!(G)  D
 ..S D=9999999-ID
 ..Q:D>EDATE
 ..S G=1
 Q G
ANHIB(P,C,ED) ;EP - ANALPHYLAXIS
 NEW X,G,Y,R,D
 S X=0,G="",Y=$O(^AUTTIMM("C",C,0)) I Y F  S X=$O(^BIPC("AC",P,Y,X)) Q:X'=+X!(G)  D
 .S R=$P(^BIPC(X,0),U,3)
 .Q:R=""
 .Q:'$D(^BICONT(R,0))
 .S D=$P(^BIPC(X,0),U,4)
 .Q:D=""
 .;Q:$P(^BIPC(X,0),U,4)<BD
 .Q:$P(^BIPC(X,0),U,4)>ED
 .I $P(^BICONT(R,0),U,1)="Anaphylaxis" S G=D_U_"Contra Anaphylaxis"
 Q G

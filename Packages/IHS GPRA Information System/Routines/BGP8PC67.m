BGP8PC67 ; IHS/CMI/LAB - measure I2 ; 02 Feb 2018  11:25 AM
 ;;18.1;IHS CLINICAL REPORTING;**1**;MAY 25, 2018;Build 65
 ;
HEPA(P) ;
 NEW A730,X,Y,Z,TCVX,TCPT,C,BGPIMMS,D,V,BGPZ
 S TCVX=$O(^ATXAX("B","BGP IPC HEPA CVX CODES",0))
 S TCPT=$O(^ATXAX("B","BGP IPC HEPA CPT CODES",0))
 S A730=$$FMADD^XLFDT($$DOB^AUPNPAT(P),730)
 S X=0 F  S X=$O(^AUPNVIMM("AC",P,X)) Q:X'=+X  D
 .Q:'$D(^AUPNVIMM(X,0))  ;happens
 .S Y=$P(^AUPNVIMM(X,0),U)
 .Q:'Y  ;happens too
 .S I=$P($G(^AUTTIMM(Y,0)),U,3)  ;get HL7/CVX code
 .Q:'$D(^ATXAX(TCVX,21,"B",I))
 .S D=$P($P($G(^AUPNVIMM(X,12)),U,1),".")
 .I D="" S V=$P(^AUPNVIMM(X,0),U,3) I V S D=$P($P($G(^AUPNVSIT(V,0)),U),".")
 .Q:D>A730
 .S BGPIMMS(D)=Y
 .Q
 ;go through and set into array if 1 days apart
 S X="",Y="",C=0 F  S X=$O(BGPIMMS(X)) Q:X'=+X  S C=C+1 D
 .I C=1 S Y=X Q
 .I $$FMDIFF^XLFDT(X,Y)<1 K BGPIMMS(X) Q
 .S Y=X
 ;see if there are 1 of them, if there are quit
 S BGPIMMS=0,X=0 F  S X=$O(BGPIMMS(X)) Q:X'=+X  S BGPIMMS=BGPIMMS+1
 I BGPIMMS>0 Q 1_U_"1 HEPA"
 ;now get cpts
 S G="",X=0
 F  S X=$O(^AUPNVCPT("AC",P,X)) Q:X=""  D
 .Q:'$D(^AUPNVCPT(X,0))
 .S Y=$P(^AUPNVCPT(X,0),U)
 .Q:'$$ICD^BGP8UTL2(Y,TCPT,1)
 .S V=$P(^AUPNVCPT(X,0),U,3) Q:'V
 .S D=$$VD^APCLV(V)
 .Q:D>A730
 .S BGPIMMS(D)=""
 ;get tran codes
 S X=0 F  S X=$O(^AUPNVTC("AC",P,X)) Q:X'=+X  D
 .Q:'$D(^AUPNVTC(X,0))
 .S Y=$P(^AUPNVTC(X,0),U,7) Q:'Y
 .Q:'$$ICD^BGP8UTL2(Y,TCPT,1)
 .S V=$P(^AUPNVTC(X,0),U,3) Q:'V
 .S D=$$VD^APCLV(V)
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
 I BGPIMMS>0 Q 1_U_"1 HEPA"
 ;NOW CHECK FOR CONTRAINDICATION
 ;IMM PKG ANAPHYLACTIS
 S BGPZ=0
 F  S BGPZ=$O(^ATXAX(TCVX,21,"B",BGPZ)) Q:BGPZ=""!(X]"")  D
 .S X=$$ANHEPA(P,BGPZ,A730)
 I X]"" Q 1_U_"HEPA CONTRA ANAPHYLACTIC/NEOMYCIN"
 S X=$$ANSNHEPA(P,A730) I X Q 1_U_"HEPA CONTRA ANAPHYLACTIC REACTION"
 S X=$$EVIDHEPA(P,A730) I X Q 1_U_"EVIDENCE OF HEPA"
 Q ""
ANSNHEPA(P,EDATE) ;
 ;V POV OR PROBLEM LIST
 NEW X,Y,Z,G,T,S,D,I
 S (X,Y,I)=0
 F  S X=$O(^AUPNPROB("AC",P,X)) Q:X'=+X!(I)  D
 .Q:'$D(^AUPNPROB(X,0))
 .Q:$P(^AUPNPROB(X,0),U,12)="D"
 .I $P(^AUPNPROB(X,0),U,13),$P(^AUPNPROB(X,0),U,13)>EDATE Q  ;if there is a doo and it is after report period skip
 .I $P(^AUPNPROB(X,0),U,13)="",$P(^AUPNPROB(X,0),U,8)>EDATE Q  ;entered after report period, skip
 .S S=$$VAL^XBDIQ1(9000011,X,80001)
 .I S=293126009 S I=1 Q
 .Q
 I I Q I
 ;NOW V POV SNOMED
 ;NOW SNOMED USING ASNC
 S G="",I=""
 S S="" F  S S=$O(^AUPNVPOV("ASNC",P,S)) Q:S=""!(G)  D
 .S I=0
 .I S=293126009 S I=1
 .Q:'I
 .S D=0 F  S D=$O(^AUPNVPOV("ASNC",P,S,D)) Q:D=""!(G)  D
 ..S Y=9999999-D
 ..Q:Y>EDATE
 ..S G=1
 I G Q 1
 ;REFUSAL FILE
 S I="",S="" F  S I=$O(^AUPNPREF("AA",P,9002318.4,I)) Q:I=""!(G)  D
 .I I=293126009 S S=1
 .Q:'S
 .S ID=0 F  S ID=$O(^AUPNPREF("AA",P,9002318.4,I,ID)) Q:ID=""!(G)  D
 ..S D=9999999-ID
 ..Q:D>EDATE
 ..S G=1
 Q G
ANHEPA(P,C,ED) ;EP - ANALPHYLAXIS
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
EVIDHEPA(P,EDATE) ;
 ;is there HEP A evidence
 ;V POV OR PROBLEM LIST
 NEW X,Y,Z,G,T,S,D,E,R,L,J,ME
 I $$PLTAXND^BGP8DU(P,"BGP IPC HEP A DXS",EDATE,0) Q 1
 I $$IPLSNOND^BGP8DU(P,"PXRM BGP IPC HEP A EVID",EDATE,0) Q 1
 I $$LASTDX^BGP8UTL1(P,"BGP IPC HEP A DXS",$$DOB^AUPNPAT(P),EDATE) Q 1
 ;NOW V POV SNOMED
 ;NOW SNOMED USING ASNC
 S T="PXRM BGP IPC HEP A EVID"
 S G=""
 S S=0 F  S S=$O(^XTMP("BGPSNOMEDSUBSET",$J,T,S)) Q:S=""!(G)  D
 .Q:'$D(^AUPNVPOV("ASNC",P,S))
 .S D=0 F  S D=$O(^AUPNVPOV("ASNC",P,S,D)) Q:D=""!(G)  D
 ..S Y=9999999-D
 ..Q:Y>EDATE
 ..S G=1
 I G Q 1
 ;lab tests?
 Q ""  ;NOT SURE YET
MLT ;
 S E=9999999-EDATE S D=E-1 F  S D=$O(^AUPNVLAB("AE",P,D)) Q:D'=+D!(ME)  D
 .S L=0 F  S L=$O(^AUPNVLAB("AE",P,D,L)) Q:L'=+L!(ME)  D
 ..S X=0 F  S X=$O(^AUPNVLAB("AE",P,D,L,X)) Q:X'=+X!(ME)  D
 ...Q:'$D(^AUPNVLAB(X,0))
 ...S J=$P($G(^AUPNVLAB(X,11)),U,13) Q:J=""
 ...Q:'$$LOINCHEP(J)
 ...S R=$P(^AUPNVLAB(X,0),U,4)
 ...S R=+R
 ...I R'<1.10 S ME=1
 ...Q
 I 'ME Q ""  ;since no HEP A and have to have all 3 might as well quit now
 Q ""
LOINCHEP(A) ;is this a HEP A loinc code
 NEW %
 S %=$P($G(^LAB(95.3,A,0)),U)_"-"_$P($G(^LAB(95.3,A,0)),U,15)
 I %="21500-4" Q 1
 I %="21501-2" Q 1
 I %="22501-1" Q 1
 I %="22502-9" Q 1
 Q ""

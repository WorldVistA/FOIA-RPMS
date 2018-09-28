BGP8PC16 ; IHS/CMI/LAB - measure I2 ; 02 Feb 2018  11:25 AM
 ;;18.1;IHS CLINICAL REPORTING;;MAY 25, 2018;Build 66
 ;
CBP ;EP
 S (BGPN1,BGPD1)=0
 K Y
 S BGPDV=""
 I BGPAGEE<18 S BGPSTOP=1 Q  ;18 or greater during time period
 I BGPAGEB>85 S BGPSTOP=1 Q  ;85 or less during time period
 ;
 S BGPDV=$$ENC16(DFN,BGPBDATE,BGPEDATE) I BGPDV="" S BGPSTOP=1 G CBPX  ;no office visit
 ;hypertension?
 I '$$HTN(DFN,$$DOB^AUPNPAT(DFN),$$FMADD^XLFDT(BGPBDATE,180)) S BGPSTOP=1 G CBPX  ;no hypertension
 ;now what about exclusions?
 I $$HOSPIND^BGP8PC2(DFN,BGPBDATE,BGPEDATE) S BGPSTOP=1 G CBPX  ;no hospice pts
 ;?
 I $$PREG(DFN,BGPBDATE,BGPEDATE) S BGPSTOP=1 G CBPX
 I $$ESRD(DFN,BGPBDATE,BGPEDATE) S BGPSTOP=1 G CBPX
 I $$CKD(DFN,BGPBDATE,BGPEDATE) S BGPSTOP=1 G CBPX
 I $$CPT^BGP8DU(DFN,$$DOB^AUPNPAT(DFN),BGPEDATE,$O(^ATXAX("B","BGP IPC VASCULAR ACC DIAL CPTS",0)),5) S BGPSTOP=1 G CBPX
 I $$CPT^BGP8DU(DFN,$$DOB^AUPNPAT(DFN),BGPEDATE,$O(^ATXAX("B","BGP IPC ESRD OPT SRV CPTS",0)),5) S BGPSTOP=1 G CBPX
 I $$CPT^BGP8DU(DFN,$$DOB^AUPNPAT(DFN),BGPEDATE,$O(^ATXAX("B","BGP IPC KIDNEY TRANSPLANT CPTS",0)),5) S BGPSTOP=1 G CBPX
 I $$CPT^BGP8DU(DFN,$$DOB^AUPNPAT(DFN),BGPEDATE,$O(^ATXAX("B","BGP IPC DIALYSIS SRV CPTS",0)),5) S BGPSTOP=1 G CBPX
 ;
 S BGPD1=1
 ;
 K BGPG,BGPF
 S Y="BGPG("
 S X=DFN_"^FIRST DX [BGP IPC ESSENTIAL HTN DXS" S E=$$START1^APCLDF(X,Y)
 ;I '$D(BGPG(1)) S BGPSTOP=1 G CBPX  ;NO DX EVER????
 S BGPF=$P($G(BGPG(1)),U,1)
 I BGPF="" S BGPF=$P($$PLTAXND(DFN,"BGP IPC ESSENTIAL HTN DXS",$$FMADD^XLFDT(BGPBDATE,180),1),U,3)
 I BGPF="" S BGPF=$P($$IPLSNOND(DFN,"PXRM BGP IPC HTN",$$FMADD^XLFDT(BGPBDATE,180),1),U,3)
 S BGPVAL=$$LASTBP(DFN,BGPBDATE,BGPEDATE)  ;RETURN DATE^SYSTOLIC^DIASTOLIC
 I BGPVAL="" G CBPV
 I $P(BGPVAL,U,1)<BGPF G CBPV
 I $P(BGPVAL,U,2)<140,$P(BGPVAL,U,3)<90 S BGPN1=1
CBPV ;
 S BGPVALUE=""
 S BGPVALUE="ENC "_$P(BGPDV,U,2)_"|||"  ;hit denominator
 S BGPVALUE=BGPVALUE_$S(BGPN1:"*** ",1:"")
 I BGPVAL]"" S BGPVALUE=BGPVALUE_$$DATE^BGP8UTL($P(BGPVAL,U,1))_" "_$P(BGPVAL,U,2)_"/"_$P(BGPVAL,U,3)
CBPX ;
 K V,BGPDV,BGPVAL,BGPG,F,Y,X,E
 Q
ENC16(P,BDATE,EDATE) ;EP  - have encounter per CMS122v6
 ;HAS one of the following
 NEW X,Y,Z,G,BGPV,D
 ;Let's check all Visits, looping through once
 S G=""  ;return variable
 ;get all visits in date range in BGPV
 D ALLV^APCLAPIU(P,BDATE,EDATE,"BGPV")
 ;now loop through and check Face to Face and .17 in visit and check v cpts attached to the visit
 S X=0 F  S X=$O(BGPV(X)) Q:X'=+X!(G)  S V=$P(BGPV(X),U,5)  D
 .Q:'$P(^AUPNVSIT(V,0),U,9)  ;no dependent entries
 .Q:$P(^AUPNVSIT(V,0),U,11)  ;deleted
 .S D=$$VD^APCLV(V)
 .S Y=$$FTOF^BGP8PC2(V) I Y]"" S G=1_U_$$DATE^BGP8UTL(D)_" FTOF: "_Y Q
 .;is .17 a cpt we want?
 .S Y=$$VALI^XBDIQ1(9000010,V,.17)
 .I Y,$$OFFCPT16(Y) S G=1_U_$$DATE^BGP8UTL(D)_" CPT: "_$P($$CPT^ICPTCOD(Y),U,2) Q
 .;now check all V CPTs
 .S Z=0 F  S Z=$O(^AUPNVCPT("AD",V,Z)) Q:Z'=+Z!(G)  D
 ..S Y=$P($G(^AUPNVCPT(Z,0)),U,1)
 ..I Y,$$OFFCPT16(Y) S G=1_U_$$DATE^BGP8UTL(D)_" CPT: "_$P($$CPT^ICPTCOD(Y),U,2) Q
 Q G
OFFCPT16(C) ;EP
 I $$ICD^ATXAPI(C,$O(^ATXAX("B","BGP IPC OFFICE VISIT CPTS",0)),1) Q 1
 I $$ICD^ATXAPI(C,$O(^ATXAX("B","BGP IPC PREVCARE EOV >=18 CPTS",0)),1) Q 1
 I $$ICD^ATXAPI(C,$O(^ATXAX("B","BGP IPC PREVCARE IOV >=18 CPTS",0)),1) Q 1
 I $$ICD^ATXAPI(C,$O(^ATXAX("B","BGP IPC HOMEHEALTH VISIT CPTS",0)),1) Q 1
 I $$ICD^ATXAPI(C,$O(^ATXAX("B","BGP IPC ANNUAL WELLNESS CPTS",0)),1) Q 1
 Q ""
HTN(P,BDATE,EDATE) ;
 I $$PLTAXND^BGP8DU(P,"BGP IPC ESSENTIAL HTN DXS",EDATE,1) Q 1
 I $$IPLSNOND^BGP8DU(P,"PXRM BGP IPC HTN",EDATE,1) Q 1
 I $$LASTDX^BGP8UTL1(P,"BGP IPC ESSENTIAL HTN DXS",BDATE,EDATE) Q 1
 Q ""
PREG(P,BDATE,EDATE) ;
 NEW X,Y,Z,G,A
 I $P(^DPT(P,0),U,2)'="F" Q ""
 ;check dx
 S X=$$LASTDX^BGP8UTL1(P,"BGP IPC PREGNANCY DXS",BDATE,EDATE) I X Q 1
 S T=$O(^ATXAX("B","BGP IPC PREGNANCY DXS",0))
 S (X,G,A)=0 F  S X=$O(^AUPNPROB("AC",P,X)) Q:X'=+X!(G)  D
 .Q:$P(^AUPNPROB(X,0),U,12)="D"
 .S A=0
 .S D=$P(^AUPNPROB(X,0),U,13)
 .I D'<BDATE,D'>EDATE S A=1
 .I A G PREGN
 .;I D Q  ;had a doo and it didn't match
 .Q:$P(^AUPNPROB(X,0),U,8)>EDATE
 .Q:$P(^AUPNPROB(X,0),U,8)<BDATE
PREGN .I $$ICD^ATXAPI($P(^AUPNPROB(X,0),U,1),T,9) S G=1 Q
 .S S=$$VAL^XBDIQ1(9000011,X,80001)
 .I S]"",$D(^XTMP("BGPSNOMEDSUBSET",$J,"PXRM BGP IPC PREGNANCY",S)) S G=1 Q
 Q G
ESRD(P,BDATE,EDATE) ;
 I $$PLTAXND^BGP8DU(P,"BGP IPC ESRD DXS",EDATE,1) Q 1
 I $$LASTDX^BGP8UTL1(P,"BGP IPC ESRD DXS",BDATE,EDATE) Q 1
 NEW X,S,I
 S I=""
 S X=0 F  S X=$O(^AUPNPROB("AC",P,X)) Q:X'=+X!(I)  D
 .Q:'$D(^AUPNPROB(X,0))
 .I $P(^AUPNPROB(X,0),U,12)="D" Q
 .I $P(^AUPNPROB(X,0),U,12)="I" Q
 .I $P(^AUPNPROB(X,0),U,13),$P(^AUPNPROB(X,0),U,13)>EDATE Q  ;if there is a doo and it is after report period skip
 .I $P(^AUPNPROB(X,0),U,13)="",$P(^AUPNPROB(X,0),U,8)>EDATE Q  ;entered after report period, skip
 .S S=$$VAL^XBDIQ1(9000011,X,80001)
 .I S=236434000 S I=1 Q
 .I S=236435004 S I=1 Q
 .I S=236436003 S I=1 Q
 .I S=46177005 S I=1 Q
 .Q
 I I Q 1
 ;NOW V POV FOR SNOMED CODE
 ;NOW SNOMED USING ASNC
 S G="",I=""
 S S="" F  S S=$O(^AUPNVPOV("ASNC",P,S)) Q:S=""!(G)  D
 .S I=0
 .I S=236434000 S I=1
 .I S=236435004 S I=1
 .I S=236436003 S I=1
 .I S=46177005 S I=1
 .Q:'I
 .S D=0 F  S D=$O(^AUPNVPOV("ASNC",P,S,D)) Q:D=""!(G)  D
 ..S Y=9999999-D
 ..Q:Y>EDATE
 ..S G=1
 I G Q 1
 Q ""
CKD(P,BDATE,EDATE) ;
 I $$PLTAXND^BGP8DU(P,"BGP IPC CKD STG 5 DXS",EDATE,1) Q 1
 I $$LASTDX^BGP8UTL1(P,"BGP IPC CKD STG 5 DXS",BDATE,EDATE) Q 1
 NEW X,S,I
 S I=""
 S X=0 F  S X=$O(^AUPNPROB("AC",P,X)) Q:X'=+X!(I)  D
 .Q:'$D(^AUPNPROB(X,0))
 .I $P(^AUPNPROB(X,0),U,12)="D" Q
 .I $P(^AUPNPROB(X,0),U,12)="I" Q
 .I $P(^AUPNPROB(X,0),U,13),$P(^AUPNPROB(X,0),U,13)>EDATE Q  ;if there is a doo and it is after report period skip
 .I $P(^AUPNPROB(X,0),U,13)="",$P(^AUPNPROB(X,0),U,8)>EDATE Q  ;entered after report period, skip
 .S S=$$VAL^XBDIQ1(9000011,X,80001)
 .I S=433146000 S I=1 Q
 .Q
 I I Q 1
 ;NOW V POV FOR SNOMED CODE
 ;NOW SNOMED USING ASNC
 S G="",I=""
 S S="" F  S S=$O(^AUPNVPOV("ASNC",P,S)) Q:S=""!(G)  D
 .S I=0
 .I S=433146000 S I=1
 .Q:'I
 .S D=0 F  S D=$O(^AUPNVPOV("ASNC",P,S,D)) Q:D=""!(G)  D
 ..S Y=9999999-D
 ..Q:Y>EDATE
 ..S G=1
 I G Q 1
 Q ""
LASTBP(P,BDATE,EDATE) ;
 NEW A,B,C,G,X,Y,Z,SYS,DIA,D,BGPV,V,L,LV,R
 ;get all visits in time window
 ;eliminate all that are not outpatient adult visits
 D ALLV^APCLAPIU(P,BDATE,EDATE,"BGPV")
 I '$O(BGPV(0)) Q ""
 ;ELIMIATE NON ADULT OPT AND GET LAST ONE BY DATE/TIME, IF 2 AT SAME DATE/TIME TAKE HIGHEST IEN
 K Z
 S X=0,V="",G="" F  S X=$O(BGPV(X)) Q:X'=+X  D
 .S V=$P(BGPV(X),U,5)  ;VISIT IEN
 .Q:'$P(^AUPNVSIT(V,0),U,9)  ;no dependent entries
 .Q:$P(^AUPNVSIT(V,0),U,11)  ;deleted
 .S D=$$VD^APCLV(V)
 .S Y=$$FTOF^BGP8PC2(V) I Y]"" S Z(D,V)="" Q
 .;is .17 a cpt we want?
 .S C=$$VALI^XBDIQ1(9000010,V,.17) I C,$$ICD^ATXAPI(C,$O(^ATXAX("B","BGP IPC ADULT OPT CPTS",0)),1) S Z(D,V)="" Q
 .;now check all V CPTs
 .S B=0 F  S B=$O(^AUPNVCPT("AD",V,B)) Q:B'=+B  D
 ..S C=$P($G(^AUPNVCPT(B,0)),U,1)
 ..I C,$$ICD^ATXAPI(C,$O(^ATXAX("B","BGP IPC ADULT OPT CPTS",0)),1) S Z(D,V)="" Q
 ;NOW CHECK ARRAY Z AND GET VERY LAST ONE
 I '$O(Z(0)) Q ""
 S D=0,L="" F  S D=$O(Z(D)) Q:D=""  S L=D
 S (SYS,DIA)=""
 S V=0 F  S V=$O(Z(L,V)) Q:V'=+V  D
 .;GET ALL BPS ON EACH ADULT VISIT ON THIS DAY
 .S X=0 F  S X=$O(^AUPNVMSR("AD",V,X)) Q:X'=+X  D
 ..Q:'$D(^AUPNVMSR(X,0))
 ..Q:$$VAL^XBDIQ1(9000010.01,X,.01)'="BP"
 ..Q:$P($G(^AUPNVMSR(X,2)),U,1)  ;entered in error
 ..S R=$$VAL^XBDIQ1(9000010.01,X,.04)
 ..S S=$P(R,"/"),D=$P(R,"/",2)
 ..I SYS="" S SYS=S
 ..I DIA="" S DIA=D
 ..I S<SYS S SYS=S
 ..I D<DIA S DIA=D
 I SYS]"",DIA]"" Q L_U_SYS_U_DIA
 Q ""
TESTBP ;
 S DFN=0 F  S DFN=$O(^AUPNPAT(DFN)) Q:DFN'=+DFN  S A=$$LASTBP(DFN,3120101,DT) W !,DFN," ",A
 Q
TESTESRD ;
 S DFN=0 F  S DFN=$O(^AUPNPAT(DFN)) Q:DFN'=+DFN  S A=$$ESRD(DFN,$$DOB^AUPNPAT(DFN),DT) I A W !,DFN," ",A
 Q
TESTPREG ;
 S DFN=0 F  S DFN=$O(^AUPNPAT(DFN)) Q:DFN'=+DFN  S A=$$PREG(DFN,3120101,DT) I A W !,DFN," ",A
 Q
TESTCKD ;
 S DFN=0 F  S DFN=$O(^AUPNPAT(DFN)) Q:DFN'=+DFN  S A=$$CKD(DFN,$$DOB^AUPNPAT(DFN),DT) I A W !,DFN," ",A
 Q
PLTAXND(P,A,E,Z)  ;EP - is dx on problem list as NOT DELETED
  ;P is dfn
  ;a is taxonomy name
  I $G(P)="" Q ""
  I $G(A)="" Q ""
  S E=$G(E)
  S Z=$G(Z)  ;skip inactive if =1
  NEW T S T=$O(^ATXAX("B",A,0))
  I 'T Q ""  ;bad taxonomy??
  NEW X,Y,I,D
  S (X,Y,I)=0
  F  S X=$O(^AUPNPROB("AC",P,X)) Q:X'=+X!(I)  D
  .Q:'$D(^AUPNPROB(X,0))
  .Q:$P(^AUPNPROB(X,0),U,12)="D"
  .I Z Q:$P(^AUPNPROB(X,0),U,12)="I"
  .S Y=$P(^AUPNPROB(X,0),U)
  .I E,$P(^AUPNPROB(X,0),U,13)>E Q  ;if there is a doo and it is after report period skip
  .I $P(^AUPNPROB(X,0),U,13)="",E,$P(^AUPNPROB(X,0),U,8)>E Q  ;entered after report period, skip
  .Q:'$$ICD^BGP8UTL2(Y,T,9)
  .S D=$P(^AUPNPROB(X,0),U,13)
  .I 'D S D=$P(^AUPNPROB(X,0),U,8)
  .S I=1_U_"Problem List: "_$$VAL^XBDIQ1(9000011,X,.01)_U_D
  .Q
  Q I
IPLSNOND(P,T,E,Z) ;EP - any problem list entry with a SNOMED in T
 ;LOOP PROBLEM LIST
 NEW G,X,Y
 S (X,G)=""
 S E=$G(E)
 S Z=$G(Z)
 F  S X=$O(^AUPNPROB("APCT",P,X)) Q:X=""!(G)  D
 .S Y=0 F  S Y=$O(^AUPNPROB("APCT",P,X,Y)) Q:Y'=+Y!(G)  D
 ..Q:'$D(^AUPNPROB(Y,0))
 ..Q:$P(^AUPNPROB(Y,0),U,12)="D"  ;deleted
 ..I Z Q:$P(^AUPNPROB(Y,0),U,12)="I"
 ..Q:'$D(^XTMP("BGPSNOMEDSUBSET",$J,T,X))
 ..I E,$P(^AUPNPROB(Y,0),U,13)>E Q  ;if there is a doo and it is after report period skip
 ..I $P(^AUPNPROB(Y,0),U,13)="",E,$P(^AUPNPROB(Y,0),U,8)>E Q  ;entered after report period, skip
 ..S D=$P(^AUPNPROB(Y,0),U,13)
 ..I 'D S D=$P(^AUPNPROB(Y,0),U,8)
 ..S G=1_U_"Problem List: "_X_U_D  ;$$CONCPT^AUPNVUTL(X)
 Q G

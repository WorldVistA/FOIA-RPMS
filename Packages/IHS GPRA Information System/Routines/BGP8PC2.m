BGP8PC2 ; IHS/CMI/LAB - measure I2 ; 02 Feb 2018  11:25 AM
 ;;18.1;IHS CLINICAL REPORTING;;MAY 25, 2018;Build 66
 ;
DMG ;EP
 S (BGPN1,BGPD1)=0
 S BGPDV=""
 I BGPAGEE<18 S BGPSTOP=1 Q  ;18 or greater during time period
 I BGPAGEB>74 S BGPSTOP=1 Q  ;75 or less during time period
 S V=$$DMRP(DFN,BGPBDATE,BGPEDATE) I 'V S BGPSTOP=1 Q  ;no dm pov or problem list entry
 S BGPDV=$$ENC1(DFN,BGPBDATE,BGPEDATE) I BGPDV="" S BGPSTOP=1 Q  ;no office visit
 ;
 ;now what about exclusions?
 I $$HOSPIND(DFN,BGPBDATE,BGPEDATE) S BGPSTOP=1 Q  ;no hospice pts
 S BGPD1=1
 S X=$$HGBA1C(DFN,BGPBDATE,BGPEDATE)
 I $E(X)=1 S BGPN1=1
 S BGPVALUE=""
 S BGPVALUE="ENC "_$P(BGPDV,U,2)_"|||"  ;hit denominator
 S BGPVALUE=BGPVALUE_$S(BGPN1:"*** ",1:"")_"A1c: "_$P(X,U,2)_" "_$P(X,U,3)
 I BGPN1 ;S BGPVALUE=BGPVALUE_" **"
 K V,BGPDV
 Q
ENC1(P,BDATE,EDATE) ;EP  - have encounter per CMS122v6
 ;HAS one of the following
 ;1.  cpt in BGP IPC OFFICE VISIT CPTS
 ;2.  snomed in PXRM BGP IPC FACE2FACE
 ;3.  CPT in BGP IPC PREVCARE EOV >=18 CPTS
 ;4.  CPT in BGP IPC PREVCARE IOV >=18 CPTS
 ;5.  CPT in BGP IPC HOMEHEALTH VISIT CPTS
 ;6.  CPT in BGP IPC ANNUAL WELLNESS CPTS
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
 .S Y=$$FTOF(V) I Y]"" S G=1_U_$$DATE^BGP8UTL(D)_" FTOF: "_Y Q
 .;is .17 a cpt we want?
 .S Y=$$VALI^XBDIQ1(9000010,V,.17)
 .I Y,$$OFFCPT(Y) S G=1_U_$$DATE^BGP8UTL(D)_" CPT: "_$P($$CPT^ICPTCOD(Y),U,2) Q
 .;now check all V CPTs
 .S Z=0 F  S Z=$O(^AUPNVCPT("AD",V,Z)) Q:Z'=+Z!(G)  D
 ..S Y=$P($G(^AUPNVCPT(Z,0)),U,1)
 ..I Y,$$OFFCPT(Y) S G=1_U_$$DATE^BGP8UTL(D)_" CPT: "_$P($$CPT^ICPTCOD(Y),U,2) Q
 Q G
FTOF(V) ;EP
 NEW A,B,C
 S A=0,B=""
 F  S A=$O(^AUPNVSIT(V,28,"B",A)) Q:A=""!(B]"")  D
 .I $D(^XTMP("BGPSNOMEDSUBSET",$J,"PXRM BGP IPC FACE2FACE",A)) S B=A
 Q B
OFFCPT(C) ;EP
 I $$ICD^ATXAPI(C,$O(^ATXAX("B","BGP IPC OFFICE VISIT CPTS",0)),1) Q 1
 I $$ICD^ATXAPI(C,$O(^ATXAX("B","BGP IPC PREVCARE EOV >=18 CPTS",0)),1) Q 1
 I $$ICD^ATXAPI(C,$O(^ATXAX("B","BGP IPC PREVCARE IOV >=18 CPTS",0)),1) Q 1
 I $$ICD^ATXAPI(C,$O(^ATXAX("B","BGP IPC HOMEHEALTH VISIT CPTS",0)),1) Q 1
 I $$ICD^ATXAPI(C,$O(^ATXAX("B","BGP IPC ANNUAL WELLNESS CPTS",0)),1) Q 1
 Q ""
DMRP(P,BDATE,EDATE) ;EP - DM DURING REPORT PERIOD
 NEW X,Y,Z
 I $$PLTAXND^BGP8DU(P,"BGP IPC DIABETES DXS",EDATE,1) Q 1
 I $$IPLSNOND^BGP8DU(P,"PXRM BGP IPC DIABETES",EDATE,1) Q 1
 I $$LASTDX^BGP8UTL1(P,"BGP IPC DIABETES DXS",BDATE,EDATE) Q 1
 Q ""
HOSPIND(P,BDATE,EDATE) ;EP - Hospice indicator IPC
 ;GET ALL VISITS IN TIME PERIOD
 ;CHECK SNOMED FOR INPATIENT AND DSCH
 ;CHECK OUTPATIENT SNOMED IN V POV
 ;CHECK PROBLEM LIST ENTRIES FOR NOT INACTIVE AND NOT DELETED
 ;
 ;1. CHECK V POV FOR SNOMED CODES
 NEW S,Y,T,G,D,M,O,A,B,V
 S T="PXRM BGP IPC HOSPICE"
 S G=""
 S S=0 F  S S=$O(^XTMP("BGPSNOMEDSUBSET",$J,T,S)) Q:S=""!(G)  D
 .Q:'$D(^AUPNVPOV("ASNC",P,S))
 .S D=0 F  S D=$O(^AUPNVPOV("ASNC",P,S,D)) Q:D=""!(G)  D
 ..S Y=9999999-D
 ..Q:Y<BDATE
 ..Q:Y>EDATE
 ..S G=1
 I G Q G
 I $$IPLSNOND^BGP8DU(P,"PXRM BGP IPC HOSPICE",EDATE,1) Q 1
 I G Q G
 ;check all discharges V Hospitalization discharges during the report period
 S X=0,G=""
 F  S X=$O(^AUPNVINP("AC",P,X)) Q:X'=+X!(G)  D
 .Q:'$D(^AUPNVINP(X,0))
 .S D=$P($P(^AUPNVINP(X,0),U),".")
 .I D<BDATE Q
 .I D>EDATE Q
 .;is where seen correct?
 .S V=$P(^AUPNVINP(X,0),U,3)
 .Q:'V
 .S Z=0
 .S A=0 F  S A=$O(^AUPNVSIT(V,26,"B",A)) Q:A=""  I $D(^XTMP("BGPSNOMEDSUBSET",$J,"PXRM BGP IPC INPT ENC",A)) S Z=1
 .S Y=$$VAL^XBDIQ1(9000010.02,X,6107)
 .I Z,Y]"",$D(^XTMP("BGPSNOMEDSUBSET",$J,"PXRM BGP IPC DISCHG HOSPICE",Y)) S G=1
 .I G Q
 .S A=0 F  S A=$O(^AUPNVSIT(V,28,"B",A)) Q:A=""  I $D(^XTMP("BGPSNOMEDSUBSET",$J,"PXRM BGP IPC INPT ENC",A)) S Z=1
 .S Y=$$VAL^XBDIQ1(9000010.02,X,6107)
 .I Z,Y]"",$D(^XTMP("BGPSNOMEDSUBSET",$J,"PXRM BGP IPC DISCHG HOSPICE",Y)) S G=1
 Q G
HGBA1C(P,BDATE,EDATE) ;EP
 NEW BGPG,BGPT,BGPC,T,BGPLT,E,D,B,L,X,J,C,%
 K BGPG,BGPT
 S BGPC=0
 ;now get all loinc/taxonomy tests
 S T=$O(^ATXAX("B","BGP IPC HBA1C LOINC CODES",0))
 S BGPLT=$O(^ATXLAB("B","DM AUDIT HGB A1C TAX",0))
 S B=9999999-BDATE,E=9999999-EDATE S D=E-1 F  S D=$O(^AUPNVLAB("AE",P,D)) Q:D'=+D!(D>B)  D
 .S L=0 F  S L=$O(^AUPNVLAB("AE",P,D,L)) Q:L'=+L  D
 ..S X=0 F  S X=$O(^AUPNVLAB("AE",P,D,L,X)) Q:X'=+X  D
 ...Q:'$D(^AUPNVLAB(X,0))
 ...I BGPLT,$P(^AUPNVLAB(X,0),U),$D(^ATXLAB(BGPLT,21,"B",$P(^AUPNVLAB(X,0),U))) D
 ....;SET RESULT DATE/TIME 999999 WITH TIME, IF BLANK SET VISIT DATE/TIME WITH IEN
 ....S %=$$VDTM^APCLV($P(^AUPNVLAB(X,0),U,3))
 ....S %=(9999999-$P(%,"."))_"."_(9999-$$RZERO^BGP8UTL($P(%,".",2),4)),%=+%
 ....S BGPC=BGPC+1,BGPT(%,X)=$P(^AUPNVLAB(X,0),U,4) Q
 ...Q:'T
 ...S J=$P($G(^AUPNVLAB(X,11)),U,13) Q:J=""
 ...Q:'$$LOINC(J,T)
 ...S %=$$VDTM^APCLV($P(^AUPNVLAB(X,0),U,3))
 ...S %=(9999999-$P(%,"."))_"."_+(9999-$$RZERO^BGP8UTL($P(%,".",2),4)),%=+%
 ...S BGPC=BGPC+1,BGPT(%,X)=$P(^AUPNVLAB(X,0),U,4) Q
 ...Q
 ; now got though and set return value of done 1 or 0^numerator 2-7^date^value
 I '$D(BGPT) Q 1_U_"No HbA1c Tests"
 S D=0,G="" F  S D=$O(BGPT(D)) Q:D=""!(G]"")  D
 .S C=0 F  S C=$O(BGPT(D,C)) Q:C=""  D
 ..S X=BGPT(D,C)
 ..I $$UP^XLFSTR(X)="COMMENT" Q
 ..I X="" Q
 ..I $E(X)[">" S G=1_U_$$DATE^BGP8UTL(9999999-$P(D,"."))_U_X Q
 ..I $E(X)["<" S G=1_U_$$DATE^BGP8UTL(9999999-$P(D,"."))_U_X Q
 ..I $E(X)'=+$E(X) Q
 ..S G=1_U_$$DATE^BGP8UTL(9999999-$P(D,"."))_U_X
 I G="" Q 1_U_"No Tests w/ Result"
 S R=$P(G,U,3)
 I $E(R)=">" Q G
 I $E(R)="<" Q 0_U_$P(G,U,2,3)
 S R=+R
 I R>9 Q G
 Q 0_U_$P(G,U,2,3)
LOINC(A,B) ;EP
 NEW %
 S %=$P($G(^LAB(95.3,A,9999999)),U,2)
 I %]"",$D(^ATXAX(B,21,"B",%)) Q 1
 S %=$P($G(^LAB(95.3,A,0)),U)_"-"_$P($G(^LAB(95.3,A,0)),U,15)
 I $D(^ATXAX(B,21,"B",%)) Q 1
 Q ""

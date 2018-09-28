BGP8PC15 ; IHS/CMI/LAB - measure I2 ; 02 Feb 2018  11:25 AM
 ;;18.1;IHS CLINICAL REPORTING;;MAY 25, 2018;Build 66
 ;
WAC ;EP
 S (BGPN1,BGPN2,BGPN3,BGPD1)=0
 S (BGPDV,BGPVITAL,BGPNC,BGPPA)=""
 S BGPVALUE=""
 K BGPV
 ;
 I BGPAGEE<3 S BGPSTOP=1 G WACE  ;18 or greater during time period
 I BGPAGEB>17 S BGPSTOP=1 G WACE  ;75 or less during time period
 ;
 ;S BGPDV=$$ENC15(DFN,BGPBDATE,BGPEDATE) I BGPDV="" S BGPSTOP=1 G WACE
 ;GET ALL OUTPATIENT ENCOUNTERS
 ;Let's check all Visits, looping through once
 S G=""  ;return variable
 ;get all visits in date range in BGPV
 D ALLV^APCLAPIU(DFN,BGPBDATE,BGPEDATE,"BGPV")
 ;now loop through and check Face to Face and .17 in visit and check v cpts attached to the visit
 K BGPOV
 S X=0 F  S X=$O(BGPV(X)) Q:X'=+X  S V=$P(BGPV(X),U,5)  D
 .Q:'$P(^AUPNVSIT(V,0),U,9)  ;no dependent entries
 .Q:$P(^AUPNVSIT(V,0),U,11)  ;deleted
 .S D=$$VD^APCLV(V)
 .S Y=$$FTOF^BGP8PC2(V) I Y]"" S G=1_U_$$DATE^BGP8UTL(D)_" FTOF: "_Y,BGPOV(V)="" Q
 .;is .17 a cpt we want?
 .S Y=$$VALI^XBDIQ1(9000010,V,.17)
 .I Y,$$OFFCPT15(Y) S G=1_U_$$DATE^BGP8UTL(D)_" CPT: "_$P($$CPT^ICPTCOD(Y),U,2),BGPOV(V)="" Q
 .;now check all V CPTs
 .S Z=0 F  S Z=$O(^AUPNVCPT("AD",V,Z)) Q:Z'=+Z  D
 ..S Y=$P($G(^AUPNVCPT(Z,0)),U,1)
 ..I Y,$$OFFCPT15(Y) S G=1_U_$$DATE^BGP8UTL(D)_" CPT: "_$P($$CPT^ICPTCOD(Y),U,2),BGPOV(V)="" Q
 I G S BGPDV=G
 I BGPDV="" S BGPSTOP=1 G WACE
 ;now what about exclusions?
 I $$HOSPIND^BGP8PC2(DFN,BGPBDATE,BGPEDATE) S BGPSTOP=1 G WACE  ;no hospice pts
 ;PREG?
 I $$PREG^BGP8PC16(DFN,BGPBDATE,BGPEDATE) S BGPSTOP=1 G WACE
 ;
 S BGPD1=1
 ;
 S BGPVAL=""
 S BGPVITAL=$$HWBMIP(DFN,BGPBDATE,BGPEDATE) I $P(BGPVITAL,U,1) S BGPN1=1
 D NC
 I $P(BGPNC,U,1) S BGPN2=1
 D PA
 I $P(BGPPA,U,1) S BGPN3=1
 S BGPVALUE=""
 ;S BGPVALUE="ENC "_$P(BGPDV,U,2)_"|||"  ;hit denominator
 I BGPN1 S BGPVALUE=BGPVALUE_"***N1 "_$P(BGPVITAL,U,2)
 I BGPN2 S:BGPVALUE]"" BGPVALUE=BGPVALUE_";" S BGPVALUE=BGPVALUE_"***N2 NUTR COUN: "_$P(BGPNC,U,2)
 I BGPN3 S:BGPVALUE]"" BGPVALUE=BGPVALUE_";" S BGPVALUE=BGPVALUE_"***N3 PHYS ACT COUN: "_$P(BGPPA,U,2)
 S BGPVALUE="ENC "_$P(BGPDV,U,2)_"|||"_BGPVALUE
 ;
WACE ;
 K V,BGPDV,BGPVAL,BGPV,BGPOV,BGPVITAL,BGPNC,BGPPA
 Q
ENC15(P,BDATE,EDATE) ;EP  - have encounter per CMS122v6
 NEW X,Y,Z,G,BGPV,D
 ;Let's check all Visits, looping through once
 S G=""  ;return variable
 ;get all visits in date range in BGPV
 D ALLV^APCLAPIU(P,BDATE,EDATE,"BGPV")
 ;now loop through and check Face to Face and .17 in visit and check v cpts attached to the visit
 S X=0 F  S X=$O(BGPV(X)) Q:X'=+X!(G)  S V=$P(BGPV(X),U,5)  D
 .Q:'$P(^AUPNVSIT(V,0),U,9)  ;no dependent entries
 .Q:$P(^AUPNVSIT(V,0),U,11)  ;deleted
 .Q:"AORS"'[$P(^AUPNVSIT(V,0),U,7)  ;outpatient only
 .S D=$$VD^APCLV(V)
 .S Y=$$FTOF^BGP8PC2(V) I Y]"" S G=1_U_$$DATE^BGP8UTL(D)_" FTOF: "_Y Q
 .;is .17 a cpt we want?
 .S Y=$$VALI^XBDIQ1(9000010,V,.17)
 .I Y,$$OFFCPT15(Y) S G=1_U_$$DATE^BGP8UTL(D)_" CPT: "_$P($$CPT^ICPTCOD(Y),U,2) Q
 .;now check all V CPTs
 .S Z=0 F  S Z=$O(^AUPNVCPT("AD",V,Z)) Q:Z'=+Z!(G)  D
 ..S Y=$P($G(^AUPNVCPT(Z,0)),U,1)
 ..I Y,$$OFFCPT15(Y) S G=1_U_$$DATE^BGP8UTL(D)_" CPT: "_$P($$CPT^ICPTCOD(Y),U,2) Q
 Q G
OFFCPT15(C) ;EP
 I $$ICD^ATXAPI(C,$O(^ATXAX("B","BGP IPC OFFICE VISIT CPTS",0)),1) Q 1
 I $$ICD^ATXAPI(C,$O(^ATXAX("B","BGP IPC PREVCARE EOV 0-17 CPTS",0)),1) Q 1
 I $$ICD^ATXAPI(C,$O(^ATXAX("B","BGP IPC PREVCARE IOV 0-17 CPTS",0)),1) Q 1
 I $$ICD^ATXAPI(C,$O(^ATXAX("B","BGP IPC HOMEHEALTH VISIT CPTS",0)),1) Q 1
 I $$ICD^ATXAPI(C,$O(^ATXAX("B","BGP IPC PREVCARE IND COUN CPTS",0)),1) Q 1
 I $$ICD^ATXAPI(C,$O(^ATXAX("B","BGP IPC PREVCARE GRP COUN CPTS",0)),1) Q 1
 Q ""
LOINC(A,B) ;EP
 NEW %
 S %=$P($G(^LAB(95.3,A,9999999)),U,2)
 I %]"",$D(^ATXAX(B,21,"B",%)) Q 1
 S %=$P($G(^LAB(95.3,A,0)),U)_"-"_$P($G(^LAB(95.3,A,0)),U,15)
 I $D(^ATXAX(B,21,"B",%)) Q 1
 Q ""
HWBMIP(P,BDATE,EDATE) ;
 ;has ht, wt and bmip?
 NEW X,Y,Z,H,W,B
 S W=$$LASTITEM^BGP8DU(P,BDATE,EDATE,"MEASUREMENT","WT") I W="" Q ""
 S H=$$LASTITEM^BGP8DU(P,BDATE,EDATE,"MEASUREMENT","HT") I H="" Q ""
 S B=$$LASTITEM^BGP8DU(P,BDATE,EDATE,"MEASUREMENT","BMIP") I B="" Q ""
 Q 1_U_$$DATE^BGP8UTL($P(H,U,2))_" HT "_$P(H,U,4)_" "_$$DATE^BGP8UTL($P(W,U,2))_" WT "_$P(W,U,4)_" "_$$DATE^BGP8UTL($P(B,U,2))_" BMIP "_$P(B,U,4)
NC ;
 S BGPNC=""
 NEW X,Y,Z,V,G
 S G=""
 S V=0 F  S V=$O(BGPOV(V)) Q:V'=+V!(G)  D
 .;cpt
 .S X=0 F  S X=$O(^AUPNVCPT("AD",V,X)) Q:X'=+X!(G)  D
 ..S C=$P($G(^AUPNVCPT(X,0)),U,1)
 ..I 'C Q
 ..I $$ICD^BGP8UTL2(C,$O(^ATXAX("B","BGP IPC NUTR COUN CPTS",0)),1) S G=1_U_$$DATE^BGP8UTL($$VD^APCLV(V))_" CPT: "_$$VAL^XBDIQ1(9000010.18,X,.01)
 .;NOW CHECK V POV FOR SNOMED
 .S X=0 F  S X=$O(^AUPNVPOV("AD",V,X)) Q:X'=+X!(G)  D
 ..S C=$$VAL^XBDIQ1(9000010.07,X,1101) Q:C=""
 ..I $D(^XTMP("BGPSNOMEDSUBSET",$J,"PXRM BGP IPC NUTRITION",C)) S G=1_U_$$DATE^BGP8UTL($$VD^APCLV(V))_" SNOMED: "_C
 S BGPNC=G
 Q
PA ;
 S BGPPA=""
 NEW X,Y,Z,V,G
 S G=""
 S V=0 F  S V=$O(BGPOV(V)) Q:V'=+V!(G)  D
 .;NOW CHECK V POV FOR SNOMED
 .S X=0 F  S X=$O(^AUPNVPOV("AD",V,X)) Q:X'=+X!(G)  D
 ..S C=$$VAL^XBDIQ1(9000010.07,X,1101) Q:C=""
 ..I $D(^XTMP("BGPSNOMEDSUBSET",$J,"PXRM BGP IPC PHYS ACT",C)) S G=1_U_$$DATE^BGP8UTL($$VD^APCLV(V))_" SNOMED: "_C
 S BGPPA=G
 Q

BGP8D21A ; IHS/CMI/LAB - measure 6 ;
 ;;18.1;IHS CLINICAL REPORTING;;MAY 25, 2018;Build 66
 ;
LOINC(A,B) ;EP
 NEW %
 S %=$P($G(^LAB(95.3,A,9999999)),U,2)
 I %]"",$D(^ATXAX(B,21,"B",%)) Q 1
 S %=$P($G(^LAB(95.3,A,0)),U)_"-"_$P($G(^LAB(95.3,A,0)),U,15)
 I $D(^ATXAX(B,21,"B",%)) Q 1
 Q ""
EYEENUC(P,EDATE) ;EP
 NEW X,T,G,R,L,Y,C,RI,LF,BGPX,C,Y,M
 ;first check for PROCEDURES
 S BDATE=$$DOB^AUPNPAT(P)
 S RI=$$LASTPRC^BGP8UTL1(P,"BGP RIGHT EYE ENUCLEATION PROC",BDATE,EDATE)
 S LF=$$LASTPRC^BGP8UTL1(P,"BGP LEFT EYE ENUCLEATION PROCS",BDATE,EDATE)
 I RI,LF Q 1
 ;NOW CHECK CPTS
 ;ONE WITH MODIFER 50 09950 OR 2 AT LEAST 14 DAYS APART
 ;check cpt codes for bilateral
 ;loop through all cpt codes up to Edate and if any match quit
 S (X,Y,Z,G)=0 K BGPX
 S T=$O(^ATXAX("B","BGP EYE ENUCLEATION CPTS",0))
 I T S %="" D  I %]"" Q 1
 .S Y=0 F  S Y=$O(^AUPNVCPT("AC",P,Y)) Q:Y'=+Y!(%]"")  D
 ..S D=$P($G(^AUPNVCPT(Y,0)),U,3)
 ..Q:D=""
 ..S D=$P($P($G(^AUPNVSIT(D,0)),U),".") ;date done
 ..Q:D=""
 ..I D>EDATE Q
 ..S X=$P(^AUPNVCPT(Y,0),U)
 ..Q:'$$ICD^BGP8UTL2(X,T,1)
 ..S BGPX(D)=""
 ..I ^DD(9000010.18,.08,0)["AUTTCMOD" S M=$P(^AUPNVCPT(Y,0),U,8) I M S M=$P($G(^AUTTCMOD(M,0)),U) I M=50 S %=1
 ..I ^DD(9000010.18,.09,0)["AUTTCMOD" S M=$P(^AUPNVCPT(Y,0),U,9) I M S M=$P($G(^AUTTCMOD(M,0)),U) I M=50 S %=1
 ..I ^DD(9000010.18,.08,0)["DIC(81.3" S M=$P(^AUPNVCPT(Y,0),U,8) I M S M=$P($G(^DIC(81.3,M,0)),U) I M=50 S %=1
 ..I ^DD(9000010.18,.09,0)["DIC(81.3" S M=$P(^AUPNVCPT(Y,0),U,9) I M S M=$P($G(^DIC(81.3,M,0)),U) I M=50 S %=1
 ..Q:%
 .Q
 ; now check tran codes
 I T,$D(^AUPNVTC("AC",P)) S %="" D  I %]"" Q 1
 .S E=0 F  S E=$O(^AUPNVTC("AC",P,E)) Q:E'=+E!(%]"")  D
 ..S D=$P($G(^AUPNVTC(E,0)),U,3) Q:'D  S D=$P($P($G(^AUPNVSIT(D,0)),U),".")
 ..Q:'$$ICD^BGP8UTL2($P(^AUPNVTC(E,0),U,7),T,1)
 ..I D>EDATE Q
 ..S BGPX(D)=""
 ..I '$D(^DIC(81.3,0)) S M=$P(^AUPNVTC(E,0),U,12) I M S M=$P($G(^AUTTCMOD(M,0)),U) I M=50 S %=1
 ..I '$D(^DIC(81.3,0)) S M=$P(^AUPNVTC(E,0),U,15) I M S M=$P($G(^AUTTCMOD(M,0)),U) I M=50 S %=1
 ..I $D(^DIC(81.3,0)) S M=$P(^AUPNVTC(E,0),U,12) I M S M=$P($G(^DIC(81.3,M,0)),U) I M=50 S %=1
 ..I $D(^DIC(81.3,0)) S M=$P(^AUPNVTC(E,0),U,15) I M S M=$P($G(^DIC(81.3,M,0)),U) I M=50 S %=1
 ..Q:%
 ..S M=""
 ..Q
 .Q
 ;see if 2 on different dates 14 DAYS APART
 S (X,Y)="",C=0 F  S X=$O(BGPX(X)) Q:X'=+X  S C=C+1 D
 .I C=1 S Y=X Q
 .I $$FMDIFF^XLFDT(X,Y)<14 K BGPX(X) Q
 .S Y=X
 ;count
 S C=0,X=0 F  S X=$O(BGPX(X)) Q:X'=+X  S C=C+1
 I C>1 Q 1
 Q ""
BLINDPL(P,EDATE) ;EP
 NEW X,T,G,R,L,Y,C
 S X=$$PLTAXND^BGP8DU(P,"BGP BILATERAL BLINDNESS DXS",EDATE)
 I X Q 1
 S X=$$IPLSNOND^BGP8DU(P,"PXRM BGP BILAT BLINDNESS",EDATE)
 I X Q 1
 S T="PXRM BGP BLINDNESS UNSPECIFIED"  ;CODE WITH LATERALITY=BILATERAL
 ;LOOP PROBLEM LIST
 S (X,G,R,L)=""
 F  S X=$O(^AUPNPROB("APCT",P,X)) Q:X=""!(G)  D
 .S Y=0 F  S Y=$O(^AUPNPROB("APCT",P,X,Y)) Q:Y'=+Y!(G)  D
 ..Q:'$D(^AUPNPROB(Y,0))
 ..Q:$P(^AUPNPROB(Y,0),U,12)="D"  ;deleted
 ..Q:'$D(^XTMP("BGPSNOMEDSUBSET",$J,T,X))
 ..I EDATE,$P(^AUPNPROB(Y,0),U,13)>EDATE Q  ;if there is a doo and it is after report period skip
 ..I $P(^AUPNPROB(Y,0),U,13)="",EDATE,$P(^AUPNPROB(Y,0),U,8)>EDATE Q  ;no doo, entered after report period, skip
 ..;IS LATERALITY BILATERAL:
 ..S C=$$VAL^XBDIQ1(9000011,Y,.22)
 ..I $$UP^XLFSTR(C)["BILATERAL" S G=1_U_"Problem List: "_X Q  ;$$CONCPT^AUPNVUTL(X)
 ..I $$UP^XLFSTR(C)["LEFT" S L=1
 ..I $$UP^XLFSTR(C)["RIGHT" S R=1
 I G Q G
 I R,L Q 1_U_"Problem List: "_X
 ;NOW CHECK RIGHT AND LEFT SNOMED SUBSETS
 NEW TR,TL
 I 'R D
 .S TR="PXRM BGP RIGHT EYE BLIND"
 .;LOOP PROBLEM LIST
 .S (X,G)=""
 .F  S X=$O(^AUPNPROB("APCT",P,X)) Q:X=""!(G)  D
 ..S Y=0 F  S Y=$O(^AUPNPROB("APCT",P,X,Y)) Q:Y'=+Y!(G)  D
 ...Q:'$D(^AUPNPROB(Y,0))
 ...Q:$P(^AUPNPROB(Y,0),U,12)="D"  ;deleted
 ...Q:'$D(^XTMP("BGPSNOMEDSUBSET",$J,TR,X))
 ...I EDATE,$P(^AUPNPROB(Y,0),U,13)>EDATE Q  ;if there is a doo and it is after report period skip
 ...I $P(^AUPNPROB(Y,0),U,13)="",EDATE,$P(^AUPNPROB(Y,0),U,8)>EDATE Q  ;no doo, entered after report period, skip
 ...S R=1
 I R,L Q 1_U_"Problem List: "_X
 I 'L D
 .S TL="PXRM BGP LEFT EYE BLIND"
 .;LOOP PROBLEM LIST
 .S (X,G)=""
 .F  S X=$O(^AUPNPROB("APCT",P,X)) Q:X=""!(G)  D
 ..S Y=0 F  S Y=$O(^AUPNPROB("APCT",P,X,Y)) Q:Y'=+Y!(G)  D
 ...Q:'$D(^AUPNPROB(Y,0))
 ...Q:$P(^AUPNPROB(Y,0),U,12)="D"  ;deleted
 ...Q:'$D(^XTMP("BGPSNOMEDSUBSET",$J,TL,X))
 ...I EDATE,$P(^AUPNPROB(Y,0),U,13)>EDATE Q  ;if there is a doo and it is after report period skip
 ...I $P(^AUPNPROB(Y,0),U,13)="",EDATE,$P(^AUPNPROB(Y,0),U,8)>EDATE Q  ;no doo, entered after report period, skip
 ...S L=1
 I R,L Q 1_U_"Problem List: "_X
 Q ""
CHDPL(P,EDATE)  ;EP - is dx on problem list as either active or inactive?
 NEW T,T1,T2,T3,SN1,SN2,SN3,SN4,T4,T5,SN5,SN6,SN7,SN8
 S T=$O(^ATXAX("B","BGP CHD DXS",0))
 S T1=$O(^ATXAX("B","BGP AMI DXS PAMT",0))
 S T2=$O(^ATXAX("B","BGP IVD DXS",0))
 S T3=$O(^ATXAX("B","BGP TIA DXS",0))
 S T4=$O(^ATXAX("B","BGP ARTERIAL DISEASE DXS",0))
 S SN1="PXRM ISCHEMIC HEART DISEASE"
 S SN2="PXRM BGP AMI"
 S SN3="PXRM BGP IVD"
 S SN4="PXRM BGP ISCHEMIC STROKE TIA"
 S SN5="PXRM BGP ARTERIAL DISEASE"
 S SN6="PXRM BGP CABG"
 S SN7="PXRM BGP PCI"
 S SN8="PXRM BGP CAROTID INTERVENTION"
PL ;
 NEW X,Y,I,S
 S (X,Y,I)=0
 F  S X=$O(^AUPNPROB("AC",P,X)) Q:X'=+X!(I)  D
 .Q:'$D(^AUPNPROB(X,0))
 .Q:$P(^AUPNPROB(X,0),U,12)="D"
 .Q:$P(^AUPNPROB(X,0),U,12)="I"
 .S Y=$P(^AUPNPROB(X,0),U)
 .I EDATE,$P(^AUPNPROB(X,0),U,13)>EDATE Q  ;if there is a doo and it is after report period skip
 .I $P(^AUPNPROB(X,0),U,13)="",EDATE,$P(^AUPNPROB(X,0),U,8)>EDATE Q  ;no doo, entered after report period, skip
 .S S=$$VAL^XBDIQ1(9000011,X,80001)
 .I S]"",$D(^XTMP("BGPSNOMEDSUBSET",$J,SN1,S)) S I=1 Q
 .I S]"",$D(^XTMP("BGPSNOMEDSUBSET",$J,SN2,S)) S I=1 Q
 .I S]"",$D(^XTMP("BGPSNOMEDSUBSET",$J,SN3,S)) S I=1 Q
 .I S]"",$D(^XTMP("BGPSNOMEDSUBSET",$J,SN4,S)) S I=1 Q
 .I S]"",$D(^XTMP("BGPSNOMEDSUBSET",$J,SN5,S)) S I=1 Q
 .I S]"",$D(^XTMP("BGPSNOMEDSUBSET",$J,SN6,S)) S I=1 Q
 .I S]"",$D(^XTMP("BGPSNOMEDSUBSET",$J,SN7,S)) S I=1 Q
 .I S]"",$D(^XTMP("BGPSNOMEDSUBSET",$J,SN8,S)) S I=1 Q
 .I $$ICD^BGP8UTL2(Y,T,9) S I=1 Q  ;_U_"Problem List: "_$$VAL^XBDIQ1(9000011,X,.01)
 .I $$ICD^BGP8UTL2(Y,T1,9) S I=1 Q  ;_U_"Problem List: "_$$VAL^XBDIQ1(9000011,X,.01)
 .I $$ICD^BGP8UTL2(Y,T2,9) S I=1 Q  ;_U_"Problem List: "_$$VAL^XBDIQ1(9000011,X,.01)
 .I $$ICD^BGP8UTL2(Y,T3,9) S I=1 Q  ;_U_"Problem List: "_$$VAL^XBDIQ1(9000011,X,.01)
 .I $$ICD^BGP8UTL2(Y,T4,9) S I=1 Q  ;_U_"Problem List: "_$$VAL^XBDIQ1(9000011,X,.01) 
 .Q
 Q I
HEPA(P,BDATE,EDATE) ;
 ;EP
 NEW BGPG,E,Y,X
 ;S BDATE=$$DOB^AUPNPAT(P)
 K BGPG
 S Y="BGPG("
 S X=P_"^LAST DX [BGP HEPATITIS A EVIDENCE;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE) S E=$$START1^APCLDF(X,Y)
 I $D(BGPG(1)) Q 1
 I $$PLTAXND^BGP8DU(P,"BGP HEPATITIS A EVIDENCE",EDATE) Q 1
 I $$IPLSNOND^BGP8DU(P,"PXRM BGP HEPATITIS A",EDATE) Q 1
 Q 0
HEPB(P,BDATE,EDATE) ;
 ;EP
 NEW BGPG,E,Y,X
 ;S BDATE=$$DOB^AUPNPAT(P)
 K BGPG
 S Y="BGPG("
 S X=P_"^LAST DX [BGP HEP EVIDENCE;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE) S E=$$START1^APCLDF(X,Y)
 I $D(BGPG(1)) Q 1
 I $$PLTAXND^BGP8DU(P,"BGP HEP EVIDENCE",EDATE) Q 1
 I $$IPLSNOND^BGP8DU(P,"PXRM BGP HEPATITIS B",EDATE) Q 1
 Q 0

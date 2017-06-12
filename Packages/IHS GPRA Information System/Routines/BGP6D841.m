BGP6D841 ; IHS/CMI/LAB - measure C ;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
HEPC ;EP - called from BGP6D84
 I 'BGPACTUP S BGPSTOP=1 Q
 S (BGPN1,BGPN2,BGPN3,BGPN4,BGPN5,BGPN6,BGPN7,BGPN8,BGPN9,BGPN10,BGPN11,BGPD1,BGPD2,BGPD3,BGPD4,BGPD5,BGPD6,BGPD7)=0
 ;BGPD1 - PTS WITH NO HEP C 1945-1965
 ;BGPD2 - PTS WITH HEP C 1945-1965
 ;BGPD3 - UP WITH HEP C OR AB RESULT
 ;BGPN1 - PTS SCREENED IF IN BGPD1
 ;BGPN2 - PTS WITH CONF TEST IF IN BGPD2
 ;BGPN3 - PTS IN BGPN2 WITH POS RESULT
 ;BGPN4 - PTS IN BGPN2 WITH NEG RESULT
 ;BGPN5 - PTS IN BGPN2 WITH NO RESULT
 ;BGPN6 - PTS W/HEP C DX
 ;BGPN7 - PTS W/AB POS EVER
 ;BGPN8 - POS SCREEN
 ;BGPN9 - NEG SCREEN
 NEW BGPHSCR,BGPHHEP,BGPABPOS,BGPHCON,BGPHCON1,BGPVALX
 S BGPHHEP="",BGPVALUE="",BGPABPOS="",BGPHCON="",BGPHCON1="",BGPVALX=""
 S BGPHHEP=$$HEPCDX(DFN,BGPEDATE) I +BGPHHEP S BGPVALX="Hep C Dx: "_$$DATE^BGP6UTL($P(BGPHHEP,U,1))_" "_$P(BGPHHEP,U,2)
 S BGPABPOS=$$ABPOSEV(DFN,BGPEDATE) I BGPABPOS S:BGPVALX]"" BGPVALX=BGPVALX_"; " S BGPVALX=BGPVALX_"Ab Test Pos: "_$P(BGPABPOS,U,2)
 S D=$$DOB^AUPNPAT(DFN)
 I D<2450101 G N
 I D>2651231 G N
 I BGPHHEP!(BGPABPOS) S BGPD2=1
 I 'BGPHHEP S BGPD1=1
N ;
 I BGPHHEP!(BGPABPOS) S BGPD3=1  ;all up
 I BGPHHEP S BGPN11=1
 I BGPABPOS S BGPN10=1
 S BGPHSCR=""
 I BGPD1 S BGPHSCR=$$HEPSCRR(DFN,BGPEDATE) I $P(BGPHSCR,U,1) S BGPN1=1 S:BGPVALX]"" BGPVALX=BGPVALX_"; " S BGPVALX=BGPVALX_"Screen: "_$P(BGPHSCR,U,2)
 I BGPD1,'BGPN1 S BGPHSCR=$$HEPSCR(DFN,BGPEDATE) I $P(BGPHSCR,U,1) S BGPN1=1 S:BGPVALX]"" BGPVALX=BGPVALX_"; " S BGPVALX=BGPVALX_"Screen: "_$P(BGPHSCR,U,2)_" result=No Result"
 I $P(BGPHSCR,U,3)="POS" S BGPN6=1
 I $P(BGPHSCR,U,3)="NEG" S BGPN7=1
 I BGPD2!BGPD3 S BGPHCON=$$HEPCCON(DFN,BGPEDATE) D
 .I $P(BGPHCON,U,1) S BGPN2=1 S:BGPVALX]"" BGPVALX=BGPVALX_"; " S BGPVALX=BGPVALX_"Conf: "_$P(BGPHCON,U,2)_" "_$P(BGPHCON,U,3)_"="_$P(BGPHCON,U,5)
 .I $P(BGPHCON,U,5)="POS" S BGPN3=1 Q
 .I $P(BGPHCON,U,5)="NEG" S BGPN4=1 Q
 .S BGPN5=1
 ;
 ;
 ;GET ALL CONFIRMATION TESTS
 K BGPCONFT
 I '(BGPD2+BGPD3) G SL1
 I 'BGPN3 G SL1
 D GETALLCF
 I $D(BGPCONFT("POS")) S BGPD6=1
 S D=$$DOB^AUPNPAT(DFN)
 I D<2450101 G SL
 I D>2651231 G SL
 I $D(BGPCONFT("POS")) S BGPD7=1
SL I BGPD6!(BGPD7) D
 .;BGPN8 - EVER HAD NEG WITHIN 12 WEEKS OF ANY POS
 .;BGPN9 - EVER HAD NEG WITHIN 12 WEEKS OF last positive
 .I '$D(BGPCONFT("NEG")) Q  ;NEVER HAD A NEGATIVE
 .S X="" F  S X=$O(BGPCONFT("POS",X)) Q:X'=+X  S L=X  ;L IS DATE OF LAST POSITIVE
 .S L=$P(L,".")
 .;CHECK LAST ONE FIRST, IF A HIT MAKES BOTH NUMERATORS
 .S X=L F  S X=$O(BGPCONFT("NEG",X)) Q:X'=+X!(BGPN8)  D  I BGPN8 G SL1
 ..S Y=$$FMDIFF^XLFDT(X,L)
 ..I Y>83 S (BGPN8,BGPN9)=1,BGPVALX=BGPVALX_"; Currently Cured"
 .;NOW CHECK ANY POS
 .S X=0 F  S X=$O(BGPCONFT("POS",X)) Q:X'=+X!(BGPN8)  D
 ..S G=0 S Y=X F  S Y=$O(BGPCONFT(Y)) Q:Y'=+Y!(G)!(BGPN8)  D
 ...S G=0
 ...I $D(BGPCONFT("POS",Y)) S G=1 Q  ;Q IF IT IS A POS AND GO TO THE NEXT POS
 ...I $D(BGPCONFT("UNK",Y)) S G=1 Q  ;Q IF IT IS AN UNK
 ...S Z=$$FMDIFF^XLFDT(Y,X)
 ...I Z>83 S (BGPN8)=1,BGPVALX=BGPVALX_"; Ever Cured"
SL1 ;
 I BGPD1 S BGPVALUE="UP|||"_BGPVALX
 I BGPD2!(BGPD3) S BGPVALUE="UP,HEP|||"_BGPVALX
 Q
HEPCDX(P,EDATE) ;
 NEW T,X,G
 S X=$$LASTDX^BGP6UTL1(P,"BGP HEPATITIS C DXS")
 I X Q $P(X,U,3)_U_"POV "_$P(X,U,2)
 ;now check problem list
 S T=$O(^ATXAX("B","BGP HEPATITIS C DXS",0))
 S (X,G)=0 F  S X=$O(^AUPNPROB("AC",P,X)) Q:X'=+X!(G)  D
 .Q:$P(^AUPNPROB(X,0),U,8)>EDATE  ;if added to pl after end of time period, no go
 .S Y=$P(^AUPNPROB(X,0),U)
 .Q:$P(^AUPNPROB(X,0),U,12)="D"
 .Q:$P(^AUPNPROB(X,0),U,12)="I"
 .Q:'$$ICD^BGP6UTL2(Y,T,9)
 .S G=$P(^AUPNPROB(X,0),U,8)_U_" Problem List "_$$VAL^XBDIQ1(9000011,X,.01)
 .Q
 I G Q G
 Q ""
HEPSCR(P,EDATE) ;
 NEW X,G,T,%,BGPC,BGPLT,L,D,J
 ;now get all loinc/taxonomy tests
 S BGPC=""
 S T=$O(^ATXAX("B","BGP HEP C TEST LOINC CODES",0))
 S BGPLT=$O(^ATXLAB("B","BGP HEP C TESTS TAX",0))
 S E=9999999-EDATE S D=E-1 F  S D=$O(^AUPNVLAB("AE",P,D)) Q:D'=+D!(BGPC)  D
 .S L=0 F  S L=$O(^AUPNVLAB("AE",P,D,L)) Q:L'=+L!(BGPC)  D
 ..S X=0 F  S X=$O(^AUPNVLAB("AE",P,D,L,X)) Q:X'=+X!(BGPC)  D
 ...Q:'$D(^AUPNVLAB(X,0))
 ...I BGPLT,$P(^AUPNVLAB(X,0),U),$D(^ATXLAB(BGPLT,21,"B",$P(^AUPNVLAB(X,0),U))) S BGPC=1_U_$$DATE^BGP6UTL((9999999-D))_" Lab Test" Q
 ...Q:'T
 ...S J=$P($G(^AUPNVLAB(X,11)),U,13) Q:J=""
 ...Q:'$$LOINC^BGP6D2(J,T)
 ...S BGPC=1_U_$$DATE^BGP6UTL((9999999-D))_" Lab Test (Loinc "_$$VAL^XBDIQ1(9000010.09,X,1113)_")"
 ...Q
 I BGPC Q BGPC
 S %="",E=+$$CODEN^ICPTCOD(86803),%=$$CPTI^BGP6DU(P,$$DOB^AUPNPAT(P),EDATE,E)
 I % Q 1_U_$$DATE^BGP6UTL($P(%,U,2))_" CPT 86803"
 Q BGPC
ABPOSEV(P,EDATE) ;
 NEW X,G,T,%,BGPC,BGPLT,L,D,J
 ;now get all loinc/taxonomy tests
 S BGPC=""
 S T=$O(^ATXAX("B","BGP HEP C TEST LOINC CODES",0))
 S BGPLT=$O(^ATXLAB("B","BGP HEP C TESTS TAX",0))
 S E=9999999-EDATE S D=E-1 F  S D=$O(^AUPNVLAB("AE",P,D)) Q:D'=+D!(BGPC)  D
 .S L=0 F  S L=$O(^AUPNVLAB("AE",P,D,L)) Q:L'=+L!(BGPC)  D
 ..S X=0 F  S X=$O(^AUPNVLAB("AE",P,D,L,X)) Q:X'=+X!(BGPC)  D
 ...Q:'$D(^AUPNVLAB(X,0))
 ...I BGPLT,$P(^AUPNVLAB(X,0),U),$D(^ATXLAB(BGPLT,21,"B",$P(^AUPNVLAB(X,0),U))) D
 ....I $$POS($P(^AUPNVLAB(X,0),U,4)) S BGPC=1_U_$$DATE^BGP6UTL((9999999-D)) Q
 ...Q:'T
 ...S J=$P($G(^AUPNVLAB(X,11)),U,13) Q:J=""
 ...Q:'$$LOINC^BGP6D2(J,T)
 ...Q:'$$POS($P(^AUPNVLAB(X,0),U,4))
 ...S BGPC=1_U_$$DATE^BGP6UTL((9999999-D))_" Lab Test (Loinc "_$$VAL^XBDIQ1(9000010.09,X,1113)_")" ; Result POS"
 ...Q
 Q BGPC
HEPSCRR(P,EDATE) ;RETURN LAST WITH A RESULT
 NEW X,G,T,%,BGPC,BGPLT,L,D,J,R
 ;now get all loinc/taxonomy tests
 S BGPC=""
 S T=$O(^ATXAX("B","BGP HEP C TEST LOINC CODES",0))
 S BGPLT=$O(^ATXLAB("B","BGP HEP C TESTS TAX",0))
 S E=9999999-EDATE S D=E-1 F  S D=$O(^AUPNVLAB("AE",P,D)) Q:D'=+D!(BGPC)  D
 .S L=0 F  S L=$O(^AUPNVLAB("AE",P,D,L)) Q:L'=+L!(BGPC)  D
 ..S X=0 F  S X=$O(^AUPNVLAB("AE",P,D,L,X)) Q:X'=+X!(BGPC)  D
 ...Q:'$D(^AUPNVLAB(X,0))
 ...I BGPLT,$P(^AUPNVLAB(X,0),U),$D(^ATXLAB(BGPLT,21,"B",$P(^AUPNVLAB(X,0),U))) S R=$$GOODRES($P(^AUPNVLAB(X,0),U,4)) I R]"" S BGPC=1_U_$$DATE^BGP6UTL((9999999-D))_" result="_R_U_R Q
 ...Q:'T
 ...S J=$P($G(^AUPNVLAB(X,11)),U,13) Q:J=""
 ...Q:'$$LOINC^BGP6D2(J,T)
 ...S R=$$GOODRES($P(^AUPNVLAB(X,0),U,4))
 ...Q:R=""
 ...S BGPC=1_U_$$DATE^BGP6UTL((9999999-D))_" Lab Test (Loinc "_$$VAL^XBDIQ1(9000010.09,X,1113)_") result="_R_U_R
 ...Q
 Q BGPC
HEPCCON(P,EDATE) ;
 ;return first test with a POSITIVE result
 ;if none return first with a negative result
 ;if none return first one found
 NEW BGPG,BGPT,BGPLT
 ;GET ALL LABS INTO ARRAY BGPG
 S BGPLT=$O(^ATXAX("B","BGP HEP C CONF LOINC",0))
 S BGPT=$O(^ATXLAB("B","BGP HEP C CONF TEST TAX",0))
 NEW D,V,G,X,J,B,E,C,Y,R,I
 S C=0,E=9999999-EDATE  ;get inverse date and begin at edate-1 and end when greater than begin date
 S D=E-1,D=D_".9999" F  S D=$O(^AUPNVLAB("AE",P,D)) Q:D'=+D  D
 .S X=0 F  S X=$O(^AUPNVLAB("AE",P,D,X)) Q:X'=+X  D
 ..S Y=0 F  S Y=$O(^AUPNVLAB("AE",P,D,X,Y)) Q:Y'=+Y  D
 ...I BGPT,$D(^ATXLAB(BGPT,21,"B",X)) D SETLAB Q
 ...Q:'BGPLT
 ...S J=$P($G(^AUPNVLAB(Y,11)),U,13) Q:J=""
 ...Q:'$$LOINC^BGP6D21(J,BGPLT)
 ...D SETLAB Q
 ...Q
 ..Q
 .Q
 ;NOW SET UP ARRAY AS DATE^ITEM^RESULT
 ;ADD IN CPT CODES
 S X=$$FIRSTCPT^BGP6UTL1(P,"BGP HEP C CONF CPTS",$$DOB^AUPNPAT(P),EDATE)
 I X D
 .S C=C+1
 .S BGPG($P(X,U,1),C)=$P(X,U,1)_U_$P(X,U,2)
 ;FIND FIRST WITH A VALID RESULT
 I '$O(BGPG(0)) Q ""  ;NO TESTS
 S D=0,G="" F  S D=$O(BGPG(D)) Q:D'=+D!(G)  D
 .S C=0
 .F  S C=$O(BGPG(D,C)) Q:C'=+C!(G)  D
 ..;Q:$P(BGPG(D,C),U,3)=""  ;NO RESULT
 ..S R=$P(BGPG(D,C),U,3)
 ..S I="" I $P(BGPG(D,C),U,2)["Lab" S I=$P(BGPG(D,C),U,4)
 ..S Y=$$GOODRES(R,I) I Y="POS" S G=1_U_$$DATE^BGP6UTL($P(BGPG(D,C),U,1))_U_$P(BGPG(D,C),U,2)_U_$P(BGPG(D,C),U,3)_U_Y
 I G Q G
 ;IF NO POS RESULT TAKE FIRST ONE WITH NEG RESULT
 S D=0,G="" F  S D=$O(BGPG(D)) Q:D'=+D!(G)  D
 .S C=0
 .F  S C=$O(BGPG(D,C)) Q:C'=+C!(G)  D
 ..;Q:$P(BGPG(D,C),U,3)=""  ;NO RESULT
 ..S R=$P(BGPG(D,C),U,3)
 ..S I="" I $P(BGPG(D,C),U,2)["Lab" S I=$P(BGPG(D,C),U,4)
 ..S Y=$$GOODRES(R,I) I Y="NEG" S G=1_U_$$DATE^BGP6UTL($P(BGPG(D,C),U,1))_U_$P(BGPG(D,C),U,2)_U_$P(BGPG(D,C),U,3)_U_Y
 I G Q G
 ;IF NO NEG TAKE 1ST WITH NO RESULT
 S D=$O(BGPG(0)),C=$O(BGPG(D,0))
 Q 1_U_$$DATE^BGP6UTL($P(BGPG(D,C),U,1))_U_$P(BGPG(D,C),U,2)_U_U_"No Result"
SETLAB ;
 S C=C+1
 S BGPG($$VDTM^APCLV($P(^AUPNVLAB(Y,0),U,3)),C)=$$VD^APCLV($P(^AUPNVLAB(Y,0),U,3))_"^"_"Lab Result"_"^"_$$VAL^XBDIQ1(9000010.09,Y,.04)_"^"_Y_"^"_$P(^AUPNVLAB(Y,0),U,3)
 Q
CD4RES(P,BDATE,EDATE,NORES) ;EP
 NEW BGPG,BGPT,BGPC,BGPLT,T,B,E,D,L,X,R,G,C,%
 K BGPG,BGPT,BGPC
 S BGPC=0
 S NORES=$G(NORES)
 ;now get all loinc/taxonomy tests
 S T=$O(^ATXAX("B","BGP CD4 LOINC CODES",0))
 S BGPLT=$O(^ATXLAB("B","BGP CD4 TAX",0))
 S B=9999999-BDATE,E=9999999-EDATE S D=E-1 F  S D=$O(^AUPNVLAB("AE",P,D)) Q:D'=+D!(D>B)  D
 .S L=0 F  S L=$O(^AUPNVLAB("AE",P,D,L)) Q:L'=+L  D
 ..S X=0 F  S X=$O(^AUPNVLAB("AE",P,D,L,X)) Q:X'=+X  D
 ...Q:'$D(^AUPNVLAB(X,0))
 ...S R=$P(^AUPNVLAB(X,0),U,4) I 'R S R=""
 ...I BGPLT,$P(^AUPNVLAB(X,0),U),$D(^ATXLAB(BGPLT,21,"B",$P(^AUPNVLAB(X,0),U))) S BGPC=BGPC+1,BGPT(D,BGPC)=R Q
 ...Q:'T
 ...S J=$P($G(^AUPNVLAB(X,11)),U,13) Q:J=""
 ...Q:'$$LOINC^BGP6D2(J,T)
 ...S R=$P(^AUPNVLAB(X,0),U,4)
 ...I 'R S R=""
 ...S BGPC=BGPC+1,BGPT(D,BGPC)=R
 ...Q
 ; now got though and set return value of done 1 or 0^VALUE^date
 S D=0,G="" F  S D=$O(BGPT(D)) Q:D'=+D!(G]"")  D
 .S C=0 F  S C=$O(BGPT(D,C)) Q:C'=+C!(G]"")  D
 ..S X=BGPT(D,C)
 ..I X="" Q
 ..S G=(9999999-D)_U_X
 ..Q
 I G="" D  ;now get one with no result
 .S D=0,G="" F  S D=$O(BGPT(D)) Q:D'=+D!(G]"")  D
 ..S C=0 F  S C=$O(BGPT(D,C)) Q:C'=+C!(G]"")  D
 ...S X=BGPT(D,C)
 ...I X="" Q
 ...S G=(9999999-D)_U_X
 ..Q
 ;
 I 'NORES,G]"" Q 1_U_G  ;IF WANT A RESULT AND THERE IS ONE QUIT
 S %=$$CPT^BGP6DU(P,BDATE,EDATE,$O(^ATXAX("B","BGP CD4 CPTS",0)),5)
 I %]"" S BGPC=BGPC+1,BGPT(9999999-$P(%,U,1),BGPC)="CPT "_$P(%,U,2)
 S %=$$TRAN^BGP6DU(P,BDATE,EDATE,$O(^ATXAX("B","BGP CD4 CPTS",0)),5)
 I %]"" S BGPC=BGPC+1,BGPT(9999999-$P(%,U,1),BGPC)="CPT "_$P(%,U,2)
 I '$O(BGPT(0)) Q ""
 S %=$O(BGPT(0)) S C=$O(BGPT(%,0)) Q 1_"^"_(9999999-%)_"^"_BGPT(%,C)
 Q ""
 ;
GOODRES(R,I) ;EP
 ;is this a good result
 ;Positive confirmation test result defined as any number greater than 
 ;zero, "Pos", "Positive", "Detected", a result starting with ">", or a 
 ;result starting with a number.
 ;Negative confirmation test result defined as a result starting with "<", "Neg", "Negative", "None detected", "None Detec", or "Not detected".
 S R=$G(R)
 I R="" Q ""
 S R=$$UP^XLFSTR(R)
 I $E(R)="<" Q "NEG"
 I R["NON" Q "NEG"
 I R["NEGATIVE" Q "NEG"
 I R["NEG" Q "NEG"
 I R["NONE DETECTED" Q "NEG"
 I R["NONE DETEC" Q "NEG"
 I R["NOT DETECTED" Q "NEG"
 I R["NOTDETECTED" Q "NEG"
 I R["NOT DETECT" Q "NEG"
 I $E(R)=">" Q "POS"
 I R["POSITIVE" Q "POS"
 I R["DETECTED" Q "POS"
 I R["POS" Q "POS"
 I R["DETEC" Q "POS"
 I R["REACT" Q "POS"
 I +R>0 Q "POS"
 Q ""
GOODRES1 ;
 I '$G(I) Q ""
 ;comments field
 I $$UP^XLFSTR($G(^AUPNVLAB(I,13)))["NOT DETECTED" Q "NEG"
 NEW J,K,T
 S T=""
 S J=0,K="" F  S J=$O(^AUPNVLAB(I,21,J)) Q:J'=+J  D
 .S K=K_$G(^AUPNVLAB(I,21,J,0))
 I $$UP^XLFSTR(K)["NOT DETECTED" Q "NEG"
 I $$UP^XLFSTR(K)["NOTDETECTED" Q "NEG"
 Q ""
POS(R) ;IS THE RESULT A POSITIVE
 I $G(R)="" Q ""
 S R=$$UP^XLFSTR(R)
 I $E(R)="<" Q ""
 I R["NON" Q ""
 I R["NEGATIVE" Q ""
 I R["NEG" Q ""
 I R["NONE DETECTED" Q ""
 I R["NONE DETEC" Q ""
 I R["NOT DETECTED" Q ""
 I R["NOTDETECTED" Q ""
 I $E(R)=">" Q 1
 I R["POSITIVE" Q 1
 I R["DETECTED" Q 1
 I R["POS" Q 1
 I R["DETEC" Q 1
 I R["REACT" Q 1
 I +R>0 Q 1
 Q ""
NEG(R) ;
 I $G(R)="" Q ""
 S R=$G(R)
 I R="" Q ""
 S R=$$UP^XLFSTR(R)
 I $E(R)="<" Q 1
 I R["NEGATIVE" Q 1
 I R["NEG" Q 1
 I R["NONE DETECTED" Q 1
 I R["NONE DETEC" Q 1
 I R["NOT DETECTED" Q 1
 I R["NOTDETECTED" Q 1
 I R["NOT DETECT" Q 1
 I R["NON" Q 1
 Q ""
GETALLCF ;
 ;return first test with a valid result
 ;if none with a valid result, return 1st one
 NEW BGPG,BGPT,BGPLT
 ;GET ALL LABS INTO ARRAY BGPG
 S BGPLT=$O(^ATXAX("B","BGP HEP C CONF LOINC",0))
 S BGPT=$O(^ATXLAB("B","BGP HEP C CONF TEST TAX",0))
 NEW D,V,G,X,J,B,E,C,Y,R,I
 S C=0,E=9999999-BGPEDATE  ;get inverse date and begin at edate-1 and end when greater than begin date
 S D=E-1,D=D_".9999" F  S D=$O(^AUPNVLAB("AE",DFN,D)) Q:D'=+D  D
 .S X=0 F  S X=$O(^AUPNVLAB("AE",DFN,D,X)) Q:X'=+X  D
 ..S Y=0 F  S Y=$O(^AUPNVLAB("AE",DFN,D,X,Y)) Q:Y'=+Y  D
 ...I BGPT,$D(^ATXLAB(BGPT,21,"B",X)) D SETLABC Q
 ...Q:'BGPLT
 ...S J=$P($G(^AUPNVLAB(Y,11)),U,13) Q:J=""
 ...Q:'$$LOINC^BGP6D21(J,BGPLT)
 ...D SETLABC Q
 ...Q
 ..Q
 .Q
 Q
SETLABC ;
 S C=C+1
 S R=$$GOODRES($P(^AUPNVLAB(Y,0),U,4))
 I R="" Q
 S BGPCONFT($$VDTM^APCLV($P(^AUPNVLAB(Y,0),U,3)),R)=$$VD^APCLV($P(^AUPNVLAB(Y,0),U,3))_"^"_"Lab"_"^"_$$VAL^XBDIQ1(9000010.09,Y,.04)_"^"_Y_"^"_$P(^AUPNVLAB(Y,0),U,3)
 S BGPCONFT(R,$$VDTM^APCLV($P(^AUPNVLAB(Y,0),U,3)))=$$VD^APCLV($P(^AUPNVLAB(Y,0),U,3))_"^"_"Lab"_"^"_$$VAL^XBDIQ1(9000010.09,Y,.04)_"^"_Y_"^"_$P(^AUPNVLAB(Y,0),U,3)
 Q
BDMS9B2 ; IHS/CMI/LAB - DIABETIC CARE SUMMARY SUPPLEMENT ; 09 Nov 2017  3:25 PM
 ;;2.0;DIABETES MANAGEMENT SYSTEM;**3,4,5,6,7,8,9,10,11,12**;JUN 14, 2007;Build 51
 ;
 ;
MORE ;EP
 S X="Immunizations:" D S(X,1)
 S X="   Influenza vaccine (since August 1st): ",$E(X,41)=$$FLU^BDMS9B3(BDMSDFN) D S(X)
 S X="   Pneumococcal vaccine (ever):",$E(X,41)=$$PNEU^BDMS9B4(BDMSDFN) D S(X)
 S X="   Td/Tdap/DTAP/DT (in past 10 yrs):",$E(X,41)=$$TD^BDMS9B3(BDMSDFN,(DT-100000),DT) D S(X)
 S X="   Tdap (ever):",$E(X,41)=$P($$TDAP^BDMDG1B(BDMSDFN,DT,"H"),"  ",2,99) D S(X)
 S X="   Hepatitis B complete series (ever): ",$E(X,41)=$P($$HEP^BDMDG13(BDMSDFN,DT),"  ",2,99) D S(X)
 S Y=$$PPDS^BDMS9B4(BDMSDFN) S J=1 I Y]"" S X="TB - Status:",$E(X,30)=Y D S(X,1) S J=0
 S Y=$$PPD^BDMS9B4(BDMSDFN) S X="TB - Last Documented Test:",$E(X,30)=$P(Y,"  ",4)_"  "_$P(Y,"  ",1) D S(X,J)
 S X="",$E(X,6)="TB Test Result:",$E(X,30)=$P(Y,"  ",2)_"  "_$P(Y,"  ",3) D S(X)
 S X="     TB Treatment Completed: ",$E(X,30)=$$TB(BDMSDFN) D S(X)
HEPC ;2018 AUDIT
 D S("Hepatitis C (HCV)",1)
 S X=$$HEPCDX^BDMDG1D(BDMSDFN,DT) D S("   Diagnosed with HCV ever: "_$P(X,"  ",2))
 ;SCREEN ALL  P12
 S B=$$DOB^AUPNPAT(BDMSDFN)
 ;I B<2450101!(B>2651231) G R  ;patch 12 - add if screened ever
 I $E(X)'=1 D S("   Screened for HCV ever: "_$P($$HEPSCR^BDMDG1D(BDMSDFN,DT),"  ",2))
R ;retinopathy
 S X=$$DMRETDX^BDMDG1D(BDMSDFN,DT) D S("Retinopathy Diagnosed: "_$S($E(X)=1:"Yes",1:"No"),1)
 ;ADDED LE AMPUTATIONS
LEAMP ;
 S R=$$LEAMP^BDMDG1D(BDMSDFN,DT,2)
 ;
 D S("Amputation",1)
 S Y="   Lower extremity (ever), any type (e.g., toe, partial foot, above or" D S(Y)
 S Y="   below knee):  "_R D S(Y)
L ;
 S X="Laboratory Results (most recent):",$E(X,55)="RPMS LAB TEST NAME" D S(X,1)
 S X="   A1C:" S Y=$$HBA1C(BDMSDFN),$E(X,25)=$P(Y,"|||"),$E(X,44)=$$DATE^BDMS9B1($P(Y,"|||",2)),$E(X,55)=$P(Y,"|||",3) D S(X)
 I $P(Y,"|||",4)]"" S X="   Note: "_$P(Y,"|||",4) D S(X)
 S X="   Next most recent A1C:" S Y=$$NLHGB(BDMSDFN),$E(X,25)=$P(Y,"|||"),$E(X,44)=$$DATE^BDMS9B1($P(Y,"|||",2)),$E(X,55)=$P(Y,"|||",3) D S(X)
 S X="   Serum Creatinine:" S Y=$$CREAT(BDMSDFN),$E(X,25)=$P(Y,"|||"),$E(X,44)=$$DATE^BDMS9B1($P(Y,"|||",2)),$E(X,55)=$P(Y,"|||",3) D S(X,1)
 I $P(Y,"|||",4)]"" S X="   Note: "_$P(Y,"|||",4) D S(X)
 S X="   eGFR:" S Y=$$GFR(BDMSDFN),$E(X,25)=$P(Y,"|||"),$E(X,44)=$$DATE^BDMS9B1($P(Y,"|||",2)),$E(X,55)=$P(Y,"|||",3) D S(X)
 S Y=$$ACRATIO(BDMSDFN)
 S X="   UACR (Quant A/C Ratio):",$E(X,25)=$P(Y,"|||"),$E(X,44)=$$DATE^BDMS9B1($P(Y,"|||",2)),$E(X,55)=$P(Y,"|||",3) D S(X)
 S X="   Total Cholesterol:" S Y=$$TCHOL(BDMSDFN),$E(X,25)=$P(Y,"|||"),$E(X,44)=$$DATE^BDMS9B1($P(Y,"|||",2)),$E(X,55)=$P(Y,"|||",3) D S(X,1)
 ;S X="  Non-HDL Cholesterol:" S Y=$$NONHDL(BDMSDFN),$E(X,25)=$P(Y,"|||"),$E(X,44)=$$DATE^BDMS9B1($P(Y,"|||",2)),$E(X,55)=$P(Y,"|||",3) D S(X)
 S X="   LDL Cholesterol:" S Y=$$CHOL(BDMSDFN),$E(X,25)=$P(Y,"|||"),$E(X,44)=$$DATE^BDMS9B1($P(Y,"|||",2)),$E(X,55)=$P(Y,"|||",3) D S(X)
 S X="   HDL Cholesterol:" S Y=$$HDL(BDMSDFN),$E(X,25)=$P(Y,"|||"),$E(X,44)=$$DATE^BDMS9B1($P(Y,"|||",2)),$E(X,55)=$P(Y,"|||",3) D S(X)
 S X="   Triglycerides:" S Y=$$TRIG(BDMSDFN),$E(X,25)=$P(Y,"|||"),$E(X,44)=$$DATE^BDMS9B1($P(Y,"|||",2)),$E(X,55)=$P(Y,"|||",3) D S(X)
 S Z=0
EDUCD D S(" ")
 S BDMSBEG=$$FMADD^XLFDT(DT,-365)
 S X="Education Provided (in past yr): " D S(X)
 S X="  Last Dietitian Visit (ever):  "_$$DIETV^BDMS9B3(BDMSDFN) D S(X)
 S X=""
 K BDMX
 D EDUC
 I $D(BDMX) D
 .S %="" F  S %=$O(BDMX(%)) Q:%=""  D S("   "_BDMX(%))
 ;I X]"" D S(X)
 K BDMX,BDMY,%
 D EDUCREF I $D(BDMX) S X="In the past year, the patient has refused the following Diabetes education:" D S(X) D
 .S %="" F  S %=$O(BDMX(%)) Q:%=""  S X="  "_%_"     "_BDMX(%) D S(X)
 K BDMR,BDMY,%
 Q
S(Y,F,C,T) ;set up array
 I '$G(F) S F=0
 I '$G(T) S T=0
 NEW %,X
 ;blank lines
 F F=1:1:F S X="" D S1
 S X=Y
 I $G(C) S L=$L(Y),T=(80-L)/2 D  D S1 Q
 .F %=1:1:(T-1) S X=" "_X
 F %=1:1:T S X=" "_Y
 D S1
 Q
S1 ;
 S %=$P(^TMP("APCHS",$J,"DCS",0),U)+1,$P(^TMP("APCHS",$J,"DCS",0),U)=%
 S ^TMP("APCHS",$J,"DCS",%)=X
 Q
EDUC ;EP - gather up all education provided in past year in BDMX
 K BDMX,BDMY,BDMP S %=BDMSDFN_"^ALL EDUC;DURING "_$$DATE^BDMS9B1(BDMSBEG)_"-"_$$DATE^BDMS9B1(DT) S E=$$START1^APCLDF(%,"BDMY(") ;
 I '$D(BDMY) S BDMX(1)="   <No Education Topics recorded in past year>" K BDMY Q
 NEW X K BDMP S X=0,E="" F  S X=$O(BDMY(X)) Q:X'=+X  D
 .S E=+$P(BDMY(X),U,4)
 .Q:$P(^AUPNVPED(E,0),U,6)=5
 .S E=$P(^AUPNVPED(E,0),U)
 .Q:'$$EDT(E)
 .S BDMP($$UP^XLFSTR($P(BDMY(X),U,2)))=$$DATE^BDMS9B1($P(BDMY(X),U))_U_$$EPRV(+$P(BDMY(X),U,4))
 ;S %=0,E="" F  S E=$O(BDMP(E)) Q:E=""  S %=%+1,BDMX(%)=$E(E,1,25),$E(BDMX(%),28)=$P(BDMP(E),U,1),$E(BDMX(%),39)=$P(BDMP(E),U,2)
 S E="" F  S E=$O(BDMP(E)) Q:E=""  S BDMX(E)=$E(E,1,30),$E(BDMX(E),33)=$P(BDMP(E),U,1),$E(BDMX(E),45)=$P(BDMP(E),U,2)
 K BDMY
 Q
EPRV(I) ;
 NEW P,D,%
 S P=$$VALI^XBDIQ1(9000010.16,I,.05) I P S D=$$PROVCLS^XBFUNC1(P) S %="",%=$E($P(^VA(200,P,0),U,1),1,18),$E(%,24)=$E(D,1,15) Q %
 S P=$$VALI^XBDIQ1(9000010.16,I,1204) I P S D=$$PROVCLS^XBFUNC1(P) S %="",%=$E($P(^VA(200,P,0),U,1),1,18),$E(%,24)=$E(D,1,15) Q %
 S P=$$VALI^XBDIQ1(9000010.16,I,1202) I P S D=$$PROVCLS^XBFUNC1(P) S %="",%=$E($P(^VA(200,P,0),U,1),1,18),$E(%,24)=$E(D,1,15) Q %
 S P=$$PRIMPROV^APCLV($P(^AUPNVPED(I,0),U,3),"I") I P S D=$$PROVCLS^XBFUNC1(P) S %="",%=$E($P(^VA(200,P,0),U,1),1,18),$E(%,20)=$E(D,1,15)
 Q ""
EDUCREF ;EP - gather up all education provided in past year
 K BDMX,BDMY
 S BDMY=0 F  S BDMY=$O(^AUPNPREF("AA",BDMSPAT,9999999.09,BDMY)) Q:BDMY'=+BDMY  I $$EDT(BDMY) S BDMD=$O(^AUPNPREF("AA",BDMSPAT,9999999.09,BDMY,0)) I BDMD<(9999999-BDMSBEG) D
 .Q:$D(BDMP($$UP^XLFSTR($P(^AUTTEDT(BDMY,0),U))))  ;already displayed
 .S BDMX($P(^AUTTEDT(BDMY,0),U))=$$DATE^BDMS9B1(9999999-BDMD)
 Q
EDT(E) ;
 ;is this ien in any taxonomy
 NEW T,S
 S T=$O(^ATXAX("B","DM AUDIT DIABETES EDUC TOPICS",0))
 I T,$D(^ATXAX(T,21,"B",E)) Q 1
 S T=$O(^ATXAX("B","DM AUDIT DIET EDUC TOPICS",0))
 I T,$D(^ATXAX(T,21,"B",E)) Q 1
 S T=$O(^ATXAX("B","DM AUDIT EXERCISE EDUC TOPICS",0))
 I T,$D(^ATXAX(T,21,"B",E)) Q 1
 S T=$O(^ATXAX("B","DM AUDIT OTHER EDUC TOPICS",0))
 I T,$D(^ATXAX(T,21,"B",E)) Q 1
 S T=$P(^AUTTEDT(E,0),U,2)
 I $P(T,"-")="DM" Q 1
 I $P(T,"-")="DMC" Q 1
 I $P(T,"-")="MNT" Q 1
 I $P(T,"-")="DMCN" Q 1
 I $P(T,"-",2)="EX" Q 1
 I $P(T,"-",2)="N" Q 1
 I $P(T,"-",2)="DT" Q 1
 I $P(T,"-",2)="MNT" Q 1
 ;SNOMED
 I $P(T,"-",1)]"",$$SNOMED^BDMUTL($$LE(),"PXRM DIABETES",$P(T,"-",1)) Q 1
 NEW CODE
 S G=""
 S CODE=$P($$CODEN^BDMUTL($P(T,"-",1),80),"~")
 I CODE>0 D
 .N TAX
 .S TAX=$O(^ATXAX("B","SURVEILLANCE DIABETES",0))
 .I $$ICD^BDMUTL(CODE,$P(^ATXAX(TAX,0),U),9) S G=1
 Q G
LE() ;EP
 NEW A,B
 S B=""
 S A=0 F  S A=$O(^BDMSNME("B",A)) Q:A=""  S B=A
 Q B
TB(P) ;
 I '$G(P) Q ""
 NEW BDMS,E,X
 K BDMS
 S X=P_"^LAST HEALTH [DM AUDIT TB HEALTH FACTORS" S E=$$START1^APCLDF(X,"BDMS(")
 I $D(BDMS(1)) Q $P($G(BDMS(1)),U,3)
 NEW %,Y
 S %=$O(^ATXAX("B","DM AUDIT TB HEALTH FACTORS",0))
 I '% Q ""
 S (X,Y)=0 F  S X=$O(^AUPNHF("AA",P,X)) Q:X'=+X!(Y)  I $D(^ATXAX(%,21,"B",X)) S Y=X
 I 'Y Q ""
 Q $P(^AUTTHF(Y,0),U)
GFR(P) ;
 I '$G(P) Q ""
 S BDMC=""
 NEW T,T1,T2
 S T=$O(^LAB(60,"B","ESTIMATED GFR",0))
 S T1=$O(^ATXLAB("B","BGP GPRA ESTIMATED GFR TAX",0))
 S T2=$O(^ATXAX("B","BGP ESTIMATED GFR LOINC",0))
 NEW D,V,G,X,J S (D,G)=0 F  S D=$O(^AUPNVLAB("AE",P,D)) Q:D'=+D!(BDMC]"")  D
 .S X=0 F  S X=$O(^AUPNVLAB("AE",P,D,X)) Q:X'=+X!(BDMC]"")  D
 ..S Y=0 F  S Y=$O(^AUPNVLAB("AE",P,D,X,Y)) Q:Y'=+Y  D
 ...Q:'$D(^AUPNVLAB(Y,0))
 ...I $O(^LAB(60,$P(^AUPNVLAB(Y,0),U,1),2,0)) Q  ;NO PANELS PER DOROTHY
 ...I T,$P(^AUPNVLAB(Y,0),U)=T D
 ....I BDMC]"",$P(^AUPNVLAB(Y,0),U,4)="" Q
 ....S BDMC=$$LBLK($P(^AUPNVLAB(Y,0),U,4),6)_" "_$P($G(^AUPNVLAB(Y,11)),U)_"|||"_$P($P(^AUPNVSIT($P(^AUPNVLAB(Y,0),U,3),0),U),".")_"|||"_$E($$VAL^XBDIQ1(9000010.09,Y,.01),1,25)_"|||"_Y Q
 ...I T1,$P(^AUPNVLAB(Y,0),U),$D(^ATXLAB(T1,21,"B",$P(^AUPNVLAB(Y,0),U))) D
 ....I BDMC]"",$P(^AUPNVLAB(Y,0),U,4)="" Q
 ....S BDMC=$$LBLK($P(^AUPNVLAB(Y,0),U,4),6)_" "_$P($G(^AUPNVLAB(Y,11)),U)_"|||"_$P($P(^AUPNVSIT($P(^AUPNVLAB(Y,0),U,3),0),U),".")_"|||"_$E($$VAL^XBDIQ1(9000010.09,Y,.01),1,25)_"|||"_Y Q
 ...S J=$P($G(^AUPNVLAB(Y,11)),U,13) Q:J=""
 ...Q:'$$LOINC(J,T2)
 ...I $O(^LAB(60,$P(^AUPNVLAB(Y,0),U,1),2,0)) Q  ;NO PANELS PER DOROTHY
 ...S BDMC=$$LBLK($P(^AUPNVLAB(Y,0),U,4),6)_" "_$P($G(^AUPNVLAB(Y,11)),U)_"|||"_$P($P(^AUPNVSIT($P(^AUPNVLAB(Y,0),U,3),0),U),".")_"|||"_$E($$VAL^XBDIQ1(9000010.09,Y,.01),1,25)_"|||"_Y
 ...Q
 I BDMC]"" Q BDMC
 S T=$O(^ATXLAB("B","BGP GPRA ESTIMATED GFR TAX",0)) I 'T Q ""
 Q $$LAB(P,T)
CHOL(P) ;EP
 I '$G(P) Q ""
 NEW T S T=$O(^ATXLAB("B","DM AUDIT LDL CHOLESTEROL TAX",0)),LT=$O(^ATXAX("B","BGP LDL LOINC CODES",0)) I 'T Q "<Taxonomy Missing>"
 Q $$LAB(P,T,LT)
HDL(P) ;EP
 I '$G(P) Q ""
 NEW T S T=$O(^ATXLAB("B","DM AUDIT HDL TAX",0)),LT=$O(^ATXAX("B","BGP HDL LOINC CODES",0)) I 'T Q "<Taxonomy Missing>"
 Q $$LAB(P,T,LT)
TCHOL(P) ;EP
 I '$G(P) Q ""
 NEW T S T=$O(^ATXLAB("B","DM AUDIT CHOLESTEROL TAX",0)),LT=$O(^ATXAX("B","BGP TOTAL CHOLESTEROL LOINC",0)) I 'T Q "<Taxonomy Missing>"
 Q $$LAB(P,T,LT)
NONHDL(P) ;
 NEW V,D,TC,HDL,TCD,HDLD,NT
 I '$G(P) Q ""
 S V=""
 NEW T S T=$O(^ATXLAB("B","DM AUDIT CHOLESTEROL TAX",0)),LT=$O(^ATXAX("B","BGP TOTAL CHOLESTEROL LOINC",0)) I 'T Q "<Taxonomy Missing>"
 S TC=$$LAB(P,T,LT),TCD=$P(TC,"|||",2),TC=$$STRIP^XLFSTR($P(TC,"|||")," ")
 I TC="" Q V
 I TCD<$P(V,"|||",2) Q V
 S T=$O(^ATXLAB("B","DM AUDIT HDL TAX",0)),LT=$O(^ATXAX("B","BGP HDL LOINC CODES",0)) I 'T Q "<Taxonomy Missing>"
 S HDL=$$LAB(P,T,LT),HDLD=$P(HDL,"|||",2),HDL=$$STRIP^XLFSTR($P(HDL,"|||")," ")
 I HDL="" Q V
 I HDLD<$P(V,"|||",2) Q V
 S TC=+TC,HDL=+HDL
 I 'TC Q ""
 I 'HDL Q ""
 Q $$LBLK(TC-HDL,6)_"|||"_TCD_"|||[Calculated Value]"
TRIG(P) ;EP
 I '$G(P) Q ""
 NEW T S T=$O(^ATXLAB("B","DM AUDIT TRIGLYCERIDE TAX",0)),LT=$O(^ATXAX("B","BGP TRIGLYCERIDE LOINC CODES",0)) I 'T Q "<Taxonomy Missing>"
 Q $$LAB(P,T,LT)
CREAT(P) ;
 I '$G(P) Q ""
 NEW T S T=$O(^ATXLAB("B","DM AUDIT CREATININE TAX",0)),LT=$O(^ATXAX("B","BGP CREATININE LOINC CODES",0)) I 'T Q "<Taxonomy Missing>"
 Q $$LAB(P,T,LT)
 ;
PCR(P) ;EP
 I '$G(P) Q ""
 NEW T S T=$O(^ATXLAB("B","DM AUDIT P/C RATIO TAX",0)),LT=$O(^ATXAX("B","DM AUDIT P/C RATIO LOINC",0)) I 'T Q "<Taxonomy Missing>"
 Q $$LAB(P,T,LT,1)
LAB(P,T,LT,YEAR) ;EP
 I '$G(LT) S LT=""
 S YEAR=$G(YEAR)
 NEW BDATE
 S BDATE=$S(YEAR:$$FMADD^XLFDT(DT,-365),1:$$DOB^AUPNPAT(P))
 NEW D,V,G,X,J S (D,G)=0 F  S D=$O(^AUPNVLAB("AE",P,D)) Q:D'=+D!(G)  D
 .S X=0 F  S X=$O(^AUPNVLAB("AE",P,D,X)) Q:X'=+X!(G)  D
 ..Q:(9999999-D)<BDATE
 ..S Y=0 F  S Y=$O(^AUPNVLAB("AE",P,D,X,Y)) Q:Y'=+Y!(G)  D
 ...I $D(^ATXLAB(T,21,"B",X)),$P(^AUPNVLAB(Y,0),U,4)]"" S G=Y Q
 ...Q:'LT
 ...S J=$P($G(^AUPNVLAB(Y,11)),U,13) Q:J=""
 ...Q:'$$LOINC(J,LT)
 ...S G=Y
 ...Q
 ..Q
 .Q
 I 'G Q ""
 S R=$$LBLK($P(^AUPNVLAB(G,0),U,4),6)_" "_$P($G(^AUPNVLAB(G,11)),U)_"|||"
 S R=R_$P($P($G(^AUPNVSIT($P(^AUPNVLAB(G,0),U,3),0)),U),".")_"|||"_$E($$VAL^XBDIQ1(9000010.09,G,.01),1,25)_"|||"_$$REF(P,T,$P($P($G(^AUPNVSIT($P(^AUPNVLAB(G,0),U,3),0)),U),"."))_"|||"_G
 Q R
LOINC(A,B) ;EP
 NEW %
 S %=$P($G(^LAB(95.3,A,9999999)),U,2)
 I %]"",$D(^ATXAX(B,21,"B",%)) Q 1
 S %=$P($G(^LAB(95.3,A,0)),U)_"-"_$P($G(^LAB(95.3,A,0)),U,15)
 I $D(^ATXAX(B,21,"B",%)) Q 1
 Q ""
DATE(D) ;EP - convert to slashed date
 I $G(D)="" Q ""
 Q $E(D,4,5)_"/"_$E(D,6,7)_"/"_$E(D,2,3)
REF(P,T,D) ;return refusal string after date D for test is tax T
 I '$G(P) Q ""
 I '$G(T) Q ""
 I '$G(D) S D=""
 N BDMREF,BDMT,V S BDMT=0 F  S BDMT=$O(^ATXLAB(T,21,"B",BDMT)) Q:BDMT'=+BDMT  D
 .S V=$$REF1(P,60,BDMT,D) I V]"" S BDMREF(9999999-$P(V,U,3))=V
 I $D(BDMREF) S %=0,%=$O(BDMREF(%)) I % S V=BDMREF(%) Q V
 Q ""
REF1(P,F,I,D,T) ; ;
 I '$G(P) Q ""
 I '$G(F) Q ""
 I '$G(I) Q ""
 I $G(D)="" S D=""
 I $G(T)="" S T="E"
 NEW X,N S X=$O(^AUPNPREF("AA",P,F,I,0))
 I 'X Q ""
 S N=$O(^AUPNPREF("AA",P,F,I,X,0))
 NEW Y S Y=9999999-X
 I D]"",Y>D Q $S(T="I":Y,1:$$TYPEREF(N)_"-"_$$DATE(Y))
 I T="I" Q Y  ;quit on internal form of date
 Q $$TYPEREF(N)_"-"_$$DATE(Y)
 ;
TYPEREF(N) ;
 NEW % S %=$P(^AUPNPREF(N,0),U,7)
 I %="R"!(%="") Q "Refused"
 I %="N" Q "Not Med Ind"
 I %="F" Q "No Resp to F/U"
 Q ""
NLHGB(P) ;return next to last HGBA1C
 I '$G(P) Q ""
 NEW T S T=$O(^ATXLAB("B","DM AUDIT HGB A1C TAX",0)) I 'T Q "<Taxonomy Missing>"
 NEW LT S LT=$O(^ATXAX("B","BGP HGBA1C LOINC CODES",0))
 NEW D,V,G,X,E S (D,G)=0,E="" F  S D=$O(^AUPNVLAB("AE",P,D)) Q:D'=+D!(G=2)  D
 .S X=0 F  S X=$O(^AUPNVLAB("AE",P,D,X)) Q:X'=+X!(G=2)  D
 ..S Y=0 F  S Y=$O(^AUPNVLAB("AE",P,D,X,Y)) Q:Y'=+Y!(G=2)  D
 ...I $D(^ATXLAB(T,21,"B",X)),$P(^AUPNVLAB(Y,0),U,4)]"" S G=G+1,E=Y Q
 ...Q:'LT
 ...S J=$P($G(^AUPNVLAB(Y,11)),U,13) Q:J=""
 ...Q:'$$LOINC(J,LT)
 ...S G=G+1,E=Y
 ...Q
 ..Q
 .Q
 I G'=2 Q ""
 I 'E Q ""
 Q $$LBLK($P(^AUPNVLAB(E,0),U,4),6)_" "_$P($G(^AUPNVLAB(E,11)),U)_"|||"_$P($P(^AUPNVSIT($P(^AUPNVLAB(E,0),U,3),0),U),".")_"|||"_$E($$VAL^XBDIQ1(9000010.09,E,.01),1,25)
HBA1C(P) ;
 I '$G(P) Q ""
 NEW T S T=$O(^ATXLAB("B","DM AUDIT HGB A1C TAX",0)),LT=$O(^ATXAX("B","BGP HGBA1C LOINC CODES",0)) I 'T Q "<Taxonomy Missing>"
 Q $$LAB(P,T,LT)
URIN(P) ;
 I '$G(P) Q ""
 NEW T S T=$O(^ATXLAB("B","DM AUDIT URINE PROTEIN TAX",0)),LT=$O(^ATXAX("B","DM AUDIT URINE PROTEIN LOINC",0)) I 'T Q "<Taxonomy Missing>"
 Q $$LAB(P,T,LT,1)
MICRO(P) ;
 I '$G(P) Q ""
 NEW T S T=$O(^ATXLAB("B","DM AUDIT MICROALBUMINURIA TAX",0)),LT=$O(^ATXAX("B","DM AUDIT MICROALBUMIN LOINC",0)) I 'T Q "<Taxonomy Missing>"
 Q $$LAB(P,T,LT,1)
ACRATIO(P) ;
 I '$G(P) Q ""
 NEW T S T=$O(^ATXLAB("B","DM AUDIT QUANT UACR",0)),LT=$O(^ATXAX("B","DM AUDIT A/C RATIO LOINC",0)) I 'T Q "<Taxonomy Missing>"
 Q $$LAB(P,T,LT)
HR24(P) ;
 I '$G(P) Q ""
 NEW T S T=$O(^ATXLAB("B","DM AUDIT 24HR URINE PROTEIN",0)),LT="" I 'T Q "<Taxonomy Missing>"
 Q $$LAB(P,T,LT,1)
SEMI(P) ;
 I '$G(P) Q ""
 NEW T S T=$O(^ATXLAB("B","DM AUDIT SEMI QUANT UACR",0)),LT="" I 'T Q "<Taxonomy Missing>"
 Q $$LAB(P,T,LT,1)
LBLK(V,L) ;EP LEFT blank fill
 NEW %,I
 S %=$L(V),Z=L-% F I=1:1:Z S V=" "_V
 Q V
LDLLAB ;EP
 K BDMX
 NEW LT S LT=$O(^ATXAX("B","BGP LDL LOINC CODES",0))
 NEW D,V,X,G S (D,G)=0 F  S D=$O(^AUPNVLAB("AE",BDMSPAT,D)) Q:D'=+D!(G>2)  D
 .S X=0 F  S X=$O(^AUPNVLAB("AE",BDMSPAT,D,X)) Q:X'=+X!(G>2)  D
 ..S Y=0 F  S Y=$O(^AUPNVLAB("AE",BDMSPAT,D,X,Y)) Q:Y'=+Y!(G>2)  D
 ...Q:'$D(^AUPNVLAB(Y,0))
 ...I $P(^AUPNVLAB(Y,0),U,4)="" Q
 ...I Y=BDMIEN Q
 ...I $D(^ATXLAB(T,21,"B",X)) D   Q
 ....S R=$P(^AUPNVLAB(Y,0),U,4) Q:R'=+R
 ....S BDMX(Y)=R_"^"_(9999999-D),G=G+1
 ...Q:'LT
 ...S J=$P($G(^AUPNVLAB(Y,11)),U,13) Q:J=""
 ...Q:'$$LOINC(J,LT)
 ...S R=$P(^AUPNVLAB(Y,0),U,4) Q:R'=+R
 ...S BDMX(Y)=R_"^"_(9999999-D),G=G+1
 ...Q
 ..Q
 .Q
 Q

BUDHUTL2 ; IHS/CMI/LAB - utilities for BUD ;
 ;;13.0;IHS/RPMS UNIFORM DATA SYSTEM;;OCT 12, 2018;Build 90
 ;;* MICHAEL REMILLARD, DDS * CIMARRON MEDICAL INFORMATICS, FOR IHS *
 ;;  RETRIEVE PATIENTS FOR DUE LISTS & LETTERS.
 ;;  PATCH 1: Correct test for Active Chart at site DUZ2.  INACTREG+11
 ;;           Also, add Street Address Line 2 aAPCLlity.  STREET+0
 ;;           Also, provide test for patient IneligiAPCLlity  INELIG+0
 ;
 ;----------
DOB(DFN) ;EP
 ;---> Return Patient's Date of APCLrth in Fileman format.
 ;---> Parameters:
 ;     1 - DFN   (req) Patient's IEN (DFN).
 ;
 Q:'$G(DFN) "NO PATIENT"
 Q:'$P($G(^DPT(DFN,0)),U,3) "NOT ENTERED"
 Q $P(^DPT(DFN,0),U,3)
 ;
 ;
 ;
 ;----------
AGE(DFN,APCLZ,APCLDT) ;EP
 ;---> Return Patient's Age.
 ;---> Parameters:
 ;     1 - DFN  (req) IEN in PATIENT File.
 ;     2 - APCLZ  (opt) APCLZ=1,2,3  1=years, 2=months, 3=days.
 ;                               2 will be assumed if not passed.
 ;     3 - APCLDT (opt) Date on which Age should be calculated.
 ;
 N APCLDOB,X,X1,X2  S:$G(APCLZ)="" APCLZ=2
 Q:'$G(DFN) ""
 S APCLDOB=$$DOB(DFN)
 Q:'APCLDOB ""
 S:'$G(DT) DT=$$DT^XLFDT
 S:'$G(APCLDT) APCLDT=DT
 Q:APCLDT<APCLDOB ""
 ;
 ;---> Age in Years.
 N APCLAGEY,APCLAGEM,APCLD1,APCLD2,APCLM1,APCLM2,APCLY1,APCLY2
 S APCLM1=$E(APCLDOB,4,7),APCLM2=$E(APCLDT,4,7)
 S APCLY1=$E(APCLDOB,1,3),APCLY2=$E(APCLDT,1,3)
 S APCLAGEY=APCLY2-APCLY1 S:APCLM2<APCLM1 APCLAGEY=APCLAGEY-1
 S:APCLAGEY<1 APCLAGEY="<1"
 Q:APCLZ=1 APCLAGEY
 ;
 ;---> Age in Months.
 S APCLD1=$E(APCLM1,3,4),APCLM1=$E(APCLM1,1,2)
 S APCLD2=$E(APCLM2,3,4),APCLM2=$E(APCLM2,1,2)
 S APCLAGEM=12*APCLAGEY
 I APCLM2=APCLM1&(APCLD2<APCLD1) S APCLAGEM=APCLAGEM+12
 I APCLM2>APCLM1 S APCLAGEM=APCLAGEM+APCLM2-APCLM1
 I APCLM2<APCLM1 S APCLAGEM=APCLAGEM+APCLM2+(12-APCLM1)
 S:APCLD2<APCLD1 APCLAGEM=APCLAGEM-1
 Q:APCLZ=2 APCLAGEM
 ;
 ;---> Age in Days.
 S X1=APCLDT,X2=APCLDOB
 D ^%DTC
 Q X
 ;
 ;
 ;
LOINC(A,B) ;
 NEW %
 S %=$P($G(^LAB(95.3,A,9999999)),U,2)
 I %]"",$D(^ATXAX(B,21,"B",%)) Q 1
 S %=$P($G(^LAB(95.3,A,0)),U)_"-"_$P($G(^LAB(95.3,A,0)),U,15)
 I $D(^ATXAX(B,21,"B",%)) Q 1
 Q ""
 ;
FITDNA(P,BDATE,EDATE) ;EP
 I $G(BDATE)="" S BDATE=$E(EDATE,1,3)-3_$E(EDATE,4,7)
 S BUDD="",BUDLFOB=""
 S T=$O(^ATXAX("B","BGP FIT-DNA LOINC CODES",0))
 S BUDLT=$O(^ATXLAB("B","BGP FIT-DNA TESTS",0))
 S B=9999999-BDATE,E=9999999-EDATE S D=E-1 F  S D=$O(^AUPNVLAB("AE",P,D)) Q:D'=+D!(D>B)!(BUDD]"")  D
 .S L=0 F  S L=$O(^AUPNVLAB("AE",P,D,L)) Q:L'=+L!(BUDD]"")  D
 ..S X=0 F  S X=$O(^AUPNVLAB("AE",P,D,L,X)) Q:X'=+X!(BUDD]"")  D
 ...Q:'$D(^AUPNVLAB(X,0))
 ...I BUDLT,$P(^AUPNVLAB(X,0),U),$D(^ATXLAB(BUDLT,21,"B",$P(^AUPNVLAB(X,0),U))) S BUDD="FIT-DNA: Lab "_$$VAL^XBDIQ1(9000010.09,X,.01)_":"_$$DATE^BUDHDU(9999999-D)_U_(9999999-D) Q
 ...Q:'T
 ...S J=$P($G(^AUPNVLAB(X,11)),U,13) Q:J=""
 ...Q:'$$LOINC(J,T)
 ...S BUDD="FIT-DNA: LAB LOINC "_$$VAL^XBDIQ1(9000010.09,X,.01)_":"_$$DATE^BUDHDU(9999999-D)_U_(9999999-D) Q
 ...Q
 S BUDLFOB=BUDD
 Q BUDLFOB
CTC(P,BDATE,EDATE) ;EP
 NEW BUDVS,TIEN,CTR,VIEN,VDATE,X,Y,Z,BUDTOB
 I $G(BDATE)="" S BDATE=$E(EDATE,1,3)-5_$E(EDATE,4,7)
 D ALLV^APCLAPIU(P,BDATE,EDATE,"BUDVS")
 S BUDTOB=""
 S TIEN=$O(^BUDHTSSC("B","T6B CRC CT COLON CODES",0))
 S CTR=0 F  S CTR=$O(BUDVS(CTR)) Q:CTR'=+CTR!(BUDTOB]"")  D
 .S VIEN=$P(BUDVS(CTR),U,5)
 .S VDATE=$P(BUDVS(CTR),U,1)
 .;POV/SNOMED
 .S X=0 F  S X=$O(^AUPNVPOV("AD",VIEN,X)) Q:X'=+X!(BUDTOB]"")  D
 ..Q:'$D(^AUPNVPOV(X,0))
 ..S Y=$$VALI^XBDIQ1(9000010.07,X,.01) I $D(^BUDHTSSC("AD",Y,TIEN)) S BUDTOB="CTC: DX "_$$VAL^XBDIQ1(9000010.07,X,.01)_":"_$$DATE^BUDEDU(VDATE)_U_VDATE Q
 ..S Y=$$VAL^XBDIQ1(9000010.07,X,1101)
 ..Q:Y=""
 ..I $D(^BUDHTSSC("AS",Y,TIEN)) S BUDTOB="CTC: DX "_Y_":"_$$DATE^BUDHDU(VDATE)_U_VDATE Q
 .;CPT
 .S X=0 F  S X=$O(^AUPNVCPT("AD",VIEN,X)) Q:X'=+X!(BUDTOB]"")  D
 ..Q:'$D(^AUPNVCPT(X,0))
 ..S Y=$$VAL^XBDIQ1(9000010.18,X,.01)
 ..Q:Y=""
 ..I $D(^BUDHTSSC("AC",Y,TIEN)) S BUDTOB="CTC: CPT "_$$VAL^XBDIQ1(9000010.18,X,.01)_":"_$$DATE^BUDHDU(VDATE)_U_VDATE Q
 .;V TRANS
 .S X=0 F  S X=$O(^AUPNVTC("AD",VIEN,X)) Q:X'=+X!(BUDTOB]"")  D
 ..Q:'$D(^AUPNVTC(X,0))
 ..S Y=$$VAL^XBDIQ1(9000010.33,X,.07)
 ..Q:Y=""
 ..I $D(^BUDHTSSC("AC",Y,TIEN)) S BUDTOB="CTC: CPT "_Y_":"_$$DATE^BUDHDU(VDATE)_U_VDATE Q
 .;V PROC
 .S X=0 F  S X=$O(^AUPNVPRC("AD",VIEN,X)) Q:X'=+X!(BUDTOB]"")  D
 ..Q:'$D(^AUPNVPRC(X,0))
 ..S Y=$$VALI^XBDIQ1(9000010.08,X,.01)
 ..I $D(^BUDHTSSC("AP",Y,TIEN)) S BUDTOB="CTC: PROC "_$$VAL^XBDIQ1(9000010.08,X,.01)_":"_$$DATE^BUDHDU(VDATE)_U_VDATE Q
 I BUDTOB]"" Q BUDTOB
 Q ""
 ;----------
AGEF(DFN,APCLDT) ;EP
 ;---> Age formatted "35 Months" or "23 Years"
 ;---> Parameters:
 ;     1 - DFN  (req) Patient's IEN (DFN).
 ;     2 - APCLDT (opt) Date on which Age should be calculated.
 ;
 N Y
 S Y=$$AGE(DFN,2,$G(APCLDT))
 Q:Y["DECEASED" Y
 Q:Y["NOT BORN" Y
 ;
 ;---> If over 60 months, return years.
 I Y>60 S Y=$$AGE(DFN,1,$G(APCLDT)) Q Y_$S(Y=1:"year",1:" yrs")
 ;
 ;---> If under 1 month return days.
 I Y<1 S Y=$$AGE(DFN,3,$G(APCLDT)) Q Y_$S(Y=1:" day",1:" days")
 ;
 ;---> Return months
 Q Y_$S(Y=1:" mth",1:" mths")
 ;
 ;
 ;----------
DECEASED(DFN,APCLDT) ;EP
 ;---> Return 1 if patient is deceased, 0 if not deceased.
 ;---> Parameters:
 ;     1 - DFN  (req) Patient's IEN (DFN).
 ;     2 - APCLDT (opt) If APCLDT=1 return Date of Death (Fileman format).
 ;
 Q:'$G(DFN) 0
 N X S X=+$G(^DPT(DFN,.35))
 Q:'X 0
 Q:'$G(APCLDT) 1
 Q X
 ;
 ;
GETMEDS(P,BUDMBD,BUDMED,TAXM,TAXN,TAXC,BUDDNAME,BUDZ,TAXRN) ;EP
 S TAXM=$G(TAXM)
 S TAXN=$G(TAXN)
 S TAXC=$G(TAXC)
 S TAXRXN=$G(TAXRXN)
 K ^TMP($J,"MEDS"),BUDZ
 S BUDDNAME=$G(BUDDNAME)
 NEW BUDCC1,BUDINED,BUDINBD,BUDMIEN,BUDD,X,Y,T,T1,D,G
 S BUDCC1=0 K BUDZ
 S BUDINED=(9999999-BUDMED)-1,BUDINBD=(9999999-BUDMBD)
 F  S BUDINED=$O(^AUPNVMED("AA",P,BUDINED)) Q:BUDINED=""!(BUDINED>BUDINBD)  D
 .S BUDMIEN=0 F  S BUDMIEN=$O(^AUPNVMED("AA",P,BUDINED,BUDMIEN)) Q:BUDMIEN'=+BUDMIEN  D
 ..Q:'$D(^AUPNVMED(BUDMIEN,0))
 ..S BUDD=$P(^AUPNVMED(BUDMIEN,0),U)
 ..Q:BUDD=""
 ..Q:'$D(^PSDRUG(BUDD,0))
 ..S BUDCC1=BUDCC1+1
 ..S ^TMP($J,"MEDS","ORDER",(9999999-BUDINED),BUDCC1)=(9999999-BUDINED)_U_$P(^PSDRUG(BUDD,0),U)_U_$P(^PSDRUG(BUDD,0),U)_U_BUDMIEN_U_$P(^AUPNVMED(BUDMIEN,0),U,3)
 ;reorder
 S BUDCC1=0,X=0
 F  S X=$O(^TMP($J,"MEDS","ORDER",X)) Q:X'=+X  D
 .S Y=0 F  S Y=$O(^TMP($J,"MEDS","ORDER",X,Y)) Q:Y'=+Y  D
 ..S BUDCC1=BUDCC1+1
 ..S ^TMP($J,"MEDS",BUDCC1)=^TMP($J,"MEDS","ORDER",X,Y)
 K ^TMP($J,"MEDS","ORDER")
 S T="" I TAXM]"" S T=$O(^ATXAX("B",TAXM,0))
 S T1="" I TAXN]"" S T1=$O(^ATXAX("B",TAXN,0))
 S T2="" I TAXC]"" S T2=$O(^ATXAX("B",TAXC,0))
 S T3="" I TAXRXN]"" S T3=$O(^ATXAX("B",TAXRXN,0))
 S BUDCC1=0,X=0 F  S X=$O(^TMP($J,"MEDS",X)) Q:X'=+X  S Y=+$P(^TMP($J,"MEDS",X),U,4) D
 .Q:'$D(^AUPNVMED(Y,0))
 .S G=0
 .S D=$P(^AUPNVMED(Y,0),U)
 .S C=$P($G(^PSDRUG(D,0)),U,2)
 .I C]"",T2,$D(^ATXAX(T2,21,"B",C)) S G=1
 .S C=$P($G(^PSDRUG(D,2)),U,4)
 .I C]"",T1,$D(^ATXAX(T1,21,"B",C)) S G=1
 .I C]"",T1,$D(^ATXAX(T1,21,"B",$$STRIP^XLFSTR(C,"-"))) S G=1
 .I T,$D(^ATXAX(T,21,"B",D)) S G=1
 .I BUDDNAME]"",$P(^PSDRUG(D,0),U)[BUDDNAME S G=1
 .S C=$$VAL^XBDIQ1(9000010.14,Y,9999999.27)
 .I C]"",T3,$D(^ATXAX(T3,21,"B",C)) S G=1
 .I TAXM="",TAXN="",TAXC="" S G=1  ;WANTS ALL MEDS
 .I G=1 S BUDCC1=BUDCC1+1,BUDZ(BUDCC1)=^TMP($J,"MEDS",X)
 .Q
 K ^TMP($J,"MEDS")
 K BUDINED,BUDINBD,BUDMBD,BUDMED,BUDD,BUDCC1,BUDDNAME
 Q
HL(P,BD,ED) ;EP - was patient homeless on any day in this time period?
 I '$O(^AUPNPAT(P,85,0)) Q ""
 ;SET UP ARRAY OF DATES OF HOMELESSNESS
 NEW X,Y,Z,N,B,C,A
 S X=0 F  S X=$O(^AUPNPAT(P,85,"B",X)) Q:X'=+X  D
 .S Y=0 F  S Y=$O(^AUPNPAT(P,85,"B",X,Y)) Q:Y'=+Y  D
 ..I $P($G(^AUPNPAT(P,85,Y,0)),U,2)="" Q
 ..I $P($G(^AUPNPAT(P,85,Y,0)),U,2)="N" Q
 ..;okay is homeless until the next value of "N" or DT if none found
 ..S N=X,A="" F  S N=$O(^AUPNPAT(P,85,"B",N)) Q:N'=+N!(A)  D
 ...S B=0 F  S B=$O(^AUPNPAT(P,85,"B",N,B)) Q:B'=+B!(A)  D
 ....I $P($G(^AUPNPAT(P,85,B,0)),U,2)="" Q
 ....I $P($G(^AUPNPAT(P,85,B,0)),U,2)="Y" Q
 ....S A=N  ;so is homeless from X TO A
 ..I 'A S A=DT
 ..S Z(X)=X_U_$$FMADD^XLFDT(A,-1)
 S X=0 ;CHECK EACH ONE TO SEE IF ANY ENCOMPASS BD TO ED
 S Y=0 F  S Y=$O(Z(Y)) Q:Y'=+Y  D
 .S B=$P(Z(Y),U,1)
 .S E=$P(Z(Y),U,2)
 .Q:B>ED  ;begins after end date of report period
 .Q:E<BD  ;ends before report period
 .S X=1
 Q X
ALLCPT(P,BD,ED,T,A) ;EP - ALL CPTS IN A DATE RANGE IN TAXONOMY T
 ;P - patient
 ;BD - beginning date
 ;ED - ending date
 ;T -  taxonomy IEN
 ;return all CPTSthat match in array A
 ;FORMAT:  1^DATE^CPT CODE EXTERNAL^V CPT IEN^VISIT IEN
 S T=$G(T)
 I 'T Q
 NEW D,V,G,X,J,B,E,BUDC,CPTTAX
 ;UNFOLD TAXONOMY
 D BLDTAX^ATXAPI($P(^ATXAX(T,0),U,1),"CPTTAX",T,"")
 S BUDC=0
 S J=0 F  S J=$O(CPTTAX(J)) Q:J=""  D
 .S B=9999999-BD,E=9999999-ED  ;get inverse date and begin at edate-1 and end when greater than begin date
 .S D=E-1,D=D_".9999" S G=0 F  S D=$O(^AUPNVCPT("AA",P,J,D)) Q:D'=+D!($P(D,".")>B)  D
 ..S X=0 F  S X=$O(^AUPNVCPT("AA",P,J,D,X)) Q:X'=+X  D
 ...S BUDC=BUDC+1
 ...S @A@(BUDC)=(9999999-$P(D,"."))_"^"_$P(CPTTAX(J),U,1)_"^"_X_"^"_$P($G(^AUPNVCPT(X,0)),U,3)
 ...Q
 ..Q
 .Q
 Q
SETUP ;EP - set up table 6 and 7 dx and snomed lists in ^BUDHTSSC
 NEW BUDX,BUDS,OUT,N,BUDI,C,I,BUDTAX,BUDTGT
 I $T(SUBLST^BSTSAPI)="" G DX  ;NO SNOMED STUFF INSTALLED
 ;
 S BUDX=0 F  S BUDX=$O(^BUDHTSSC(BUDX)) Q:BUDX'=+BUDX  D
 .Q:$P(^BUDHTSSC(BUDX,0),U,2)=""  ;no snomed subset
 .;delete all old snomed entries for this entry
 .S BUDI=0 F  S BUDI=$O(^BUDHTSSC(BUDX,13,BUDI)) Q:BUDI'=+BUDI  D
 ..K DIC,DR,DA S DA(1)=BUDX,DA=BUDI,DIE="^BUDHTSSC("_BUDX_",13,",DR=".01///@" D ^DIE K DIE,DA,DR
 .K ^TMP($J,"SUB")
 .S OUT=$NA(^TMP($J,"SUB"))
 .S N=$P(^BUDHTSSC(BUDX,0),U,2)
 .S X=$$SUBLST^BSTSAPI(OUT,N)  ;
 .;BUILD INDEX
 .S C=0 F  S C=$O(^TMP($J,"SUB",C)) Q:C'=+C  S I=$P(^TMP($J,"SUB",C),U,1) I I]"" S ^BUDHTSSC(BUDX,13,C,0)=I
 .K DIK,DA S DA=BUDX,DIK="^BUDHTSSC(" D IX1^DIK K DIK,DA
DX ;
 S BUDX=0 F  S BUDX=$O(^BUDHTSSC(BUDX)) Q:BUDX'=+BUDX  D
 .Q:$P(^BUDHTSSC(BUDX,0),U,3)=""  ;no DX TAXONOMY
 .;delete all old ICD entries for this entry
 .S BUDI=0 F  S BUDI=$O(^BUDHTSSC(BUDX,11,BUDI)) Q:BUDI'=+BUDI  D
 ..K DIC,DR,DA S DA(1)=BUDX,DA=BUDI,DIE="^BUDHTSSC("_BUDX_",11,",DR=".01///@" D ^DIE K DIE,DA,DR
 .S BUDTGT="BUDTAX"
 .D BLDTAX^ATXAPI($P(^BUDHTSSC(BUDX,0),U,3),BUDTGT,$O(^ATXAX("B",$P(^BUDHTSSC(BUDX,0),U,3),0)))
 .;BUILD INDEX
 .S C=0,X=0 F  S X=$O(BUDTAX(X)) Q:X'=+X  D
 ..S C=C+1
 ..S ^BUDHTSSC(BUDX,11,C,0)=$P(BUDTAX(X),U,1)_U_X_U_$P(BUDTAX(X),U,3)
 .S ^BUDHTSSC(BUDX,1,0)="^90669.90811^"_C_"^"_C
 .K DIK,DA S DA=BUDX,DIK="^BUDHTSSC(" D IX1^DIK K DIK,DA
 Q

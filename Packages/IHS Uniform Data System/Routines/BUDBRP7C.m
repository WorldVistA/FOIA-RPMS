BUDBRP7C ; IHS/CMI/LAB - UDS REPORT PROCESSOR ;
 ;;10.0;IHS/RPMS UNIFORM DATA SYSTEM;;FEB 04, 2016;Build 50
 ;
DM ;EP - list of DM
 S BUDDOB=$P(^DPT(DFN,0),U,3)
 S BUDBDB=($E(BUDBD,1,3)-85)_"0101"
 S BUDBDE=($E(BUDBD,1,3)-18)_"1231"
 Q:BUDDOB>BUDBDE
 Q:BUDDOB<BUDBDB
 Q:BUDMEDV<2
 ;
 S BUDP=$$DMDX(DFN,$$DOB^AUPNPAT(DFN),BUDED)
 I '$P(BUDP,U) Q  ;not dx'ed before end of report period
 S BUDOVAR=$$OVAR(DFN,BUDBD,BUDED)
 S BUDX2DM=$$DM2(DFN,BUDBD,BUDED)
 I $P(BUDOVAR,U),$P(BUDX2DM,U) Q  ;had 2 dx of dm during report period and an ovary dx
 I $$GESTDX(DFN,BUDBD,BUDED) Q  ;had gestational dx during report period
 S BUDRACEX=$$RACE^BUDBRPTC(DFN),BUDRACE=$P(BUDRACEX,U,2),BUDRACEP=$P(BUDRACEX,U,5)
 S BUDRACEE=$$RACE^BUDBRP7I(BUDRACE)
 ;S BUDRACE=$$RACE^BUDBRP7I(BUDRACE)
 S BUDETHN=$P($$HISP^BUDBRPTC(DFN),U,1)
 I +BUDETHN=1 S BUDETHNN="Hispanic or Latino"
 I +BUDETHN=2 S BUDETHNN="Non-Hispanic/Latino"
 I +BUDETHN=3 S BUDETHNN="Unreported/Refused to Report"
 I BUDRACEP=8,+BUDETHN=3 S BUDR=1 G SETSECTC
 I +BUDETHN=1 S BUDR=BUDRACEP G SETSECTC
 I +BUDETHN=2 S BUDR=BUDRACEP G SETSECTC
SETSECTC ;
 S $P(BUDSECTC(+BUDETHN,BUDR),U,1)=$P($G(BUDSECTC(+BUDETHN,BUDR)),U,1)+1  ;COL 1
 S $P(BUDSECTC(+BUDETHN,BUDR),U,2)=$P($G(BUDSECTC(+BUDETHN,BUDR)),U,2)+1  ;COL 2
 ;TOTAL LINE
 S $P(BUDSECTC(4),U,1)=$P($G(BUDSECTC(4)),U,1)+1
 S $P(BUDSECTC(4),U,2)=$P($G(BUDSECTC(4)),U,2)+1
 ;SUBTOTAL LINE
 S $P(BUDSECTC(+BUDETHN),U,1)=$P($G(BUDSECTC(+BUDETHN)),U,1)+1
 S $P(BUDSECTC(+BUDETHN),U,2)=$P($G(BUDSECTC(+BUDETHN)),U,2)+1
 I $G(BUDDMRL) S ^XTMP("BUDBRP7",BUDJ,BUDH,"DMR",BUDRACEP,+BUDETHN,BUDCOM,BUDAGE,$P(^DPT(DFN,0),U),DFN)=$P(BUDP,"^",2)
 ;get last hgba1c value and set counters/lists
 S BUDHGB=$$HGBA1C(DFN,BUDBD,BUDED)
SET ;
 S BUDLINE=$P(BUDHGB,U)
 S BUDPIEC=$S(BUDLINE=13:6,BUDLINE=11:4,BUDLINE=12.2:5,1:"")
 ;W !,DFN,"  ",BUDLINE
 S $P(BUDSECTC(+BUDETHN,BUDR),U,BUDPIEC)=$P($G(BUDSECTC(+BUDETHN,BUDR)),U,BUDPIEC)+1  ;COL 1
 ;TOTAL LINE
 S $P(BUDSECTC(4),U,BUDPIEC)=$P($G(BUDSECTC(4)),U,BUDPIEC)+1
 S $P(BUDSECTC(+BUDETHN),U,BUDPIEC)=$P($G(BUDSECTC(+BUDETHN)),U,BUDPIEC)+1
 I $G(BUDDMR1L),BUDLINE=11 S ^XTMP("BUDBRP7",BUDJ,BUDH,"DMR1",BUDRACEP,+BUDETHN,BUDCOM,BUDAGE,$P(^DPT(DFN,0),U),DFN)=$P(BUDP,"^",2)_"^"_$P(BUDHGB,U,2)
 I $G(BUDDMR2L),BUDLINE=12.2 S ^XTMP("BUDBRP7",BUDJ,BUDH,"DMR2",BUDRACEP,+BUDETHN,BUDCOM,BUDAGE,$P(^DPT(DFN,0),U),DFN)=$P(BUDP,"^",2)_"^"_$P(BUDHGB,U,2)
 ;I $G(BUDDMR3L),BUDLINE=12.2 S ^XTMP("BUDBRP7",BUDJ,BUDH,"DMR3",BUDRACEP,+BUDETHN,BUDCOM,BUDAGE,$P(^DPT(DFN,0),U),DFN)=$P(BUDP,"^",2)_"^"_$P(BUDHGB,U,2)
 I $G(BUDDMR3L),BUDLINE=13 S ^XTMP("BUDBRP7",BUDJ,BUDH,"DMR3",BUDRACEP,+BUDETHN,BUDCOM,BUDAGE,$P(^DPT(DFN,0),U),DFN)=$P(BUDP,"^",2)_"^"_$P(BUDHGB,U,2)
 Q
 ;
HGBA1C(P,BDATE,EDATE) ;EP
 NEW BUDG,BUDT,BUDC,E,%,L,T,BUDLT,D,X,J,C,G
 S BUDC=0
 S G=$$CPT^BUDBDU(P,BDATE,EDATE,$O(^ATXAX("B","BUD HGBA1C CPTS",0)),5)
 I G]"" S BUDC=BUDC+1,BUDT((9999999-$P(G,U,1)),BUDC)=U_"CPT "_$P(G,U,2)
 ;now get all loinc/taxonomy tests
 S T=$O(^ATXAX("B","BGP HGBA1C LOINC CODES",0))
 S BUDLT=$O(^ATXLAB("B","DM AUDIT HGB A1C TAX",0))
 S B=9999999-BDATE,E=9999999-EDATE S D=E-1 F  S D=$O(^AUPNVLAB("AE",P,D)) Q:D'=+D!(D>B)  D
 .S L=0 F  S L=$O(^AUPNVLAB("AE",P,D,L)) Q:L'=+L  D
 ..S X=0 F  S X=$O(^AUPNVLAB("AE",P,D,L,X)) Q:X'=+X  D
 ...Q:'$D(^AUPNVLAB(X,0))
 ...I BUDLT,$P(^AUPNVLAB(X,0),U),$D(^ATXLAB(BUDLT,21,"B",$P(^AUPNVLAB(X,0),U))) S BUDC=BUDC+1,BUDT(D,BUDC)=$P(^AUPNVLAB(X,0),U,4)_U_"LAB: "_$$VAL^XBDIQ1(9000010.09,X,.01) Q
 ...Q:'T
 ...S J=$P($G(^AUPNVLAB(X,11)),U,13) Q:J=""
 ...Q:'$$LOINC(J,T)
 ...S BUDC=BUDC+1,BUDT(D,BUDC)=$P(^AUPNVLAB(X,0),U,4)_U_"LAB LOINC: "_$$VAL^XBDIQ1(9000010.09,X,.01)_" "_$P(^AUPNVLAB(X,11),U,13)
 ...Q
 ; now got though and set return value of done 1 or 0^numerator 2-7^date^value
 I '$D(BUDT) Q 13_U_"NO A1C TEST DURING THE REPORT PERIOD"  ;no tests so is hit in numerator
 ; now get rid of all on same day where 1 has a result and the other doesn't
 S D=0,BUDC=0 K BUDX  F  S D=$O(BUDT(D)) Q:D'=+D  S C=0,G=0 F  S C=$O(BUDT(D,C)) Q:C'=+C  D
 .;I $P(BUDT(D,C),U,1)]"" S BUDC=BUDC+1
 .;I BUDC>0,$P(BUDT(D,C),U,1)="" K BUDT(D,C)
 .I $P(BUDT(D,C),U,1)="" Q
 .S BUDX(D,C)=BUDT(D,C)
 I '$D(BUDX) D
 .S D=$O(BUDT(0))
 .I D S C=$O(BUDT(D,0))
 .I C S BUDX(D,C)=BUDT(D,C)
 S D=0,G=""
 S D=$O(BUDX(D))
 S C=0,C=$O(BUDX(D,C))
 S X=$P(BUDX(D,C),U,1)
 I $$UP^XLFSTR(X)="COMMENT" Q 13_U_$P(BUDX(D,C),U,2)_" "_$$DATE^BUDBUTL1(9999999-D)_" (no result) "_X
 I X="" D  Q G
 .S G=""
 .I $P(BUDX(D,C),U,2)="CPT 3046F" S G=13_U_$P(BUDX(D,C),U,2)_" "_$$DATE^BUDBUTL1(9999999-D) Q
 .I $P(BUDX(D,C),U,2)="CPT 3045F" S G=12.2_U_$P(BUDX(D,C),U,2)_" "_$$DATE^BUDBUTL1(9999999-D) Q
 .I $P(BUDX(D,C),U,2)="CPT 3044F" S G=11_U_$P(BUDX(D,C),U,2)_" "_$$DATE^BUDBUTL1(9999999-D) Q
 .I $P(BUDX(D,C),U,2)="CPT 83036" S G=13_U_$P(BUDX(D,C),U,2)_" "_$$DATE^BUDBUTL1(9999999-D) Q
 .I $P(BUDX(D,C),U,2)="CPT 83037" S G=13_U_$P(BUDX(D,C),U,2)_" "_$$DATE^BUDBUTL1(9999999-D) Q
 .S G=13_U_$P(BUDX(D,C),U,2)_" DID NOT HAVE A RESULT "_$$DATE^BUDBUTL1(9999999-D) Q
 S X=$$STRIP^XLFSTR(X," ")  ;strip spaces
 I X[">9" Q 13_U_$P(BUDX(D,C),U,2)_" "_X_" "_X_$$DATE^BUDBUTL1(9999999-D)
 S X=$$STV(X)
 I X="" Q 13_U_$P(BUDX(D,C),U,2)_" DID NOT HAVE A RESULT "_$$DATE^BUDBUTL1(9999999-D)
 I +X>9 Q 13_U_$P(BUDX(D,C),U,2)_" "_X_" "_$$DATE^BUDBUTL1(9999999-D)
 I +X<8 Q 11_U_$P(BUDX(D,C),U,2)_" "_X_" "_$$DATE^BUDBUTL1(9999999-D)
 ;I +X<8 Q 12.1_U_$P(BUDX(D,C),U,2)_" "_X_" "_$$DATE^BUDBUTL1(9999999-D)
 Q 12.2_U_$P(BUDX(D,C),U,2)_" "_X_" "_$$DATE^BUDBUTL1(9999999-D)
 ;Q 0_U_$P(BUDX(D,C),U,2)_" "_$$DATE^BUDBUTL1(9999999-D)_" result: "_X
 ;
RACE(R) ;EP
 I R="Unreported" Q 8
 I R="Asian" Q 1
 I R="Native Hawaiian" Q 2
 I R="Other Pacific Islander" Q 3
 I R="Black/African American" Q 4
 I R="American Indian/Alaska Native" Q 5
 I R="White" Q 6
 Q ""
DMDX(P,BDATE,EDATE,STOP) ;EP
 NEW BUDDX,B,CNT,BUDD,BUDG,BUDALL,BUDMEDS1,BUD1,G,C,T,V,I
 S STOP=$G(STOP)
 S B=0,CNT=0,BUDD="",BUDALL=""  ;if there is one before time frame set this to 1
 K BUDG
 S Y="BUDG("
 S X=P_"^LAST DX [BUD DIABETES DXS FOR TABLE 7;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE) S E=$$START1^APCLDF(X,Y)
 I $D(BUDG(1)) Q 1_"^"_$P(BUDG(1),U,5)_"|"_$P(BUDG(1),U,2)
 ;S BUD1=0,G=""
 ;F  S BUD1=$O(BUDG(BUD1)) Q:BUD1'=+BUD1!(G)  D
 ;.S V=$P(BUDG(BUD1),U,5)
 ;.;Q:$$VD^APCLV(V)>BUDED
 ;.S C=$$CLINIC^APCLV(V,"C")
 ;.S T=$O(^BUDBCNTL("B","FIRST LEVEL CLINIC EXCLUSIONS",0))
 ;.I C]"",$D(^BUDBCNTL(T,11,"B",C)) Q
 ;;.S G=1_U_$P(BUDG(BUD1),U,5)_"|"_$P(BUDG(1),U,2)
 ;I G Q G
 I STOP Q ""
PROBDX S T=$O(^ATXAX("B","BUD DIABETES DXS FOR TABLE 7",0))
 S (X,G)=0,Z="" F  S X=$O(^AUPNPROB("AC",P,X)) Q:X'=+X!(G)  D
 .Q:$P(^AUPNPROB(X,0),U,12)="D"
 .Q:$P(^AUPNPROB(X,0),U,8)>EDATE
 .Q:$P(^AUPNPROB(X,0),U,8)<BDATE
 .S Y=$P(^AUPNPROB(X,0),U)
 .Q:'$$ICD^ATXCHK(Y,T,9)
 .S G=$P(^AUPNPROB(X,0),U,8),Z=X
 .Q
 I G Q 1_U_"Problem List: "_$$VAL^XBDIQ1(9000011,Z,.01)_" on "_$$FMTE^XLFDT($P(^AUPNPROB(Z,0),U,8))
PROBDMM ;now check for med
 K BUDMEDS1 D GETMEDS^BUDBUTL2(P,BDATE,EDATE,"BUD DIABETES MEDS TAX","BUD DIABETES MEDS NDC",,,.BUDMEDS1)
 I $D(BUDMEDS1(1)) Q 1_"^"_$P(BUDMEDS1(1),U,5)_"|"_$E($P(BUDMEDS1(1),U,2),1,15)
 Q ""
 ;
OVAR(P,BDATE,EDATE,STOP) ;EP
 NEW BUDDX,B,CNT,BUDD,BUDG,BUDALL
 S STOP=$G(STOP)
 S B=0,CNT=0,BUDD="",BUDALL=""  ;if there is one before time frame set this to 1
 K BUDG
 S Y="BUDG("
 S X=P_"^LAST DX 256.4;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE) S E=$$START1^APCLDF(X,Y)
 I $D(BUDG(1)) Q 1_"^"_$P(BUDG(1),U,5)_"|"_$P(BUDG(1),U,2)
 I STOP Q ""
PROBOV ;
 S (X,G)=0,Z="" F  S X=$O(^AUPNPROB("AC",P,X)) Q:X'=+X!(G)  D
 .Q:$P(^AUPNPROB(X,0),U,12)="D"
 .Q:$P(^AUPNPROB(X,0),U,8)>EDATE
 .Q:$P(^AUPNPROB(X,0),U,8)<BDATE
 .S Y=$$VAL^XBDIQ1(9000011,X,.01)
 .Q:Y'="256.4"
 .S G=$P(^AUPNPROB(X,0),U,8),Z=X
 .Q
 I G Q 1
 Q ""
DM2(P,BDATE,EDATE,STOP) ;EP
 NEW BUDDX,B,CNT,BUDD,BUDG,BUDALL
 S STOP=$G(STOP)
 S B=0,CNT=0,BUDD="",BUDALL=""  ;if there is one before time frame set this to 1
 K BUDG
 S Y="BUDG("
 S X=P_"^LAST 2 DX [SURVEILLANCE DIABETES;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE) S E=$$START1^APCLDF(X,Y)
 I $D(BUDG(2)) Q 1_"^"_$P(BUDG(1),U,5)_"|"_$P(BUDG(1),U,2)
 Q ""
GESTDX(P,BDATE,EDATE,STOP) ;EP
 NEW BUDDX,B,CNT,BUDD,BUDG,BUDALL
 S STOP=$G(STOP)
 S B=0,CNT=0,BUDD="",BUDALL=""  ;if there is one before time frame set this to 1
 K BUDG
 S Y="BUDG("
 S X=P_"^LAST DX [BUD GEST/STEROID DM DX;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE) S E=$$START1^APCLDF(X,Y)
 I $D(BUDG(1)) Q 1_"^"_$P(BUDG(1),U,5)_"|"_$P(BUDG(1),U,2)
 I STOP Q ""
GESTPL S T=$O(^ATXAX("B","BUD GEST/STEROID DM DX",0))
 S (X,G)=0,Z="" F  S X=$O(^AUPNPROB("AC",P,X)) Q:X'=+X!(G)  D
 .Q:$P(^AUPNPROB(X,0),U,12)="D"
 .Q:$P(^AUPNPROB(X,0),U,8)>EDATE
 .Q:$P(^AUPNPROB(X,0),U,8)<BDATE
 .S Y=$P(^AUPNPROB(X,0),U)
 .Q:'$$ICD^ATXCHK(Y,T,9)
 .S G=$P(^AUPNPROB(X,0),U,8),Z=X
 .Q
 I G Q 1
 Q ""
 ;
LOINC(A,B) ;EP
 NEW %
 S %=$P($G(^LAB(95.3,A,9999999)),U,2)
 I %]"",$D(^ATXAX(B,21,"B",%)) Q 1
 S %=$P($G(^LAB(95.3,A,0)),U)_"-"_$P($G(^LAB(95.3,A,0)),U,15)
 I $D(^ATXAX(B,21,"B",%)) Q 1
 Q ""
STV(X) ;EP - strip all characters besides numbers and a "."
 I X="" Q X
 NEW A,B,L
 S L=$L(X)
 F B=1:1:L S A=$E(X,B) Q:A=""  I A'?1N,A'?1"." S X=$$STRIP^XLFSTR(X,A) S B=B-1
 Q X
 ;
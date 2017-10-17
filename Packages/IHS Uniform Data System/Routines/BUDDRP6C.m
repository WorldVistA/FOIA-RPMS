BUDDRP6C ; IHS/CMI/LAB - UDS REPORT PROCESSOR 01 Dec 2016 3:10 PM 30 Dec 2016 7:19 PM ;
 ;;11.0;IHS/RPMS UNIFORM DATA SYSTEM;;JAN 18, 2017;Build 66
 ;
 ;
GETIMMS(P,BDATE,EDATE,C,BUDX) ;EP
 K BUDX
 NEW X,Y,I,Z,V
 S X=0 F  S X=$O(^AUPNVIMM("AC",P,X)) Q:X'=+X  D
 .Q:'$D(^AUPNVIMM(X,0))  ;happens
 .S Y=$P(^AUPNVIMM(X,0),U)
 .Q:'Y  ;happens too
 .S I=$P($G(^AUTTIMM(Y,0)),U,3)  ;get HL7/CVX code
 .F Z=1:1:$L(C,U) I I=$P(C,U,Z) S V=$P(^AUPNVIMM(X,0),U,3) I V S D=$P($P($G(^AUPNVSIT(V,0)),U),".") I D]"",D'>EDATE,D'<BDATE S BUDX(D)="CVX: "_I_" on "_$$DATE^BUDDUTL1(D)
 .Q
 Q
 ;
IMM ;EP - IMM
 ;must have 2ND DOB between in the year - 2
 S BUDX2YRB=($E(BUDBD,1,3)-2)_"0101"
 S BUDX2YRE=($E(BUDED,1,3)-2)_"1231"
 S BUDDOB=$P(^DPT(DFN,0),U,3)
 Q:BUDDOB<BUDX2YRB
 Q:BUDDOB>BUDX2YRE
 S BUD2NDBD=$E(BUDDOB,1,3)+2_$E(BUDDOB,4,7)
 S BUD1STBD=$E(BUDDOB,1,3)+1_$E(BUDDOB,4,7)
 ;
 Q:BUDMEDV<1  ;didn't have at least 1 medical visit
 S BUDSECTC("PTS")=$G(BUDSECTC("PTS"))+1
 S BUDX42D=$$FMADD^XLFDT(BUDDOB,42)
 S BUDX180D=$$FMADD^XLFDT(BUDDOB,180)
 S (BUDNDTP,BUDNIPV,BUDNMMR,BUDNHEP,BUDNHIB,BUDNVAR,BUDNPNEU,BUDNHEPA,BUDNROTA,BUDNFLU)=""
 S BUDNDTP=$$DTAP^BUDDRP6X(DFN,BUDX42D,BUD2NDBD)
 S BUDNIPV=$$IPV(DFN,BUDX42D,BUD2NDBD)
 S BUDNMMR=$$MMR^BUDDRP6D(DFN,BUDDOB,BUD2NDBD)
 S BUDNHIB=$$HIB^BUDDRP6Y(DFN,BUDX42D,BUD2NDBD)
 S BUDNHEP=$$HEPB^BUDDRP6Y(DFN,BUDDOB,BUD2NDBD)
 S BUDNVAR=$$VAR^BUDDRP6Y(DFN,BUD1STBD,BUD2NDBD)
 S BUDNPNEU=$$PNEU^BUDDRP6Y(DFN,BUDDOB,BUD2NDBD)
 S BUDNHEPA=$$HEPA^BUDDRP6H(DFN,BUDDOB,BUD2NDBD)
 S BUDNROTA=$$ROTA^BUDDRP6H(DFN,BUDX42D,BUD2NDBD)
 S BUDNFLU=$$FLU^BUDDRP6H(DFN,BUDX180D,BUD2NDBD)
 I $P(BUDNDTP,U,1)=1,$P(BUDNIPV,U,1)=1,$P(BUDNMMR,U,1)=1,$P(BUDNHEP,U,1)=1,$P(BUDNHIB,U,1)=1,$P(BUDNVAR,U,1)=1,$P(BUDNPNEU,U,1)=1,$P(BUDNHEPA,U,1)=1,$P(BUDNROTA,U,1)=1,$P(BUDNFLU,U,1)=1 S BUDSECTC("IMM")=$G(BUDSECTC("IMM"))+1 D  Q
 .I $G(BUDIMM1L) D
 ..S X=$P(BUDNDTP,U,2)_U_$P(BUDNIPV,U,2)_U_$P(BUDNMMR,U,2)_U_$P(BUDNHEP,U,2)_U_$P(BUDNHIB,U,2)_U_$P(BUDNVAR,U,2)_U_$P(BUDNPNEU,U,2)_U_$P(BUDNHEPA,U,2)_U_$P(BUDNROTA,U,2)_U_$P(BUDNFLU,U,2)_"|||"_U_BUDMEDVI
 ..S ^XTMP("BUDDRP6B",BUDJ,BUDH,"IMM1",$P(^DPT(DFN,0),U),BUDCCOM,DFN)=X
 ..Q
 I $G(BUDIMM2L) D
 .S V=""
 .S V=$S($P(BUDNDTP,U,1)=1:"",1:$P(BUDNDTP,U,2))
 .I $P(BUDNIPV,U,1)'=1 S:V]"" V=V_"; " S V=V_$P(BUDNIPV,U,2)
 .I $P(BUDNMMR,U,1)'=1 S:V]"" V=V_"; " S V=V_$P(BUDNMMR,U,2)
 .I $P(BUDNHEP,U,1)'=1 S:V]"" V=V_"; " S V=V_$P(BUDNHEP,U,2)
 .I $P(BUDNHIB,U,1)'=1 S:V]"" V=V_"; " S V=V_$P(BUDNHIB,U,2)
 .I $P(BUDNVAR,U,1)'=1 S:V]"" V=V_"; " S V=V_$P(BUDNVAR,U,2)
 .I $P(BUDNPNEU,U,1)'=1 S:V]"" V=V_"; " S V=V_$P(BUDNPNEU,U,2)
 .I $P(BUDNHEPA,U,1)'=1 S:V]"" V=V_"; " S V=V_$P(BUDNHEPA,U,2)
 .I $P(BUDNROTA,U,1)'=1 S:V]"" V=V_"; " S V=V_$P(BUDNROTA,U,2)
 .I $P(BUDNFLU,U,1)'=1 S:V]"" V=V_"; " S V=V_$P(BUDNFLU,U,2)
 .S ^XTMP("BUDDRP6B",BUDJ,BUDH,"IMM2",$P(^DPT(DFN,0),U),BUDCCOM,DFN)=V
 Q
 ;
CONTRA(P,BD,ED,T1,LABEL) ;EP
 NEW D,BUDG,E,%
 K BUDG S %=P_"^ALL DX;DURING "_BD_"-"_ED,E=$$START1^APCLDF(%,"BUDG(")
 NEW X,Y,G,T,V,Z,A
 S T=$O(^BUDDTSSC("B","T6B IMM CONTRA ALL VACCINES",0))
 S G=""
 S X=0 F  S X=$O(BUDG(X)) Q:X'=+X!(G]"")  D
 .S Y=+$P(BUDG(X),U,4)
 .S Y=$P($G(^AUPNVPOV(Y,0)),U,1)
 .Q:'$D(^BUDDTSSC("AD",Y,T))
 .S V=$P(BUDG(X),U,5)
 .S Z=0 F  S Z=$O(^AUPNVIMM("AD",V,Z)) Q:Z'=+Z!(G)  D
 ..S A=$P(^AUPNVIMM(Z,0),U,1)
 ..S A=+$P($G(^AUTTIMM(A,0)),U,3)
 ..I A="" Q
 ..Q:'$D(^BUDDTSSC(T1,15,"B",A))
 ..S G=1_U_LABEL_": CONTRA "_$P(BUDG(X),U,2)_"/"_A_" on "_$$DATE^BUDDUTL1($P(BUDG(X),U,1))
 .;CPT
 .S Z=0 F  S Z=$O(^AUPNVCPT("AD",V,Z)) Q:Z'=+Z!(G)  D
 ..S A=$$VAL^XBDIQ1(9000010.18,Z,.01)
 ..I A="" Q
 ..Q:'$D(^BUDDTSSC("AC",A,T1))
 ..S G=1_U_LABEL_": CONTRA "_$P(BUDG(X),U,2)_"/"_A_" on "_$$DATE^BUDDUTL1($P(BUDG(X),U,1))
 .;POV
 .S Z=0 F  S Z=$O(^AUPNVPOV("AD",V,Z)) Q:Z'=+Z!(G)  D
 ..S A=$$VALI^XBDIQ1(9000010.07,Z,.01)
 ..I A="" Q
 ..I $D(^BUDDTSSC("AD",A,T1)) S G=1_U_LABEL_": CONTRA "_$P(BUDG(X),U,2)_"/"_$$VAL^XBDIQ1(9000010.07,Z,.01)_" on "_$$DATE^BUDDUTL1($P(BUDG(X),U,1))
 ..S A=$$VAL^XBDIQ1(9000010.07,Z,1101)
 ..Q:A=""
 ..I $D(^BUDDTSSC("AS",Z,T1)) S G=1_U_LABEL_": CONTRA "_$P(BUDG(X),U,2)_"/"_A_" on "_$$DATE^BUDDUTL1($P(BUDG(X),U,1))
 Q G
ANAREACT(I) ;EP
 NEW X,Y,R
 S X=0,Y=0 F  S X=$O(^GMR(120.8,I,10,X)) Q:X'=+X  D
 .S R=$P($G(^GMR(120.8,I,10,X,0)),U)
 .Q:R=""
 .S R=$P($G(^GMRD(120.83,R,0)),U)
 .I R'="ANAPHYLAXIS" Q
 .S Y=1
 .Q
 Q Y
 ;
ANCONT(P,C,ED) ;EP - ANALPHYLAXIS CONTRA
 NEW X,G,D,R,Y
 S X=0,G="",Y=$O(^AUTTIMM("C",C,0)) I Y F  S X=$O(^BIPC("AC",P,Y,X)) Q:X'=+X!(G)  D
 .S R=$P(^BIPC(X,0),U,3)
 .Q:R=""
 .Q:'$D(^BICONT(R,0))
 .S D=$P(^BIPC(X,0),U,4)
 .Q:D=""
 .;Q:$P(^BIPC(X,0),U,4)<BD
 .;Q:$P(^BIPC(X,0),U,4)>ED
 .I $P(^BICONT(R,0),U,1)="Anaphylaxis" S G=D_U_"Anaphylaxis"
 .I $P(^BICONT(R,0),U,1)="Baker's Yeast Allergy" S G=D_U_"Baker's Yeast Allergy"
 .I $P(^BICONT(R,0),U,1)="Yeast Allergy" S G=D_U_"Yeast Allergy"
 Q G
 ;
EGGCONT(P,C,ED) ;EP - EGG CONTRA
 NEW X,G,Y,R,D
 S X=0,G="",Y=$O(^AUTTIMM("C",C,0)) I Y F  S X=$O(^BIPC("AC",P,Y,X)) Q:X'=+X!(G)  D
 .S R=$P(^BIPC(X,0),U,3)
 .Q:R=""
 .Q:'$D(^BICONT(R,0))
 .S D=$P(^BIPC(X,0),U,4)
 .Q:D=""
 .;Q:$P(^BIPC(X,0),U,4)<BD
 .;Q:$P(^BIPC(X,0),U,4)>ED
 .I $P(^BICONT(R,0),U,1)="Egg Allergy" S G=D_U_"Egg Allergy"
 Q G
ANNECONT(P,C,ED) ;EP - ANALPHYLAXIS/NEOMYCIN CONTRA
 NEW X,G,Y,R,D
 S X=0,G="",Y=$O(^AUTTIMM("C",C,0)) I Y F  S X=$O(^BIPC("AC",P,Y,X)) Q:X'=+X!(G)  D
 .S R=$P(^BIPC(X,0),U,3)
 .Q:R=""
 .Q:'$D(^BICONT(R,0))
 .S D=$P(^BIPC(X,0),U,4)
 .Q:D=""
 .I $P(^BICONT(R,0),U,1)="Anaphylaxis" S G=D_U_"Anaphylaxis"
 .I $P(^BICONT(R,0),U,1)="Neomycin Allergy" S G=D_U_"Neomycin Allergy"
 .I $P(^BICONT(R,0),U,1)="Streptomycin Allergy" S G=D_U_"Streptomycin Allergy"
 .I $P(^BICONT(R,0),U,1)="Polymyxin B Allergy" S G=D_U_"Polymyxin B Allergy"
 Q G
 ;
MMRCONT(P,C,ED) ;EP - ANALPHYLAXIS/NEOMYCIN/IMMUNE CONTRA
 NEW X,R,Y,D
 S X=0,G="",Y=$O(^AUTTIMM("C",C,0)) I Y F  S X=$O(^BIPC("AC",P,Y,X)) Q:X'=+X!(G)  D
 .S R=$P(^BIPC(X,0),U,3)
 .Q:R=""
 .Q:'$D(^BICONT(R,0))
 .S D=$P(^BIPC(X,0),U,4)
 .Q:D=""
 .;Q:$P(^BIPC(X,0),U,4)<BD
 .;Q:$P(^BIPC(X,0),U,4)>ED
 .I $P(^BICONT(R,0),U,1)="Anaphylaxis" S G=D_U_"Anaphylaxis"
 .I $P(^BICONT(R,0),U,1)="Neomycin Allergy" S G=D_U_"Neomycin Allergy"
 .I $P(^BICONT(R,0),U,1)="Immune Deficiency" S G=D_U_"Immune Deficiency"
 .I $P(^BICONT(R,0),U,1)["Immune Deficient" S G=D_U_"Immune Deficient"
 .I $P(^BICONT(R,0),U,1)="Immune" S G=D_U_"Immune"
 Q G
 ;
IPV(P,BDATE,EDATE) ;EP
 ;check for a contraindication from DOB to 2nd birthday
 NEW G,X,N,T,BUDZ,BUDG,%,E,Y,BUDD,BUDX,BUDOPV,BUDVS,TIEN,CTR,VIEN,VDATE,C
IPVCONT ;check allergy tracking
 S G=""
 S X=0 F  S X=$O(^GMR(120.8,"B",P,X)) Q:X'=+X!(G)  D
 .;Q:$P($P($G(^GMR(120.8,X,0)),U,4),".")>EDATE  ;entered after 2ND birthday
 .S N=$P($G(^GMR(120.8,X,0)),U,2),N=$$UP^XLFSTR(N)
 .I N["STREPTOMYCIN"!(N["POLYMYXIN B")!(N["NEOMYCIN") S G="1^IPV: CONTRA "_$$DATE^BUDDUTL1($P($P($G(^GMR(120.8,X,0)),U,4),"."))_"  Allergy Tracking: "_N
 .Q:'$$ANAREACT(X)  ;quit if anaphylactic is not a reaction/sign/symptom
 I G]"" Q G
 ;now check immunization package
 S T=$O(^BUDDTSSC("B","T6B IMM IPV CODES",0))
 S X=""
 S BUDZ=0 F  S BUDZ=$O(^BUDDTSSC(T,15,"B",BUDZ)) Q:BUDZ'=+BUDZ!(X]"")  D
 .S X=$$ANNECONT(P,BUDZ,EDATE)
 I X]"" Q "1^IPV: CONTRA IMM package: "_$$DATE^BUDDUTL1($P(X,U))_" "_$P(X,U,2)
 S T=$O(^BUDDTSSC("B","T6B IMM IPV CODES",0))
 S BUDZ=0 F  S BUDZ=$O(^BUDDTSSC(T,15,"B",BUDZ)) Q:BUDZ'=+BUDZ!(X]"")  D
 .S X=$$MMRCONT(P,BUDZ,EDATE)
 I X]"" Q "1^IPV: CONTRA IMM package: "_$$DATE^BUDDUTL1($P(X,U))_" "_$P(X,U,2)
 ;999.4 THING
 S X=$$CONTRA(P,$$DOB^AUPNPAT(P),EDATE,$O(^BUDDTSSC("B","T6B IMM IPV CODES",0)),"IPV")
 I X]"" Q X
 ;now check for evidence of disease
IPVEVID ;
 ;V11.0 ICD10
 K BUDG S %=P_"^ALL DX;DURING "_$$DOB^AUPNPAT(P)_"-"_EDATE,E=$$START1^APCLDF(%,"BUDG(")
 S T=$O(^BUDDTSSC("B","T6B IMM EVIDENCE IPV",0))
 S T1=$O(^BUDDTSSC("B","T6B IMM CONTRA IPV",0))
 S X=0,G="" F  S X=$O(BUDG(X)) Q:X'=+X!(G]"")  D
 .S Y=+$P(BUDG(X),U,4)
 .S Z=$P($G(^AUPNVPOV(Y,0)),U,1)
 .I $D(^BUDDTSSC("AD",Z,T)) S G="1^IPV: Evidence "_$P(BUDG(X),U,2)_" on "_$$DATE^BUDDUTL1($P(BUDG(X),U)) Q
 .S S=$$VAL^XBDIQ1(9000010.07,Y,1101) I S]"",$D(^BUDDTSSC("AS",S,T1)) S G="1^IPV: CONTRA "_S_" on "_$$DATE^BUDDUTL1($P(BUDG(X),U))
 I G]"" Q G
 S X=$$PLCL^BUDDDU(P,"T6B IMM EVIDENCE IPV",EDATE,0) I X Q "1^IPV: Evidence: "_$P(X,U,2)_" on Problem List"
 S X=$$PLCL^BUDDDU(P,"T6B IMM CONTRA IPV",EDATE,0) I X Q "1^IPV: CONTRA: "_$P(X,U,2)_" on Problem List"
 K BUDD,BUDG,BUDX
 K BUDOPV,BUDAPOV
IPVIMM ;get all immunizations
 S BUDOPV=0
 D ALLV^APCLAPIU(P,BDATE,EDATE,"BUDVS")  ;all visits in 42 days to end
 S TIEN=$O(^BUDDTSSC("B","T6B IMM IPV CODES",0))
 S CTR=0 F  S CTR=$O(BUDVS(CTR)) Q:CTR'=+CTR  D
 .S VIEN=$P(BUDVS(CTR),U,5)
 .S VDATE=$P(BUDVS(CTR),U,1)
 .S X=0 F  S X=$O(^AUPNVIMM("AD",VIEN,X)) Q:X'=+X  D
 ..Q:'$D(^AUPNVIMM(X,0))
 ..S Y=$$VALI^XBDIQ1(9000010.11,X,.01)
 ..S Y=+$P($G(^AUTTIMM(Y,0)),U,3)
 ..Q:'Y
 ..I $D(^BUDDTSSC(TIEN,15,"B",Y)) S BUDOPV(VDATE)="CVX "_Y_" on "_$$DATE^BUDDUTL1(VDATE) Q
 .;CPT
 .S X=0 F  S X=$O(^AUPNVCPT("AD",VIEN,X)) Q:X'=+X  D
 ..Q:'$D(^AUPNVCPT(X,0))
 ..S Y=$$VAL^XBDIQ1(9000010.18,X,.01)
 ..Q:Y=""
 ..I $D(^BUDDTSSC("AC",Y,TIEN)) S BUDOPV(VDATE)="CPT "_Y_" on "_$$DATE^BUDDUTL1(VDATE) Q
 .;V TRANS
 .S X=0 F  S X=$O(^AUPNVTC("AD",VIEN,X)) Q:X'=+X  D
 ..Q:'$D(^AUPNVTC(X,0))
 ..S Y=$$VAL^XBDIQ1(9000010.33,X,.07)
 ..Q:Y=""
 ..I $D(^BUDDTSSC("AC",Y,TIEN)) S BUDOPV(VDATE)="CPT/TRAN "_Y_" on "_$$DATE^BUDDUTL1(VDATE) Q
 .;V PROC
 .S X=0 F  S X=$O(^AUPNVPRC("AD",VIEN,X)) Q:X'=+X  D
 ..Q:'$D(^AUPNVPRC(X,0))
 ..S Y=$$VALI^XBDIQ1(9000010.08,X,.01)
 ..I $D(^BUDDTSSC("AP",Y,TIEN)) S BUDOPV(VDATE)="PROC "_Y_" on "_$$DATE^BUDDUTL1(VDATE) Q
 .S X=0 F  S X=$O(^AUPNVPOV("AD",VIEN,X)) Q:X'=+X  D
 ..Q:'$D(^AUPNVPOV(X,0))
 ..S Y=$$VAL^XBDIQ1(9000010.07,X,1101)
 ..Q:Y=""
 ..I $D(^BUDDTSSC("AS",Y,TIEN)) S BUDOPV(VDATE)="SNOMED "_Y_" on "_$$DATE^BUDDUTL1(VDATE) Q
 ;now check to see if they are all spaced 10 days apart, if not, kill off the odd ones
 S (X,Y)="",C=0 F  S X=$O(BUDOPV(X)) Q:X'=+X  S C=C+1 D
 .I C=1 S Y=X Q
 .I $$FMDIFF^XLFDT(X,Y)<11 K BUDOPV(X) Q
 .S Y=X
 ;now count them and see if there are 3 of them
 S BUDOPV=0,X=0 F  S X=$O(BUDOPV(X)) Q:X'=+X  S BUDOPV=BUDOPV+1
 I BUDOPV>2 S Y="1^IPV: total #: "_BUDOPV,X="" F  S X=$O(BUDOPV(X)) Q:X'=+X  S Y=Y_"  "_BUDOPV(X)
 I BUDOPV>2 Q Y
 Q "0^"_(3-BUDOPV)_" IPV"
 ;
